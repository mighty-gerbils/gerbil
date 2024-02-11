(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707657570)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152644_)
        (letrec ((_expand-special152646_
                  (lambda (_hd152648_ _K152649_ _rest152650_ _r152651_)
                    (_K152649_
                     _rest152650_
                     (cons (gx#core-expand-top _hd152648_) _r152651_)))))
          (gx#core-expand-block__0 _stx152644_ _expand-special152646_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152397_)
        (letrec ((_expand-special152399_
                  (lambda (_hd152519_ _K152520_ _rest152521_ _r152522_)
                    (let* ((_K152526_
                            (lambda (_e152524_)
                              (_K152520_
                               _rest152521_
                               (cons _e152524_ _r152522_))))
                           (_e152527152556_ _hd152519_)
                           (_E152551152560_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152527152556_)))
                           (_E152547152572_
                            (lambda ()
                              (if (gx#stx-pair? _e152527152556_)
                                  (let ((_e152552152564_
                                         (gx#syntax-e _e152527152556_)))
                                    (let ((_hd152553152567_
                                           (##car _e152552152564_))
                                          (_tl152554152569_
                                           (##cdr _e152552152564_)))
                                      (if (and (gx#identifier?
                                                _hd152553152567_)
                                               (gx#core-identifier=?
                                                _hd152553152567_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152526_
                                               (gx#core-expand-define-runtime%
                                                _hd152519_))
                                              (_E152551152560_))
                                          (_E152551152560_))))
                                  (_E152551152560_))))
                           (_E152543152584_
                            (lambda ()
                              (if (gx#stx-pair? _e152527152556_)
                                  (let ((_e152548152576_
                                         (gx#syntax-e _e152527152556_)))
                                    (let ((_hd152549152579_
                                           (##car _e152548152576_))
                                          (_tl152550152581_
                                           (##cdr _e152548152576_)))
                                      (if (and (gx#identifier?
                                                _hd152549152579_)
                                               (gx#core-identifier=?
                                                _hd152549152579_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152526_
                                               (gx#core-expand-define-alias%
                                                _hd152519_))
                                              (_E152547152572_))
                                          (_E152547152572_))))
                                  (_E152547152572_))))
                           (_E152533152596_
                            (lambda ()
                              (if (gx#stx-pair? _e152527152556_)
                                  (let ((_e152544152588_
                                         (gx#syntax-e _e152527152556_)))
                                    (let ((_hd152545152591_
                                           (##car _e152544152588_))
                                          (_tl152546152593_
                                           (##cdr _e152544152588_)))
                                      (if (and (gx#identifier?
                                                _hd152545152591_)
                                               (gx#core-identifier=?
                                                _hd152545152591_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152526_
                                               (gx#core-expand-define-syntax%
                                                _hd152519_))
                                              (_E152543152584_))
                                          (_E152543152584_))))
                                  (_E152543152584_))))
                           (_E152529152628_
                            (lambda ()
                              (if (gx#stx-pair? _e152527152556_)
                                  (let ((_e152534152600_
                                         (gx#syntax-e _e152527152556_)))
                                    (let ((_hd152535152603_
                                           (##car _e152534152600_))
                                          (_tl152536152605_
                                           (##cdr _e152534152600_)))
                                      (if (and (gx#identifier?
                                                _hd152535152603_)
                                               (gx#core-identifier=?
                                                _hd152535152603_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152536152605_)
                                              (let ((_e152537152608_
                                                     (gx#syntax-e
                                                      _tl152536152605_)))
                                                (let ((_hd152538152611_
                                                       (##car _e152537152608_))
                                                      (_tl152539152613_
                                                       (##cdr _e152537152608_)))
                                                  (let ((_hd-bind152616_
                                                         _hd152538152611_))
                                                    (if (gx#stx-pair?
                                                         _tl152539152613_)
                                                        (let ((_e152540152618_
                                                               (gx#syntax-e
                                                                _tl152539152613_)))
                                                          (let ((_hd152541152621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152540152618_))
                        (_tl152542152623_ (##cdr _e152540152618_)))
                    (let ((_expr152626_ _hd152541152621_))
                      (if (gx#stx-null? _tl152542152623_)
                          (if (gx#core-bind-values? _hd-bind152616_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152616_)
                                (_K152526_ _hd152519_))
                              (_E152533152596_))
                          (_E152533152596_)))))
                (_E152533152596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152533152596_))
                                          (_E152533152596_))))
                                  (_E152533152596_))))
                           (_E152528152640_
                            (lambda ()
                              (if (gx#stx-pair? _e152527152556_)
                                  (let ((_e152530152632_
                                         (gx#syntax-e _e152527152556_)))
                                    (let ((_hd152531152635_
                                           (##car _e152530152632_))
                                          (_tl152532152637_
                                           (##cdr _e152530152632_)))
                                      (if (and (gx#identifier?
                                                _hd152531152635_)
                                               (gx#core-identifier=?
                                                _hd152531152635_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152526_
                                               (gx#core-expand-begin-syntax%
                                                _hd152519_))
                                              (_E152529152628_))
                                          (_E152529152628_))))
                                  (_E152529152628_)))))
                      (_E152528152640_))))
                 (_eval-body152400_
                  (lambda (_rbody152408_)
                    (let _lp152410_ ((_rest152412_ _rbody152408_)
                                     (_body152413_ '())
                                     (_ebody152414_ '()))
                      (let* ((_rest152415152423_ _rest152412_)
                             (_else152417152431_
                              (lambda ()
                                (values _body152413_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152414_)
                                          (gx#stx-source _stx152397_))))))
                             (_K152419152507_
                              (lambda (_rest152434_ _hd152435_)
                                (let* ((_e152436152453_ _hd152435_)
                                       (_E152448152457_
                                        (lambda ()
                                          (_lp152410_
                                           _rest152434_
                                           (cons _hd152435_ _body152413_)
                                           (cons _hd152435_ _ebody152414_))))
                                       (_E152438152469_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152436152453_)
                                              (let ((_e152449152461_
                                                     (gx#syntax-e
                                                      _e152436152453_)))
                                                (let ((_hd152450152464_
                                                       (##car _e152449152461_))
                                                      (_tl152451152466_
                                                       (##cdr _e152449152461_)))
                                                  (if (and (gx#identifier?
                                                            _hd152450152464_)
                                                           (gx#core-identifier=?
                                                            _hd152450152464_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152410_
                                                           _rest152434_
                                                           (cons _hd152435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152413_)
                   _ebody152414_)
                  (_E152448152457_))
              (_E152448152457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152448152457_))))
                                       (_E152437152503_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152436152453_)
                                              (let ((_e152439152473_
                                                     (gx#syntax-e
                                                      _e152436152453_)))
                                                (let ((_hd152440152476_
                                                       (##car _e152439152473_))
                                                      (_tl152441152478_
                                                       (##cdr _e152439152473_)))
                                                  (if (and (gx#identifier?
                                                            _hd152440152476_)
                                                           (gx#core-identifier=?
                                                            _hd152440152476_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152441152478_)
                                                          (let ((_e152442152481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152441152478_)))
                    (let ((_hd152443152484_ (##car _e152442152481_))
                          (_tl152444152486_ (##cdr _e152442152481_)))
                      (let ((_hd-bind152489_ _hd152443152484_))
                        (if (gx#stx-pair? _tl152444152486_)
                            (let ((_e152445152491_
                                   (gx#syntax-e _tl152444152486_)))
                              (let ((_hd152446152494_ (##car _e152445152491_))
                                    (_tl152447152496_ (##cdr _e152445152491_)))
                                (let ((_expr152499_ _hd152446152494_))
                                  (if (gx#stx-null? _tl152447152496_)
                                      (if '#t
                                          (let ((_ehd152501_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152489_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152499_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152435_))))
                                            (_lp152410_
                                             _rest152434_
                                             (cons _ehd152501_ _body152413_)
                                             (cons _ehd152501_ _ebody152414_)))
                                          (_E152438152469_))
                                      (_E152438152469_)))))
                            (_E152438152469_)))))
                  (_E152438152469_))
              (_E152438152469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152438152469_)))))
                                  (_E152437152503_)))))
                        (if (##pair? _rest152415152423_)
                            (let ((_hd152420152510_ (##car _rest152415152423_))
                                  (_tl152421152512_
                                   (##cdr _rest152415152423_)))
                              (let* ((_hd152515_ _hd152420152510_)
                                     (_rest152517_ _tl152421152512_))
                                (_K152419152507_ _rest152517_ _hd152515_)))
                            (_else152417152431_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152403_
                     (gx#core-expand-block__1
                      _stx152397_
                      _expand-special152399_
                      '#f))
                    (_g157135_ (_eval-body152400_ _rbody152403_)))
               (begin
                 (let ((_g157136_
                        (if (##values? _g157135_)
                            (##vector-length _g157135_)
                            1)))
                   (if (not (##fx= _g157136_ 2))
                       (error "Context expects 2 values" _g157136_)))
                 (let ((_expanded-body152405_ (##vector-ref _g157135_ 0))
                       (_value152406_ (##vector-ref _g157135_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152405_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152406_ '())))
                    (gx#stx-source _stx152397_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152367_)
        (let* ((_e152368152375_ _stx152367_)
               (_E152370152379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152368152375_)))
               (_E152369152393_
                (lambda ()
                  (if (gx#stx-pair? _e152368152375_)
                      (let ((_e152371152383_ (gx#syntax-e _e152368152375_)))
                        (let ((_hd152372152386_ (##car _e152371152383_))
                              (_tl152373152388_ (##cdr _e152371152383_)))
                          (let ((_body152391_ _tl152373152388_))
                            (if (gx#stx-list? _body152391_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152391_)
                                 (gx#stx-source _stx152367_))
                                (_E152370152379_)))))
                      (_E152370152379_)))))
          (_E152369152393_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152365_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152365_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152311_)
        (let* ((_e152312152325_ _stx152311_)
               (_E152314152329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152312152325_)))
               (_E152313152361_
                (lambda ()
                  (if (gx#stx-pair? _e152312152325_)
                      (let ((_e152315152333_ (gx#syntax-e _e152312152325_)))
                        (let ((_hd152316152336_ (##car _e152315152333_))
                              (_tl152317152338_ (##cdr _e152315152333_)))
                          (if (gx#stx-pair? _tl152317152338_)
                              (let ((_e152318152341_
                                     (gx#syntax-e _tl152317152338_)))
                                (let ((_hd152319152344_
                                       (##car _e152318152341_))
                                      (_tl152320152346_
                                       (##cdr _e152318152341_)))
                                  (let ((_ann152349_ _hd152319152344_))
                                    (if (gx#stx-pair? _tl152320152346_)
                                        (let ((_e152321152351_
                                               (gx#syntax-e _tl152320152346_)))
                                          (let ((_hd152322152354_
                                                 (##car _e152321152351_))
                                                (_tl152323152356_
                                                 (##cdr _e152321152351_)))
                                            (let ((_expr152359_
                                                   _hd152322152354_))
                                              (if (gx#stx-null?
                                                   _tl152323152356_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152359_)
                                 '())))
               (gx#stx-source _stx152311_))
              (_E152314152329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152314152329_)))))
                                        (_E152314152329_)))))
                              (_E152314152329_))))
                      (_E152314152329_)))))
          (_E152313152361_))))
    (define gx#core-expand-local-block
      (lambda (_stx152035_ _body152036_)
        (letrec ((_expand-special152038_
                  (lambda (_hd152306_ _K152307_ _rest152308_ _r152309_)
                    (_K152307_
                     '()
                     (cons (_expand-internal152039_ _hd152306_ _rest152308_)
                           _r152309_))))
                 (_expand-internal152039_
                  (lambda (_hd152302_ _rest152303_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152041_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152302_ _rest152303_))
                          (gx#stx-source _stx152035_))
                         _expand-internal-special152040_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157129
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157129)
                       __obj157129))))
                 (_expand-internal-special152040_
                  (lambda (_hd152197_ _K152198_ _rest152199_ _r152200_)
                    (let* ((_e152201152226_ _hd152197_)
                           (_E152221152230_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152201152226_)))
                           (_E152217152242_
                            (lambda ()
                              (if (gx#stx-pair? _e152201152226_)
                                  (let ((_e152222152234_
                                         (gx#syntax-e _e152201152226_)))
                                    (let ((_hd152223152237_
                                           (##car _e152222152234_))
                                          (_tl152224152239_
                                           (##cdr _e152222152234_)))
                                      (if (and (gx#identifier?
                                                _hd152223152237_)
                                               (gx#core-identifier=?
                                                _hd152223152237_
                                                '%#declare))
                                          (if '#t
                                              (_K152198_
                                               _rest152199_
                                               (cons (gx#core-expand-declare%
                                                      _hd152197_)
                                                     _r152200_))
                                              (_E152221152230_))
                                          (_E152221152230_))))
                                  (_E152221152230_))))
                           (_E152213152254_
                            (lambda ()
                              (if (gx#stx-pair? _e152201152226_)
                                  (let ((_e152218152246_
                                         (gx#syntax-e _e152201152226_)))
                                    (let ((_hd152219152249_
                                           (##car _e152218152246_))
                                          (_tl152220152251_
                                           (##cdr _e152218152246_)))
                                      (if (and (gx#identifier?
                                                _hd152219152249_)
                                               (gx#core-identifier=?
                                                _hd152219152249_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152197_)
                                                (_K152198_
                                                 _rest152199_
                                                 _r152200_))
                                              (_E152217152242_))
                                          (_E152217152242_))))
                                  (_E152217152242_))))
                           (_E152203152266_
                            (lambda ()
                              (if (gx#stx-pair? _e152201152226_)
                                  (let ((_e152214152258_
                                         (gx#syntax-e _e152201152226_)))
                                    (let ((_hd152215152261_
                                           (##car _e152214152258_))
                                          (_tl152216152263_
                                           (##cdr _e152214152258_)))
                                      (if (and (gx#identifier?
                                                _hd152215152261_)
                                               (gx#core-identifier=?
                                                _hd152215152261_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152197_)
                                                (_K152198_
                                                 _rest152199_
                                                 _r152200_))
                                              (_E152213152254_))
                                          (_E152213152254_))))
                                  (_E152213152254_))))
                           (_E152202152298_
                            (lambda ()
                              (if (gx#stx-pair? _e152201152226_)
                                  (let ((_e152204152270_
                                         (gx#syntax-e _e152201152226_)))
                                    (let ((_hd152205152273_
                                           (##car _e152204152270_))
                                          (_tl152206152275_
                                           (##cdr _e152204152270_)))
                                      (if (and (gx#identifier?
                                                _hd152205152273_)
                                               (gx#core-identifier=?
                                                _hd152205152273_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152206152275_)
                                              (let ((_e152207152278_
                                                     (gx#syntax-e
                                                      _tl152206152275_)))
                                                (let ((_hd152208152281_
                                                       (##car _e152207152278_))
                                                      (_tl152209152283_
                                                       (##cdr _e152207152278_)))
                                                  (let ((_hd-bind152286_
                                                         _hd152208152281_))
                                                    (if (gx#stx-pair?
                                                         _tl152209152283_)
                                                        (let ((_e152210152288_
                                                               (gx#syntax-e
                                                                _tl152209152283_)))
                                                          (let ((_hd152211152291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152210152288_))
                        (_tl152212152293_ (##cdr _e152210152288_)))
                    (let ((_expr152296_ _hd152211152291_))
                      (if (gx#stx-null? _tl152212152293_)
                          (if (gx#core-bind-values? _hd-bind152286_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152286_)
                                (_K152198_
                                 _rest152199_
                                 (cons _hd152197_ _r152200_)))
                              (_E152203152266_))
                          (_E152203152266_)))))
                (_E152203152266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152203152266_))
                                          (_E152203152266_))))
                                  (_E152203152266_)))))
                      (_E152202152298_))))
                 (_wrap-internal152041_
                  (lambda (_rbody152043_)
                    (let _lp152045_ ((_rest152047_ _rbody152043_)
                                     (_decls152048_ '())
                                     (_bind152049_ '())
                                     (_body152050_ '()))
                      (let* ((_e152051152058_ _rest152047_)
                             (_E152053152107_
                              (lambda ()
                                (let* ((_body152102_
                                        (let* ((_body152061152071_
                                                _body152050_)
                                               (_else152064152079_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152050_)
                                                   (gx#stx-source
                                                    _stx152035_)))))
                                          (let ((_K152069152099_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152035_)))
                                                (_K152066152085_
                                                 (lambda (_expr152083_)
                                                   _expr152083_)))
                                            (let ((_try-match152063152095_
                                                   (lambda ()
                                                     (if (##pair? _body152061152071_)
                                                         (let ((_tl152068152090_
                                                                (##cdr _body152061152071_))
                                                               (_hd152067152088_
                                                                (##car _body152061152071_)))
                                                           (if (##null? _tl152068152090_)
                                                               (let ((_expr152093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152067152088_))
                         (_K152066152085_ _expr152093_))
                       (_else152064152079_)))
                 (_else152064152079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152061152071_)
                                                  (_K152069152099_)
                                                  (_try-match152063152095_))))))
                                       (_body152104_
                                        (if (null? _bind152049_)
                                            _body152102_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152049_
                                                         (cons _body152102_
                                                               '())))
                                             (gx#stx-source _stx152035_)))))
                                  (if (null? _decls152048_)
                                      _body152104_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152048_
                                                   (cons _body152104_ '())))
                                       (gx#stx-source _stx152035_))))))
                             (_E152052152193_
                              (lambda ()
                                (if (gx#stx-pair? _e152051152058_)
                                    (let ((_e152054152111_
                                           (gx#syntax-e _e152051152058_)))
                                      (let ((_hd152055152114_
                                             (##car _e152054152111_))
                                            (_tl152056152116_
                                             (##cdr _e152054152111_)))
                                        (let* ((_hd152119_ _hd152055152114_)
                                               (_rest152121_ _tl152056152116_))
                                          (if '#t
                                              (let* ((_e152122152139_
                                                      _hd152119_)
                                                     (_E152134152143_
                                                      (lambda ()
                                                        (if (null? _bind152049_)
                                                            (_lp152045_
                                                             _rest152121_
                                                             _decls152048_
                                                             _bind152049_
                                                             (cons _hd152119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152050_))
                    (_lp152045_
                     _rest152121_
                     _decls152048_
                     (cons (cons '#f (cons _hd152119_ '())) _bind152049_)
                     _body152050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152124152157_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152122152139_)
                                                            (let ((_e152135152147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152122152139_)))
                      (let ((_hd152136152150_ (##car _e152135152147_))
                            (_tl152137152152_ (##cdr _e152135152147_)))
                        (if (and (gx#identifier? _hd152136152150_)
                                 (gx#core-identifier=?
                                  _hd152136152150_
                                  '%#declare))
                            (let ((_xdecls152155_ _tl152137152152_))
                              (if '#t
                                  (_lp152045_
                                   _rest152121_
                                   (gx#stx-foldr
                                    cons
                                    _decls152048_
                                    _xdecls152155_)
                                   _bind152049_
                                   _body152050_)
                                  (_E152134152143_)))
                            (_E152134152143_))))
                    (_E152134152143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152123152189_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152122152139_)
                                                            (let ((_e152125152161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152122152139_)))
                      (let ((_hd152126152164_ (##car _e152125152161_))
                            (_tl152127152166_ (##cdr _e152125152161_)))
                        (if (and (gx#identifier? _hd152126152164_)
                                 (gx#core-identifier=?
                                  _hd152126152164_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152127152166_)
                                (let ((_e152128152169_
                                       (gx#syntax-e _tl152127152166_)))
                                  (let ((_hd152129152172_
                                         (##car _e152128152169_))
                                        (_tl152130152174_
                                         (##cdr _e152128152169_)))
                                    (let ((_hd-bind152177_ _hd152129152172_))
                                      (if (gx#stx-pair? _tl152130152174_)
                                          (let ((_e152131152179_
                                                 (gx#syntax-e
                                                  _tl152130152174_)))
                                            (let ((_hd152132152182_
                                                   (##car _e152131152179_))
                                                  (_tl152133152184_
                                                   (##cdr _e152131152179_)))
                                              (let ((_expr152187_
                                                     _hd152132152182_))
                                                (if (gx#stx-null?
                                                     _tl152133152184_)
                                                    (if '#t
                                                        (_lp152045_
                                                         _rest152121_
                                                         _decls152048_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152177_)
                             (cons (gx#core-expand-expression _expr152187_)
                                   '()))
                       _bind152049_)
                 _body152050_)
                (_E152124152157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152124152157_)))))
                                          (_E152124152157_)))))
                                (_E152124152157_))
                            (_E152124152157_))))
                    (_E152124152157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152123152189_))
                                              (_E152053152107_)))))
                                    (_E152053152107_)))))
                        (_E152052152193_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152036_)
            (gx#stx-source _stx152035_))
           _expand-special152038_))))
    (define gx#core-expand-declare%
      (lambda (_stx151973_)
        (let* ((_e151974151981_ _stx151973_)
               (_E151976151985_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151974151981_)))
               (_E151975152031_
                (lambda ()
                  (if (gx#stx-pair? _e151974151981_)
                      (let ((_e151977151989_ (gx#syntax-e _e151974151981_)))
                        (let ((_hd151978151992_ (##car _e151977151989_))
                              (_tl151979151994_ (##cdr _e151977151989_)))
                          (let ((_body151997_ _tl151979151994_))
                            (if (gx#stx-list? _body151997_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl151999_)
                                     (let* ((_e152000152007_ _decl151999_)
                                            (_E152002152011_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152000152007_)))
                                            (_E152001152027_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152000152007_)
                                                   (let ((_e152003152015_
                                                          (gx#syntax-e
                                                           _e152000152007_)))
                                                     (let ((_hd152004152018_
                                                            (##car _e152003152015_))
                                                           (_tl152005152020_
                                                            (##cdr _e152003152015_)))
                                                       (let* ((_head152023_
                                                               _hd152004152018_)
                                                              (_args152025_
                                                               _tl152005152020_))
                                                         (if (gx#stx-list?
                                                              _args152025_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl151999_)
                                                             (_E152002152011_)))))
                                                   (_E152002152011_)))))
                                       (_E152001152027_)))
                                   _body151997_))
                                 (gx#stx-source _stx151973_))
                                (_E151976151985_)))))
                      (_E151976151985_)))))
          (_E151975152031_))))
    (define gx#core-expand-extern%
      (lambda (_stx151877_)
        (let* ((_e151878151885_ _stx151877_)
               (_E151880151889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151878151885_)))
               (_E151879151969_
                (lambda ()
                  (if (gx#stx-pair? _e151878151885_)
                      (let ((_e151881151893_ (gx#syntax-e _e151878151885_)))
                        (let ((_hd151882151896_ (##car _e151881151893_))
                              (_tl151883151898_ (##cdr _e151881151893_)))
                          (let ((_body151901_ _tl151883151898_))
                            (if '#t
                                (let _lp151903_ ((_rest151905_ _body151901_)
                                                 (_r151906_ '()))
                                  (let* ((_e151907151921_ _rest151905_)
                                         (_E151919151925_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx151877_)))
                                         (_E151909151929_
                                          (lambda ()
                                            (if (gx#stx-null? _e151907151921_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r151906_))
                                                     (gx#stx-source
                                                      _stx151877_))
                                                    (_E151919151925_))
                                                (_E151919151925_))))
                                         (_E151908151965_
                                          (lambda ()
                                            (if (gx#stx-pair? _e151907151921_)
                                                (let ((_e151910151933_
                                                       (gx#syntax-e
                                                        _e151907151921_)))
                                                  (let ((_hd151911151936_
                                                         (##car _e151910151933_))
                                                        (_tl151912151938_
                                                         (##cdr _e151910151933_)))
                                                    (if (gx#stx-pair?
                                                         _hd151911151936_)
                                                        (let ((_e151913151941_
                                                               (gx#syntax-e
                                                                _hd151911151936_)))
                                                          (let ((_hd151914151944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e151913151941_))
                        (_tl151915151946_ (##cdr _e151913151941_)))
                    (let ((_id151949_ _hd151914151944_))
                      (if (gx#stx-pair? _tl151915151946_)
                          (let ((_e151916151951_
                                 (gx#syntax-e _tl151915151946_)))
                            (let ((_hd151917151954_ (##car _e151916151951_))
                                  (_tl151918151956_ (##cdr _e151916151951_)))
                              (let ((_eid151959_ _hd151917151954_))
                                (if (gx#stx-null? _tl151918151956_)
                                    (let ((_rest151961_ _tl151912151938_))
                                      (if (and (gx#identifier? _id151949_)
                                               (gx#identifier? _eid151959_))
                                          (let ((_eid151963_
                                                 (gx#stx-e _eid151959_)))
                                            (gx#core-bind-extern!__0
                                             _id151949_
                                             _eid151963_)
                                            (_lp151903_
                                             _rest151961_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id151949_)
                                                         (cons _eid151963_
                                                               '()))
                                                   _r151906_)))
                                          (_E151909151929_)))
                                    (_E151909151929_)))))
                          (_E151909151929_)))))
                (_E151909151929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151909151929_)))))
                                    (_E151908151965_)))
                                (_E151880151889_)))))
                      (_E151880151889_)))))
          (_E151879151969_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151823_)
        (let* ((_e151824151837_ _stx151823_)
               (_E151826151841_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151824151837_)))
               (_E151825151873_
                (lambda ()
                  (if (gx#stx-pair? _e151824151837_)
                      (let ((_e151827151845_ (gx#syntax-e _e151824151837_)))
                        (let ((_hd151828151848_ (##car _e151827151845_))
                              (_tl151829151850_ (##cdr _e151827151845_)))
                          (if (gx#stx-pair? _tl151829151850_)
                              (let ((_e151830151853_
                                     (gx#syntax-e _tl151829151850_)))
                                (let ((_hd151831151856_
                                       (##car _e151830151853_))
                                      (_tl151832151858_
                                       (##cdr _e151830151853_)))
                                  (let ((_hd151861_ _hd151831151856_))
                                    (if (gx#stx-pair? _tl151832151858_)
                                        (let ((_e151833151863_
                                               (gx#syntax-e _tl151832151858_)))
                                          (let ((_hd151834151866_
                                                 (##car _e151833151863_))
                                                (_tl151835151868_
                                                 (##cdr _e151833151863_)))
                                            (let ((_expr151871_
                                                   _hd151834151866_))
                                              (if (gx#stx-null?
                                                   _tl151835151868_)
                                                  (if (gx#core-bind-values?
                                                       _hd151861_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd151861_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151861_)
                             (cons (gx#core-expand-expression _expr151871_)
                                   '())))
                 (gx#stx-source _stx151823_)))
              (_E151826151841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151826151841_)))))
                                        (_E151826151841_)))))
                              (_E151826151841_))))
                      (_E151826151841_)))))
          (_E151825151873_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151767_)
        (let* ((_e151768151781_ _stx151767_)
               (_E151770151785_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151768151781_)))
               (_E151769151819_
                (lambda ()
                  (if (gx#stx-pair? _e151768151781_)
                      (let ((_e151771151789_ (gx#syntax-e _e151768151781_)))
                        (let ((_hd151772151792_ (##car _e151771151789_))
                              (_tl151773151794_ (##cdr _e151771151789_)))
                          (if (gx#stx-pair? _tl151773151794_)
                              (let ((_e151774151797_
                                     (gx#syntax-e _tl151773151794_)))
                                (let ((_hd151775151800_
                                       (##car _e151774151797_))
                                      (_tl151776151802_
                                       (##cdr _e151774151797_)))
                                  (let ((_id151805_ _hd151775151800_))
                                    (if (gx#stx-pair? _tl151776151802_)
                                        (let ((_e151777151807_
                                               (gx#syntax-e _tl151776151802_)))
                                          (let ((_hd151778151810_
                                                 (##car _e151777151807_))
                                                (_tl151779151812_
                                                 (##cdr _e151777151807_)))
                                            (let ((_binding-id151815_
                                                   _hd151778151810_))
                                              (if (gx#stx-null?
                                                   _tl151779151812_)
                                                  (if (and (gx#identifier?
                                                            _id151805_)
                                                           (gx#identifier?
                                                            _binding-id151815_))
                                                      (let ((_eid151817_
                                                             (gx#stx-e
                                                              _binding-id151815_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151805_
                                                         _eid151817_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151805_)
                             (cons _eid151817_ '())))))
              (_E151770151785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151770151785_)))))
                                        (_E151770151785_)))))
                              (_E151770151785_))))
                      (_E151770151785_)))))
          (_E151769151819_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151710_)
        (let* ((_e151711151724_ _stx151710_)
               (_E151713151728_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151711151724_)))
               (_E151712151763_
                (lambda ()
                  (if (gx#stx-pair? _e151711151724_)
                      (let ((_e151714151732_ (gx#syntax-e _e151711151724_)))
                        (let ((_hd151715151735_ (##car _e151714151732_))
                              (_tl151716151737_ (##cdr _e151714151732_)))
                          (if (gx#stx-pair? _tl151716151737_)
                              (let ((_e151717151740_
                                     (gx#syntax-e _tl151716151737_)))
                                (let ((_hd151718151743_
                                       (##car _e151717151740_))
                                      (_tl151719151745_
                                       (##cdr _e151717151740_)))
                                  (let ((_id151748_ _hd151718151743_))
                                    (if (gx#stx-pair? _tl151719151745_)
                                        (let ((_e151720151750_
                                               (gx#syntax-e _tl151719151745_)))
                                          (let ((_hd151721151753_
                                                 (##car _e151720151750_))
                                                (_tl151722151755_
                                                 (##cdr _e151720151750_)))
                                            (let ((_expr151758_
                                                   _hd151721151753_))
                                              (if (gx#stx-null?
                                                   _tl151722151755_)
                                                  (if (gx#identifier?
                                                       _id151748_)
                                                      (let ((_g157137_
                                                             (gx#core-expand-expression+1
                                                              _expr151758_)))
                                                        (begin
                                                          (let ((_g157138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157137_)
                             (##vector-length _g157137_)
                             1)))
                    (if (not (##fx= _g157138_ 2))
                        (error "Context expects 2 values" _g157138_)))
                  (let ((_e-stx151760_ (##vector-ref _g157137_ 0))
                        (_e151761_ (##vector-ref _g157137_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151748_ _e151761_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151748_)
                                   (cons _e-stx151760_ '())))
                       (gx#stx-source _stx151710_))))))
              (_E151713151728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151713151728_)))))
                                        (_E151713151728_)))))
                              (_E151713151728_))))
                      (_E151713151728_)))))
          (_E151712151763_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151654_)
        (let* ((_e151655151668_ _stx151654_)
               (_E151657151672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151655151668_)))
               (_E151656151706_
                (lambda ()
                  (if (gx#stx-pair? _e151655151668_)
                      (let ((_e151658151676_ (gx#syntax-e _e151655151668_)))
                        (let ((_hd151659151679_ (##car _e151658151676_))
                              (_tl151660151681_ (##cdr _e151658151676_)))
                          (if (gx#stx-pair? _tl151660151681_)
                              (let ((_e151661151684_
                                     (gx#syntax-e _tl151660151681_)))
                                (let ((_hd151662151687_
                                       (##car _e151661151684_))
                                      (_tl151663151689_
                                       (##cdr _e151661151684_)))
                                  (let ((_id151692_ _hd151662151687_))
                                    (if (gx#stx-pair? _tl151663151689_)
                                        (let ((_e151664151694_
                                               (gx#syntax-e _tl151663151689_)))
                                          (let ((_hd151665151697_
                                                 (##car _e151664151694_))
                                                (_tl151666151699_
                                                 (##cdr _e151664151694_)))
                                            (let ((_alias-id151702_
                                                   _hd151665151697_))
                                              (if (gx#stx-null?
                                                   _tl151666151699_)
                                                  (if (and (gx#identifier?
                                                            _id151692_)
                                                           (gx#identifier?
                                                            _alias-id151702_))
                                                      (let ((_alias-id151704_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151702_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151692_
                                                         _alias-id151704_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151692_)
                             (cons _alias-id151704_ '())))))
              (_E151657151672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151657151672_)))))
                                        (_E151657151672_)))))
                              (_E151657151672_))))
                      (_E151657151672_)))))
          (_E151656151706_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151597_ _wrap?151598_)
        (let* ((_e151599151609_ _stx151597_)
               (_E151601151613_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151599151609_)))
               (_E151600151640_
                (lambda ()
                  (if (gx#stx-pair? _e151599151609_)
                      (let ((_e151602151617_ (gx#syntax-e _e151599151609_)))
                        (let ((_hd151603151620_ (##car _e151602151617_))
                              (_tl151604151622_ (##cdr _e151602151617_)))
                          (if (gx#stx-pair? _tl151604151622_)
                              (let ((_e151605151625_
                                     (gx#syntax-e _tl151604151622_)))
                                (let ((_hd151606151628_
                                       (##car _e151605151625_))
                                      (_tl151607151630_
                                       (##cdr _e151605151625_)))
                                  (let* ((_hd151633_ _hd151606151628_)
                                         (_body151635_ _tl151607151630_))
                                    (if (gx#core-bind-values? _hd151633_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151633_)
                                           (let ((_body151638_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151633_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151597_
                                                               _body151635_)
                                                              '()))))
                                             (if _wrap?151598_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151638_)
                                                  (gx#stx-source _stx151597_))
                                                 _body151638_)))
                                         gx#current-expander-context
                                         (let ((__obj157130
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157130)
                                           __obj157130))
                                        (_E151601151613_)))))
                              (_E151601151613_))))
                      (_E151601151613_)))))
          (_E151600151640_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151647_)
        (let ((_wrap?151649_ '#t))
          (gx#core-expand-lambda%__% _stx151647_ _wrap?151649_))))
    (define gx#core-expand-lambda%
      (lambda _g157140_
        (let ((_g157139_ (##length _g157140_)))
          (cond ((##fx= _g157139_ 1)
                 (apply (lambda (_stx151647_)
                          (gx#core-expand-lambda%__0 _stx151647_))
                        _g157140_))
                ((##fx= _g157139_ 2)
                 (apply (lambda (_stx151651_ _wrap?151652_)
                          (gx#core-expand-lambda%__%
                           _stx151651_
                           _wrap?151652_))
                        _g157140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157140_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151561_)
        (let* ((_e151562151569_ _stx151561_)
               (_E151564151573_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151562151569_)))
               (_E151563151592_
                (lambda ()
                  (if (gx#stx-pair? _e151562151569_)
                      (let ((_e151565151577_ (gx#syntax-e _e151562151569_)))
                        (let ((_hd151566151580_ (##car _e151565151577_))
                              (_tl151567151582_ (##cdr _e151565151577_)))
                          (let ((_clauses151585_ _tl151567151582_))
                            (if (gx#stx-list? _clauses151585_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151587_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151587_)
                                       (let ((_$e151589_
                                              (gx#stx-source _clause151587_)))
                                         (if _$e151589_
                                             _$e151589_
                                             (gx#stx-source _stx151561_))))
                                      '#f))
                                   _clauses151585_))
                                 (gx#stx-source _stx151561_))
                                (_E151564151573_)))))
                      (_E151564151573_)))))
          (_E151563151592_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151515_)
        (let* ((_e151516151526_ _stx151515_)
               (_E151518151530_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151516151526_)))
               (_E151517151557_
                (lambda ()
                  (if (gx#stx-pair? _e151516151526_)
                      (let ((_e151519151534_ (gx#syntax-e _e151516151526_)))
                        (let ((_hd151520151537_ (##car _e151519151534_))
                              (_tl151521151539_ (##cdr _e151519151534_)))
                          (if (gx#stx-pair? _tl151521151539_)
                              (let ((_e151522151542_
                                     (gx#syntax-e _tl151521151539_)))
                                (let ((_hd151523151545_
                                       (##car _e151522151542_))
                                      (_tl151524151547_
                                       (##cdr _e151522151542_)))
                                  (let* ((_hd151550_ _hd151523151545_)
                                         (_body151552_ _tl151524151547_))
                                    (if (gx#core-expand-let-bind? _hd151550_)
                                        (let ((_expressions151554_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151550_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151550_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151550_
                                                           _expressions151554_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151515_
                         _body151552_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151515_)))
                                           gx#current-expander-context
                                           (let ((__obj157131
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157131)
                                             __obj157131)))
                                        (_E151518151530_)))))
                              (_E151518151530_))))
                      (_E151518151530_)))))
          (_E151517151557_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151460_ _form151461_)
        (let* ((_e151462151472_ _stx151460_)
               (_E151464151476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151462151472_)))
               (_E151463151501_
                (lambda ()
                  (if (gx#stx-pair? _e151462151472_)
                      (let ((_e151465151480_ (gx#syntax-e _e151462151472_)))
                        (let ((_hd151466151483_ (##car _e151465151480_))
                              (_tl151467151485_ (##cdr _e151465151480_)))
                          (if (gx#stx-pair? _tl151467151485_)
                              (let ((_e151468151488_
                                     (gx#syntax-e _tl151467151485_)))
                                (let ((_hd151469151491_
                                       (##car _e151468151488_))
                                      (_tl151470151493_
                                       (##cdr _e151468151488_)))
                                  (let* ((_hd151496_ _hd151469151491_)
                                         (_body151498_ _tl151470151493_))
                                    (if (gx#core-expand-let-bind? _hd151496_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151496_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151461_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151496_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151496_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151460_
                                                               _body151498_)
                                                              '())))
                                            (gx#stx-source _stx151460_)))
                                         gx#current-expander-context
                                         (let ((__obj157132
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157132)
                                           __obj157132))
                                        (_E151464151476_)))))
                              (_E151464151476_))))
                      (_E151464151476_)))))
          (_E151463151501_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151508_)
        (let ((_form151510_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151508_ _form151510_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157142_
        (let ((_g157141_ (##length _g157142_)))
          (cond ((##fx= _g157141_ 1)
                 (apply (lambda (_stx151508_)
                          (gx#core-expand-letrec-values%__0 _stx151508_))
                        _g157142_))
                ((##fx= _g157141_ 2)
                 (apply (lambda (_stx151512_ _form151513_)
                          (gx#core-expand-letrec-values%__%
                           _stx151512_
                           _form151513_))
                        _g157142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157142_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151457_)
        (gx#core-expand-letrec-values%__% _stx151457_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151414_)
        (if (gx#stx-list? _stx151414_)
            (gx#stx-andmap
             (lambda (_bind151416_)
               (let* ((_e151417151427_ _bind151416_)
                      (_E151419151431_ (lambda () '#f))
                      (_E151418151453_
                       (lambda ()
                         (if (gx#stx-pair? _e151417151427_)
                             (let ((_e151420151435_
                                    (gx#syntax-e _e151417151427_)))
                               (let ((_hd151421151438_ (##car _e151420151435_))
                                     (_tl151422151440_
                                      (##cdr _e151420151435_)))
                                 (let ((_hd151443_ _hd151421151438_))
                                   (if (gx#stx-pair? _tl151422151440_)
                                       (let ((_e151423151445_
                                              (gx#syntax-e _tl151422151440_)))
                                         (let ((_hd151424151448_
                                                (##car _e151423151445_))
                                               (_tl151425151450_
                                                (##cdr _e151423151445_)))
                                           (if (gx#stx-null? _tl151425151450_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151443_)
                                                   (_E151419151431_))
                                               (_E151419151431_))))
                                       (_E151419151431_)))))
                             (_E151419151431_)))))
                 (_E151418151453_)))
             _stx151414_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151373_)
        (let* ((_e151374151384_ _bind151373_)
               (_E151376151388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151374151384_)))
               (_E151375151410_
                (lambda ()
                  (if (gx#stx-pair? _e151374151384_)
                      (let ((_e151377151392_ (gx#syntax-e _e151374151384_)))
                        (let ((_hd151378151395_ (##car _e151377151392_))
                              (_tl151379151397_ (##cdr _e151377151392_)))
                          (if (gx#stx-pair? _tl151379151397_)
                              (let ((_e151380151400_
                                     (gx#syntax-e _tl151379151397_)))
                                (let ((_hd151381151403_
                                       (##car _e151380151400_))
                                      (_tl151382151405_
                                       (##cdr _e151380151400_)))
                                  (let ((_expr151408_ _hd151381151403_))
                                    (if (gx#stx-null? _tl151382151405_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151408_)
                                            (_E151376151388_))
                                        (_E151376151388_)))))
                              (_E151376151388_))))
                      (_E151376151388_)))))
          (_E151375151410_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151332_)
        (let* ((_e151333151343_ _bind151332_)
               (_E151335151347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151333151343_)))
               (_E151334151369_
                (lambda ()
                  (if (gx#stx-pair? _e151333151343_)
                      (let ((_e151336151351_ (gx#syntax-e _e151333151343_)))
                        (let ((_hd151337151354_ (##car _e151336151351_))
                              (_tl151338151356_ (##cdr _e151336151351_)))
                          (let ((_hd151359_ _hd151337151354_))
                            (if (gx#stx-pair? _tl151338151356_)
                                (let ((_e151339151361_
                                       (gx#syntax-e _tl151338151356_)))
                                  (let ((_hd151340151364_
                                         (##car _e151339151361_))
                                        (_tl151341151366_
                                         (##cdr _e151339151361_)))
                                    (if (gx#stx-null? _tl151341151366_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151359_)
                                            (_E151335151347_))
                                        (_E151335151347_))))
                                (_E151335151347_)))))
                      (_E151335151347_)))))
          (_E151334151369_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151290_ _expr151291_)
        (let* ((_e151292151302_ _bind151290_)
               (_E151294151306_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151292151302_)))
               (_E151293151328_
                (lambda ()
                  (if (gx#stx-pair? _e151292151302_)
                      (let ((_e151295151310_ (gx#syntax-e _e151292151302_)))
                        (let ((_hd151296151313_ (##car _e151295151310_))
                              (_tl151297151315_ (##cdr _e151295151310_)))
                          (let ((_hd151318_ _hd151296151313_))
                            (if (gx#stx-pair? _tl151297151315_)
                                (let ((_e151298151320_
                                       (gx#syntax-e _tl151297151315_)))
                                  (let ((_hd151299151323_
                                         (##car _e151298151320_))
                                        (_tl151300151325_
                                         (##cdr _e151298151320_)))
                                    (if (gx#stx-null? _tl151300151325_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151318_)
                                                  (cons _expr151291_ '()))
                                            (_E151294151306_))
                                        (_E151294151306_))))
                                (_E151294151306_)))))
                      (_E151294151306_)))))
          (_E151293151328_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151244_)
        (let* ((_e151245151255_ _stx151244_)
               (_E151247151259_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151245151255_)))
               (_E151246151286_
                (lambda ()
                  (if (gx#stx-pair? _e151245151255_)
                      (let ((_e151248151263_ (gx#syntax-e _e151245151255_)))
                        (let ((_hd151249151266_ (##car _e151248151263_))
                              (_tl151250151268_ (##cdr _e151248151263_)))
                          (if (gx#stx-pair? _tl151250151268_)
                              (let ((_e151251151271_
                                     (gx#syntax-e _tl151250151268_)))
                                (let ((_hd151252151274_
                                       (##car _e151251151271_))
                                      (_tl151253151276_
                                       (##cdr _e151251151271_)))
                                  (let* ((_hd151279_ _hd151252151274_)
                                         (_body151281_ _tl151253151276_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151279_)
                                        (let ((_expanders151283_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151279_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151279_
                                              _expanders151283_)
                                             (gx#core-expand-local-block
                                              _stx151244_
                                              _body151281_))
                                           gx#current-expander-context
                                           (let ((__obj157133
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157133)
                                             __obj157133)))
                                        (_E151247151259_)))))
                              (_E151247151259_))))
                      (_E151247151259_)))))
          (_E151246151286_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151193_)
        (let* ((_e151194151204_ _stx151193_)
               (_E151196151208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151194151204_)))
               (_E151195151240_
                (lambda ()
                  (if (gx#stx-pair? _e151194151204_)
                      (let ((_e151197151212_ (gx#syntax-e _e151194151204_)))
                        (let ((_hd151198151215_ (##car _e151197151212_))
                              (_tl151199151217_ (##cdr _e151197151212_)))
                          (if (gx#stx-pair? _tl151199151217_)
                              (let ((_e151200151220_
                                     (gx#syntax-e _tl151199151217_)))
                                (let ((_hd151201151223_
                                       (##car _e151200151220_))
                                      (_tl151202151225_
                                       (##cdr _e151200151220_)))
                                  (let* ((_hd151228_ _hd151201151223_)
                                         (_body151230_ _tl151202151225_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151228_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151228_
                                            (make-list
                                             (gx#stx-length _hd151228_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151232151235_
                                                     _g151233151237_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151232151235_
                                               _g151233151237_
                                               '#t))
                                            _hd151228_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151228_))
                                           (gx#core-expand-local-block
                                            _stx151193_
                                            _body151230_))
                                         gx#current-expander-context
                                         (let ((__obj157134
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157134)
                                           __obj157134))
                                        (_E151196151208_)))))
                              (_E151196151208_))))
                      (_E151196151208_)))))
          (_E151195151240_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151150_)
        (if (gx#stx-list? _stx151150_)
            (gx#stx-andmap
             (lambda (_bind151152_)
               (let* ((_e151153151163_ _bind151152_)
                      (_E151155151167_ (lambda () '#f))
                      (_E151154151189_
                       (lambda ()
                         (if (gx#stx-pair? _e151153151163_)
                             (let ((_e151156151171_
                                    (gx#syntax-e _e151153151163_)))
                               (let ((_hd151157151174_ (##car _e151156151171_))
                                     (_tl151158151176_
                                      (##cdr _e151156151171_)))
                                 (let ((_hd151179_ _hd151157151174_))
                                   (if (gx#stx-pair? _tl151158151176_)
                                       (let ((_e151159151181_
                                              (gx#syntax-e _tl151158151176_)))
                                         (let ((_hd151160151184_
                                                (##car _e151159151181_))
                                               (_tl151161151186_
                                                (##cdr _e151159151181_)))
                                           (if (gx#stx-null? _tl151161151186_)
                                               (if '#t
                                                   (gx#identifier? _hd151179_)
                                                   (_E151155151167_))
                                               (_E151155151167_))))
                                       (_E151155151167_)))))
                             (_E151155151167_)))))
                 (_E151154151189_)))
             _stx151150_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151107_)
        (let* ((_e151108151118_ _bind151107_)
               (_E151110151122_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151108151118_)))
               (_E151109151146_
                (lambda ()
                  (if (gx#stx-pair? _e151108151118_)
                      (let ((_e151111151126_ (gx#syntax-e _e151108151118_)))
                        (let ((_hd151112151129_ (##car _e151111151126_))
                              (_tl151113151131_ (##cdr _e151111151126_)))
                          (if (gx#stx-pair? _tl151113151131_)
                              (let ((_e151114151134_
                                     (gx#syntax-e _tl151113151131_)))
                                (let ((_hd151115151137_
                                       (##car _e151114151134_))
                                      (_tl151116151139_
                                       (##cdr _e151114151134_)))
                                  (let ((_expr151142_ _hd151115151137_))
                                    (if (gx#stx-null? _tl151116151139_)
                                        (if '#t
                                            (let ((_g157143_
                                                   (gx#core-expand-expression+1
                                                    _expr151142_)))
                                              (begin
                                                (let ((_g157144_
                                                       (if (##values?
                                                            _g157143_)
                                                           (##vector-length
                                                            _g157143_)
                                                           1)))
                                                  (if (not (##fx= _g157144_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157144_)))
                                                (let ((_e151144_
                                                       (##vector-ref
                                                        _g157143_
                                                        1)))
                                                  _e151144_)))
                                            (_E151110151122_))
                                        (_E151110151122_)))))
                              (_E151110151122_))))
                      (_E151110151122_)))))
          (_E151109151146_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151052_ _e151053_ _rebind?151054_)
        (let* ((_e151055151065_ _bind151052_)
               (_E151057151069_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151055151065_)))
               (_E151056151091_
                (lambda ()
                  (if (gx#stx-pair? _e151055151065_)
                      (let ((_e151058151073_ (gx#syntax-e _e151055151065_)))
                        (let ((_hd151059151076_ (##car _e151058151073_))
                              (_tl151060151078_ (##cdr _e151058151073_)))
                          (let ((_id151081_ _hd151059151076_))
                            (if (gx#stx-pair? _tl151060151078_)
                                (let ((_e151061151083_
                                       (gx#syntax-e _tl151060151078_)))
                                  (let ((_hd151062151086_
                                         (##car _e151061151083_))
                                        (_tl151063151088_
                                         (##cdr _e151061151083_)))
                                    (if (gx#stx-null? _tl151063151088_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151081_
                                             _e151053_
                                             _rebind?151054_)
                                            (_E151057151069_))
                                        (_E151057151069_))))
                                (_E151057151069_)))))
                      (_E151057151069_)))))
          (_E151056151091_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151098_ _e151099_)
        (let ((_rebind?151101_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151098_
           _e151099_
           _rebind?151101_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157146_
        (let ((_g157145_ (##length _g157146_)))
          (cond ((##fx= _g157145_ 2)
                 (apply (lambda (_bind151098_ _e151099_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151098_
                           _e151099_))
                        _g157146_))
                ((##fx= _g157145_ 3)
                 (apply (lambda (_bind151103_ _e151104_ _rebind?151105_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151103_
                           _e151104_
                           _rebind?151105_))
                        _g157146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157146_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151010_)
        (let* ((_e151011151021_ _stx151010_)
               (_E151013151025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151011151021_)))
               (_E151012151047_
                (lambda ()
                  (if (gx#stx-pair? _e151011151021_)
                      (let ((_e151014151029_ (gx#syntax-e _e151011151021_)))
                        (let ((_hd151015151032_ (##car _e151014151029_))
                              (_tl151016151034_ (##cdr _e151014151029_)))
                          (if (gx#stx-pair? _tl151016151034_)
                              (let ((_e151017151037_
                                     (gx#syntax-e _tl151016151034_)))
                                (let ((_hd151018151040_
                                       (##car _e151017151037_))
                                      (_tl151019151042_
                                       (##cdr _e151017151037_)))
                                  (let ((_expr151045_ _hd151018151040_))
                                    (if (gx#stx-null? _tl151019151042_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151045_)
                                            (_E151013151025_))
                                        (_E151013151025_)))))
                              (_E151013151025_))))
                      (_E151013151025_)))))
          (_E151012151047_))))
    (define gx#core-expand-quote%
      (lambda (_stx150969_)
        (let* ((_e150970150980_ _stx150969_)
               (_E150972150984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150970150980_)))
               (_E150971151006_
                (lambda ()
                  (if (gx#stx-pair? _e150970150980_)
                      (let ((_e150973150988_ (gx#syntax-e _e150970150980_)))
                        (let ((_hd150974150991_ (##car _e150973150988_))
                              (_tl150975150993_ (##cdr _e150973150988_)))
                          (if (gx#stx-pair? _tl150975150993_)
                              (let ((_e150976150996_
                                     (gx#syntax-e _tl150975150993_)))
                                (let ((_hd150977150999_
                                       (##car _e150976150996_))
                                      (_tl150978151001_
                                       (##cdr _e150976150996_)))
                                  (let ((_e151004_ _hd150977150999_))
                                    (if (gx#stx-null? _tl150978151001_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151004_)
                                                         '()))
                                             (gx#stx-source _stx150969_))
                                            (_E150972150984_))
                                        (_E150972150984_)))))
                              (_E150972150984_))))
                      (_E150972150984_)))))
          (_E150971151006_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx150928_)
        (let* ((_e150929150939_ _stx150928_)
               (_E150931150943_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150929150939_)))
               (_E150930150965_
                (lambda ()
                  (if (gx#stx-pair? _e150929150939_)
                      (let ((_e150932150947_ (gx#syntax-e _e150929150939_)))
                        (let ((_hd150933150950_ (##car _e150932150947_))
                              (_tl150934150952_ (##cdr _e150932150947_)))
                          (if (gx#stx-pair? _tl150934150952_)
                              (let ((_e150935150955_
                                     (gx#syntax-e _tl150934150952_)))
                                (let ((_hd150936150958_
                                       (##car _e150935150955_))
                                      (_tl150937150960_
                                       (##cdr _e150935150955_)))
                                  (let ((_e150963_ _hd150936150958_))
                                    (if (gx#stx-null? _tl150937150960_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e150963_)
                                                         '()))
                                             (gx#stx-source _stx150928_))
                                            (_E150931150943_))
                                        (_E150931150943_)))))
                              (_E150931150943_))))
                      (_E150931150943_)))))
          (_E150930150965_))))
    (define gx#core-expand-call%
      (lambda (_stx150885_)
        (let* ((_e150886150896_ _stx150885_)
               (_E150888150900_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150886150896_)))
               (_E150887150924_
                (lambda ()
                  (if (gx#stx-pair? _e150886150896_)
                      (let ((_e150889150904_ (gx#syntax-e _e150886150896_)))
                        (let ((_hd150890150907_ (##car _e150889150904_))
                              (_tl150891150909_ (##cdr _e150889150904_)))
                          (if (gx#stx-pair? _tl150891150909_)
                              (let ((_e150892150912_
                                     (gx#syntax-e _tl150891150909_)))
                                (let ((_hd150893150915_
                                       (##car _e150892150912_))
                                      (_tl150894150917_
                                       (##cdr _e150892150912_)))
                                  (let* ((_rator150920_ _hd150893150915_)
                                         (_args150922_ _tl150894150917_))
                                    (if (gx#stx-list? _args150922_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator150920_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args150922_))
                                         (gx#stx-source _stx150885_))
                                        (_E150888150900_)))))
                              (_E150888150900_))))
                      (_E150888150900_)))))
          (_E150887150924_))))
    (define gx#core-expand-if%
      (lambda (_stx150818_)
        (let* ((_e150819150835_ _stx150818_)
               (_E150821150839_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150819150835_)))
               (_E150820150881_
                (lambda ()
                  (if (gx#stx-pair? _e150819150835_)
                      (let ((_e150822150843_ (gx#syntax-e _e150819150835_)))
                        (let ((_hd150823150846_ (##car _e150822150843_))
                              (_tl150824150848_ (##cdr _e150822150843_)))
                          (if (gx#stx-pair? _tl150824150848_)
                              (let ((_e150825150851_
                                     (gx#syntax-e _tl150824150848_)))
                                (let ((_hd150826150854_
                                       (##car _e150825150851_))
                                      (_tl150827150856_
                                       (##cdr _e150825150851_)))
                                  (let ((_test150859_ _hd150826150854_))
                                    (if (gx#stx-pair? _tl150827150856_)
                                        (let ((_e150828150861_
                                               (gx#syntax-e _tl150827150856_)))
                                          (let ((_hd150829150864_
                                                 (##car _e150828150861_))
                                                (_tl150830150866_
                                                 (##cdr _e150828150861_)))
                                            (let ((_K150869_ _hd150829150864_))
                                              (if (gx#stx-pair?
                                                   _tl150830150866_)
                                                  (let ((_e150831150871_
                                                         (gx#syntax-e
                                                          _tl150830150866_)))
                                                    (let ((_hd150832150874_
                                                           (##car _e150831150871_))
                                                          (_tl150833150876_
                                                           (##cdr _e150831150871_)))
                                                      (let ((_E150879_
                                                             _hd150832150874_))
                                                        (if (gx#stx-null?
                                                             _tl150833150876_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test150859_)
                                     (cons (gx#core-expand-expression
                                            _K150869_)
                                           (cons (gx#core-expand-expression
                                                  _E150879_)
                                                 '()))))
                         (gx#stx-source _stx150818_))
                        (_E150821150839_))
                    (_E150821150839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150821150839_)))))
                                        (_E150821150839_)))))
                              (_E150821150839_))))
                      (_E150821150839_)))))
          (_E150820150881_))))
    (define gx#core-expand-ref%
      (lambda (_stx150777_)
        (let* ((_e150778150788_ _stx150777_)
               (_E150780150792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150778150788_)))
               (_E150779150814_
                (lambda ()
                  (if (gx#stx-pair? _e150778150788_)
                      (let ((_e150781150796_ (gx#syntax-e _e150778150788_)))
                        (let ((_hd150782150799_ (##car _e150781150796_))
                              (_tl150783150801_ (##cdr _e150781150796_)))
                          (if (gx#stx-pair? _tl150783150801_)
                              (let ((_e150784150804_
                                     (gx#syntax-e _tl150783150801_)))
                                (let ((_hd150785150807_
                                       (##car _e150784150804_))
                                      (_tl150786150809_
                                       (##cdr _e150784150804_)))
                                  (let ((_id150812_ _hd150785150807_))
                                    (if (gx#stx-null? _tl150786150809_)
                                        (if (gx#identifier? _id150812_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150812_
                                                          _stx150777_)
                                                         '()))
                                             (gx#stx-source _stx150777_))
                                            (_E150780150792_))
                                        (_E150780150792_)))))
                              (_E150780150792_))))
                      (_E150780150792_)))))
          (_E150779150814_))))
    (define gx#core-expand-setq%
      (lambda (_stx150723_)
        (let* ((_e150724150737_ _stx150723_)
               (_E150726150741_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150724150737_)))
               (_E150725150773_
                (lambda ()
                  (if (gx#stx-pair? _e150724150737_)
                      (let ((_e150727150745_ (gx#syntax-e _e150724150737_)))
                        (let ((_hd150728150748_ (##car _e150727150745_))
                              (_tl150729150750_ (##cdr _e150727150745_)))
                          (if (gx#stx-pair? _tl150729150750_)
                              (let ((_e150730150753_
                                     (gx#syntax-e _tl150729150750_)))
                                (let ((_hd150731150756_
                                       (##car _e150730150753_))
                                      (_tl150732150758_
                                       (##cdr _e150730150753_)))
                                  (let ((_id150761_ _hd150731150756_))
                                    (if (gx#stx-pair? _tl150732150758_)
                                        (let ((_e150733150763_
                                               (gx#syntax-e _tl150732150758_)))
                                          (let ((_hd150734150766_
                                                 (##car _e150733150763_))
                                                (_tl150735150768_
                                                 (##cdr _e150733150763_)))
                                            (let ((_expr150771_
                                                   _hd150734150766_))
                                              (if (gx#stx-null?
                                                   _tl150735150768_)
                                                  (if (gx#identifier?
                                                       _id150761_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150761_
                            _stx150723_)
                           (cons (gx#core-expand-expression _expr150771_)
                                 '())))
               (gx#stx-source _stx150723_))
              (_E150726150741_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150726150741_)))))
                                        (_E150726150741_)))))
                              (_E150726150741_))))
                      (_E150726150741_)))))
          (_E150725150773_))))
    (define gx#macro-expand-extern
      (lambda (_stx150571_)
        (letrec ((_generate150573_
                  (lambda (_body150603_)
                    (let _lp150605_ ((_rest150607_ _body150603_)
                                     (_ns150608_
                                      (gx#core-context-namespace__0))
                                     (_r150609_ '()))
                      (let* ((_e150610150625_ _rest150607_)
                             (_E150623150629_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150610150625_)))
                             (_E150619150633_
                              (lambda ()
                                (if (gx#stx-null? _e150610150625_)
                                    (if '#t
                                        (reverse _r150609_)
                                        (_E150623150629_))
                                    (_E150623150629_))))
                             (_E150612150690_
                              (lambda ()
                                (if (gx#stx-pair? _e150610150625_)
                                    (let ((_e150620150637_
                                           (gx#syntax-e _e150610150625_)))
                                      (let ((_hd150621150640_
                                             (##car _e150620150637_))
                                            (_tl150622150642_
                                             (##cdr _e150620150637_)))
                                        (let* ((_hd150645_ _hd150621150640_)
                                               (_rest150647_ _tl150622150642_))
                                          (if '#t
                                              (if (gx#identifier? _hd150645_)
                                                  (_lp150605_
                                                   _rest150647_
                                                   _ns150608_
                                                   (cons (cons _hd150645_
                                                               (cons (if _ns150608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150645_
                                  _ns150608_
                                  '"#"
                                  _hd150645_)
                                 _hd150645_)
                             '()))
                 _r150609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150648150658_
                                                          _hd150645_)
                                                         (_E150650150662_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150648150658_)))
                                                         (_E150649150686_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150648150658_)
                        (let ((_e150651150666_ (gx#syntax-e _e150648150658_)))
                          (let ((_hd150652150669_ (##car _e150651150666_))
                                (_tl150653150671_ (##cdr _e150651150666_)))
                            (let ((_id150674_ _hd150652150669_))
                              (if (gx#stx-pair? _tl150653150671_)
                                  (let ((_e150654150676_
                                         (gx#syntax-e _tl150653150671_)))
                                    (let ((_hd150655150679_
                                           (##car _e150654150676_))
                                          (_tl150656150681_
                                           (##cdr _e150654150676_)))
                                      (let ((_eid150684_ _hd150655150679_))
                                        (if (gx#stx-null? _tl150656150681_)
                                            (if (and (gx#identifier?
                                                      _id150674_)
                                                     (gx#identifier?
                                                      _eid150684_))
                                                (_lp150605_
                                                 _rest150647_
                                                 _ns150608_
                                                 (cons (cons _id150674_
                                                             (cons _eid150684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150650150662_))
                                            (_E150650150662_)))))
                                  (_E150650150662_)))))
                        (_E150650150662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150649150686_)))
                                              (_E150619150633_)))))
                                    (_E150619150633_))))
                             (_E150611150719_
                              (lambda ()
                                (if (gx#stx-pair? _e150610150625_)
                                    (let ((_e150613150694_
                                           (gx#syntax-e _e150610150625_)))
                                      (let ((_hd150614150697_
                                             (##car _e150613150694_))
                                            (_tl150615150699_
                                             (##cdr _e150613150694_)))
                                        (if (eq? (gx#stx-e _hd150614150697_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150615150699_)
                                                (let ((_e150616150702_
                                                       (gx#syntax-e
                                                        _tl150615150699_)))
                                                  (let ((_hd150617150705_
                                                         (##car _e150616150702_))
                                                        (_tl150618150707_
                                                         (##cdr _e150616150702_)))
                                                    (let* ((_ns150710_
                                                            _hd150617150705_)
                                                           (_rest150712_
                                                            _tl150618150707_))
                                                      (if '#t
                                                          (let ((_ns150717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150710_)
                             (symbol->string (gx#stx-e _ns150710_))
                             (if (or (gx#stx-string? _ns150710_)
                                     (gx#stx-false? _ns150710_))
                                 (gx#stx-e _ns150710_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150571_
                                  _ns150710_)))))
                    (_lp150605_ _rest150712_ _ns150717_ _r150609_))
                  (_E150612150690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150612150690_))
                                            (_E150612150690_))))
                                    (_E150612150690_)))))
                        (_E150611150719_))))))
          (let* ((_e150574150581_ _stx150571_)
                 (_E150576150585_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150574150581_)))
                 (_E150575150599_
                  (lambda ()
                    (if (gx#stx-pair? _e150574150581_)
                        (let ((_e150577150589_ (gx#syntax-e _e150574150581_)))
                          (let ((_hd150578150592_ (##car _e150577150589_))
                                (_tl150579150594_ (##cdr _e150577150589_)))
                            (let ((_body150597_ _tl150579150594_))
                              (if (gx#stx-list? _body150597_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150573_ _body150597_))
                                  (_E150576150585_)))))
                        (_E150576150585_)))))
            (_E150575150599_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150517_)
        (let* ((_e150518150531_ _stx150517_)
               (_E150520150535_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150518150531_)))
               (_E150519150567_
                (lambda ()
                  (if (gx#stx-pair? _e150518150531_)
                      (let ((_e150521150539_ (gx#syntax-e _e150518150531_)))
                        (let ((_hd150522150542_ (##car _e150521150539_))
                              (_tl150523150544_ (##cdr _e150521150539_)))
                          (if (gx#stx-pair? _tl150523150544_)
                              (let ((_e150524150547_
                                     (gx#syntax-e _tl150523150544_)))
                                (let ((_hd150525150550_
                                       (##car _e150524150547_))
                                      (_tl150526150552_
                                       (##cdr _e150524150547_)))
                                  (let ((_hd150555_ _hd150525150550_))
                                    (if (gx#stx-pair? _tl150526150552_)
                                        (let ((_e150527150557_
                                               (gx#syntax-e _tl150526150552_)))
                                          (let ((_hd150528150560_
                                                 (##car _e150527150557_))
                                                (_tl150529150562_
                                                 (##cdr _e150527150557_)))
                                            (let ((_expr150565_
                                                   _hd150528150560_))
                                              (if (gx#stx-null?
                                                   _tl150529150562_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150555_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150555_)
                          (cons _expr150565_ '())))
              (_E150520150535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150520150535_)))))
                                        (_E150520150535_)))))
                              (_E150520150535_))))
                      (_E150520150535_)))))
          (_E150519150567_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150463_)
        (let* ((_e150464150477_ _stx150463_)
               (_E150466150481_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150464150477_)))
               (_E150465150513_
                (lambda ()
                  (if (gx#stx-pair? _e150464150477_)
                      (let ((_e150467150485_ (gx#syntax-e _e150464150477_)))
                        (let ((_hd150468150488_ (##car _e150467150485_))
                              (_tl150469150490_ (##cdr _e150467150485_)))
                          (if (gx#stx-pair? _tl150469150490_)
                              (let ((_e150470150493_
                                     (gx#syntax-e _tl150469150490_)))
                                (let ((_hd150471150496_
                                       (##car _e150470150493_))
                                      (_tl150472150498_
                                       (##cdr _e150470150493_)))
                                  (let ((_hd150501_ _hd150471150496_))
                                    (if (gx#stx-pair? _tl150472150498_)
                                        (let ((_e150473150503_
                                               (gx#syntax-e _tl150472150498_)))
                                          (let ((_hd150474150506_
                                                 (##car _e150473150503_))
                                                (_tl150475150508_
                                                 (##cdr _e150473150503_)))
                                            (let ((_expr150511_
                                                   _hd150474150506_))
                                              (if (gx#stx-null?
                                                   _tl150475150508_)
                                                  (if (gx#identifier?
                                                       _hd150501_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150511_ '())))
              (_E150466150481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150466150481_)))))
                                        (_E150466150481_)))))
                              (_E150466150481_))))
                      (_E150466150481_)))))
          (_E150465150513_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150409_)
        (let* ((_e150410150423_ _stx150409_)
               (_E150412150427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150410150423_)))
               (_E150411150459_
                (lambda ()
                  (if (gx#stx-pair? _e150410150423_)
                      (let ((_e150413150431_ (gx#syntax-e _e150410150423_)))
                        (let ((_hd150414150434_ (##car _e150413150431_))
                              (_tl150415150436_ (##cdr _e150413150431_)))
                          (if (gx#stx-pair? _tl150415150436_)
                              (let ((_e150416150439_
                                     (gx#syntax-e _tl150415150436_)))
                                (let ((_hd150417150442_
                                       (##car _e150416150439_))
                                      (_tl150418150444_
                                       (##cdr _e150416150439_)))
                                  (let ((_id150447_ _hd150417150442_))
                                    (if (gx#stx-pair? _tl150418150444_)
                                        (let ((_e150419150449_
                                               (gx#syntax-e _tl150418150444_)))
                                          (let ((_hd150420150452_
                                                 (##car _e150419150449_))
                                                (_tl150421150454_
                                                 (##cdr _e150419150449_)))
                                            (let ((_alias-id150457_
                                                   _hd150420150452_))
                                              (if (gx#stx-null?
                                                   _tl150421150454_)
                                                  (if (and (gx#identifier?
                                                            _id150447_)
                                                           (gx#identifier?
                                                            _alias-id150457_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150457_ '())))
              (_E150412150427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150412150427_)))))
                                        (_E150412150427_)))))
                              (_E150412150427_))))
                      (_E150412150427_)))))
          (_E150411150459_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150366_)
        (let* ((_e150367150377_ _stx150366_)
               (_E150369150381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150367150377_)))
               (_E150368150405_
                (lambda ()
                  (if (gx#stx-pair? _e150367150377_)
                      (let ((_e150370150385_ (gx#syntax-e _e150367150377_)))
                        (let ((_hd150371150388_ (##car _e150370150385_))
                              (_tl150372150390_ (##cdr _e150370150385_)))
                          (if (gx#stx-pair? _tl150372150390_)
                              (let ((_e150373150393_
                                     (gx#syntax-e _tl150372150390_)))
                                (let ((_hd150374150396_
                                       (##car _e150373150393_))
                                      (_tl150375150398_
                                       (##cdr _e150373150393_)))
                                  (let* ((_hd150401_ _hd150374150396_)
                                         (_body150403_ _tl150375150398_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150401_)
                                             (gx#stx-list? _body150403_)
                                             (not (gx#stx-null? _body150403_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150401_)
                                         _body150403_)
                                        (_E150369150381_)))))
                              (_E150369150381_))))
                      (_E150369150381_)))))
          (_E150368150405_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150302_)
        (letrec ((_generate150304_
                  (lambda (_clause150334_)
                    (let* ((_e150335150342_ _clause150334_)
                           (_E150337150346_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150302_
                               _clause150334_)))
                           (_E150336150362_
                            (lambda ()
                              (if (gx#stx-pair? _e150335150342_)
                                  (let ((_e150338150350_
                                         (gx#syntax-e _e150335150342_)))
                                    (let ((_hd150339150353_
                                           (##car _e150338150350_))
                                          (_tl150340150355_
                                           (##cdr _e150338150350_)))
                                      (let* ((_hd150358_ _hd150339150353_)
                                             (_body150360_ _tl150340150355_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150358_)
                                                 (gx#stx-list? _body150360_)
                                                 (not (gx#stx-null?
                                                       _body150360_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150358_)
                                                   _body150360_)
                                             (gx#stx-source _clause150334_))
                                            (_E150337150346_)))))
                                  (_E150337150346_)))))
                      (_E150336150362_)))))
          (let* ((_e150305150312_ _stx150302_)
                 (_E150307150316_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150305150312_)))
                 (_E150306150330_
                  (lambda ()
                    (if (gx#stx-pair? _e150305150312_)
                        (let ((_e150308150320_ (gx#syntax-e _e150305150312_)))
                          (let ((_hd150309150323_ (##car _e150308150320_))
                                (_tl150310150325_ (##cdr _e150308150320_)))
                            (let ((_clauses150328_ _tl150310150325_))
                              (if (gx#stx-list? _clauses150328_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150304_
                                    _clauses150328_))
                                  (_E150307150316_)))))
                        (_E150307150316_)))))
            (_E150306150330_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150203_ _form150204_)
        (letrec ((_generate150206_
                  (lambda (_bind150249_)
                    (let* ((_e150250150260_ _bind150249_)
                           (_E150252150264_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150203_
                               _bind150249_)))
                           (_E150251150288_
                            (lambda ()
                              (if (gx#stx-pair? _e150250150260_)
                                  (let ((_e150253150268_
                                         (gx#syntax-e _e150250150260_)))
                                    (let ((_hd150254150271_
                                           (##car _e150253150268_))
                                          (_tl150255150273_
                                           (##cdr _e150253150268_)))
                                      (let ((_ids150276_ _hd150254150271_))
                                        (if (gx#stx-pair? _tl150255150273_)
                                            (let ((_e150256150278_
                                                   (gx#syntax-e
                                                    _tl150255150273_)))
                                              (let ((_hd150257150281_
                                                     (##car _e150256150278_))
                                                    (_tl150258150283_
                                                     (##cdr _e150256150278_)))
                                                (let ((_expr150286_
                                                       _hd150257150281_))
                                                  (if (gx#stx-null?
                                                       _tl150258150283_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150276_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150276_)
                        (cons _expr150286_ '()))
                  (_E150252150264_))
              (_E150252150264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150252150264_)))))
                                  (_E150252150264_)))))
                      (_E150251150288_)))))
          (let* ((_e150207150217_ _stx150203_)
                 (_E150209150221_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150207150217_)))
                 (_E150208150245_
                  (lambda ()
                    (if (gx#stx-pair? _e150207150217_)
                        (let ((_e150210150225_ (gx#syntax-e _e150207150217_)))
                          (let ((_hd150211150228_ (##car _e150210150225_))
                                (_tl150212150230_ (##cdr _e150210150225_)))
                            (if (gx#stx-pair? _tl150212150230_)
                                (let ((_e150213150233_
                                       (gx#syntax-e _tl150212150230_)))
                                  (let ((_hd150214150236_
                                         (##car _e150213150233_))
                                        (_tl150215150238_
                                         (##cdr _e150213150233_)))
                                    (let* ((_hd150241_ _hd150214150236_)
                                           (_body150243_ _tl150215150238_))
                                      (if (and (gx#stx-list? _hd150241_)
                                               (gx#stx-list? _body150243_)
                                               (not (gx#stx-null?
                                                     _body150243_)))
                                          (gx#core-cons*
                                           _form150204_
                                           (gx#stx-map1
                                            _generate150206_
                                            _hd150241_)
                                           _body150243_)
                                          (_E150209150221_)))))
                                (_E150209150221_))))
                        (_E150209150221_)))))
            (_E150208150245_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150295_)
        (let ((_form150297_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150295_ _form150297_))))
    (define gx#macro-expand-let-values
      (lambda _g157148_
        (let ((_g157147_ (##length _g157148_)))
          (cond ((##fx= _g157147_ 1)
                 (apply (lambda (_stx150295_)
                          (gx#macro-expand-let-values__0 _stx150295_))
                        _g157148_))
                ((##fx= _g157147_ 2)
                 (apply (lambda (_stx150299_ _form150300_)
                          (gx#macro-expand-let-values__%
                           _stx150299_
                           _form150300_))
                        _g157148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157148_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150200_)
        (gx#macro-expand-let-values__% _stx150200_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150198_)
        (gx#macro-expand-let-values__% _stx150198_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150089_)
        (let* ((_e150090150116_ _stx150089_)
               (_E150102150120_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150090150116_)))
               (_E150092150162_
                (lambda ()
                  (if (gx#stx-pair? _e150090150116_)
                      (let ((_e150103150124_ (gx#syntax-e _e150090150116_)))
                        (let ((_hd150104150127_ (##car _e150103150124_))
                              (_tl150105150129_ (##cdr _e150103150124_)))
                          (if (gx#stx-pair? _tl150105150129_)
                              (let ((_e150106150132_
                                     (gx#syntax-e _tl150105150129_)))
                                (let ((_hd150107150135_
                                       (##car _e150106150132_))
                                      (_tl150108150137_
                                       (##cdr _e150106150132_)))
                                  (let ((_test150140_ _hd150107150135_))
                                    (if (gx#stx-pair? _tl150108150137_)
                                        (let ((_e150109150142_
                                               (gx#syntax-e _tl150108150137_)))
                                          (let ((_hd150110150145_
                                                 (##car _e150109150142_))
                                                (_tl150111150147_
                                                 (##cdr _e150109150142_)))
                                            (let ((_K150150_ _hd150110150145_))
                                              (if (gx#stx-pair?
                                                   _tl150111150147_)
                                                  (let ((_e150112150152_
                                                         (gx#syntax-e
                                                          _tl150111150147_)))
                                                    (let ((_hd150113150155_
                                                           (##car _e150112150152_))
                                                          (_tl150114150157_
                                                           (##cdr _e150112150152_)))
                                                      (let ((_E150160_
                                                             _hd150113150155_))
                                                        (if (gx#stx-null?
                                                             _tl150114150157_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150140_
                         _K150150_
                         _E150160_)
                        (_E150102150120_))
                    (_E150102150120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150102150120_)))))
                                        (_E150102150120_)))))
                              (_E150102150120_))))
                      (_E150102150120_))))
               (_E150091150194_
                (lambda ()
                  (if (gx#stx-pair? _e150090150116_)
                      (let ((_e150093150166_ (gx#syntax-e _e150090150116_)))
                        (let ((_hd150094150169_ (##car _e150093150166_))
                              (_tl150095150171_ (##cdr _e150093150166_)))
                          (if (gx#stx-pair? _tl150095150171_)
                              (let ((_e150096150174_
                                     (gx#syntax-e _tl150095150171_)))
                                (let ((_hd150097150177_
                                       (##car _e150096150174_))
                                      (_tl150098150179_
                                       (##cdr _e150096150174_)))
                                  (let ((_test150182_ _hd150097150177_))
                                    (if (gx#stx-pair? _tl150098150179_)
                                        (let ((_e150099150184_
                                               (gx#syntax-e _tl150098150179_)))
                                          (let ((_hd150100150187_
                                                 (##car _e150099150184_))
                                                (_tl150101150189_
                                                 (##cdr _e150099150184_)))
                                            (let ((_K150192_ _hd150100150187_))
                                              (if (gx#stx-null?
                                                   _tl150101150189_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150182_
                                                       _K150192_
                                                       '#!void)
                                                      (_E150092150162_))
                                                  (_E150092150162_)))))
                                        (_E150092150162_)))))
                              (_E150092150162_))))
                      (_E150092150162_)))))
          (_E150091150194_))))
    (define gx#free-identifier=?
      (lambda (_xid150077_ _yid150078_)
        (let ((_xe150080_ (gx#resolve-identifier__0 _xid150077_))
              (_ye150081_ (gx#resolve-identifier__0 _yid150078_)))
          (if (and _xe150080_ _ye150081_)
              (let ((_$e150083_ (eq? _xe150080_ _ye150081_)))
                (if _$e150083_
                    _$e150083_
                    (if (##structure-instance-of? _xe150080_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150081_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150080_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150081_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150080_ _ye150081_)
                  '#f
                  (gx#stx-eq? _xid150077_ _yid150078_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150061_ _yid150062_)
        (letrec ((_context150064_
                  (lambda (_e150075_)
                    (if (##structure-direct-instance-of?
                         _e150075_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150075_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150065_
                  (lambda (_e150073_)
                    (if (symbol? _e150073_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150073_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150073_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150073_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150066_
                  (lambda (_e150071_)
                    (if (symbol? _e150071_)
                        _e150071_
                        (gx#syntax-local-unwrap _e150071_)))))
          (let ((_x150068_ (_unwrap150066_ _xid150061_))
                (_y150069_ (_unwrap150066_ _yid150062_)))
            (if (gx#stx-eq? _x150068_ _y150069_)
                (if (eq? (_context150064_ _x150068_)
                         (_context150064_ _y150069_))
                    (equal? (_marks150065_ _x150068_)
                            (_marks150065_ _y150069_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150059_)
        (if (gx#identifier? _stx150059_)
            (gx#core-identifier=? _stx150059_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150057_)
        (if (gx#identifier? _stx150057_)
            (gx#core-identifier=? _stx150057_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150055_)
        (if (gx#identifier? _x150055_)
            (if (not (gx#underscore? _x150055_)) _x150055_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150001_ _where150002_)
        (let _lp150004_ ((_rest150006_ (gx#syntax->list _stx150001_)))
          (let* ((_rest150007150015_ _rest150006_)
                 (_else150009150023_ (lambda () '#t))
                 (_K150011150033_
                  (lambda (_rest150026_ _hd150027_)
                    (if (not (gx#identifier? _hd150027_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150002_
                         _hd150027_)
                        (if (find (lambda (_g150028150030_)
                                    (gx#bound-identifier=?
                                     _g150028150030_
                                     _hd150027_))
                                  _rest150026_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150002_
                             _hd150027_)
                            (_lp150004_ _rest150026_))))))
            (if (##pair? _rest150007150015_)
                (let ((_hd150012150036_ (##car _rest150007150015_))
                      (_tl150013150038_ (##cdr _rest150007150015_)))
                  (let* ((_hd150041_ _hd150012150036_)
                         (_rest150043_ _tl150013150038_))
                    (_K150011150033_ _rest150043_ _hd150041_)))
                (_else150009150023_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150048_)
        (let ((_where150050_ _stx150048_))
          (gx#check-duplicate-identifiers__% _stx150048_ _where150050_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157150_
        (let ((_g157149_ (##length _g157150_)))
          (cond ((##fx= _g157149_ 1)
                 (apply (lambda (_stx150048_)
                          (gx#check-duplicate-identifiers__0 _stx150048_))
                        _g157150_))
                ((##fx= _g157149_ 2)
                 (apply (lambda (_stx150052_ _where150053_)
                          (gx#check-duplicate-identifiers__%
                           _stx150052_
                           _where150053_))
                        _g157150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157150_))))))
    (define gx#core-bind-values?
      (lambda (_stx149993_)
        (gx#stx-andmap
         (lambda (_x149995_)
           (let ((_$e149997_ (gx#identifier? _x149995_)))
             (if _$e149997_ _$e149997_ (gx#stx-false? _x149995_))))
         _stx149993_)))
    (define gx#core-bind-values!__%
      (lambda (_stx149957_ _rebind?149958_ _phi149959_ _ctx149960_)
        (gx#stx-for-each1
         (lambda (_id149962_)
           (if (gx#identifier? _id149962_)
               (gx#core-bind-runtime!__%
                _id149962_
                _rebind?149958_
                _phi149959_
                _ctx149960_)
               '#!void))
         _stx149957_)))
    (define gx#core-bind-values!__0
      (lambda (_stx149967_)
        (let* ((_rebind?149969_ '#f)
               (_phi149971_ (gx#current-expander-phi))
               (_ctx149973_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149967_
           _rebind?149969_
           _phi149971_
           _ctx149973_))))
    (define gx#core-bind-values!__1
      (lambda (_stx149975_ _rebind?149976_)
        (let* ((_phi149978_ (gx#current-expander-phi))
               (_ctx149980_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149975_
           _rebind?149976_
           _phi149978_
           _ctx149980_))))
    (define gx#core-bind-values!__2
      (lambda (_stx149982_ _rebind?149983_ _phi149984_)
        (let ((_ctx149986_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149982_
           _rebind?149983_
           _phi149984_
           _ctx149986_))))
    (define gx#core-bind-values!
      (lambda _g157152_
        (let ((_g157151_ (##length _g157152_)))
          (cond ((##fx= _g157151_ 1)
                 (apply (lambda (_stx149967_)
                          (gx#core-bind-values!__0 _stx149967_))
                        _g157152_))
                ((##fx= _g157151_ 2)
                 (apply (lambda (_stx149975_ _rebind?149976_)
                          (gx#core-bind-values!__1
                           _stx149975_
                           _rebind?149976_))
                        _g157152_))
                ((##fx= _g157151_ 3)
                 (apply (lambda (_stx149982_ _rebind?149983_ _phi149984_)
                          (gx#core-bind-values!__2
                           _stx149982_
                           _rebind?149983_
                           _phi149984_))
                        _g157152_))
                ((##fx= _g157151_ 4)
                 (apply (lambda (_stx149988_
                                 _rebind?149989_
                                 _phi149990_
                                 _ctx149991_)
                          (gx#core-bind-values!__%
                           _stx149988_
                           _rebind?149989_
                           _phi149990_
                           _ctx149991_))
                        _g157152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157152_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx149952_)
        (gx#stx-map1
         (lambda (_x149954_)
           (if (gx#identifier? _x149954_)
               (gx#core-quote-syntax__0 _x149954_)
               '#f))
         _stx149952_)))
    (define gx#core-runtime-ref?
      (lambda (_stx149945_)
        (if (gx#identifier? _stx149945_)
            (let* ((_bind149947_ (gx#resolve-identifier__0 _stx149945_))
                   (_$e149949_ (not _bind149947_)))
              (if _$e149949_
                  _$e149949_
                  (##structure-instance-of?
                   _bind149947_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id149937_ _form149938_)
        (let ((_bind149940_ (gx#resolve-identifier__0 _id149937_)))
          (if (##structure-instance-of? _bind149940_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id149937_)
              (if (not _bind149940_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id149937_)))
                      (gx#core-quote-syntax__0 _id149937_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form149938_
                       _id149937_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form149938_
                   _id149937_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id149896_ _rebind?149897_ _phi149898_ _ctx149899_)
        (let* ((_key149901_ (gx#core-identifier-key _id149896_))
               (_eid149903_
                (gx#make-binding-id__%
                 _key149901_
                 '#f
                 _phi149898_
                 _ctx149899_))
               (_bind149905_
                (if (##structure-instance-of?
                     _ctx149899_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid149903_
                     _key149901_
                     _phi149898_
                     _ctx149899_)
                    (if (##structure-instance-of?
                         _ctx149899_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid149903_
                         _key149901_
                         _phi149898_)
                        (if (##structure-instance-of?
                             _ctx149899_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid149903_
                             _key149901_
                             _phi149898_)
                            (##structure
                             gx#runtime-binding::t
                             _eid149903_
                             _key149901_
                             _phi149898_))))))
          (gx#bind-identifier!__%
           _id149896_
           _bind149905_
           _rebind?149897_
           _phi149898_
           _ctx149899_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id149911_)
        (let* ((_rebind?149913_ '#f)
               (_phi149915_ (gx#current-expander-phi))
               (_ctx149917_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149911_
           _rebind?149913_
           _phi149915_
           _ctx149917_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id149919_ _rebind?149920_)
        (let* ((_phi149922_ (gx#current-expander-phi))
               (_ctx149924_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149919_
           _rebind?149920_
           _phi149922_
           _ctx149924_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id149926_ _rebind?149927_ _phi149928_)
        (let ((_ctx149930_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149926_
           _rebind?149927_
           _phi149928_
           _ctx149930_))))
    (define gx#core-bind-runtime!
      (lambda _g157154_
        (let ((_g157153_ (##length _g157154_)))
          (cond ((##fx= _g157153_ 1)
                 (apply (lambda (_id149911_)
                          (gx#core-bind-runtime!__0 _id149911_))
                        _g157154_))
                ((##fx= _g157153_ 2)
                 (apply (lambda (_id149919_ _rebind?149920_)
                          (gx#core-bind-runtime!__1
                           _id149919_
                           _rebind?149920_))
                        _g157154_))
                ((##fx= _g157153_ 3)
                 (apply (lambda (_id149926_ _rebind?149927_ _phi149928_)
                          (gx#core-bind-runtime!__2
                           _id149926_
                           _rebind?149927_
                           _phi149928_))
                        _g157154_))
                ((##fx= _g157153_ 4)
                 (apply (lambda (_id149932_
                                 _rebind?149933_
                                 _phi149934_
                                 _ctx149935_)
                          (gx#core-bind-runtime!__%
                           _id149932_
                           _rebind?149933_
                           _phi149934_
                           _ctx149935_))
                        _g157154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157154_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id149851_ _eid149852_ _rebind?149853_ _phi149854_ _ctx149855_)
        (let* ((_key149857_ (gx#core-identifier-key _id149851_))
               (_bind149859_
                (if (##structure-instance-of?
                     _ctx149855_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid149852_
                     _key149857_
                     _phi149854_
                     _ctx149855_)
                    (if (##structure-instance-of?
                         _ctx149855_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid149852_
                         _key149857_
                         _phi149854_)
                        (##structure
                         gx#runtime-binding::t
                         _eid149852_
                         _key149857_
                         _phi149854_)))))
          (gx#bind-identifier!__%
           _id149851_
           _bind149859_
           _rebind?149853_
           _phi149854_
           _ctx149855_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id149865_ _eid149866_)
        (let* ((_rebind?149868_ '#f)
               (_phi149870_ (gx#current-expander-phi))
               (_ctx149872_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149865_
           _eid149866_
           _rebind?149868_
           _phi149870_
           _ctx149872_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id149874_ _eid149875_ _rebind?149876_)
        (let* ((_phi149878_ (gx#current-expander-phi))
               (_ctx149880_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149874_
           _eid149875_
           _rebind?149876_
           _phi149878_
           _ctx149880_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id149882_ _eid149883_ _rebind?149884_ _phi149885_)
        (let ((_ctx149887_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149882_
           _eid149883_
           _rebind?149884_
           _phi149885_
           _ctx149887_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157156_
        (let ((_g157155_ (##length _g157156_)))
          (cond ((##fx= _g157155_ 2)
                 (apply (lambda (_id149865_ _eid149866_)
                          (gx#core-bind-runtime-reference!__0
                           _id149865_
                           _eid149866_))
                        _g157156_))
                ((##fx= _g157155_ 3)
                 (apply (lambda (_id149874_ _eid149875_ _rebind?149876_)
                          (gx#core-bind-runtime-reference!__1
                           _id149874_
                           _eid149875_
                           _rebind?149876_))
                        _g157156_))
                ((##fx= _g157155_ 4)
                 (apply (lambda (_id149882_
                                 _eid149883_
                                 _rebind?149884_
                                 _phi149885_)
                          (gx#core-bind-runtime-reference!__2
                           _id149882_
                           _eid149883_
                           _rebind?149884_
                           _phi149885_))
                        _g157156_))
                ((##fx= _g157155_ 5)
                 (apply (lambda (_id149889_
                                 _eid149890_
                                 _rebind?149891_
                                 _phi149892_
                                 _ctx149893_)
                          (gx#core-bind-runtime-reference!__%
                           _id149889_
                           _eid149890_
                           _rebind?149891_
                           _phi149892_
                           _ctx149893_))
                        _g157156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157156_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149811_ _eid149812_ _rebind?149813_ _phi149814_ _ctx149815_)
        (gx#bind-identifier!__%
         _id149811_
         (##structure
          gx#extern-binding::t
          _eid149812_
          (gx#core-identifier-key _id149811_)
          _phi149814_)
         _rebind?149813_
         _phi149814_
         _ctx149815_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149820_ _eid149821_)
        (let* ((_rebind?149823_ '#f)
               (_phi149825_ (gx#current-expander-phi))
               (_ctx149827_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149820_
           _eid149821_
           _rebind?149823_
           _phi149825_
           _ctx149827_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149829_ _eid149830_ _rebind?149831_)
        (let* ((_phi149833_ (gx#current-expander-phi))
               (_ctx149835_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149829_
           _eid149830_
           _rebind?149831_
           _phi149833_
           _ctx149835_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149837_ _eid149838_ _rebind?149839_ _phi149840_)
        (let ((_ctx149842_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149837_
           _eid149838_
           _rebind?149839_
           _phi149840_
           _ctx149842_))))
    (define gx#core-bind-extern!
      (lambda _g157158_
        (let ((_g157157_ (##length _g157158_)))
          (cond ((##fx= _g157157_ 2)
                 (apply (lambda (_id149820_ _eid149821_)
                          (gx#core-bind-extern!__0 _id149820_ _eid149821_))
                        _g157158_))
                ((##fx= _g157157_ 3)
                 (apply (lambda (_id149829_ _eid149830_ _rebind?149831_)
                          (gx#core-bind-extern!__1
                           _id149829_
                           _eid149830_
                           _rebind?149831_))
                        _g157158_))
                ((##fx= _g157157_ 4)
                 (apply (lambda (_id149837_
                                 _eid149838_
                                 _rebind?149839_
                                 _phi149840_)
                          (gx#core-bind-extern!__2
                           _id149837_
                           _eid149838_
                           _rebind?149839_
                           _phi149840_))
                        _g157158_))
                ((##fx= _g157157_ 5)
                 (apply (lambda (_id149844_
                                 _eid149845_
                                 _rebind?149846_
                                 _phi149847_
                                 _ctx149848_)
                          (gx#core-bind-extern!__%
                           _id149844_
                           _eid149845_
                           _rebind?149846_
                           _phi149847_
                           _ctx149848_))
                        _g157158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157158_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149765_ _e149766_ _rebind?149767_ _phi149768_ _ctx149769_)
        (gx#bind-identifier!__%
         _id149765_
         (let ((_key149774_ (gx#core-identifier-key _id149765_))
               (_e149775_
                (if (or (##structure-instance-of? _e149766_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e149766_
                         'gx#expander-context::t))
                    _e149766_
                    (##structure
                     gx#user-expander::t
                     _e149766_
                     _ctx149769_
                     _phi149768_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key149774_ '#t _phi149768_ _ctx149769_)
            _key149774_
            _phi149768_
            _e149775_))
         _rebind?149767_
         _phi149768_
         _ctx149769_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149780_ _e149781_)
        (let* ((_rebind?149783_ '#f)
               (_phi149785_ (gx#current-expander-phi))
               (_ctx149787_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149780_
           _e149781_
           _rebind?149783_
           _phi149785_
           _ctx149787_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149789_ _e149790_ _rebind?149791_)
        (let* ((_phi149793_ (gx#current-expander-phi))
               (_ctx149795_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149789_
           _e149790_
           _rebind?149791_
           _phi149793_
           _ctx149795_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149797_ _e149798_ _rebind?149799_ _phi149800_)
        (let ((_ctx149802_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149797_
           _e149798_
           _rebind?149799_
           _phi149800_
           _ctx149802_))))
    (define gx#core-bind-syntax!
      (lambda _g157160_
        (let ((_g157159_ (##length _g157160_)))
          (cond ((##fx= _g157159_ 2)
                 (apply (lambda (_id149780_ _e149781_)
                          (gx#core-bind-syntax!__0 _id149780_ _e149781_))
                        _g157160_))
                ((##fx= _g157159_ 3)
                 (apply (lambda (_id149789_ _e149790_ _rebind?149791_)
                          (gx#core-bind-syntax!__1
                           _id149789_
                           _e149790_
                           _rebind?149791_))
                        _g157160_))
                ((##fx= _g157159_ 4)
                 (apply (lambda (_id149797_
                                 _e149798_
                                 _rebind?149799_
                                 _phi149800_)
                          (gx#core-bind-syntax!__2
                           _id149797_
                           _e149798_
                           _rebind?149799_
                           _phi149800_))
                        _g157160_))
                ((##fx= _g157159_ 5)
                 (apply (lambda (_id149804_
                                 _e149805_
                                 _rebind?149806_
                                 _phi149807_
                                 _ctx149808_)
                          (gx#core-bind-syntax!__%
                           _id149804_
                           _e149805_
                           _rebind?149806_
                           _phi149807_
                           _ctx149808_))
                        _g157160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157160_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149748_ _e149749_ _rebind?149750_)
        (gx#core-bind-syntax!__%
         _id149748_
         _e149749_
         _rebind?149750_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149755_ _e149756_)
        (let ((_rebind?149758_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149755_
           _e149756_
           _rebind?149758_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157162_
        (let ((_g157161_ (##length _g157162_)))
          (cond ((##fx= _g157161_ 2)
                 (apply (lambda (_id149755_ _e149756_)
                          (gx#core-bind-root-syntax!__0 _id149755_ _e149756_))
                        _g157162_))
                ((##fx= _g157161_ 3)
                 (apply (lambda (_id149760_ _e149761_ _rebind?149762_)
                          (gx#core-bind-root-syntax!__%
                           _id149760_
                           _e149761_
                           _rebind?149762_))
                        _g157162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157162_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149706_
               _alias-id149707_
               _rebind?149708_
               _phi149709_
               _ctx149710_)
        (gx#bind-identifier!__%
         _id149706_
         (let ((_key149712_ (gx#core-identifier-key _id149706_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key149712_ '#t _phi149709_ _ctx149710_)
            _key149712_
            _phi149709_
            _alias-id149707_))
         _rebind?149708_
         _phi149709_
         _ctx149710_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149717_ _alias-id149718_)
        (let* ((_rebind?149720_ '#f)
               (_phi149722_ (gx#current-expander-phi))
               (_ctx149724_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149717_
           _alias-id149718_
           _rebind?149720_
           _phi149722_
           _ctx149724_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149726_ _alias-id149727_ _rebind?149728_)
        (let* ((_phi149730_ (gx#current-expander-phi))
               (_ctx149732_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149726_
           _alias-id149727_
           _rebind?149728_
           _phi149730_
           _ctx149732_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149734_ _alias-id149735_ _rebind?149736_ _phi149737_)
        (let ((_ctx149739_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149734_
           _alias-id149735_
           _rebind?149736_
           _phi149737_
           _ctx149739_))))
    (define gx#core-bind-alias!
      (lambda _g157164_
        (let ((_g157163_ (##length _g157164_)))
          (cond ((##fx= _g157163_ 2)
                 (apply (lambda (_id149717_ _alias-id149718_)
                          (gx#core-bind-alias!__0 _id149717_ _alias-id149718_))
                        _g157164_))
                ((##fx= _g157163_ 3)
                 (apply (lambda (_id149726_ _alias-id149727_ _rebind?149728_)
                          (gx#core-bind-alias!__1
                           _id149726_
                           _alias-id149727_
                           _rebind?149728_))
                        _g157164_))
                ((##fx= _g157163_ 4)
                 (apply (lambda (_id149734_
                                 _alias-id149735_
                                 _rebind?149736_
                                 _phi149737_)
                          (gx#core-bind-alias!__2
                           _id149734_
                           _alias-id149735_
                           _rebind?149736_
                           _phi149737_))
                        _g157164_))
                ((##fx= _g157163_ 5)
                 (apply (lambda (_id149741_
                                 _alias-id149742_
                                 _rebind?149743_
                                 _phi149744_
                                 _ctx149745_)
                          (gx#core-bind-alias!__%
                           _id149741_
                           _alias-id149742_
                           _rebind?149743_
                           _phi149744_
                           _ctx149745_))
                        _g157164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157164_))))))
    (define gx#make-binding-id__%
      (lambda (_key149663_ _syntax?149664_ _phi149665_ _ctx149666_)
        (if (uninterned-symbol? _key149663_)
            (gensym 'L)
            (if (pair? _key149663_)
                (gensym (car _key149663_))
                (if (##structure-instance-of? _ctx149666_ 'gx#top-context::t)
                    (let ((_ns149668_
                           (gx#core-context-namespace__% _ctx149666_)))
                      (if (and (fxzero? _phi149665_) (not _syntax?149664_))
                          (if _ns149668_
                              (make-symbol__1 _ns149668_ '"#" _key149663_)
                              _key149663_)
                          (if _syntax?149664_
                              (make-symbol__1
                               (let ((_$e149670_ _ns149668_))
                                 (if _$e149670_ _$e149670_ '""))
                               '"[:"
                               (number->string _phi149665_)
                               '":]#"
                               _key149663_)
                              (make-symbol__1
                               (let ((_$e149673_ _ns149668_))
                                 (if _$e149673_ _$e149673_ '""))
                               '"["
                               (number->string _phi149665_)
                               '"]#"
                               _key149663_))))
                    (gensym _key149663_))))))
    (define gx#make-binding-id__0
      (lambda (_key149679_)
        (let* ((_syntax?149681_ '#f)
               (_phi149683_ (gx#current-expander-phi))
               (_ctx149685_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149679_
           _syntax?149681_
           _phi149683_
           _ctx149685_))))
    (define gx#make-binding-id__1
      (lambda (_key149687_ _syntax?149688_)
        (let* ((_phi149690_ (gx#current-expander-phi))
               (_ctx149692_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149687_
           _syntax?149688_
           _phi149690_
           _ctx149692_))))
    (define gx#make-binding-id__2
      (lambda (_key149694_ _syntax?149695_ _phi149696_)
        (let ((_ctx149698_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149694_
           _syntax?149695_
           _phi149696_
           _ctx149698_))))
    (define gx#make-binding-id
      (lambda _g157166_
        (let ((_g157165_ (##length _g157166_)))
          (cond ((##fx= _g157165_ 1)
                 (apply (lambda (_key149679_)
                          (gx#make-binding-id__0 _key149679_))
                        _g157166_))
                ((##fx= _g157165_ 2)
                 (apply (lambda (_key149687_ _syntax?149688_)
                          (gx#make-binding-id__1 _key149687_ _syntax?149688_))
                        _g157166_))
                ((##fx= _g157165_ 3)
                 (apply (lambda (_key149694_ _syntax?149695_ _phi149696_)
                          (gx#make-binding-id__2
                           _key149694_
                           _syntax?149695_
                           _phi149696_))
                        _g157166_))
                ((##fx= _g157165_ 4)
                 (apply (lambda (_key149700_
                                 _syntax?149701_
                                 _phi149702_
                                 _ctx149703_)
                          (gx#make-binding-id__%
                           _key149700_
                           _syntax?149701_
                           _phi149702_
                           _ctx149703_))
                        _g157166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157166_))))))))
