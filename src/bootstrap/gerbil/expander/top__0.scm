(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707565660)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx147833_)
        (letrec ((_expand-special147835_
                  (lambda (_hd147837_ _K147838_ _rest147839_ _r147840_)
                    (_K147838_
                     _rest147839_
                     (cons (gx#core-expand-top _hd147837_) _r147840_)))))
          (gx#core-expand-block__0 _stx147833_ _expand-special147835_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx147586_)
        (letrec ((_expand-special147588_
                  (lambda (_hd147708_ _K147709_ _rest147710_ _r147711_)
                    (let* ((_K147715_
                            (lambda (_e147713_)
                              (_K147709_
                               _rest147710_
                               (cons _e147713_ _r147711_))))
                           (_e147716147745_ _hd147708_)
                           (_E147740147749_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147716147745_)))
                           (_E147736147761_
                            (lambda ()
                              (if (gx#stx-pair? _e147716147745_)
                                  (let ((_e147741147753_
                                         (gx#syntax-e _e147716147745_)))
                                    (let ((_hd147742147756_
                                           (##car _e147741147753_))
                                          (_tl147743147758_
                                           (##cdr _e147741147753_)))
                                      (if (and (gx#identifier?
                                                _hd147742147756_)
                                               (gx#core-identifier=?
                                                _hd147742147756_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K147715_
                                               (gx#core-expand-define-runtime%
                                                _hd147708_))
                                              (_E147740147749_))
                                          (_E147740147749_))))
                                  (_E147740147749_))))
                           (_E147732147773_
                            (lambda ()
                              (if (gx#stx-pair? _e147716147745_)
                                  (let ((_e147737147765_
                                         (gx#syntax-e _e147716147745_)))
                                    (let ((_hd147738147768_
                                           (##car _e147737147765_))
                                          (_tl147739147770_
                                           (##cdr _e147737147765_)))
                                      (if (and (gx#identifier?
                                                _hd147738147768_)
                                               (gx#core-identifier=?
                                                _hd147738147768_
                                                '%#define-alias))
                                          (if '#t
                                              (_K147715_
                                               (gx#core-expand-define-alias%
                                                _hd147708_))
                                              (_E147736147761_))
                                          (_E147736147761_))))
                                  (_E147736147761_))))
                           (_E147722147785_
                            (lambda ()
                              (if (gx#stx-pair? _e147716147745_)
                                  (let ((_e147733147777_
                                         (gx#syntax-e _e147716147745_)))
                                    (let ((_hd147734147780_
                                           (##car _e147733147777_))
                                          (_tl147735147782_
                                           (##cdr _e147733147777_)))
                                      (if (and (gx#identifier?
                                                _hd147734147780_)
                                               (gx#core-identifier=?
                                                _hd147734147780_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K147715_
                                               (gx#core-expand-define-syntax%
                                                _hd147708_))
                                              (_E147732147773_))
                                          (_E147732147773_))))
                                  (_E147732147773_))))
                           (_E147718147817_
                            (lambda ()
                              (if (gx#stx-pair? _e147716147745_)
                                  (let ((_e147723147789_
                                         (gx#syntax-e _e147716147745_)))
                                    (let ((_hd147724147792_
                                           (##car _e147723147789_))
                                          (_tl147725147794_
                                           (##cdr _e147723147789_)))
                                      (if (and (gx#identifier?
                                                _hd147724147792_)
                                               (gx#core-identifier=?
                                                _hd147724147792_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147725147794_)
                                              (let ((_e147726147797_
                                                     (gx#syntax-e
                                                      _tl147725147794_)))
                                                (let ((_hd147727147800_
                                                       (##car _e147726147797_))
                                                      (_tl147728147802_
                                                       (##cdr _e147726147797_)))
                                                  (let ((_hd-bind147805_
                                                         _hd147727147800_))
                                                    (if (gx#stx-pair?
                                                         _tl147728147802_)
                                                        (let ((_e147729147807_
                                                               (gx#syntax-e
                                                                _tl147728147802_)))
                                                          (let ((_hd147730147810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147729147807_))
                        (_tl147731147812_ (##cdr _e147729147807_)))
                    (let ((_expr147815_ _hd147730147810_))
                      (if (gx#stx-null? _tl147731147812_)
                          (if (gx#core-bind-values? _hd-bind147805_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147805_)
                                (_K147715_ _hd147708_))
                              (_E147722147785_))
                          (_E147722147785_)))))
                (_E147722147785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147722147785_))
                                          (_E147722147785_))))
                                  (_E147722147785_))))
                           (_E147717147829_
                            (lambda ()
                              (if (gx#stx-pair? _e147716147745_)
                                  (let ((_e147719147821_
                                         (gx#syntax-e _e147716147745_)))
                                    (let ((_hd147720147824_
                                           (##car _e147719147821_))
                                          (_tl147721147826_
                                           (##cdr _e147719147821_)))
                                      (if (and (gx#identifier?
                                                _hd147720147824_)
                                               (gx#core-identifier=?
                                                _hd147720147824_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K147715_
                                               (gx#core-expand-begin-syntax%
                                                _hd147708_))
                                              (_E147718147817_))
                                          (_E147718147817_))))
                                  (_E147718147817_)))))
                      (_E147717147829_))))
                 (_eval-body147589_
                  (lambda (_rbody147597_)
                    (let _lp147599_ ((_rest147601_ _rbody147597_)
                                     (_body147602_ '())
                                     (_ebody147603_ '()))
                      (let* ((_rest147604147612_ _rest147601_)
                             (_else147606147620_
                              (lambda ()
                                (values _body147602_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody147603_)
                                          (gx#stx-source _stx147586_))))))
                             (_K147608147696_
                              (lambda (_rest147623_ _hd147624_)
                                (let* ((_e147625147642_ _hd147624_)
                                       (_E147637147646_
                                        (lambda ()
                                          (_lp147599_
                                           _rest147623_
                                           (cons _hd147624_ _body147602_)
                                           (cons _hd147624_ _ebody147603_))))
                                       (_E147627147658_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147625147642_)
                                              (let ((_e147638147650_
                                                     (gx#syntax-e
                                                      _e147625147642_)))
                                                (let ((_hd147639147653_
                                                       (##car _e147638147650_))
                                                      (_tl147640147655_
                                                       (##cdr _e147638147650_)))
                                                  (if (and (gx#identifier?
                                                            _hd147639147653_)
                                                           (gx#core-identifier=?
                                                            _hd147639147653_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp147599_
                                                           _rest147623_
                                                           (cons _hd147624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body147602_)
                   _ebody147603_)
                  (_E147637147646_))
              (_E147637147646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147637147646_))))
                                       (_E147626147692_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147625147642_)
                                              (let ((_e147628147662_
                                                     (gx#syntax-e
                                                      _e147625147642_)))
                                                (let ((_hd147629147665_
                                                       (##car _e147628147662_))
                                                      (_tl147630147667_
                                                       (##cdr _e147628147662_)))
                                                  (if (and (gx#identifier?
                                                            _hd147629147665_)
                                                           (gx#core-identifier=?
                                                            _hd147629147665_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl147630147667_)
                                                          (let ((_e147631147670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl147630147667_)))
                    (let ((_hd147632147673_ (##car _e147631147670_))
                          (_tl147633147675_ (##cdr _e147631147670_)))
                      (let ((_hd-bind147678_ _hd147632147673_))
                        (if (gx#stx-pair? _tl147633147675_)
                            (let ((_e147634147680_
                                   (gx#syntax-e _tl147633147675_)))
                              (let ((_hd147635147683_ (##car _e147634147680_))
                                    (_tl147636147685_ (##cdr _e147634147680_)))
                                (let ((_expr147688_ _hd147635147683_))
                                  (if (gx#stx-null? _tl147636147685_)
                                      (if '#t
                                          (let ((_ehd147690_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind147678_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr147688_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd147624_))))
                                            (_lp147599_
                                             _rest147623_
                                             (cons _ehd147690_ _body147602_)
                                             (cons _ehd147690_ _ebody147603_)))
                                          (_E147627147658_))
                                      (_E147627147658_)))))
                            (_E147627147658_)))))
                  (_E147627147658_))
              (_E147627147658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147627147658_)))))
                                  (_E147626147692_)))))
                        (if (##pair? _rest147604147612_)
                            (let ((_hd147609147699_ (##car _rest147604147612_))
                                  (_tl147610147701_
                                   (##cdr _rest147604147612_)))
                              (let* ((_hd147704_ _hd147609147699_)
                                     (_rest147706_ _tl147610147701_))
                                (_K147608147696_ _rest147706_ _hd147704_)))
                            (_else147606147620_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody147592_
                     (gx#core-expand-block__1
                      _stx147586_
                      _expand-special147588_
                      '#f))
                    (_g152050_ (_eval-body147589_ _rbody147592_)))
               (begin
                 (let ((_g152051_
                        (if (##values? _g152050_)
                            (##vector-length _g152050_)
                            1)))
                   (if (not (##fx= _g152051_ 2))
                       (error "Context expects 2 values" _g152051_)))
                 (let ((_expanded-body147594_ (##vector-ref _g152050_ 0))
                       (_value147595_ (##vector-ref _g152050_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body147594_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value147595_ '())))
                    (gx#stx-source _stx147586_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx147556_)
        (let* ((_e147557147564_ _stx147556_)
               (_E147559147568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147557147564_)))
               (_E147558147582_
                (lambda ()
                  (if (gx#stx-pair? _e147557147564_)
                      (let ((_e147560147572_ (gx#syntax-e _e147557147564_)))
                        (let ((_hd147561147575_ (##car _e147560147572_))
                              (_tl147562147577_ (##cdr _e147560147572_)))
                          (let ((_body147580_ _tl147562147577_))
                            (if (gx#stx-list? _body147580_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body147580_)
                                 (gx#stx-source _stx147556_))
                                (_E147559147568_)))))
                      (_E147559147568_)))))
          (_E147558147582_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx147554_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx147554_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx147500_)
        (let* ((_e147501147514_ _stx147500_)
               (_E147503147518_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147501147514_)))
               (_E147502147550_
                (lambda ()
                  (if (gx#stx-pair? _e147501147514_)
                      (let ((_e147504147522_ (gx#syntax-e _e147501147514_)))
                        (let ((_hd147505147525_ (##car _e147504147522_))
                              (_tl147506147527_ (##cdr _e147504147522_)))
                          (if (gx#stx-pair? _tl147506147527_)
                              (let ((_e147507147530_
                                     (gx#syntax-e _tl147506147527_)))
                                (let ((_hd147508147533_
                                       (##car _e147507147530_))
                                      (_tl147509147535_
                                       (##cdr _e147507147530_)))
                                  (let ((_ann147538_ _hd147508147533_))
                                    (if (gx#stx-pair? _tl147509147535_)
                                        (let ((_e147510147540_
                                               (gx#syntax-e _tl147509147535_)))
                                          (let ((_hd147511147543_
                                                 (##car _e147510147540_))
                                                (_tl147512147545_
                                                 (##cdr _e147510147540_)))
                                            (let ((_expr147548_
                                                   _hd147511147543_))
                                              (if (gx#stx-null?
                                                   _tl147512147545_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann147538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr147548_)
                                 '())))
               (gx#stx-source _stx147500_))
              (_E147503147518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147503147518_)))))
                                        (_E147503147518_)))))
                              (_E147503147518_))))
                      (_E147503147518_)))))
          (_E147502147550_))))
    (define gx#core-expand-local-block
      (lambda (_stx147224_ _body147225_)
        (letrec ((_expand-special147227_
                  (lambda (_hd147495_ _K147496_ _rest147497_ _r147498_)
                    (_K147496_
                     '()
                     (cons (_expand-internal147228_ _hd147495_ _rest147497_)
                           _r147498_))))
                 (_expand-internal147228_
                  (lambda (_hd147491_ _rest147492_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal147230_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd147491_ _rest147492_))
                          (gx#stx-source _stx147224_))
                         _expand-internal-special147229_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj152044 (make-object gx#local-context::t '6)))
                       (gx#local-context:::init! __obj152044)
                       __obj152044))))
                 (_expand-internal-special147229_
                  (lambda (_hd147386_ _K147387_ _rest147388_ _r147389_)
                    (let* ((_e147390147415_ _hd147386_)
                           (_E147410147419_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147390147415_)))
                           (_E147406147431_
                            (lambda ()
                              (if (gx#stx-pair? _e147390147415_)
                                  (let ((_e147411147423_
                                         (gx#syntax-e _e147390147415_)))
                                    (let ((_hd147412147426_
                                           (##car _e147411147423_))
                                          (_tl147413147428_
                                           (##cdr _e147411147423_)))
                                      (if (and (gx#identifier?
                                                _hd147412147426_)
                                               (gx#core-identifier=?
                                                _hd147412147426_
                                                '%#declare))
                                          (if '#t
                                              (_K147387_
                                               _rest147388_
                                               (cons (gx#core-expand-declare%
                                                      _hd147386_)
                                                     _r147389_))
                                              (_E147410147419_))
                                          (_E147410147419_))))
                                  (_E147410147419_))))
                           (_E147402147443_
                            (lambda ()
                              (if (gx#stx-pair? _e147390147415_)
                                  (let ((_e147407147435_
                                         (gx#syntax-e _e147390147415_)))
                                    (let ((_hd147408147438_
                                           (##car _e147407147435_))
                                          (_tl147409147440_
                                           (##cdr _e147407147435_)))
                                      (if (and (gx#identifier?
                                                _hd147408147438_)
                                               (gx#core-identifier=?
                                                _hd147408147438_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd147386_)
                                                (_K147387_
                                                 _rest147388_
                                                 _r147389_))
                                              (_E147406147431_))
                                          (_E147406147431_))))
                                  (_E147406147431_))))
                           (_E147392147455_
                            (lambda ()
                              (if (gx#stx-pair? _e147390147415_)
                                  (let ((_e147403147447_
                                         (gx#syntax-e _e147390147415_)))
                                    (let ((_hd147404147450_
                                           (##car _e147403147447_))
                                          (_tl147405147452_
                                           (##cdr _e147403147447_)))
                                      (if (and (gx#identifier?
                                                _hd147404147450_)
                                               (gx#core-identifier=?
                                                _hd147404147450_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd147386_)
                                                (_K147387_
                                                 _rest147388_
                                                 _r147389_))
                                              (_E147402147443_))
                                          (_E147402147443_))))
                                  (_E147402147443_))))
                           (_E147391147487_
                            (lambda ()
                              (if (gx#stx-pair? _e147390147415_)
                                  (let ((_e147393147459_
                                         (gx#syntax-e _e147390147415_)))
                                    (let ((_hd147394147462_
                                           (##car _e147393147459_))
                                          (_tl147395147464_
                                           (##cdr _e147393147459_)))
                                      (if (and (gx#identifier?
                                                _hd147394147462_)
                                               (gx#core-identifier=?
                                                _hd147394147462_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147395147464_)
                                              (let ((_e147396147467_
                                                     (gx#syntax-e
                                                      _tl147395147464_)))
                                                (let ((_hd147397147470_
                                                       (##car _e147396147467_))
                                                      (_tl147398147472_
                                                       (##cdr _e147396147467_)))
                                                  (let ((_hd-bind147475_
                                                         _hd147397147470_))
                                                    (if (gx#stx-pair?
                                                         _tl147398147472_)
                                                        (let ((_e147399147477_
                                                               (gx#syntax-e
                                                                _tl147398147472_)))
                                                          (let ((_hd147400147480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147399147477_))
                        (_tl147401147482_ (##cdr _e147399147477_)))
                    (let ((_expr147485_ _hd147400147480_))
                      (if (gx#stx-null? _tl147401147482_)
                          (if (gx#core-bind-values? _hd-bind147475_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147475_)
                                (_K147387_
                                 _rest147388_
                                 (cons _hd147386_ _r147389_)))
                              (_E147392147455_))
                          (_E147392147455_)))))
                (_E147392147455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147392147455_))
                                          (_E147392147455_))))
                                  (_E147392147455_)))))
                      (_E147391147487_))))
                 (_wrap-internal147230_
                  (lambda (_rbody147232_)
                    (let _lp147234_ ((_rest147236_ _rbody147232_)
                                     (_decls147237_ '())
                                     (_bind147238_ '())
                                     (_body147239_ '()))
                      (let* ((_e147240147247_ _rest147236_)
                             (_E147242147296_
                              (lambda ()
                                (let* ((_body147291_
                                        (let* ((_body147250147260_
                                                _body147239_)
                                               (_else147253147268_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body147239_)
                                                   (gx#stx-source
                                                    _stx147224_)))))
                                          (let ((_K147258147288_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx147224_)))
                                                (_K147255147274_
                                                 (lambda (_expr147272_)
                                                   _expr147272_)))
                                            (let ((_try-match147252147284_
                                                   (lambda ()
                                                     (if (##pair? _body147250147260_)
                                                         (let ((_tl147257147279_
                                                                (##cdr _body147250147260_))
                                                               (_hd147256147277_
                                                                (##car _body147250147260_)))
                                                           (if (##null? _tl147257147279_)
                                                               (let ((_expr147282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147256147277_))
                         (_K147255147274_ _expr147282_))
                       (_else147253147268_)))
                 (_else147253147268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body147250147260_)
                                                  (_K147258147288_)
                                                  (_try-match147252147284_))))))
                                       (_body147293_
                                        (if (null? _bind147238_)
                                            _body147291_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind147238_
                                                         (cons _body147291_
                                                               '())))
                                             (gx#stx-source _stx147224_)))))
                                  (if (null? _decls147237_)
                                      _body147293_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls147237_
                                                   (cons _body147293_ '())))
                                       (gx#stx-source _stx147224_))))))
                             (_E147241147382_
                              (lambda ()
                                (if (gx#stx-pair? _e147240147247_)
                                    (let ((_e147243147300_
                                           (gx#syntax-e _e147240147247_)))
                                      (let ((_hd147244147303_
                                             (##car _e147243147300_))
                                            (_tl147245147305_
                                             (##cdr _e147243147300_)))
                                        (let* ((_hd147308_ _hd147244147303_)
                                               (_rest147310_ _tl147245147305_))
                                          (if '#t
                                              (let* ((_e147311147328_
                                                      _hd147308_)
                                                     (_E147323147332_
                                                      (lambda ()
                                                        (if (null? _bind147238_)
                                                            (_lp147234_
                                                             _rest147310_
                                                             _decls147237_
                                                             _bind147238_
                                                             (cons _hd147308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body147239_))
                    (_lp147234_
                     _rest147310_
                     _decls147237_
                     (cons (cons '#f (cons _hd147308_ '())) _bind147238_)
                     _body147239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147313147346_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147311147328_)
                                                            (let ((_e147324147336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147311147328_)))
                      (let ((_hd147325147339_ (##car _e147324147336_))
                            (_tl147326147341_ (##cdr _e147324147336_)))
                        (if (and (gx#identifier? _hd147325147339_)
                                 (gx#core-identifier=?
                                  _hd147325147339_
                                  '%#declare))
                            (let ((_xdecls147344_ _tl147326147341_))
                              (if '#t
                                  (_lp147234_
                                   _rest147310_
                                   (gx#stx-foldr
                                    cons
                                    _decls147237_
                                    _xdecls147344_)
                                   _bind147238_
                                   _body147239_)
                                  (_E147323147332_)))
                            (_E147323147332_))))
                    (_E147323147332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147312147378_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147311147328_)
                                                            (let ((_e147314147350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147311147328_)))
                      (let ((_hd147315147353_ (##car _e147314147350_))
                            (_tl147316147355_ (##cdr _e147314147350_)))
                        (if (and (gx#identifier? _hd147315147353_)
                                 (gx#core-identifier=?
                                  _hd147315147353_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl147316147355_)
                                (let ((_e147317147358_
                                       (gx#syntax-e _tl147316147355_)))
                                  (let ((_hd147318147361_
                                         (##car _e147317147358_))
                                        (_tl147319147363_
                                         (##cdr _e147317147358_)))
                                    (let ((_hd-bind147366_ _hd147318147361_))
                                      (if (gx#stx-pair? _tl147319147363_)
                                          (let ((_e147320147368_
                                                 (gx#syntax-e
                                                  _tl147319147363_)))
                                            (let ((_hd147321147371_
                                                   (##car _e147320147368_))
                                                  (_tl147322147373_
                                                   (##cdr _e147320147368_)))
                                              (let ((_expr147376_
                                                     _hd147321147371_))
                                                (if (gx#stx-null?
                                                     _tl147322147373_)
                                                    (if '#t
                                                        (_lp147234_
                                                         _rest147310_
                                                         _decls147237_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind147366_)
                             (cons (gx#core-expand-expression _expr147376_)
                                   '()))
                       _bind147238_)
                 _body147239_)
                (_E147313147346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E147313147346_)))))
                                          (_E147313147346_)))))
                                (_E147313147346_))
                            (_E147313147346_))))
                    (_E147313147346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147312147378_))
                                              (_E147242147296_)))))
                                    (_E147242147296_)))))
                        (_E147241147382_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body147225_)
            (gx#stx-source _stx147224_))
           _expand-special147227_))))
    (define gx#core-expand-declare%
      (lambda (_stx147162_)
        (let* ((_e147163147170_ _stx147162_)
               (_E147165147174_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147163147170_)))
               (_E147164147220_
                (lambda ()
                  (if (gx#stx-pair? _e147163147170_)
                      (let ((_e147166147178_ (gx#syntax-e _e147163147170_)))
                        (let ((_hd147167147181_ (##car _e147166147178_))
                              (_tl147168147183_ (##cdr _e147166147178_)))
                          (let ((_body147186_ _tl147168147183_))
                            (if (gx#stx-list? _body147186_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl147188_)
                                     (let* ((_e147189147196_ _decl147188_)
                                            (_E147191147200_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e147189147196_)))
                                            (_E147190147216_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e147189147196_)
                                                   (let ((_e147192147204_
                                                          (gx#syntax-e
                                                           _e147189147196_)))
                                                     (let ((_hd147193147207_
                                                            (##car _e147192147204_))
                                                           (_tl147194147209_
                                                            (##cdr _e147192147204_)))
                                                       (let* ((_head147212_
                                                               _hd147193147207_)
                                                              (_args147214_
                                                               _tl147194147209_))
                                                         (if (gx#stx-list?
                                                              _args147214_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl147188_)
                                                             (_E147191147200_)))))
                                                   (_E147191147200_)))))
                                       (_E147190147216_)))
                                   _body147186_))
                                 (gx#stx-source _stx147162_))
                                (_E147165147174_)))))
                      (_E147165147174_)))))
          (_E147164147220_))))
    (define gx#core-expand-extern%
      (lambda (_stx147066_)
        (let* ((_e147067147074_ _stx147066_)
               (_E147069147078_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147067147074_)))
               (_E147068147158_
                (lambda ()
                  (if (gx#stx-pair? _e147067147074_)
                      (let ((_e147070147082_ (gx#syntax-e _e147067147074_)))
                        (let ((_hd147071147085_ (##car _e147070147082_))
                              (_tl147072147087_ (##cdr _e147070147082_)))
                          (let ((_body147090_ _tl147072147087_))
                            (if '#t
                                (let _lp147092_ ((_rest147094_ _body147090_)
                                                 (_r147095_ '()))
                                  (let* ((_e147096147110_ _rest147094_)
                                         (_E147108147114_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx147066_)))
                                         (_E147098147118_
                                          (lambda ()
                                            (if (gx#stx-null? _e147096147110_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r147095_))
                                                     (gx#stx-source
                                                      _stx147066_))
                                                    (_E147108147114_))
                                                (_E147108147114_))))
                                         (_E147097147154_
                                          (lambda ()
                                            (if (gx#stx-pair? _e147096147110_)
                                                (let ((_e147099147122_
                                                       (gx#syntax-e
                                                        _e147096147110_)))
                                                  (let ((_hd147100147125_
                                                         (##car _e147099147122_))
                                                        (_tl147101147127_
                                                         (##cdr _e147099147122_)))
                                                    (if (gx#stx-pair?
                                                         _hd147100147125_)
                                                        (let ((_e147102147130_
                                                               (gx#syntax-e
                                                                _hd147100147125_)))
                                                          (let ((_hd147103147133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147102147130_))
                        (_tl147104147135_ (##cdr _e147102147130_)))
                    (let ((_id147138_ _hd147103147133_))
                      (if (gx#stx-pair? _tl147104147135_)
                          (let ((_e147105147140_
                                 (gx#syntax-e _tl147104147135_)))
                            (let ((_hd147106147143_ (##car _e147105147140_))
                                  (_tl147107147145_ (##cdr _e147105147140_)))
                              (let ((_eid147148_ _hd147106147143_))
                                (if (gx#stx-null? _tl147107147145_)
                                    (let ((_rest147150_ _tl147101147127_))
                                      (if (and (gx#identifier? _id147138_)
                                               (gx#identifier? _eid147148_))
                                          (let ((_eid147152_
                                                 (gx#stx-e _eid147148_)))
                                            (gx#core-bind-extern!__0
                                             _id147138_
                                             _eid147152_)
                                            (_lp147092_
                                             _rest147150_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id147138_)
                                                         (cons _eid147152_
                                                               '()))
                                                   _r147095_)))
                                          (_E147098147118_)))
                                    (_E147098147118_)))))
                          (_E147098147118_)))))
                (_E147098147118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147098147118_)))))
                                    (_E147097147154_)))
                                (_E147069147078_)))))
                      (_E147069147078_)))))
          (_E147068147158_))))
    (define gx#core-expand-define-values%
      (lambda (_stx147012_)
        (let* ((_e147013147026_ _stx147012_)
               (_E147015147030_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147013147026_)))
               (_E147014147062_
                (lambda ()
                  (if (gx#stx-pair? _e147013147026_)
                      (let ((_e147016147034_ (gx#syntax-e _e147013147026_)))
                        (let ((_hd147017147037_ (##car _e147016147034_))
                              (_tl147018147039_ (##cdr _e147016147034_)))
                          (if (gx#stx-pair? _tl147018147039_)
                              (let ((_e147019147042_
                                     (gx#syntax-e _tl147018147039_)))
                                (let ((_hd147020147045_
                                       (##car _e147019147042_))
                                      (_tl147021147047_
                                       (##cdr _e147019147042_)))
                                  (let ((_hd147050_ _hd147020147045_))
                                    (if (gx#stx-pair? _tl147021147047_)
                                        (let ((_e147022147052_
                                               (gx#syntax-e _tl147021147047_)))
                                          (let ((_hd147023147055_
                                                 (##car _e147022147052_))
                                                (_tl147024147057_
                                                 (##cdr _e147022147052_)))
                                            (let ((_expr147060_
                                                   _hd147023147055_))
                                              (if (gx#stx-null?
                                                   _tl147024147057_)
                                                  (if (gx#core-bind-values?
                                                       _hd147050_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd147050_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147050_)
                             (cons (gx#core-expand-expression _expr147060_)
                                   '())))
                 (gx#stx-source _stx147012_)))
              (_E147015147030_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147015147030_)))))
                                        (_E147015147030_)))))
                              (_E147015147030_))))
                      (_E147015147030_)))))
          (_E147014147062_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx146956_)
        (let* ((_e146957146970_ _stx146956_)
               (_E146959146974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146957146970_)))
               (_E146958147008_
                (lambda ()
                  (if (gx#stx-pair? _e146957146970_)
                      (let ((_e146960146978_ (gx#syntax-e _e146957146970_)))
                        (let ((_hd146961146981_ (##car _e146960146978_))
                              (_tl146962146983_ (##cdr _e146960146978_)))
                          (if (gx#stx-pair? _tl146962146983_)
                              (let ((_e146963146986_
                                     (gx#syntax-e _tl146962146983_)))
                                (let ((_hd146964146989_
                                       (##car _e146963146986_))
                                      (_tl146965146991_
                                       (##cdr _e146963146986_)))
                                  (let ((_id146994_ _hd146964146989_))
                                    (if (gx#stx-pair? _tl146965146991_)
                                        (let ((_e146966146996_
                                               (gx#syntax-e _tl146965146991_)))
                                          (let ((_hd146967146999_
                                                 (##car _e146966146996_))
                                                (_tl146968147001_
                                                 (##cdr _e146966146996_)))
                                            (let ((_binding-id147004_
                                                   _hd146967146999_))
                                              (if (gx#stx-null?
                                                   _tl146968147001_)
                                                  (if (and (gx#identifier?
                                                            _id146994_)
                                                           (gx#identifier?
                                                            _binding-id147004_))
                                                      (let ((_eid147006_
                                                             (gx#stx-e
                                                              _binding-id147004_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id146994_
                                                         _eid147006_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146994_)
                             (cons _eid147006_ '())))))
              (_E146959146974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146959146974_)))))
                                        (_E146959146974_)))))
                              (_E146959146974_))))
                      (_E146959146974_)))))
          (_E146958147008_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx146899_)
        (let* ((_e146900146913_ _stx146899_)
               (_E146902146917_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146900146913_)))
               (_E146901146952_
                (lambda ()
                  (if (gx#stx-pair? _e146900146913_)
                      (let ((_e146903146921_ (gx#syntax-e _e146900146913_)))
                        (let ((_hd146904146924_ (##car _e146903146921_))
                              (_tl146905146926_ (##cdr _e146903146921_)))
                          (if (gx#stx-pair? _tl146905146926_)
                              (let ((_e146906146929_
                                     (gx#syntax-e _tl146905146926_)))
                                (let ((_hd146907146932_
                                       (##car _e146906146929_))
                                      (_tl146908146934_
                                       (##cdr _e146906146929_)))
                                  (let ((_id146937_ _hd146907146932_))
                                    (if (gx#stx-pair? _tl146908146934_)
                                        (let ((_e146909146939_
                                               (gx#syntax-e _tl146908146934_)))
                                          (let ((_hd146910146942_
                                                 (##car _e146909146939_))
                                                (_tl146911146944_
                                                 (##cdr _e146909146939_)))
                                            (let ((_expr146947_
                                                   _hd146910146942_))
                                              (if (gx#stx-null?
                                                   _tl146911146944_)
                                                  (if (gx#identifier?
                                                       _id146937_)
                                                      (let ((_g152052_
                                                             (gx#core-expand-expression+1
                                                              _expr146947_)))
                                                        (begin
                                                          (let ((_g152053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g152052_)
                             (##vector-length _g152052_)
                             1)))
                    (if (not (##fx= _g152053_ 2))
                        (error "Context expects 2 values" _g152053_)))
                  (let ((_e-stx146949_ (##vector-ref _g152052_ 0))
                        (_e146950_ (##vector-ref _g152052_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id146937_ _e146950_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id146937_)
                                   (cons _e-stx146949_ '())))
                       (gx#stx-source _stx146899_))))))
              (_E146902146917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146902146917_)))))
                                        (_E146902146917_)))))
                              (_E146902146917_))))
                      (_E146902146917_)))))
          (_E146901146952_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx146843_)
        (let* ((_e146844146857_ _stx146843_)
               (_E146846146861_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146844146857_)))
               (_E146845146895_
                (lambda ()
                  (if (gx#stx-pair? _e146844146857_)
                      (let ((_e146847146865_ (gx#syntax-e _e146844146857_)))
                        (let ((_hd146848146868_ (##car _e146847146865_))
                              (_tl146849146870_ (##cdr _e146847146865_)))
                          (if (gx#stx-pair? _tl146849146870_)
                              (let ((_e146850146873_
                                     (gx#syntax-e _tl146849146870_)))
                                (let ((_hd146851146876_
                                       (##car _e146850146873_))
                                      (_tl146852146878_
                                       (##cdr _e146850146873_)))
                                  (let ((_id146881_ _hd146851146876_))
                                    (if (gx#stx-pair? _tl146852146878_)
                                        (let ((_e146853146883_
                                               (gx#syntax-e _tl146852146878_)))
                                          (let ((_hd146854146886_
                                                 (##car _e146853146883_))
                                                (_tl146855146888_
                                                 (##cdr _e146853146883_)))
                                            (let ((_alias-id146891_
                                                   _hd146854146886_))
                                              (if (gx#stx-null?
                                                   _tl146855146888_)
                                                  (if (and (gx#identifier?
                                                            _id146881_)
                                                           (gx#identifier?
                                                            _alias-id146891_))
                                                      (let ((_alias-id146893_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id146891_)))
                                                        (gx#core-bind-alias!__0
                                                         _id146881_
                                                         _alias-id146893_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146881_)
                             (cons _alias-id146893_ '())))))
              (_E146846146861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146846146861_)))))
                                        (_E146846146861_)))))
                              (_E146846146861_))))
                      (_E146846146861_)))))
          (_E146845146895_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx146786_ _wrap?146787_)
        (let* ((_e146788146798_ _stx146786_)
               (_E146790146802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146788146798_)))
               (_E146789146829_
                (lambda ()
                  (if (gx#stx-pair? _e146788146798_)
                      (let ((_e146791146806_ (gx#syntax-e _e146788146798_)))
                        (let ((_hd146792146809_ (##car _e146791146806_))
                              (_tl146793146811_ (##cdr _e146791146806_)))
                          (if (gx#stx-pair? _tl146793146811_)
                              (let ((_e146794146814_
                                     (gx#syntax-e _tl146793146811_)))
                                (let ((_hd146795146817_
                                       (##car _e146794146814_))
                                      (_tl146796146819_
                                       (##cdr _e146794146814_)))
                                  (let* ((_hd146822_ _hd146795146817_)
                                         (_body146824_ _tl146796146819_))
                                    (if (gx#core-bind-values? _hd146822_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd146822_)
                                           (let ((_body146827_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd146822_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx146786_
                                                               _body146824_)
                                                              '()))))
                                             (if _wrap?146787_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body146827_)
                                                  (gx#stx-source _stx146786_))
                                                 _body146827_)))
                                         gx#current-expander-context
                                         (let ((__obj152045
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152045)
                                           __obj152045))
                                        (_E146790146802_)))))
                              (_E146790146802_))))
                      (_E146790146802_)))))
          (_E146789146829_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx146836_)
        (let ((_wrap?146838_ '#t))
          (gx#core-expand-lambda%__% _stx146836_ _wrap?146838_))))
    (define gx#core-expand-lambda%
      (lambda _g152055_
        (let ((_g152054_ (##length _g152055_)))
          (cond ((##fx= _g152054_ 1)
                 (apply (lambda (_stx146836_)
                          (gx#core-expand-lambda%__0 _stx146836_))
                        _g152055_))
                ((##fx= _g152054_ 2)
                 (apply (lambda (_stx146840_ _wrap?146841_)
                          (gx#core-expand-lambda%__%
                           _stx146840_
                           _wrap?146841_))
                        _g152055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g152055_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx146750_)
        (let* ((_e146751146758_ _stx146750_)
               (_E146753146762_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146751146758_)))
               (_E146752146781_
                (lambda ()
                  (if (gx#stx-pair? _e146751146758_)
                      (let ((_e146754146766_ (gx#syntax-e _e146751146758_)))
                        (let ((_hd146755146769_ (##car _e146754146766_))
                              (_tl146756146771_ (##cdr _e146754146766_)))
                          (let ((_clauses146774_ _tl146756146771_))
                            (if (gx#stx-list? _clauses146774_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause146776_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause146776_)
                                       (let ((_$e146778_
                                              (gx#stx-source _clause146776_)))
                                         (if _$e146778_
                                             _$e146778_
                                             (gx#stx-source _stx146750_))))
                                      '#f))
                                   _clauses146774_))
                                 (gx#stx-source _stx146750_))
                                (_E146753146762_)))))
                      (_E146753146762_)))))
          (_E146752146781_))))
    (define gx#core-expand-let-values%
      (lambda (_stx146704_)
        (let* ((_e146705146715_ _stx146704_)
               (_E146707146719_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146705146715_)))
               (_E146706146746_
                (lambda ()
                  (if (gx#stx-pair? _e146705146715_)
                      (let ((_e146708146723_ (gx#syntax-e _e146705146715_)))
                        (let ((_hd146709146726_ (##car _e146708146723_))
                              (_tl146710146728_ (##cdr _e146708146723_)))
                          (if (gx#stx-pair? _tl146710146728_)
                              (let ((_e146711146731_
                                     (gx#syntax-e _tl146710146728_)))
                                (let ((_hd146712146734_
                                       (##car _e146711146731_))
                                      (_tl146713146736_
                                       (##cdr _e146711146731_)))
                                  (let* ((_hd146739_ _hd146712146734_)
                                         (_body146741_ _tl146713146736_))
                                    (if (gx#core-expand-let-bind? _hd146739_)
                                        (let ((_expressions146743_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd146739_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd146739_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd146739_
                                                           _expressions146743_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx146704_
                         _body146741_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx146704_)))
                                           gx#current-expander-context
                                           (let ((__obj152046
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152046)
                                             __obj152046)))
                                        (_E146707146719_)))))
                              (_E146707146719_))))
                      (_E146707146719_)))))
          (_E146706146746_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx146649_ _form146650_)
        (let* ((_e146651146661_ _stx146649_)
               (_E146653146665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146651146661_)))
               (_E146652146690_
                (lambda ()
                  (if (gx#stx-pair? _e146651146661_)
                      (let ((_e146654146669_ (gx#syntax-e _e146651146661_)))
                        (let ((_hd146655146672_ (##car _e146654146669_))
                              (_tl146656146674_ (##cdr _e146654146669_)))
                          (if (gx#stx-pair? _tl146656146674_)
                              (let ((_e146657146677_
                                     (gx#syntax-e _tl146656146674_)))
                                (let ((_hd146658146680_
                                       (##car _e146657146677_))
                                      (_tl146659146682_
                                       (##cdr _e146657146677_)))
                                  (let* ((_hd146685_ _hd146658146680_)
                                         (_body146687_ _tl146659146682_))
                                    (if (gx#core-expand-let-bind? _hd146685_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd146685_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form146650_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd146685_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd146685_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx146649_
                                                               _body146687_)
                                                              '())))
                                            (gx#stx-source _stx146649_)))
                                         gx#current-expander-context
                                         (let ((__obj152047
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152047)
                                           __obj152047))
                                        (_E146653146665_)))))
                              (_E146653146665_))))
                      (_E146653146665_)))))
          (_E146652146690_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx146697_)
        (let ((_form146699_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx146697_ _form146699_))))
    (define gx#core-expand-letrec-values%
      (lambda _g152057_
        (let ((_g152056_ (##length _g152057_)))
          (cond ((##fx= _g152056_ 1)
                 (apply (lambda (_stx146697_)
                          (gx#core-expand-letrec-values%__0 _stx146697_))
                        _g152057_))
                ((##fx= _g152056_ 2)
                 (apply (lambda (_stx146701_ _form146702_)
                          (gx#core-expand-letrec-values%__%
                           _stx146701_
                           _form146702_))
                        _g152057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g152057_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx146646_)
        (gx#core-expand-letrec-values%__% _stx146646_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx146603_)
        (if (gx#stx-list? _stx146603_)
            (gx#stx-andmap
             (lambda (_bind146605_)
               (let* ((_e146606146616_ _bind146605_)
                      (_E146608146620_ (lambda () '#f))
                      (_E146607146642_
                       (lambda ()
                         (if (gx#stx-pair? _e146606146616_)
                             (let ((_e146609146624_
                                    (gx#syntax-e _e146606146616_)))
                               (let ((_hd146610146627_ (##car _e146609146624_))
                                     (_tl146611146629_
                                      (##cdr _e146609146624_)))
                                 (let ((_hd146632_ _hd146610146627_))
                                   (if (gx#stx-pair? _tl146611146629_)
                                       (let ((_e146612146634_
                                              (gx#syntax-e _tl146611146629_)))
                                         (let ((_hd146613146637_
                                                (##car _e146612146634_))
                                               (_tl146614146639_
                                                (##cdr _e146612146634_)))
                                           (if (gx#stx-null? _tl146614146639_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd146632_)
                                                   (_E146608146620_))
                                               (_E146608146620_))))
                                       (_E146608146620_)))))
                             (_E146608146620_)))))
                 (_E146607146642_)))
             _stx146603_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind146562_)
        (let* ((_e146563146573_ _bind146562_)
               (_E146565146577_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146563146573_)))
               (_E146564146599_
                (lambda ()
                  (if (gx#stx-pair? _e146563146573_)
                      (let ((_e146566146581_ (gx#syntax-e _e146563146573_)))
                        (let ((_hd146567146584_ (##car _e146566146581_))
                              (_tl146568146586_ (##cdr _e146566146581_)))
                          (if (gx#stx-pair? _tl146568146586_)
                              (let ((_e146569146589_
                                     (gx#syntax-e _tl146568146586_)))
                                (let ((_hd146570146592_
                                       (##car _e146569146589_))
                                      (_tl146571146594_
                                       (##cdr _e146569146589_)))
                                  (let ((_expr146597_ _hd146570146592_))
                                    (if (gx#stx-null? _tl146571146594_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146597_)
                                            (_E146565146577_))
                                        (_E146565146577_)))))
                              (_E146565146577_))))
                      (_E146565146577_)))))
          (_E146564146599_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind146521_)
        (let* ((_e146522146532_ _bind146521_)
               (_E146524146536_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146522146532_)))
               (_E146523146558_
                (lambda ()
                  (if (gx#stx-pair? _e146522146532_)
                      (let ((_e146525146540_ (gx#syntax-e _e146522146532_)))
                        (let ((_hd146526146543_ (##car _e146525146540_))
                              (_tl146527146545_ (##cdr _e146525146540_)))
                          (let ((_hd146548_ _hd146526146543_))
                            (if (gx#stx-pair? _tl146527146545_)
                                (let ((_e146528146550_
                                       (gx#syntax-e _tl146527146545_)))
                                  (let ((_hd146529146553_
                                         (##car _e146528146550_))
                                        (_tl146530146555_
                                         (##cdr _e146528146550_)))
                                    (if (gx#stx-null? _tl146530146555_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd146548_)
                                            (_E146524146536_))
                                        (_E146524146536_))))
                                (_E146524146536_)))))
                      (_E146524146536_)))))
          (_E146523146558_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind146479_ _expr146480_)
        (let* ((_e146481146491_ _bind146479_)
               (_E146483146495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146481146491_)))
               (_E146482146517_
                (lambda ()
                  (if (gx#stx-pair? _e146481146491_)
                      (let ((_e146484146499_ (gx#syntax-e _e146481146491_)))
                        (let ((_hd146485146502_ (##car _e146484146499_))
                              (_tl146486146504_ (##cdr _e146484146499_)))
                          (let ((_hd146507_ _hd146485146502_))
                            (if (gx#stx-pair? _tl146486146504_)
                                (let ((_e146487146509_
                                       (gx#syntax-e _tl146486146504_)))
                                  (let ((_hd146488146512_
                                         (##car _e146487146509_))
                                        (_tl146489146514_
                                         (##cdr _e146487146509_)))
                                    (if (gx#stx-null? _tl146489146514_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd146507_)
                                                  (cons _expr146480_ '()))
                                            (_E146483146495_))
                                        (_E146483146495_))))
                                (_E146483146495_)))))
                      (_E146483146495_)))))
          (_E146482146517_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx146433_)
        (let* ((_e146434146444_ _stx146433_)
               (_E146436146448_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146434146444_)))
               (_E146435146475_
                (lambda ()
                  (if (gx#stx-pair? _e146434146444_)
                      (let ((_e146437146452_ (gx#syntax-e _e146434146444_)))
                        (let ((_hd146438146455_ (##car _e146437146452_))
                              (_tl146439146457_ (##cdr _e146437146452_)))
                          (if (gx#stx-pair? _tl146439146457_)
                              (let ((_e146440146460_
                                     (gx#syntax-e _tl146439146457_)))
                                (let ((_hd146441146463_
                                       (##car _e146440146460_))
                                      (_tl146442146465_
                                       (##cdr _e146440146460_)))
                                  (let* ((_hd146468_ _hd146441146463_)
                                         (_body146470_ _tl146442146465_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146468_)
                                        (let ((_expanders146472_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd146468_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd146468_
                                              _expanders146472_)
                                             (gx#core-expand-local-block
                                              _stx146433_
                                              _body146470_))
                                           gx#current-expander-context
                                           (let ((__obj152048
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152048)
                                             __obj152048)))
                                        (_E146436146448_)))))
                              (_E146436146448_))))
                      (_E146436146448_)))))
          (_E146435146475_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx146382_)
        (let* ((_e146383146393_ _stx146382_)
               (_E146385146397_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146383146393_)))
               (_E146384146429_
                (lambda ()
                  (if (gx#stx-pair? _e146383146393_)
                      (let ((_e146386146401_ (gx#syntax-e _e146383146393_)))
                        (let ((_hd146387146404_ (##car _e146386146401_))
                              (_tl146388146406_ (##cdr _e146386146401_)))
                          (if (gx#stx-pair? _tl146388146406_)
                              (let ((_e146389146409_
                                     (gx#syntax-e _tl146388146406_)))
                                (let ((_hd146390146412_
                                       (##car _e146389146409_))
                                      (_tl146391146414_
                                       (##cdr _e146389146409_)))
                                  (let* ((_hd146417_ _hd146390146412_)
                                         (_body146419_ _tl146391146414_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146417_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd146417_
                                            (make-list
                                             (gx#stx-length _hd146417_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g146421146424_
                                                     _g146422146426_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g146421146424_
                                               _g146422146426_
                                               '#t))
                                            _hd146417_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd146417_))
                                           (gx#core-expand-local-block
                                            _stx146382_
                                            _body146419_))
                                         gx#current-expander-context
                                         (let ((__obj152049
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152049)
                                           __obj152049))
                                        (_E146385146397_)))))
                              (_E146385146397_))))
                      (_E146385146397_)))))
          (_E146384146429_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx146339_)
        (if (gx#stx-list? _stx146339_)
            (gx#stx-andmap
             (lambda (_bind146341_)
               (let* ((_e146342146352_ _bind146341_)
                      (_E146344146356_ (lambda () '#f))
                      (_E146343146378_
                       (lambda ()
                         (if (gx#stx-pair? _e146342146352_)
                             (let ((_e146345146360_
                                    (gx#syntax-e _e146342146352_)))
                               (let ((_hd146346146363_ (##car _e146345146360_))
                                     (_tl146347146365_
                                      (##cdr _e146345146360_)))
                                 (let ((_hd146368_ _hd146346146363_))
                                   (if (gx#stx-pair? _tl146347146365_)
                                       (let ((_e146348146370_
                                              (gx#syntax-e _tl146347146365_)))
                                         (let ((_hd146349146373_
                                                (##car _e146348146370_))
                                               (_tl146350146375_
                                                (##cdr _e146348146370_)))
                                           (if (gx#stx-null? _tl146350146375_)
                                               (if '#t
                                                   (gx#identifier? _hd146368_)
                                                   (_E146344146356_))
                                               (_E146344146356_))))
                                       (_E146344146356_)))))
                             (_E146344146356_)))))
                 (_E146343146378_)))
             _stx146339_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind146296_)
        (let* ((_e146297146307_ _bind146296_)
               (_E146299146311_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146297146307_)))
               (_E146298146335_
                (lambda ()
                  (if (gx#stx-pair? _e146297146307_)
                      (let ((_e146300146315_ (gx#syntax-e _e146297146307_)))
                        (let ((_hd146301146318_ (##car _e146300146315_))
                              (_tl146302146320_ (##cdr _e146300146315_)))
                          (if (gx#stx-pair? _tl146302146320_)
                              (let ((_e146303146323_
                                     (gx#syntax-e _tl146302146320_)))
                                (let ((_hd146304146326_
                                       (##car _e146303146323_))
                                      (_tl146305146328_
                                       (##cdr _e146303146323_)))
                                  (let ((_expr146331_ _hd146304146326_))
                                    (if (gx#stx-null? _tl146305146328_)
                                        (if '#t
                                            (let ((_g152058_
                                                   (gx#core-expand-expression+1
                                                    _expr146331_)))
                                              (begin
                                                (let ((_g152059_
                                                       (if (##values?
                                                            _g152058_)
                                                           (##vector-length
                                                            _g152058_)
                                                           1)))
                                                  (if (not (##fx= _g152059_ 2))
                                                      (error "Context expects 2 values"
                                                             _g152059_)))
                                                (let ((_e146333_
                                                       (##vector-ref
                                                        _g152058_
                                                        1)))
                                                  _e146333_)))
                                            (_E146299146311_))
                                        (_E146299146311_)))))
                              (_E146299146311_))))
                      (_E146299146311_)))))
          (_E146298146335_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind146241_ _e146242_ _rebind?146243_)
        (let* ((_e146244146254_ _bind146241_)
               (_E146246146258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146244146254_)))
               (_E146245146280_
                (lambda ()
                  (if (gx#stx-pair? _e146244146254_)
                      (let ((_e146247146262_ (gx#syntax-e _e146244146254_)))
                        (let ((_hd146248146265_ (##car _e146247146262_))
                              (_tl146249146267_ (##cdr _e146247146262_)))
                          (let ((_id146270_ _hd146248146265_))
                            (if (gx#stx-pair? _tl146249146267_)
                                (let ((_e146250146272_
                                       (gx#syntax-e _tl146249146267_)))
                                  (let ((_hd146251146275_
                                         (##car _e146250146272_))
                                        (_tl146252146277_
                                         (##cdr _e146250146272_)))
                                    (if (gx#stx-null? _tl146252146277_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id146270_
                                             _e146242_
                                             _rebind?146243_)
                                            (_E146246146258_))
                                        (_E146246146258_))))
                                (_E146246146258_)))))
                      (_E146246146258_)))))
          (_E146245146280_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind146287_ _e146288_)
        (let ((_rebind?146290_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind146287_
           _e146288_
           _rebind?146290_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g152061_
        (let ((_g152060_ (##length _g152061_)))
          (cond ((##fx= _g152060_ 2)
                 (apply (lambda (_bind146287_ _e146288_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind146287_
                           _e146288_))
                        _g152061_))
                ((##fx= _g152060_ 3)
                 (apply (lambda (_bind146292_ _e146293_ _rebind?146294_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind146292_
                           _e146293_
                           _rebind?146294_))
                        _g152061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g152061_))))))
    (define gx#core-expand-expression%
      (lambda (_stx146199_)
        (let* ((_e146200146210_ _stx146199_)
               (_E146202146214_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146200146210_)))
               (_E146201146236_
                (lambda ()
                  (if (gx#stx-pair? _e146200146210_)
                      (let ((_e146203146218_ (gx#syntax-e _e146200146210_)))
                        (let ((_hd146204146221_ (##car _e146203146218_))
                              (_tl146205146223_ (##cdr _e146203146218_)))
                          (if (gx#stx-pair? _tl146205146223_)
                              (let ((_e146206146226_
                                     (gx#syntax-e _tl146205146223_)))
                                (let ((_hd146207146229_
                                       (##car _e146206146226_))
                                      (_tl146208146231_
                                       (##cdr _e146206146226_)))
                                  (let ((_expr146234_ _hd146207146229_))
                                    (if (gx#stx-null? _tl146208146231_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146234_)
                                            (_E146202146214_))
                                        (_E146202146214_)))))
                              (_E146202146214_))))
                      (_E146202146214_)))))
          (_E146201146236_))))
    (define gx#core-expand-quote%
      (lambda (_stx146158_)
        (let* ((_e146159146169_ _stx146158_)
               (_E146161146173_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146159146169_)))
               (_E146160146195_
                (lambda ()
                  (if (gx#stx-pair? _e146159146169_)
                      (let ((_e146162146177_ (gx#syntax-e _e146159146169_)))
                        (let ((_hd146163146180_ (##car _e146162146177_))
                              (_tl146164146182_ (##cdr _e146162146177_)))
                          (if (gx#stx-pair? _tl146164146182_)
                              (let ((_e146165146185_
                                     (gx#syntax-e _tl146164146182_)))
                                (let ((_hd146166146188_
                                       (##car _e146165146185_))
                                      (_tl146167146190_
                                       (##cdr _e146165146185_)))
                                  (let ((_e146193_ _hd146166146188_))
                                    (if (gx#stx-null? _tl146167146190_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e146193_)
                                                         '()))
                                             (gx#stx-source _stx146158_))
                                            (_E146161146173_))
                                        (_E146161146173_)))))
                              (_E146161146173_))))
                      (_E146161146173_)))))
          (_E146160146195_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx146117_)
        (let* ((_e146118146128_ _stx146117_)
               (_E146120146132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146118146128_)))
               (_E146119146154_
                (lambda ()
                  (if (gx#stx-pair? _e146118146128_)
                      (let ((_e146121146136_ (gx#syntax-e _e146118146128_)))
                        (let ((_hd146122146139_ (##car _e146121146136_))
                              (_tl146123146141_ (##cdr _e146121146136_)))
                          (if (gx#stx-pair? _tl146123146141_)
                              (let ((_e146124146144_
                                     (gx#syntax-e _tl146123146141_)))
                                (let ((_hd146125146147_
                                       (##car _e146124146144_))
                                      (_tl146126146149_
                                       (##cdr _e146124146144_)))
                                  (let ((_e146152_ _hd146125146147_))
                                    (if (gx#stx-null? _tl146126146149_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e146152_)
                                                         '()))
                                             (gx#stx-source _stx146117_))
                                            (_E146120146132_))
                                        (_E146120146132_)))))
                              (_E146120146132_))))
                      (_E146120146132_)))))
          (_E146119146154_))))
    (define gx#core-expand-call%
      (lambda (_stx146074_)
        (let* ((_e146075146085_ _stx146074_)
               (_E146077146089_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146075146085_)))
               (_E146076146113_
                (lambda ()
                  (if (gx#stx-pair? _e146075146085_)
                      (let ((_e146078146093_ (gx#syntax-e _e146075146085_)))
                        (let ((_hd146079146096_ (##car _e146078146093_))
                              (_tl146080146098_ (##cdr _e146078146093_)))
                          (if (gx#stx-pair? _tl146080146098_)
                              (let ((_e146081146101_
                                     (gx#syntax-e _tl146080146098_)))
                                (let ((_hd146082146104_
                                       (##car _e146081146101_))
                                      (_tl146083146106_
                                       (##cdr _e146081146101_)))
                                  (let* ((_rator146109_ _hd146082146104_)
                                         (_args146111_ _tl146083146106_))
                                    (if (gx#stx-list? _args146111_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator146109_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args146111_))
                                         (gx#stx-source _stx146074_))
                                        (_E146077146089_)))))
                              (_E146077146089_))))
                      (_E146077146089_)))))
          (_E146076146113_))))
    (define gx#core-expand-if%
      (lambda (_stx146007_)
        (let* ((_e146008146024_ _stx146007_)
               (_E146010146028_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146008146024_)))
               (_E146009146070_
                (lambda ()
                  (if (gx#stx-pair? _e146008146024_)
                      (let ((_e146011146032_ (gx#syntax-e _e146008146024_)))
                        (let ((_hd146012146035_ (##car _e146011146032_))
                              (_tl146013146037_ (##cdr _e146011146032_)))
                          (if (gx#stx-pair? _tl146013146037_)
                              (let ((_e146014146040_
                                     (gx#syntax-e _tl146013146037_)))
                                (let ((_hd146015146043_
                                       (##car _e146014146040_))
                                      (_tl146016146045_
                                       (##cdr _e146014146040_)))
                                  (let ((_test146048_ _hd146015146043_))
                                    (if (gx#stx-pair? _tl146016146045_)
                                        (let ((_e146017146050_
                                               (gx#syntax-e _tl146016146045_)))
                                          (let ((_hd146018146053_
                                                 (##car _e146017146050_))
                                                (_tl146019146055_
                                                 (##cdr _e146017146050_)))
                                            (let ((_K146058_ _hd146018146053_))
                                              (if (gx#stx-pair?
                                                   _tl146019146055_)
                                                  (let ((_e146020146060_
                                                         (gx#syntax-e
                                                          _tl146019146055_)))
                                                    (let ((_hd146021146063_
                                                           (##car _e146020146060_))
                                                          (_tl146022146065_
                                                           (##cdr _e146020146060_)))
                                                      (let ((_E146068_
                                                             _hd146021146063_))
                                                        (if (gx#stx-null?
                                                             _tl146022146065_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test146048_)
                                     (cons (gx#core-expand-expression
                                            _K146058_)
                                           (cons (gx#core-expand-expression
                                                  _E146068_)
                                                 '()))))
                         (gx#stx-source _stx146007_))
                        (_E146010146028_))
                    (_E146010146028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146010146028_)))))
                                        (_E146010146028_)))))
                              (_E146010146028_))))
                      (_E146010146028_)))))
          (_E146009146070_))))
    (define gx#core-expand-ref%
      (lambda (_stx145966_)
        (let* ((_e145967145977_ _stx145966_)
               (_E145969145981_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145967145977_)))
               (_E145968146003_
                (lambda ()
                  (if (gx#stx-pair? _e145967145977_)
                      (let ((_e145970145985_ (gx#syntax-e _e145967145977_)))
                        (let ((_hd145971145988_ (##car _e145970145985_))
                              (_tl145972145990_ (##cdr _e145970145985_)))
                          (if (gx#stx-pair? _tl145972145990_)
                              (let ((_e145973145993_
                                     (gx#syntax-e _tl145972145990_)))
                                (let ((_hd145974145996_
                                       (##car _e145973145993_))
                                      (_tl145975145998_
                                       (##cdr _e145973145993_)))
                                  (let ((_id146001_ _hd145974145996_))
                                    (if (gx#stx-null? _tl145975145998_)
                                        (if (gx#identifier? _id146001_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id146001_
                                                          _stx145966_)
                                                         '()))
                                             (gx#stx-source _stx145966_))
                                            (_E145969145981_))
                                        (_E145969145981_)))))
                              (_E145969145981_))))
                      (_E145969145981_)))))
          (_E145968146003_))))
    (define gx#core-expand-setq%
      (lambda (_stx145912_)
        (let* ((_e145913145926_ _stx145912_)
               (_E145915145930_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145913145926_)))
               (_E145914145962_
                (lambda ()
                  (if (gx#stx-pair? _e145913145926_)
                      (let ((_e145916145934_ (gx#syntax-e _e145913145926_)))
                        (let ((_hd145917145937_ (##car _e145916145934_))
                              (_tl145918145939_ (##cdr _e145916145934_)))
                          (if (gx#stx-pair? _tl145918145939_)
                              (let ((_e145919145942_
                                     (gx#syntax-e _tl145918145939_)))
                                (let ((_hd145920145945_
                                       (##car _e145919145942_))
                                      (_tl145921145947_
                                       (##cdr _e145919145942_)))
                                  (let ((_id145950_ _hd145920145945_))
                                    (if (gx#stx-pair? _tl145921145947_)
                                        (let ((_e145922145952_
                                               (gx#syntax-e _tl145921145947_)))
                                          (let ((_hd145923145955_
                                                 (##car _e145922145952_))
                                                (_tl145924145957_
                                                 (##cdr _e145922145952_)))
                                            (let ((_expr145960_
                                                   _hd145923145955_))
                                              (if (gx#stx-null?
                                                   _tl145924145957_)
                                                  (if (gx#identifier?
                                                       _id145950_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id145950_
                            _stx145912_)
                           (cons (gx#core-expand-expression _expr145960_)
                                 '())))
               (gx#stx-source _stx145912_))
              (_E145915145930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145915145930_)))))
                                        (_E145915145930_)))))
                              (_E145915145930_))))
                      (_E145915145930_)))))
          (_E145914145962_))))
    (define gx#macro-expand-extern
      (lambda (_stx145760_)
        (letrec ((_generate145762_
                  (lambda (_body145792_)
                    (let _lp145794_ ((_rest145796_ _body145792_)
                                     (_ns145797_
                                      (gx#core-context-namespace__0))
                                     (_r145798_ '()))
                      (let* ((_e145799145814_ _rest145796_)
                             (_E145812145818_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e145799145814_)))
                             (_E145808145822_
                              (lambda ()
                                (if (gx#stx-null? _e145799145814_)
                                    (if '#t
                                        (reverse _r145798_)
                                        (_E145812145818_))
                                    (_E145812145818_))))
                             (_E145801145879_
                              (lambda ()
                                (if (gx#stx-pair? _e145799145814_)
                                    (let ((_e145809145826_
                                           (gx#syntax-e _e145799145814_)))
                                      (let ((_hd145810145829_
                                             (##car _e145809145826_))
                                            (_tl145811145831_
                                             (##cdr _e145809145826_)))
                                        (let* ((_hd145834_ _hd145810145829_)
                                               (_rest145836_ _tl145811145831_))
                                          (if '#t
                                              (if (gx#identifier? _hd145834_)
                                                  (_lp145794_
                                                   _rest145836_
                                                   _ns145797_
                                                   (cons (cons _hd145834_
                                                               (cons (if _ns145797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd145834_
                                  _ns145797_
                                  '"#"
                                  _hd145834_)
                                 _hd145834_)
                             '()))
                 _r145798_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e145837145847_
                                                          _hd145834_)
                                                         (_E145839145851_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e145837145847_)))
                                                         (_E145838145875_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e145837145847_)
                        (let ((_e145840145855_ (gx#syntax-e _e145837145847_)))
                          (let ((_hd145841145858_ (##car _e145840145855_))
                                (_tl145842145860_ (##cdr _e145840145855_)))
                            (let ((_id145863_ _hd145841145858_))
                              (if (gx#stx-pair? _tl145842145860_)
                                  (let ((_e145843145865_
                                         (gx#syntax-e _tl145842145860_)))
                                    (let ((_hd145844145868_
                                           (##car _e145843145865_))
                                          (_tl145845145870_
                                           (##cdr _e145843145865_)))
                                      (let ((_eid145873_ _hd145844145868_))
                                        (if (gx#stx-null? _tl145845145870_)
                                            (if (and (gx#identifier?
                                                      _id145863_)
                                                     (gx#identifier?
                                                      _eid145873_))
                                                (_lp145794_
                                                 _rest145836_
                                                 _ns145797_
                                                 (cons (cons _id145863_
                                                             (cons _eid145873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r145798_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145839145851_))
                                            (_E145839145851_)))))
                                  (_E145839145851_)))))
                        (_E145839145851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145838145875_)))
                                              (_E145808145822_)))))
                                    (_E145808145822_))))
                             (_E145800145908_
                              (lambda ()
                                (if (gx#stx-pair? _e145799145814_)
                                    (let ((_e145802145883_
                                           (gx#syntax-e _e145799145814_)))
                                      (let ((_hd145803145886_
                                             (##car _e145802145883_))
                                            (_tl145804145888_
                                             (##cdr _e145802145883_)))
                                        (if (eq? (gx#stx-e _hd145803145886_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl145804145888_)
                                                (let ((_e145805145891_
                                                       (gx#syntax-e
                                                        _tl145804145888_)))
                                                  (let ((_hd145806145894_
                                                         (##car _e145805145891_))
                                                        (_tl145807145896_
                                                         (##cdr _e145805145891_)))
                                                    (let* ((_ns145899_
                                                            _hd145806145894_)
                                                           (_rest145901_
                                                            _tl145807145896_))
                                                      (if '#t
                                                          (let ((_ns145906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns145899_)
                             (symbol->string (gx#stx-e _ns145899_))
                             (if (or (gx#stx-string? _ns145899_)
                                     (gx#stx-false? _ns145899_))
                                 (gx#stx-e _ns145899_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx145760_
                                  _ns145899_)))))
                    (_lp145794_ _rest145901_ _ns145906_ _r145798_))
                  (_E145801145879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145801145879_))
                                            (_E145801145879_))))
                                    (_E145801145879_)))))
                        (_E145800145908_))))))
          (let* ((_e145763145770_ _stx145760_)
                 (_E145765145774_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145763145770_)))
                 (_E145764145788_
                  (lambda ()
                    (if (gx#stx-pair? _e145763145770_)
                        (let ((_e145766145778_ (gx#syntax-e _e145763145770_)))
                          (let ((_hd145767145781_ (##car _e145766145778_))
                                (_tl145768145783_ (##cdr _e145766145778_)))
                            (let ((_body145786_ _tl145768145783_))
                              (if (gx#stx-list? _body145786_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate145762_ _body145786_))
                                  (_E145765145774_)))))
                        (_E145765145774_)))))
            (_E145764145788_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx145706_)
        (let* ((_e145707145720_ _stx145706_)
               (_E145709145724_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145707145720_)))
               (_E145708145756_
                (lambda ()
                  (if (gx#stx-pair? _e145707145720_)
                      (let ((_e145710145728_ (gx#syntax-e _e145707145720_)))
                        (let ((_hd145711145731_ (##car _e145710145728_))
                              (_tl145712145733_ (##cdr _e145710145728_)))
                          (if (gx#stx-pair? _tl145712145733_)
                              (let ((_e145713145736_
                                     (gx#syntax-e _tl145712145733_)))
                                (let ((_hd145714145739_
                                       (##car _e145713145736_))
                                      (_tl145715145741_
                                       (##cdr _e145713145736_)))
                                  (let ((_hd145744_ _hd145714145739_))
                                    (if (gx#stx-pair? _tl145715145741_)
                                        (let ((_e145716145746_
                                               (gx#syntax-e _tl145715145741_)))
                                          (let ((_hd145717145749_
                                                 (##car _e145716145746_))
                                                (_tl145718145751_
                                                 (##cdr _e145716145746_)))
                                            (let ((_expr145754_
                                                   _hd145717145749_))
                                              (if (gx#stx-null?
                                                   _tl145718145751_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd145744_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd145744_)
                          (cons _expr145754_ '())))
              (_E145709145724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145709145724_)))))
                                        (_E145709145724_)))))
                              (_E145709145724_))))
                      (_E145709145724_)))))
          (_E145708145756_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx145652_)
        (let* ((_e145653145666_ _stx145652_)
               (_E145655145670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145653145666_)))
               (_E145654145702_
                (lambda ()
                  (if (gx#stx-pair? _e145653145666_)
                      (let ((_e145656145674_ (gx#syntax-e _e145653145666_)))
                        (let ((_hd145657145677_ (##car _e145656145674_))
                              (_tl145658145679_ (##cdr _e145656145674_)))
                          (if (gx#stx-pair? _tl145658145679_)
                              (let ((_e145659145682_
                                     (gx#syntax-e _tl145658145679_)))
                                (let ((_hd145660145685_
                                       (##car _e145659145682_))
                                      (_tl145661145687_
                                       (##cdr _e145659145682_)))
                                  (let ((_hd145690_ _hd145660145685_))
                                    (if (gx#stx-pair? _tl145661145687_)
                                        (let ((_e145662145692_
                                               (gx#syntax-e _tl145661145687_)))
                                          (let ((_hd145663145695_
                                                 (##car _e145662145692_))
                                                (_tl145664145697_
                                                 (##cdr _e145662145692_)))
                                            (let ((_expr145700_
                                                   _hd145663145695_))
                                              (if (gx#stx-null?
                                                   _tl145664145697_)
                                                  (if (gx#identifier?
                                                       _hd145690_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd145690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr145700_ '())))
              (_E145655145670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145655145670_)))))
                                        (_E145655145670_)))))
                              (_E145655145670_))))
                      (_E145655145670_)))))
          (_E145654145702_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx145598_)
        (let* ((_e145599145612_ _stx145598_)
               (_E145601145616_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145599145612_)))
               (_E145600145648_
                (lambda ()
                  (if (gx#stx-pair? _e145599145612_)
                      (let ((_e145602145620_ (gx#syntax-e _e145599145612_)))
                        (let ((_hd145603145623_ (##car _e145602145620_))
                              (_tl145604145625_ (##cdr _e145602145620_)))
                          (if (gx#stx-pair? _tl145604145625_)
                              (let ((_e145605145628_
                                     (gx#syntax-e _tl145604145625_)))
                                (let ((_hd145606145631_
                                       (##car _e145605145628_))
                                      (_tl145607145633_
                                       (##cdr _e145605145628_)))
                                  (let ((_id145636_ _hd145606145631_))
                                    (if (gx#stx-pair? _tl145607145633_)
                                        (let ((_e145608145638_
                                               (gx#syntax-e _tl145607145633_)))
                                          (let ((_hd145609145641_
                                                 (##car _e145608145638_))
                                                (_tl145610145643_
                                                 (##cdr _e145608145638_)))
                                            (let ((_alias-id145646_
                                                   _hd145609145641_))
                                              (if (gx#stx-null?
                                                   _tl145610145643_)
                                                  (if (and (gx#identifier?
                                                            _id145636_)
                                                           (gx#identifier?
                                                            _alias-id145646_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id145636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id145646_ '())))
              (_E145601145616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145601145616_)))))
                                        (_E145601145616_)))))
                              (_E145601145616_))))
                      (_E145601145616_)))))
          (_E145600145648_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx145555_)
        (let* ((_e145556145566_ _stx145555_)
               (_E145558145570_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145556145566_)))
               (_E145557145594_
                (lambda ()
                  (if (gx#stx-pair? _e145556145566_)
                      (let ((_e145559145574_ (gx#syntax-e _e145556145566_)))
                        (let ((_hd145560145577_ (##car _e145559145574_))
                              (_tl145561145579_ (##cdr _e145559145574_)))
                          (if (gx#stx-pair? _tl145561145579_)
                              (let ((_e145562145582_
                                     (gx#syntax-e _tl145561145579_)))
                                (let ((_hd145563145585_
                                       (##car _e145562145582_))
                                      (_tl145564145587_
                                       (##cdr _e145562145582_)))
                                  (let* ((_hd145590_ _hd145563145585_)
                                         (_body145592_ _tl145564145587_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd145590_)
                                             (gx#stx-list? _body145592_)
                                             (not (gx#stx-null? _body145592_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd145590_)
                                         _body145592_)
                                        (_E145558145570_)))))
                              (_E145558145570_))))
                      (_E145558145570_)))))
          (_E145557145594_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx145491_)
        (letrec ((_generate145493_
                  (lambda (_clause145523_)
                    (let* ((_e145524145531_ _clause145523_)
                           (_E145526145535_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx145491_
                               _clause145523_)))
                           (_E145525145551_
                            (lambda ()
                              (if (gx#stx-pair? _e145524145531_)
                                  (let ((_e145527145539_
                                         (gx#syntax-e _e145524145531_)))
                                    (let ((_hd145528145542_
                                           (##car _e145527145539_))
                                          (_tl145529145544_
                                           (##cdr _e145527145539_)))
                                      (let* ((_hd145547_ _hd145528145542_)
                                             (_body145549_ _tl145529145544_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd145547_)
                                                 (gx#stx-list? _body145549_)
                                                 (not (gx#stx-null?
                                                       _body145549_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd145547_)
                                                   _body145549_)
                                             (gx#stx-source _clause145523_))
                                            (_E145526145535_)))))
                                  (_E145526145535_)))))
                      (_E145525145551_)))))
          (let* ((_e145494145501_ _stx145491_)
                 (_E145496145505_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145494145501_)))
                 (_E145495145519_
                  (lambda ()
                    (if (gx#stx-pair? _e145494145501_)
                        (let ((_e145497145509_ (gx#syntax-e _e145494145501_)))
                          (let ((_hd145498145512_ (##car _e145497145509_))
                                (_tl145499145514_ (##cdr _e145497145509_)))
                            (let ((_clauses145517_ _tl145499145514_))
                              (if (gx#stx-list? _clauses145517_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate145493_
                                    _clauses145517_))
                                  (_E145496145505_)))))
                        (_E145496145505_)))))
            (_E145495145519_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx145392_ _form145393_)
        (letrec ((_generate145395_
                  (lambda (_bind145438_)
                    (let* ((_e145439145449_ _bind145438_)
                           (_E145441145453_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx145392_
                               _bind145438_)))
                           (_E145440145477_
                            (lambda ()
                              (if (gx#stx-pair? _e145439145449_)
                                  (let ((_e145442145457_
                                         (gx#syntax-e _e145439145449_)))
                                    (let ((_hd145443145460_
                                           (##car _e145442145457_))
                                          (_tl145444145462_
                                           (##cdr _e145442145457_)))
                                      (let ((_ids145465_ _hd145443145460_))
                                        (if (gx#stx-pair? _tl145444145462_)
                                            (let ((_e145445145467_
                                                   (gx#syntax-e
                                                    _tl145444145462_)))
                                              (let ((_hd145446145470_
                                                     (##car _e145445145467_))
                                                    (_tl145447145472_
                                                     (##cdr _e145445145467_)))
                                                (let ((_expr145475_
                                                       _hd145446145470_))
                                                  (if (gx#stx-null?
                                                       _tl145447145472_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids145465_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids145465_)
                        (cons _expr145475_ '()))
                  (_E145441145453_))
              (_E145441145453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145441145453_)))))
                                  (_E145441145453_)))))
                      (_E145440145477_)))))
          (let* ((_e145396145406_ _stx145392_)
                 (_E145398145410_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145396145406_)))
                 (_E145397145434_
                  (lambda ()
                    (if (gx#stx-pair? _e145396145406_)
                        (let ((_e145399145414_ (gx#syntax-e _e145396145406_)))
                          (let ((_hd145400145417_ (##car _e145399145414_))
                                (_tl145401145419_ (##cdr _e145399145414_)))
                            (if (gx#stx-pair? _tl145401145419_)
                                (let ((_e145402145422_
                                       (gx#syntax-e _tl145401145419_)))
                                  (let ((_hd145403145425_
                                         (##car _e145402145422_))
                                        (_tl145404145427_
                                         (##cdr _e145402145422_)))
                                    (let* ((_hd145430_ _hd145403145425_)
                                           (_body145432_ _tl145404145427_))
                                      (if (and (gx#stx-list? _hd145430_)
                                               (gx#stx-list? _body145432_)
                                               (not (gx#stx-null?
                                                     _body145432_)))
                                          (gx#core-cons*
                                           _form145393_
                                           (gx#stx-map1
                                            _generate145395_
                                            _hd145430_)
                                           _body145432_)
                                          (_E145398145410_)))))
                                (_E145398145410_))))
                        (_E145398145410_)))))
            (_E145397145434_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx145484_)
        (let ((_form145486_ '%#let-values))
          (gx#macro-expand-let-values__% _stx145484_ _form145486_))))
    (define gx#macro-expand-let-values
      (lambda _g152063_
        (let ((_g152062_ (##length _g152063_)))
          (cond ((##fx= _g152062_ 1)
                 (apply (lambda (_stx145484_)
                          (gx#macro-expand-let-values__0 _stx145484_))
                        _g152063_))
                ((##fx= _g152062_ 2)
                 (apply (lambda (_stx145488_ _form145489_)
                          (gx#macro-expand-let-values__%
                           _stx145488_
                           _form145489_))
                        _g152063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g152063_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx145389_)
        (gx#macro-expand-let-values__% _stx145389_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx145387_)
        (gx#macro-expand-let-values__% _stx145387_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx145278_)
        (let* ((_e145279145305_ _stx145278_)
               (_E145291145309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145279145305_)))
               (_E145281145351_
                (lambda ()
                  (if (gx#stx-pair? _e145279145305_)
                      (let ((_e145292145313_ (gx#syntax-e _e145279145305_)))
                        (let ((_hd145293145316_ (##car _e145292145313_))
                              (_tl145294145318_ (##cdr _e145292145313_)))
                          (if (gx#stx-pair? _tl145294145318_)
                              (let ((_e145295145321_
                                     (gx#syntax-e _tl145294145318_)))
                                (let ((_hd145296145324_
                                       (##car _e145295145321_))
                                      (_tl145297145326_
                                       (##cdr _e145295145321_)))
                                  (let ((_test145329_ _hd145296145324_))
                                    (if (gx#stx-pair? _tl145297145326_)
                                        (let ((_e145298145331_
                                               (gx#syntax-e _tl145297145326_)))
                                          (let ((_hd145299145334_
                                                 (##car _e145298145331_))
                                                (_tl145300145336_
                                                 (##cdr _e145298145331_)))
                                            (let ((_K145339_ _hd145299145334_))
                                              (if (gx#stx-pair?
                                                   _tl145300145336_)
                                                  (let ((_e145301145341_
                                                         (gx#syntax-e
                                                          _tl145300145336_)))
                                                    (let ((_hd145302145344_
                                                           (##car _e145301145341_))
                                                          (_tl145303145346_
                                                           (##cdr _e145301145341_)))
                                                      (let ((_E145349_
                                                             _hd145302145344_))
                                                        (if (gx#stx-null?
                                                             _tl145303145346_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test145329_
                         _K145339_
                         _E145349_)
                        (_E145291145309_))
                    (_E145291145309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145291145309_)))))
                                        (_E145291145309_)))))
                              (_E145291145309_))))
                      (_E145291145309_))))
               (_E145280145383_
                (lambda ()
                  (if (gx#stx-pair? _e145279145305_)
                      (let ((_e145282145355_ (gx#syntax-e _e145279145305_)))
                        (let ((_hd145283145358_ (##car _e145282145355_))
                              (_tl145284145360_ (##cdr _e145282145355_)))
                          (if (gx#stx-pair? _tl145284145360_)
                              (let ((_e145285145363_
                                     (gx#syntax-e _tl145284145360_)))
                                (let ((_hd145286145366_
                                       (##car _e145285145363_))
                                      (_tl145287145368_
                                       (##cdr _e145285145363_)))
                                  (let ((_test145371_ _hd145286145366_))
                                    (if (gx#stx-pair? _tl145287145368_)
                                        (let ((_e145288145373_
                                               (gx#syntax-e _tl145287145368_)))
                                          (let ((_hd145289145376_
                                                 (##car _e145288145373_))
                                                (_tl145290145378_
                                                 (##cdr _e145288145373_)))
                                            (let ((_K145381_ _hd145289145376_))
                                              (if (gx#stx-null?
                                                   _tl145290145378_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test145371_
                                                       _K145381_
                                                       '#!void)
                                                      (_E145281145351_))
                                                  (_E145281145351_)))))
                                        (_E145281145351_)))))
                              (_E145281145351_))))
                      (_E145281145351_)))))
          (_E145280145383_))))
    (define gx#free-identifier=?
      (lambda (_xid145266_ _yid145267_)
        (let ((_xe145269_ (gx#resolve-identifier__0 _xid145266_))
              (_ye145270_ (gx#resolve-identifier__0 _yid145267_)))
          (if (and _xe145269_ _ye145270_)
              (let ((_$e145272_ (eq? _xe145269_ _ye145270_)))
                (if _$e145272_
                    _$e145272_
                    (if (##structure-instance-of? _xe145269_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye145270_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe145269_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye145270_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe145269_ _ye145270_)
                  '#f
                  (gx#stx-eq? _xid145266_ _yid145267_))))))
    (define gx#bound-identifier=?
      (lambda (_xid145250_ _yid145251_)
        (letrec ((_context145253_
                  (lambda (_e145264_)
                    (if (##structure-direct-instance-of?
                         _e145264_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e145264_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks145254_
                  (lambda (_e145262_)
                    (if (symbol? _e145262_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e145262_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e145262_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e145262_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap145255_
                  (lambda (_e145260_)
                    (if (symbol? _e145260_)
                        _e145260_
                        (gx#syntax-local-unwrap _e145260_)))))
          (let ((_x145257_ (_unwrap145255_ _xid145250_))
                (_y145258_ (_unwrap145255_ _yid145251_)))
            (if (gx#stx-eq? _x145257_ _y145258_)
                (if (eq? (_context145253_ _x145257_)
                         (_context145253_ _y145258_))
                    (equal? (_marks145254_ _x145257_)
                            (_marks145254_ _y145258_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx145248_)
        (if (gx#identifier? _stx145248_)
            (gx#core-identifier=? _stx145248_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx145246_)
        (if (gx#identifier? _stx145246_)
            (gx#core-identifier=? _stx145246_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x145244_)
        (if (gx#identifier? _x145244_)
            (if (not (gx#underscore? _x145244_)) _x145244_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx145190_ _where145191_)
        (let _lp145193_ ((_rest145195_ (gx#syntax->list _stx145190_)))
          (let* ((_rest145196145204_ _rest145195_)
                 (_else145198145212_ (lambda () '#t))
                 (_K145200145222_
                  (lambda (_rest145215_ _hd145216_)
                    (if (not (gx#identifier? _hd145216_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where145191_
                         _hd145216_)
                        (if (find (lambda (_g145217145219_)
                                    (gx#bound-identifier=?
                                     _g145217145219_
                                     _hd145216_))
                                  _rest145215_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where145191_
                             _hd145216_)
                            (_lp145193_ _rest145215_))))))
            (if (##pair? _rest145196145204_)
                (let ((_hd145201145225_ (##car _rest145196145204_))
                      (_tl145202145227_ (##cdr _rest145196145204_)))
                  (let* ((_hd145230_ _hd145201145225_)
                         (_rest145232_ _tl145202145227_))
                    (_K145200145222_ _rest145232_ _hd145230_)))
                (_else145198145212_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx145237_)
        (let ((_where145239_ _stx145237_))
          (gx#check-duplicate-identifiers__% _stx145237_ _where145239_))))
    (define gx#check-duplicate-identifiers
      (lambda _g152065_
        (let ((_g152064_ (##length _g152065_)))
          (cond ((##fx= _g152064_ 1)
                 (apply (lambda (_stx145237_)
                          (gx#check-duplicate-identifiers__0 _stx145237_))
                        _g152065_))
                ((##fx= _g152064_ 2)
                 (apply (lambda (_stx145241_ _where145242_)
                          (gx#check-duplicate-identifiers__%
                           _stx145241_
                           _where145242_))
                        _g152065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g152065_))))))
    (define gx#core-bind-values?
      (lambda (_stx145182_)
        (gx#stx-andmap
         (lambda (_x145184_)
           (let ((_$e145186_ (gx#identifier? _x145184_)))
             (if _$e145186_ _$e145186_ (gx#stx-false? _x145184_))))
         _stx145182_)))
    (define gx#core-bind-values!__%
      (lambda (_stx145146_ _rebind?145147_ _phi145148_ _ctx145149_)
        (gx#stx-for-each1
         (lambda (_id145151_)
           (if (gx#identifier? _id145151_)
               (gx#core-bind-runtime!__%
                _id145151_
                _rebind?145147_
                _phi145148_
                _ctx145149_)
               '#!void))
         _stx145146_)))
    (define gx#core-bind-values!__0
      (lambda (_stx145156_)
        (let* ((_rebind?145158_ '#f)
               (_phi145160_ (gx#current-expander-phi))
               (_ctx145162_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145156_
           _rebind?145158_
           _phi145160_
           _ctx145162_))))
    (define gx#core-bind-values!__1
      (lambda (_stx145164_ _rebind?145165_)
        (let* ((_phi145167_ (gx#current-expander-phi))
               (_ctx145169_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145164_
           _rebind?145165_
           _phi145167_
           _ctx145169_))))
    (define gx#core-bind-values!__2
      (lambda (_stx145171_ _rebind?145172_ _phi145173_)
        (let ((_ctx145175_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145171_
           _rebind?145172_
           _phi145173_
           _ctx145175_))))
    (define gx#core-bind-values!
      (lambda _g152067_
        (let ((_g152066_ (##length _g152067_)))
          (cond ((##fx= _g152066_ 1)
                 (apply (lambda (_stx145156_)
                          (gx#core-bind-values!__0 _stx145156_))
                        _g152067_))
                ((##fx= _g152066_ 2)
                 (apply (lambda (_stx145164_ _rebind?145165_)
                          (gx#core-bind-values!__1
                           _stx145164_
                           _rebind?145165_))
                        _g152067_))
                ((##fx= _g152066_ 3)
                 (apply (lambda (_stx145171_ _rebind?145172_ _phi145173_)
                          (gx#core-bind-values!__2
                           _stx145171_
                           _rebind?145172_
                           _phi145173_))
                        _g152067_))
                ((##fx= _g152066_ 4)
                 (apply (lambda (_stx145177_
                                 _rebind?145178_
                                 _phi145179_
                                 _ctx145180_)
                          (gx#core-bind-values!__%
                           _stx145177_
                           _rebind?145178_
                           _phi145179_
                           _ctx145180_))
                        _g152067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g152067_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx145141_)
        (gx#stx-map1
         (lambda (_x145143_)
           (if (gx#identifier? _x145143_)
               (gx#core-quote-syntax__0 _x145143_)
               '#f))
         _stx145141_)))
    (define gx#core-runtime-ref?
      (lambda (_stx145134_)
        (if (gx#identifier? _stx145134_)
            (let* ((_bind145136_ (gx#resolve-identifier__0 _stx145134_))
                   (_$e145138_ (not _bind145136_)))
              (if _$e145138_
                  _$e145138_
                  (##structure-instance-of?
                   _bind145136_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id145126_ _form145127_)
        (let ((_bind145129_ (gx#resolve-identifier__0 _id145126_)))
          (if (##structure-instance-of? _bind145129_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id145126_)
              (if (not _bind145129_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id145126_)))
                      (gx#core-quote-syntax__0 _id145126_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form145127_
                       _id145126_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form145127_
                   _id145126_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id145085_ _rebind?145086_ _phi145087_ _ctx145088_)
        (let* ((_key145090_ (gx#core-identifier-key _id145085_))
               (_eid145092_
                (gx#make-binding-id__%
                 _key145090_
                 '#f
                 _phi145087_
                 _ctx145088_))
               (_bind145094_
                (if (##structure-instance-of?
                     _ctx145088_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145092_
                     _key145090_
                     _phi145087_
                     _ctx145088_)
                    (if (##structure-instance-of?
                         _ctx145088_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145092_
                         _key145090_
                         _phi145087_)
                        (if (##structure-instance-of?
                             _ctx145088_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid145092_
                             _key145090_
                             _phi145087_)
                            (##structure
                             gx#runtime-binding::t
                             _eid145092_
                             _key145090_
                             _phi145087_))))))
          (gx#bind-identifier!__%
           _id145085_
           _bind145094_
           _rebind?145086_
           _phi145087_
           _ctx145088_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id145100_)
        (let* ((_rebind?145102_ '#f)
               (_phi145104_ (gx#current-expander-phi))
               (_ctx145106_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145100_
           _rebind?145102_
           _phi145104_
           _ctx145106_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id145108_ _rebind?145109_)
        (let* ((_phi145111_ (gx#current-expander-phi))
               (_ctx145113_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145108_
           _rebind?145109_
           _phi145111_
           _ctx145113_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id145115_ _rebind?145116_ _phi145117_)
        (let ((_ctx145119_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145115_
           _rebind?145116_
           _phi145117_
           _ctx145119_))))
    (define gx#core-bind-runtime!
      (lambda _g152069_
        (let ((_g152068_ (##length _g152069_)))
          (cond ((##fx= _g152068_ 1)
                 (apply (lambda (_id145100_)
                          (gx#core-bind-runtime!__0 _id145100_))
                        _g152069_))
                ((##fx= _g152068_ 2)
                 (apply (lambda (_id145108_ _rebind?145109_)
                          (gx#core-bind-runtime!__1
                           _id145108_
                           _rebind?145109_))
                        _g152069_))
                ((##fx= _g152068_ 3)
                 (apply (lambda (_id145115_ _rebind?145116_ _phi145117_)
                          (gx#core-bind-runtime!__2
                           _id145115_
                           _rebind?145116_
                           _phi145117_))
                        _g152069_))
                ((##fx= _g152068_ 4)
                 (apply (lambda (_id145121_
                                 _rebind?145122_
                                 _phi145123_
                                 _ctx145124_)
                          (gx#core-bind-runtime!__%
                           _id145121_
                           _rebind?145122_
                           _phi145123_
                           _ctx145124_))
                        _g152069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g152069_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id145040_ _eid145041_ _rebind?145042_ _phi145043_ _ctx145044_)
        (let* ((_key145046_ (gx#core-identifier-key _id145040_))
               (_bind145048_
                (if (##structure-instance-of?
                     _ctx145044_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145041_
                     _key145046_
                     _phi145043_
                     _ctx145044_)
                    (if (##structure-instance-of?
                         _ctx145044_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145041_
                         _key145046_
                         _phi145043_)
                        (##structure
                         gx#runtime-binding::t
                         _eid145041_
                         _key145046_
                         _phi145043_)))))
          (gx#bind-identifier!__%
           _id145040_
           _bind145048_
           _rebind?145042_
           _phi145043_
           _ctx145044_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id145054_ _eid145055_)
        (let* ((_rebind?145057_ '#f)
               (_phi145059_ (gx#current-expander-phi))
               (_ctx145061_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145054_
           _eid145055_
           _rebind?145057_
           _phi145059_
           _ctx145061_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id145063_ _eid145064_ _rebind?145065_)
        (let* ((_phi145067_ (gx#current-expander-phi))
               (_ctx145069_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145063_
           _eid145064_
           _rebind?145065_
           _phi145067_
           _ctx145069_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id145071_ _eid145072_ _rebind?145073_ _phi145074_)
        (let ((_ctx145076_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145071_
           _eid145072_
           _rebind?145073_
           _phi145074_
           _ctx145076_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g152071_
        (let ((_g152070_ (##length _g152071_)))
          (cond ((##fx= _g152070_ 2)
                 (apply (lambda (_id145054_ _eid145055_)
                          (gx#core-bind-runtime-reference!__0
                           _id145054_
                           _eid145055_))
                        _g152071_))
                ((##fx= _g152070_ 3)
                 (apply (lambda (_id145063_ _eid145064_ _rebind?145065_)
                          (gx#core-bind-runtime-reference!__1
                           _id145063_
                           _eid145064_
                           _rebind?145065_))
                        _g152071_))
                ((##fx= _g152070_ 4)
                 (apply (lambda (_id145071_
                                 _eid145072_
                                 _rebind?145073_
                                 _phi145074_)
                          (gx#core-bind-runtime-reference!__2
                           _id145071_
                           _eid145072_
                           _rebind?145073_
                           _phi145074_))
                        _g152071_))
                ((##fx= _g152070_ 5)
                 (apply (lambda (_id145078_
                                 _eid145079_
                                 _rebind?145080_
                                 _phi145081_
                                 _ctx145082_)
                          (gx#core-bind-runtime-reference!__%
                           _id145078_
                           _eid145079_
                           _rebind?145080_
                           _phi145081_
                           _ctx145082_))
                        _g152071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g152071_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id145000_ _eid145001_ _rebind?145002_ _phi145003_ _ctx145004_)
        (gx#bind-identifier!__%
         _id145000_
         (##structure
          gx#extern-binding::t
          _eid145001_
          (gx#core-identifier-key _id145000_)
          _phi145003_)
         _rebind?145002_
         _phi145003_
         _ctx145004_)))
    (define gx#core-bind-extern!__0
      (lambda (_id145009_ _eid145010_)
        (let* ((_rebind?145012_ '#f)
               (_phi145014_ (gx#current-expander-phi))
               (_ctx145016_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145009_
           _eid145010_
           _rebind?145012_
           _phi145014_
           _ctx145016_))))
    (define gx#core-bind-extern!__1
      (lambda (_id145018_ _eid145019_ _rebind?145020_)
        (let* ((_phi145022_ (gx#current-expander-phi))
               (_ctx145024_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145018_
           _eid145019_
           _rebind?145020_
           _phi145022_
           _ctx145024_))))
    (define gx#core-bind-extern!__2
      (lambda (_id145026_ _eid145027_ _rebind?145028_ _phi145029_)
        (let ((_ctx145031_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145026_
           _eid145027_
           _rebind?145028_
           _phi145029_
           _ctx145031_))))
    (define gx#core-bind-extern!
      (lambda _g152073_
        (let ((_g152072_ (##length _g152073_)))
          (cond ((##fx= _g152072_ 2)
                 (apply (lambda (_id145009_ _eid145010_)
                          (gx#core-bind-extern!__0 _id145009_ _eid145010_))
                        _g152073_))
                ((##fx= _g152072_ 3)
                 (apply (lambda (_id145018_ _eid145019_ _rebind?145020_)
                          (gx#core-bind-extern!__1
                           _id145018_
                           _eid145019_
                           _rebind?145020_))
                        _g152073_))
                ((##fx= _g152072_ 4)
                 (apply (lambda (_id145026_
                                 _eid145027_
                                 _rebind?145028_
                                 _phi145029_)
                          (gx#core-bind-extern!__2
                           _id145026_
                           _eid145027_
                           _rebind?145028_
                           _phi145029_))
                        _g152073_))
                ((##fx= _g152072_ 5)
                 (apply (lambda (_id145033_
                                 _eid145034_
                                 _rebind?145035_
                                 _phi145036_
                                 _ctx145037_)
                          (gx#core-bind-extern!__%
                           _id145033_
                           _eid145034_
                           _rebind?145035_
                           _phi145036_
                           _ctx145037_))
                        _g152073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g152073_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id144954_ _e144955_ _rebind?144956_ _phi144957_ _ctx144958_)
        (gx#bind-identifier!__%
         _id144954_
         (let ((_key144963_ (gx#core-identifier-key _id144954_))
               (_e144964_
                (if (or (##structure-instance-of? _e144955_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e144955_
                         'gx#expander-context::t))
                    _e144955_
                    (##structure
                     gx#user-expander::t
                     _e144955_
                     _ctx144958_
                     _phi144957_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key144963_ '#t _phi144957_ _ctx144958_)
            _key144963_
            _phi144957_
            _e144964_))
         _rebind?144956_
         _phi144957_
         _ctx144958_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id144969_ _e144970_)
        (let* ((_rebind?144972_ '#f)
               (_phi144974_ (gx#current-expander-phi))
               (_ctx144976_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144969_
           _e144970_
           _rebind?144972_
           _phi144974_
           _ctx144976_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id144978_ _e144979_ _rebind?144980_)
        (let* ((_phi144982_ (gx#current-expander-phi))
               (_ctx144984_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144978_
           _e144979_
           _rebind?144980_
           _phi144982_
           _ctx144984_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id144986_ _e144987_ _rebind?144988_ _phi144989_)
        (let ((_ctx144991_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144986_
           _e144987_
           _rebind?144988_
           _phi144989_
           _ctx144991_))))
    (define gx#core-bind-syntax!
      (lambda _g152075_
        (let ((_g152074_ (##length _g152075_)))
          (cond ((##fx= _g152074_ 2)
                 (apply (lambda (_id144969_ _e144970_)
                          (gx#core-bind-syntax!__0 _id144969_ _e144970_))
                        _g152075_))
                ((##fx= _g152074_ 3)
                 (apply (lambda (_id144978_ _e144979_ _rebind?144980_)
                          (gx#core-bind-syntax!__1
                           _id144978_
                           _e144979_
                           _rebind?144980_))
                        _g152075_))
                ((##fx= _g152074_ 4)
                 (apply (lambda (_id144986_
                                 _e144987_
                                 _rebind?144988_
                                 _phi144989_)
                          (gx#core-bind-syntax!__2
                           _id144986_
                           _e144987_
                           _rebind?144988_
                           _phi144989_))
                        _g152075_))
                ((##fx= _g152074_ 5)
                 (apply (lambda (_id144993_
                                 _e144994_
                                 _rebind?144995_
                                 _phi144996_
                                 _ctx144997_)
                          (gx#core-bind-syntax!__%
                           _id144993_
                           _e144994_
                           _rebind?144995_
                           _phi144996_
                           _ctx144997_))
                        _g152075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g152075_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id144937_ _e144938_ _rebind?144939_)
        (gx#core-bind-syntax!__%
         _id144937_
         _e144938_
         _rebind?144939_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id144944_ _e144945_)
        (let ((_rebind?144947_ '#f))
          (gx#core-bind-root-syntax!__%
           _id144944_
           _e144945_
           _rebind?144947_))))
    (define gx#core-bind-root-syntax!
      (lambda _g152077_
        (let ((_g152076_ (##length _g152077_)))
          (cond ((##fx= _g152076_ 2)
                 (apply (lambda (_id144944_ _e144945_)
                          (gx#core-bind-root-syntax!__0 _id144944_ _e144945_))
                        _g152077_))
                ((##fx= _g152076_ 3)
                 (apply (lambda (_id144949_ _e144950_ _rebind?144951_)
                          (gx#core-bind-root-syntax!__%
                           _id144949_
                           _e144950_
                           _rebind?144951_))
                        _g152077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g152077_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id144895_
               _alias-id144896_
               _rebind?144897_
               _phi144898_
               _ctx144899_)
        (gx#bind-identifier!__%
         _id144895_
         (let ((_key144901_ (gx#core-identifier-key _id144895_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key144901_ '#t _phi144898_ _ctx144899_)
            _key144901_
            _phi144898_
            _alias-id144896_))
         _rebind?144897_
         _phi144898_
         _ctx144899_)))
    (define gx#core-bind-alias!__0
      (lambda (_id144906_ _alias-id144907_)
        (let* ((_rebind?144909_ '#f)
               (_phi144911_ (gx#current-expander-phi))
               (_ctx144913_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144906_
           _alias-id144907_
           _rebind?144909_
           _phi144911_
           _ctx144913_))))
    (define gx#core-bind-alias!__1
      (lambda (_id144915_ _alias-id144916_ _rebind?144917_)
        (let* ((_phi144919_ (gx#current-expander-phi))
               (_ctx144921_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144915_
           _alias-id144916_
           _rebind?144917_
           _phi144919_
           _ctx144921_))))
    (define gx#core-bind-alias!__2
      (lambda (_id144923_ _alias-id144924_ _rebind?144925_ _phi144926_)
        (let ((_ctx144928_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144923_
           _alias-id144924_
           _rebind?144925_
           _phi144926_
           _ctx144928_))))
    (define gx#core-bind-alias!
      (lambda _g152079_
        (let ((_g152078_ (##length _g152079_)))
          (cond ((##fx= _g152078_ 2)
                 (apply (lambda (_id144906_ _alias-id144907_)
                          (gx#core-bind-alias!__0 _id144906_ _alias-id144907_))
                        _g152079_))
                ((##fx= _g152078_ 3)
                 (apply (lambda (_id144915_ _alias-id144916_ _rebind?144917_)
                          (gx#core-bind-alias!__1
                           _id144915_
                           _alias-id144916_
                           _rebind?144917_))
                        _g152079_))
                ((##fx= _g152078_ 4)
                 (apply (lambda (_id144923_
                                 _alias-id144924_
                                 _rebind?144925_
                                 _phi144926_)
                          (gx#core-bind-alias!__2
                           _id144923_
                           _alias-id144924_
                           _rebind?144925_
                           _phi144926_))
                        _g152079_))
                ((##fx= _g152078_ 5)
                 (apply (lambda (_id144930_
                                 _alias-id144931_
                                 _rebind?144932_
                                 _phi144933_
                                 _ctx144934_)
                          (gx#core-bind-alias!__%
                           _id144930_
                           _alias-id144931_
                           _rebind?144932_
                           _phi144933_
                           _ctx144934_))
                        _g152079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g152079_))))))
    (define gx#make-binding-id__%
      (lambda (_key144852_ _syntax?144853_ _phi144854_ _ctx144855_)
        (if (uninterned-symbol? _key144852_)
            (gensym 'L)
            (if (pair? _key144852_)
                (gensym (car _key144852_))
                (if (##structure-instance-of? _ctx144855_ 'gx#top-context::t)
                    (let ((_ns144857_
                           (gx#core-context-namespace__% _ctx144855_)))
                      (if (and (fxzero? _phi144854_) (not _syntax?144853_))
                          (if _ns144857_
                              (make-symbol__1 _ns144857_ '"#" _key144852_)
                              _key144852_)
                          (if _syntax?144853_
                              (make-symbol__1
                               (let ((_$e144859_ _ns144857_))
                                 (if _$e144859_ _$e144859_ '""))
                               '"[:"
                               (number->string _phi144854_)
                               '":]#"
                               _key144852_)
                              (make-symbol__1
                               (let ((_$e144862_ _ns144857_))
                                 (if _$e144862_ _$e144862_ '""))
                               '"["
                               (number->string _phi144854_)
                               '"]#"
                               _key144852_))))
                    (gensym _key144852_))))))
    (define gx#make-binding-id__0
      (lambda (_key144868_)
        (let* ((_syntax?144870_ '#f)
               (_phi144872_ (gx#current-expander-phi))
               (_ctx144874_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144868_
           _syntax?144870_
           _phi144872_
           _ctx144874_))))
    (define gx#make-binding-id__1
      (lambda (_key144876_ _syntax?144877_)
        (let* ((_phi144879_ (gx#current-expander-phi))
               (_ctx144881_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144876_
           _syntax?144877_
           _phi144879_
           _ctx144881_))))
    (define gx#make-binding-id__2
      (lambda (_key144883_ _syntax?144884_ _phi144885_)
        (let ((_ctx144887_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144883_
           _syntax?144884_
           _phi144885_
           _ctx144887_))))
    (define gx#make-binding-id
      (lambda _g152081_
        (let ((_g152080_ (##length _g152081_)))
          (cond ((##fx= _g152080_ 1)
                 (apply (lambda (_key144868_)
                          (gx#make-binding-id__0 _key144868_))
                        _g152081_))
                ((##fx= _g152080_ 2)
                 (apply (lambda (_key144876_ _syntax?144877_)
                          (gx#make-binding-id__1 _key144876_ _syntax?144877_))
                        _g152081_))
                ((##fx= _g152080_ 3)
                 (apply (lambda (_key144883_ _syntax?144884_ _phi144885_)
                          (gx#make-binding-id__2
                           _key144883_
                           _syntax?144884_
                           _phi144885_))
                        _g152081_))
                ((##fx= _g152080_ 4)
                 (apply (lambda (_key144889_
                                 _syntax?144890_
                                 _phi144891_
                                 _ctx144892_)
                          (gx#make-binding-id__%
                           _key144889_
                           _syntax?144890_
                           _phi144891_
                           _ctx144892_))
                        _g152081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g152081_))))))))
