(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx8838_)
      (let ((_expand-special8840_
             (lambda (_hd8842_ _K8843_ _rest8844_ _r8845_)
               (_K8843_ _rest8844_
                        (cons (gx#core-expand-top _hd8842_) _r8845_)))))
        (gx#core-expand-block__0 _stx8838_ _expand-special8840_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8591_)
      (let ((_expand-special8593_
             (lambda (_hd8713_ _K8714_ _rest8715_ _r8716_)
               (let ((_K8720_ (lambda (_e8718_)
                                (_K8714_ _rest8715_ (cons _e8718_ _r8716_)))))
                 (let ((_e87218750_ _hd8713_))
                   (let ((_E87458754_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87218750_))))
                     (let ((_E87418766_
                            (lambda ()
                              (if (gx#stx-pair? _e87218750_)
                                  (let ((_e87468758_
                                         (gx#syntax-e _e87218750_)))
                                    (let ((_hd87478761_ (##car _e87468758_))
                                          (_tl87488763_ (##cdr _e87468758_)))
                                      (if (if (gx#identifier? _hd87478761_)
                                              (gx#core-identifier=?
                                               _hd87478761_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8720_ (gx#core-expand-define-runtime%
                                                        _hd8713_))
                                              (_E87458754_))
                                          (_E87458754_))))
                                  (_E87458754_)))))
                       (let ((_E87378778_
                              (lambda ()
                                (if (gx#stx-pair? _e87218750_)
                                    (let ((_e87428770_
                                           (gx#syntax-e _e87218750_)))
                                      (let ((_hd87438773_ (##car _e87428770_))
                                            (_tl87448775_ (##cdr _e87428770_)))
                                        (if (if (gx#identifier? _hd87438773_)
                                                (gx#core-identifier=?
                                                 _hd87438773_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8720_ (gx#core-expand-define-alias%
                                                          _hd8713_))
                                                (_E87418766_))
                                            (_E87418766_))))
                                    (_E87418766_)))))
                         (let ((_E87278790_
                                (lambda ()
                                  (if (gx#stx-pair? _e87218750_)
                                      (let ((_e87388782_
                                             (gx#syntax-e _e87218750_)))
                                        (let ((_hd87398785_
                                               (##car _e87388782_))
                                              (_tl87408787_
                                               (##cdr _e87388782_)))
                                          (if (if (gx#identifier? _hd87398785_)
                                                  (gx#core-identifier=?
                                                   _hd87398785_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8720_ (gx#core-expand-define-syntax%
                                                            _hd8713_))
                                                  (_E87378778_))
                                              (_E87378778_))))
                                      (_E87378778_)))))
                           (let ((_E87238822_
                                  (lambda ()
                                    (if (gx#stx-pair? _e87218750_)
                                        (let ((_e87288794_
                                               (gx#syntax-e _e87218750_)))
                                          (let ((_hd87298797_
                                                 (##car _e87288794_))
                                                (_tl87308799_
                                                 (##cdr _e87288794_)))
                                            (if (if (gx#identifier?
                                                     _hd87298797_)
                                                    (gx#core-identifier=?
                                                     _hd87298797_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl87308799_)
                                                    (let ((_e87318802_
                                                           (gx#syntax-e
                                                            _tl87308799_)))
                                                      (let ((_hd87328805_
                                                             (##car _e87318802_))
                                                            (_tl87338807_
                                                             (##cdr _e87318802_)))
                                                        (let ((_hd-bind8810_
                                                               _hd87328805_))
                                                          (if (gx#stx-pair?
                                                               _tl87338807_)
                                                              (let ((_e87348812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl87338807_)))
                        (let ((_hd87358815_ (##car _e87348812_))
                              (_tl87368817_ (##cdr _e87348812_)))
                          (let ((_expr8820_ _hd87358815_))
                            (if (gx#stx-null? _tl87368817_)
                                (if (gx#core-bind-values? _hd-bind8810_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind8810_)
                                      (_K8720_ _hd8713_))
                                    (_E87278790_))
                                (_E87278790_)))))
                      (_E87278790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87278790_))
                                                (_E87278790_))))
                                        (_E87278790_)))))
                             (let ((_E87228834_
                                    (lambda ()
                                      (if (gx#stx-pair? _e87218750_)
                                          (let ((_e87248826_
                                                 (gx#syntax-e _e87218750_)))
                                            (let ((_hd87258829_
                                                   (##car _e87248826_))
                                                  (_tl87268831_
                                                   (##cdr _e87248826_)))
                                              (if (if (gx#identifier?
                                                       _hd87258829_)
                                                      (gx#core-identifier=?
                                                       _hd87258829_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8720_ (gx#core-expand-begin-syntax%
                                                                _hd8713_))
                                                      (_E87238822_))
                                                  (_E87238822_))))
                                          (_E87238822_)))))
                               (let () (_E87228834_)))))))))))))
        (let ((_eval-body8594_
               (lambda (_rbody8602_)
                 ((letrec ((_lp8604_
                            (lambda (_rest8606_ _body8607_ _ebody8608_)
                              (let ((_rest86098617_ _rest8606_))
                                (let ((_E86128621_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest86098617_))))
                                  (let ((_else86118625_
                                         (lambda ()
                                           (values _body8607_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8608_)
                                                     (gx#stx-source
                                                      _stx8591_)))))))
                                    (let ((_K86138701_
                                           (lambda (_rest8628_ _hd8629_)
                                             (let ((_e86308647_ _hd8629_))
                                               (let ((_E86428651_
                                                      (lambda ()
                                                        (_lp8604_
                                                         _rest8628_
                                                         (cons _hd8629_
                                                               _body8607_)
                                                         (cons _hd8629_
                                                               _ebody8608_)))))
                                                 (let ((_E86328663_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e86308647_)
                                                              (let ((_e86438655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e86308647_)))
                        (let ((_hd86448658_ (##car _e86438655_))
                              (_tl86458660_ (##cdr _e86438655_)))
                          (if (if (gx#identifier? _hd86448658_)
                                  (gx#core-identifier=?
                                   _hd86448658_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8604_
                                   _rest8628_
                                   (cons _hd8629_ _body8607_)
                                   _ebody8608_)
                                  (_E86428651_))
                              (_E86428651_))))
                      (_E86428651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E86318697_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e86308647_)
                        (let ((_e86338667_ (gx#syntax-e _e86308647_)))
                          (let ((_hd86348670_ (##car _e86338667_))
                                (_tl86358672_ (##cdr _e86338667_)))
                            (if (if (gx#identifier? _hd86348670_)
                                    (gx#core-identifier=?
                                     _hd86348670_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl86358672_)
                                    (let ((_e86368675_
                                           (gx#syntax-e _tl86358672_)))
                                      (let ((_hd86378678_ (##car _e86368675_))
                                            (_tl86388680_ (##cdr _e86368675_)))
                                        (let ((_hd-bind8683_ _hd86378678_))
                                          (if (gx#stx-pair? _tl86388680_)
                                              (let ((_e86398685_
                                                     (gx#syntax-e
                                                      _tl86388680_)))
                                                (let ((_hd86408688_
                                                       (##car _e86398685_))
                                                      (_tl86418690_
                                                       (##cdr _e86398685_)))
                                                  (let ((_expr8693_
                                                         _hd86408688_))
                                                    (if (gx#stx-null?
                                                         _tl86418690_)
                                                        (if '#t
                                                            (let ((_ehd8695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8683_)
                                        (cons (gx#core-expand-expression
                                               _expr8693_)
                                              '())))
                            (gx#stx-source _hd8629_))))
                      (_lp8604_
                       _rest8628_
                       (cons _ehd8695_ _body8607_)
                       (cons _ehd8695_ _ebody8608_)))
                    (_E86328663_))
                (_E86328663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86328663_)))))
                                    (_E86328663_))
                                (_E86328663_))))
                        (_E86328663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E86318697_)))))))))
                                      (if (##pair? _rest86098617_)
                                          (let ((_hd86148704_
                                                 (##car _rest86098617_))
                                                (_tl86158706_
                                                 (##cdr _rest86098617_)))
                                            (let ((_hd8709_ _hd86148704_))
                                              (let ((_rest8711_ _tl86158706_))
                                                (_K86138701_
                                                 _rest8711_
                                                 _hd8709_))))
                                          (_else86118625_)))))))))
                    _lp8604_)
                  _rbody8602_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8597_
                    (gx#core-expand-block__1
                     _stx8591_
                     _expand-special8593_
                     '#f)))
               (let ((_g8852_ (_eval-body8594_ _rbody8597_)))
                 (begin
                   (let ((_g8853_ (values-count _g8852_)))
                     (if (not (fx= _g8853_ 2))
                         (error "Context expects 2 values" _g8853_)))
                   (let ((_expanded-body8599_ (values-ref _g8852_ 0))
                         (_value8600_ (values-ref _g8852_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8599_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8600_ '())))
                      (gx#stx-source _stx8591_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8561_)
      (let ((_e85628569_ _stx8561_))
        (let ((_E85648573_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e85628569_))))
          (let ((_E85638587_
                 (lambda ()
                   (if (gx#stx-pair? _e85628569_)
                       (let ((_e85658577_ (gx#syntax-e _e85628569_)))
                         (let ((_hd85668580_ (##car _e85658577_))
                               (_tl85678582_ (##cdr _e85658577_)))
                           (let ((_body8585_ _tl85678582_))
                             (if (gx#stx-list? _body8585_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8585_)
                                  (gx#stx-source _stx8561_))
                                 (_E85648573_)))))
                       (_E85648573_)))))
            (let () (_E85638587_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8549_)
      (let ((_e85508553_ _stx8549_))
        (let ((_E85518557_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e85508553_))))
          (let () (_E85518557_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8273_ _body8274_)
      (let ((_expand-internal-special8278_
             (lambda (_hd8435_ _K8436_ _rest8437_ _r8438_)
               (let ((_e84398464_ _hd8435_))
                 (let ((_E84598468_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e84398464_))))
                   (let ((_E84558480_
                          (lambda ()
                            (if (gx#stx-pair? _e84398464_)
                                (let ((_e84608472_ (gx#syntax-e _e84398464_)))
                                  (let ((_hd84618475_ (##car _e84608472_))
                                        (_tl84628477_ (##cdr _e84608472_)))
                                    (if (if (gx#identifier? _hd84618475_)
                                            (gx#core-identifier=?
                                             _hd84618475_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8436_ _rest8437_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8435_)
                                                           _r8438_))
                                            (_E84598468_))
                                        (_E84598468_))))
                                (_E84598468_)))))
                     (let ((_E84518492_
                            (lambda ()
                              (if (gx#stx-pair? _e84398464_)
                                  (let ((_e84568484_
                                         (gx#syntax-e _e84398464_)))
                                    (let ((_hd84578487_ (##car _e84568484_))
                                          (_tl84588489_ (##cdr _e84568484_)))
                                      (if (if (gx#identifier? _hd84578487_)
                                              (gx#core-identifier=?
                                               _hd84578487_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8435_)
                                                (_K8436_ _rest8437_ _r8438_))
                                              (_E84558480_))
                                          (_E84558480_))))
                                  (_E84558480_)))))
                       (let ((_E84418504_
                              (lambda ()
                                (if (gx#stx-pair? _e84398464_)
                                    (let ((_e84528496_
                                           (gx#syntax-e _e84398464_)))
                                      (let ((_hd84538499_ (##car _e84528496_))
                                            (_tl84548501_ (##cdr _e84528496_)))
                                        (if (if (gx#identifier? _hd84538499_)
                                                (gx#core-identifier=?
                                                 _hd84538499_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8435_)
                                                  (_K8436_ _rest8437_ _r8438_))
                                                (_E84518492_))
                                            (_E84518492_))))
                                    (_E84518492_)))))
                         (let ((_E84408536_
                                (lambda ()
                                  (if (gx#stx-pair? _e84398464_)
                                      (let ((_e84428508_
                                             (gx#syntax-e _e84398464_)))
                                        (let ((_hd84438511_
                                               (##car _e84428508_))
                                              (_tl84448513_
                                               (##cdr _e84428508_)))
                                          (if (if (gx#identifier? _hd84438511_)
                                                  (gx#core-identifier=?
                                                   _hd84438511_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl84448513_)
                                                  (let ((_e84458516_
                                                         (gx#syntax-e
                                                          _tl84448513_)))
                                                    (let ((_hd84468519_
                                                           (##car _e84458516_))
                                                          (_tl84478521_
                                                           (##cdr _e84458516_)))
                                                      (let ((_hd-bind8524_
                                                             _hd84468519_))
                                                        (if (gx#stx-pair?
                                                             _tl84478521_)
                                                            (let ((_e84488526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl84478521_)))
                      (let ((_hd84498529_ (##car _e84488526_))
                            (_tl84508531_ (##cdr _e84488526_)))
                        (let ((_expr8534_ _hd84498529_))
                          (if (gx#stx-null? _tl84508531_)
                              (if (gx#core-bind-values? _hd-bind8524_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8524_)
                                    (_K8436_ _rest8437_
                                             (cons _hd8435_ _r8438_)))
                                  (_E84418504_))
                              (_E84418504_)))))
                    (_E84418504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E84418504_))
                                              (_E84418504_))))
                                      (_E84418504_)))))
                           (let () (_E84408536_)))))))))))
        (let ((_wrap-internal8279_
               (lambda (_rbody8281_)
                 ((letrec ((_lp8283_
                            (lambda (_rest8285_
                                     _decls8286_
                                     _bind8287_
                                     _body8288_)
                              (let ((_e82898296_ _rest8285_))
                                (let ((_E82918345_
                                       (lambda ()
                                         (let ((_body8340_
                                                (let ((_body82998309_
                                                       _body8288_))
                                                  (let ((_E83038313_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body82998309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else83028317_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8288_)
                                                              (gx#stx-source
                                                               _stx8273_)))))
                                                      (let ((_try-match83018333_
                                                             (lambda ()
                                                               (let ((_K83048323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8321_) _expr8321_)))
                         (if (##pair? _body82998309_)
                             (let ((_hd83058326_ (##car _body82998309_))
                                   (_tl83068328_ (##cdr _body82998309_)))
                               (let ((_expr8331_ _hd83058326_))
                                 (if (##null? _tl83068328_)
                                     (_K83048323_ _expr8331_)
                                     (_else83028317_))))
                             (_else83028317_))))))
                (let ((_K83078337_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8273_))))
                  (if (##null? _body82998309_)
                      (_K83078337_)
                      (_try-match83018333_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8342_
                                                  (if (null? _bind8287_)
                                                      _body8340_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8340_ '())))
               (gx#stx-source _stx8273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8286_)
                                                   _body8342_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8286_
                                                                (cons _body8342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8273_)))))))))
                                  (let ((_E82908431_
                                         (lambda ()
                                           (if (gx#stx-pair? _e82898296_)
                                               (let ((_e82928349_
                                                      (gx#syntax-e
                                                       _e82898296_)))
                                                 (let ((_hd82938352_
                                                        (##car _e82928349_))
                                                       (_tl82948354_
                                                        (##cdr _e82928349_)))
                                                   (let ((_hd8357_
                                                          _hd82938352_))
                                                     (let ((_rest8359_
                                                            _tl82948354_))
                                                       (if '#t
                                                           (let ((_e83608377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8357_))
                     (let ((_E83728381_
                            (lambda ()
                              (if (null? _bind8287_)
                                  (_lp8283_
                                   _rest8359_
                                   _decls8286_
                                   _bind8287_
                                   (cons _hd8357_ _body8288_))
                                  (_lp8283_
                                   _rest8359_
                                   _decls8286_
                                   (cons (cons '#f (cons _hd8357_ '()))
                                         _bind8287_)
                                   _body8288_)))))
                       (let ((_E83628395_
                              (lambda ()
                                (if (gx#stx-pair? _e83608377_)
                                    (let ((_e83738385_
                                           (gx#syntax-e _e83608377_)))
                                      (let ((_hd83748388_ (##car _e83738385_))
                                            (_tl83758390_ (##cdr _e83738385_)))
                                        (if (if (gx#identifier? _hd83748388_)
                                                (gx#core-identifier=?
                                                 _hd83748388_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8393_ _tl83758390_))
                                              (if '#t
                                                  (_lp8283_
                                                   _rest8359_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8286_
                                                    _xdecls8393_)
                                                   _bind8287_
                                                   _body8288_)
                                                  (_E83728381_)))
                                            (_E83728381_))))
                                    (_E83728381_)))))
                         (let ((_E83618427_
                                (lambda ()
                                  (if (gx#stx-pair? _e83608377_)
                                      (let ((_e83638399_
                                             (gx#syntax-e _e83608377_)))
                                        (let ((_hd83648402_
                                               (##car _e83638399_))
                                              (_tl83658404_
                                               (##cdr _e83638399_)))
                                          (if (if (gx#identifier? _hd83648402_)
                                                  (gx#core-identifier=?
                                                   _hd83648402_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl83658404_)
                                                  (let ((_e83668407_
                                                         (gx#syntax-e
                                                          _tl83658404_)))
                                                    (let ((_hd83678410_
                                                           (##car _e83668407_))
                                                          (_tl83688412_
                                                           (##cdr _e83668407_)))
                                                      (let ((_hd-bind8415_
                                                             _hd83678410_))
                                                        (if (gx#stx-pair?
                                                             _tl83688412_)
                                                            (let ((_e83698417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl83688412_)))
                      (let ((_hd83708420_ (##car _e83698417_))
                            (_tl83718422_ (##cdr _e83698417_)))
                        (let ((_expr8425_ _hd83708420_))
                          (if (gx#stx-null? _tl83718422_)
                              (if '#t
                                  (_lp8283_
                                   _rest8359_
                                   _decls8286_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8415_)
                                               (cons (gx#core-expand-expression
                                                      _expr8425_)
                                                     '()))
                                         _bind8287_)
                                   _body8288_)
                                  (_E83628395_))
                              (_E83628395_)))))
                    (_E83628395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E83628395_))
                                              (_E83628395_))))
                                      (_E83628395_)))))
                           (let () (_E83618427_))))))
                   (_E82918345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E82918345_)))))
                                    (let () (_E82908431_))))))))
                    _lp8283_)
                  _rbody8281_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8277_
                 (lambda (_hd8540_ _rest8541_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8279_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8540_ _rest8541_)
                         (gx#stx-source _stx8273_))
                        _expand-internal-special8278_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj8846 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj8846)
                        __obj8846))))))
            (let ((_expand-special8276_
                   (lambda (_hd8544_ _K8545_ _rest8546_ _r8547_)
                     (_K8545_ '()
                              (cons (_expand-internal8277_ _hd8544_ _rest8546_)
                                    _r8547_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8274_)
                (gx#stx-source _stx8273_))
               _expand-special8276_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8211_)
      (let ((_e82128219_ _stx8211_))
        (let ((_E82148223_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82128219_))))
          (let ((_E82138269_
                 (lambda ()
                   (if (gx#stx-pair? _e82128219_)
                       (let ((_e82158227_ (gx#syntax-e _e82128219_)))
                         (let ((_hd82168230_ (##car _e82158227_))
                               (_tl82178232_ (##cdr _e82158227_)))
                           (let ((_body8235_ _tl82178232_))
                             (if (gx#stx-list? _body8235_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8237_)
                                      (let ((_e82388245_ _decl8237_))
                                        (let ((_E82408249_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e82388245_))))
                                          (let ((_E82398265_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e82388245_)
                                                       (let ((_e82418253_
                                                              (gx#syntax-e
                                                               _e82388245_)))
                                                         (let ((_hd82428256_
                                                                (##car _e82418253_))
                                                               (_tl82438258_
                                                                (##cdr _e82418253_)))
                                                           (let ((_head8261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd82428256_))
                     (let ((_args8263_ _tl82438258_))
                       (if (gx#stx-list? _args8263_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8237_)
                           (_E82408249_))))))
               (_E82408249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E82398265_))))))
                                    _body8235_))
                                  (gx#stx-source _stx8211_))
                                 (_E82148223_)))))
                       (_E82148223_)))))
            (let () (_E82138269_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8095_)
      (let ((_e80968103_ _stx8095_))
        (let ((_E80988107_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80968103_))))
          (let ((_E80978207_
                 (lambda ()
                   (if (gx#stx-pair? _e80968103_)
                       (let ((_e80998111_ (gx#syntax-e _e80968103_)))
                         (let ((_hd81008114_ (##car _e80998111_))
                               (_tl81018116_ (##cdr _e80998111_)))
                           (let ((_body8119_ _tl81018116_))
                             (if (gx#stx-list? _body8119_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8121_)
                                      (let ((_e81228132_ _bind8121_))
                                        (let ((_E81248136_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e81228132_))))
                                          (let ((_E81238160_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e81228132_)
                                                       (let ((_e81258140_
                                                              (gx#syntax-e
                                                               _e81228132_)))
                                                         (let ((_hd81268143_
                                                                (##car _e81258140_))
                                                               (_tl81278145_
                                                                (##cdr _e81258140_)))
                                                           (let ((_id8148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd81268143_))
                     (if (gx#stx-pair? _tl81278145_)
                         (let ((_e81288150_ (gx#syntax-e _tl81278145_)))
                           (let ((_hd81298153_ (##car _e81288150_))
                                 (_tl81308155_ (##cdr _e81288150_)))
                             (let ((_eid8158_ _hd81298153_))
                               (if (gx#stx-null? _tl81308155_)
                                   (if (if (gx#identifier? _id8148_)
                                           (gx#identifier? _eid8158_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8148_
                                        (gx#stx-e _eid8158_))
                                       (_E81248136_))
                                   (_E81248136_)))))
                         (_E81248136_)))))
               (_E81248136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81238160_))))))
                                    _body8119_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8164_)
                                        (let ((_e81658175_ _bind8164_))
                                          (let ((_E81678179_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e81658175_))))
                                            (let ((_E81668203_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e81658175_)
                                                         (let ((_e81688183_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e81658175_)))
                   (let ((_hd81698186_ (##car _e81688183_))
                         (_tl81708188_ (##cdr _e81688183_)))
                     (let ((_id8191_ _hd81698186_))
                       (if (gx#stx-pair? _tl81708188_)
                           (let ((_e81718193_ (gx#syntax-e _tl81708188_)))
                             (let ((_hd81728196_ (##car _e81718193_))
                                   (_tl81738198_ (##cdr _e81718193_)))
                               (let ((_eid8201_ _hd81728196_))
                                 (if (gx#stx-null? _tl81738198_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8191_)
                                               (cons (gx#stx-e _eid8201_) '()))
                                         (_E81678179_))
                                     (_E81678179_)))))
                           (_E81678179_)))))
                 (_E81678179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E81668203_))))))
                                      _body8119_))
                                    (gx#stx-source _stx8095_)))
                                 (_E80988107_)))))
                       (_E80988107_)))))
            (let () (_E80978207_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8041_)
      (let ((_e80428055_ _stx8041_))
        (let ((_E80448059_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80428055_))))
          (let ((_E80438091_
                 (lambda ()
                   (if (gx#stx-pair? _e80428055_)
                       (let ((_e80458063_ (gx#syntax-e _e80428055_)))
                         (let ((_hd80468066_ (##car _e80458063_))
                               (_tl80478068_ (##cdr _e80458063_)))
                           (if (gx#stx-pair? _tl80478068_)
                               (let ((_e80488071_ (gx#syntax-e _tl80478068_)))
                                 (let ((_hd80498074_ (##car _e80488071_))
                                       (_tl80508076_ (##cdr _e80488071_)))
                                   (let ((_hd8079_ _hd80498074_))
                                     (if (gx#stx-pair? _tl80508076_)
                                         (let ((_e80518081_
                                                (gx#syntax-e _tl80508076_)))
                                           (let ((_hd80528084_
                                                  (##car _e80518081_))
                                                 (_tl80538086_
                                                  (##cdr _e80518081_)))
                                             (let ((_expr8089_ _hd80528084_))
                                               (if (gx#stx-null? _tl80538086_)
                                                   (if (gx#core-bind-values?
                                                        _hd8079_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8079_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8079_)
                              (cons (gx#core-expand-expression _expr8089_)
                                    '())))
                  (gx#stx-source _stx8041_)))
               (_E80448059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E80448059_)))))
                                         (_E80448059_)))))
                               (_E80448059_))))
                       (_E80448059_)))))
            (let () (_E80438091_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx7987_)
      (let ((_e79888001_ _stx7987_))
        (let ((_E79908005_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79888001_))))
          (let ((_E79898037_
                 (lambda ()
                   (if (gx#stx-pair? _e79888001_)
                       (let ((_e79918009_ (gx#syntax-e _e79888001_)))
                         (let ((_hd79928012_ (##car _e79918009_))
                               (_tl79938014_ (##cdr _e79918009_)))
                           (if (gx#stx-pair? _tl79938014_)
                               (let ((_e79948017_ (gx#syntax-e _tl79938014_)))
                                 (let ((_hd79958020_ (##car _e79948017_))
                                       (_tl79968022_ (##cdr _e79948017_)))
                                   (let ((_id8025_ _hd79958020_))
                                     (if (gx#stx-pair? _tl79968022_)
                                         (let ((_e79978027_
                                                (gx#syntax-e _tl79968022_)))
                                           (let ((_hd79988030_
                                                  (##car _e79978027_))
                                                 (_tl79998032_
                                                  (##cdr _e79978027_)))
                                             (let ((_binding-id8035_
                                                    _hd79988030_))
                                               (if (gx#stx-null? _tl79998032_)
                                                   (if (if (gx#identifier?
                                                            _id8025_)
                                                           (gx#identifier?
                                                            _binding-id8035_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8025_
                                                          (gx#stx-e
                                                           _binding-id8035_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8025_)
                              (cons (gx#core-quote-syntax__0 _binding-id8035_)
                                    '())))))
               (_E79908005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79908005_)))))
                                         (_E79908005_)))))
                               (_E79908005_))))
                       (_E79908005_)))))
            (let () (_E79898037_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx7930_)
      (let ((_e79317944_ _stx7930_))
        (let ((_E79337948_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79317944_))))
          (let ((_E79327983_
                 (lambda ()
                   (if (gx#stx-pair? _e79317944_)
                       (let ((_e79347952_ (gx#syntax-e _e79317944_)))
                         (let ((_hd79357955_ (##car _e79347952_))
                               (_tl79367957_ (##cdr _e79347952_)))
                           (if (gx#stx-pair? _tl79367957_)
                               (let ((_e79377960_ (gx#syntax-e _tl79367957_)))
                                 (let ((_hd79387963_ (##car _e79377960_))
                                       (_tl79397965_ (##cdr _e79377960_)))
                                   (let ((_id7968_ _hd79387963_))
                                     (if (gx#stx-pair? _tl79397965_)
                                         (let ((_e79407970_
                                                (gx#syntax-e _tl79397965_)))
                                           (let ((_hd79417973_
                                                  (##car _e79407970_))
                                                 (_tl79427975_
                                                  (##cdr _e79407970_)))
                                             (let ((_expr7978_ _hd79417973_))
                                               (if (gx#stx-null? _tl79427975_)
                                                   (if (gx#identifier?
                                                        _id7968_)
                                                       (let ((_g8854_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr7978_)))
                 (begin
                   (let ((_g8855_ (values-count _g8854_)))
                     (if (not (fx= _g8855_ 2))
                         (error "Context expects 2 values" _g8855_)))
                   (let ((_e-stx7980_ (values-ref _g8854_ 0))
                         (_e7981_ (values-ref _g8854_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id7968_ _e7981_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id7968_)
                                    (cons _e-stx7980_ '())))
                        (gx#stx-source _stx7930_))))))
               (_E79337948_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E79337948_)))))
                                         (_E79337948_)))))
                               (_E79337948_))))
                       (_E79337948_)))))
            (let () (_E79327983_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx7874_)
      (let ((_e78757888_ _stx7874_))
        (let ((_E78777892_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78757888_))))
          (let ((_E78767926_
                 (lambda ()
                   (if (gx#stx-pair? _e78757888_)
                       (let ((_e78787896_ (gx#syntax-e _e78757888_)))
                         (let ((_hd78797899_ (##car _e78787896_))
                               (_tl78807901_ (##cdr _e78787896_)))
                           (if (gx#stx-pair? _tl78807901_)
                               (let ((_e78817904_ (gx#syntax-e _tl78807901_)))
                                 (let ((_hd78827907_ (##car _e78817904_))
                                       (_tl78837909_ (##cdr _e78817904_)))
                                   (let ((_id7912_ _hd78827907_))
                                     (if (gx#stx-pair? _tl78837909_)
                                         (let ((_e78847914_
                                                (gx#syntax-e _tl78837909_)))
                                           (let ((_hd78857917_
                                                  (##car _e78847914_))
                                                 (_tl78867919_
                                                  (##cdr _e78847914_)))
                                             (let ((_alias-id7922_
                                                    _hd78857917_))
                                               (if (gx#stx-null? _tl78867919_)
                                                   (if (if (gx#identifier?
                                                            _id7912_)
                                                           (gx#identifier?
                                                            _alias-id7922_)
                                                           '#f)
                                                       (let ((_alias-id7924_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id7922_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id7912_
                                                            _alias-id7924_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id7912_)
                                (cons _alias-id7924_ '()))))))
               (_E78777892_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E78777892_)))))
                                         (_E78777892_)))))
                               (_E78777892_))))
                       (_E78777892_)))))
            (let () (_E78767926_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda7815
      (lambda (_stx7817_ _wrap?7818_)
        (let ((_e78197829_ _stx7817_))
          (let ((_E78217833_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e78197829_))))
            (let ((_E78207860_
                   (lambda ()
                     (if (gx#stx-pair? _e78197829_)
                         (let ((_e78227837_ (gx#syntax-e _e78197829_)))
                           (let ((_hd78237840_ (##car _e78227837_))
                                 (_tl78247842_ (##cdr _e78227837_)))
                             (if (gx#stx-pair? _tl78247842_)
                                 (let ((_e78257845_
                                        (gx#syntax-e _tl78247842_)))
                                   (let ((_hd78267848_ (##car _e78257845_))
                                         (_tl78277850_ (##cdr _e78257845_)))
                                     (let ((_hd7853_ _hd78267848_))
                                       (let ((_body7855_ _tl78277850_))
                                         (if (gx#core-bind-values? _hd7853_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd7853_)
                                                  (let ((_body7858_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd7853_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7817_
                              _body7855_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?7818_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body7858_)
                                                         (gx#stx-source
                                                          _stx7817_))
                                                        _body7858_))))
                                              gx#current-expander-context
                                              (let ((__obj8847
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8847)
                                                  __obj8847)))
                                             (_E78217833_))))))
                                 (_E78217833_))))
                         (_E78217833_)))))
              (let () (_E78207860_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx7867_)
          (let ((_wrap?7869_ '#t))
            (gx#core-expand-lambda%__opt-lambda7815 _stx7867_ _wrap?7869_))))
      (define gx#core-expand-lambda%
        (lambda _g8857_
          (let ((_g8856_ (length _g8857_)))
            (cond ((fx= _g8856_ 1) (apply gx#core-expand-lambda%__0 _g8857_))
                  ((fx= _g8856_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda7815 _g8857_))
                  (else (error "No clause matching arguments" _g8857_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx7781_)
      (let ((_e77827789_ _stx7781_))
        (let ((_E77847793_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77827789_))))
          (let ((_E77837812_
                 (lambda ()
                   (if (gx#stx-pair? _e77827789_)
                       (let ((_e77857797_ (gx#syntax-e _e77827789_)))
                         (let ((_hd77867800_ (##car _e77857797_))
                               (_tl77877802_ (##cdr _e77857797_)))
                           (let ((_clauses7805_ _tl77877802_))
                             (if (gx#stx-list? _clauses7805_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause7807_)
                                      (gx#core-expand-lambda%__opt-lambda7815
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause7807_)
                                        (let ((_$e7809_
                                               (gx#stx-source _clause7807_)))
                                          (if _$e7809_
                                              _$e7809_
                                              (gx#stx-source _stx7781_))))
                                       '#f))
                                    _clauses7805_))
                                  (gx#stx-source _stx7781_))
                                 (_E77847793_)))))
                       (_E77847793_)))))
            (let () (_E77837812_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7735_)
      (let ((_e77367746_ _stx7735_))
        (let ((_E77387750_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77367746_))))
          (let ((_E77377777_
                 (lambda ()
                   (if (gx#stx-pair? _e77367746_)
                       (let ((_e77397754_ (gx#syntax-e _e77367746_)))
                         (let ((_hd77407757_ (##car _e77397754_))
                               (_tl77417759_ (##cdr _e77397754_)))
                           (if (gx#stx-pair? _tl77417759_)
                               (let ((_e77427762_ (gx#syntax-e _tl77417759_)))
                                 (let ((_hd77437765_ (##car _e77427762_))
                                       (_tl77447767_ (##cdr _e77427762_)))
                                   (let ((_hd7770_ _hd77437765_))
                                     (let ((_body7772_ _tl77447767_))
                                       (if (gx#core-expand-let-bind? _hd7770_)
                                           (let ((_expressions7774_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd7770_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7770_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7770_
                                                                _expressions7774_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7735_
                              _body7772_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7735_))))
                                              gx#current-expander-context
                                              (let ((__obj8848
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8848)
                                                  __obj8848))))
                                           (_E77387750_))))))
                               (_E77387750_))))
                       (_E77387750_)))))
            (let () (_E77377777_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7678
      (lambda (_stx7680_ _form7681_)
        (let ((_e76827692_ _stx7680_))
          (let ((_E76847696_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e76827692_))))
            (let ((_E76837721_
                   (lambda ()
                     (if (gx#stx-pair? _e76827692_)
                         (let ((_e76857700_ (gx#syntax-e _e76827692_)))
                           (let ((_hd76867703_ (##car _e76857700_))
                                 (_tl76877705_ (##cdr _e76857700_)))
                             (if (gx#stx-pair? _tl76877705_)
                                 (let ((_e76887708_
                                        (gx#syntax-e _tl76877705_)))
                                   (let ((_hd76897711_ (##car _e76887708_))
                                         (_tl76907713_ (##cdr _e76887708_)))
                                     (let ((_hd7716_ _hd76897711_))
                                       (let ((_body7718_ _tl76907713_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7716_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7716_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7681_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7716_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7716_))
                       (cons (gx#core-expand-local-block _stx7680_ _body7718_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7680_))))
                                              gx#current-expander-context
                                              (let ((__obj8849
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8849)
                                                  __obj8849)))
                                             (_E76847696_))))))
                                 (_E76847696_))))
                         (_E76847696_)))))
              (let () (_E76837721_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7728_)
          (let ((_form7730_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7678
             _stx7728_
             _form7730_))))
      (define gx#core-expand-letrec-values%
        (lambda _g8859_
          (let ((_g8858_ (length _g8859_)))
            (cond ((fx= _g8858_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g8859_))
                  ((fx= _g8858_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7678
                          _g8859_))
                  (else (error "No clause matching arguments" _g8859_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7677_)
      (gx#core-expand-letrec-values%__opt-lambda7678
       _stx7677_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7634_)
      (if (gx#stx-list? _stx7634_)
          (gx#stx-andmap
           (lambda (_bind7636_)
             (let ((_e76377647_ _bind7636_))
               (let ((_E76397651_ (lambda () '#f)))
                 (let ((_E76387673_
                        (lambda ()
                          (if (gx#stx-pair? _e76377647_)
                              (let ((_e76407655_ (gx#syntax-e _e76377647_)))
                                (let ((_hd76417658_ (##car _e76407655_))
                                      (_tl76427660_ (##cdr _e76407655_)))
                                  (let ((_hd7663_ _hd76417658_))
                                    (if (gx#stx-pair? _tl76427660_)
                                        (let ((_e76437665_
                                               (gx#syntax-e _tl76427660_)))
                                          (let ((_hd76447668_
                                                 (##car _e76437665_))
                                                (_tl76457670_
                                                 (##cdr _e76437665_)))
                                            (if (gx#stx-null? _tl76457670_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7663_)
                                                    (_E76397651_))
                                                (_E76397651_))))
                                        (_E76397651_)))))
                              (_E76397651_)))))
                   (let () (_E76387673_))))))
           _stx7634_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7593_)
      (let ((_e75947604_ _bind7593_))
        (let ((_E75967608_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75947604_))))
          (let ((_E75957630_
                 (lambda ()
                   (if (gx#stx-pair? _e75947604_)
                       (let ((_e75977612_ (gx#syntax-e _e75947604_)))
                         (let ((_hd75987615_ (##car _e75977612_))
                               (_tl75997617_ (##cdr _e75977612_)))
                           (if (gx#stx-pair? _tl75997617_)
                               (let ((_e76007620_ (gx#syntax-e _tl75997617_)))
                                 (let ((_hd76017623_ (##car _e76007620_))
                                       (_tl76027625_ (##cdr _e76007620_)))
                                   (let ((_expr7628_ _hd76017623_))
                                     (if (gx#stx-null? _tl76027625_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7628_)
                                             (_E75967608_))
                                         (_E75967608_)))))
                               (_E75967608_))))
                       (_E75967608_)))))
            (let () (_E75957630_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7552_)
      (let ((_e75537563_ _bind7552_))
        (let ((_E75557567_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75537563_))))
          (let ((_E75547589_
                 (lambda ()
                   (if (gx#stx-pair? _e75537563_)
                       (let ((_e75567571_ (gx#syntax-e _e75537563_)))
                         (let ((_hd75577574_ (##car _e75567571_))
                               (_tl75587576_ (##cdr _e75567571_)))
                           (let ((_hd7579_ _hd75577574_))
                             (if (gx#stx-pair? _tl75587576_)
                                 (let ((_e75597581_
                                        (gx#syntax-e _tl75587576_)))
                                   (let ((_hd75607584_ (##car _e75597581_))
                                         (_tl75617586_ (##cdr _e75597581_)))
                                     (if (gx#stx-null? _tl75617586_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7579_)
                                             (_E75557567_))
                                         (_E75557567_))))
                                 (_E75557567_)))))
                       (_E75557567_)))))
            (let () (_E75547589_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7510_ _expr7511_)
      (let ((_e75127522_ _bind7510_))
        (let ((_E75147526_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75127522_))))
          (let ((_E75137548_
                 (lambda ()
                   (if (gx#stx-pair? _e75127522_)
                       (let ((_e75157530_ (gx#syntax-e _e75127522_)))
                         (let ((_hd75167533_ (##car _e75157530_))
                               (_tl75177535_ (##cdr _e75157530_)))
                           (let ((_hd7538_ _hd75167533_))
                             (if (gx#stx-pair? _tl75177535_)
                                 (let ((_e75187540_
                                        (gx#syntax-e _tl75177535_)))
                                   (let ((_hd75197543_ (##car _e75187540_))
                                         (_tl75207545_ (##cdr _e75187540_)))
                                     (if (gx#stx-null? _tl75207545_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7538_)
                                                   (cons _expr7511_ '()))
                                             (_E75147526_))
                                         (_E75147526_))))
                                 (_E75147526_)))))
                       (_E75147526_)))))
            (let () (_E75137548_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7464_)
      (let ((_e74657475_ _stx7464_))
        (let ((_E74677479_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74657475_))))
          (let ((_E74667506_
                 (lambda ()
                   (if (gx#stx-pair? _e74657475_)
                       (let ((_e74687483_ (gx#syntax-e _e74657475_)))
                         (let ((_hd74697486_ (##car _e74687483_))
                               (_tl74707488_ (##cdr _e74687483_)))
                           (if (gx#stx-pair? _tl74707488_)
                               (let ((_e74717491_ (gx#syntax-e _tl74707488_)))
                                 (let ((_hd74727494_ (##car _e74717491_))
                                       (_tl74737496_ (##cdr _e74717491_)))
                                   (let ((_hd7499_ _hd74727494_))
                                     (let ((_body7501_ _tl74737496_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7499_)
                                           (let ((_expanders7503_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7499_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7499_
                                                   _expanders7503_)
                                                  (gx#core-expand-local-block
                                                   _stx7464_
                                                   _body7501_)))
                                              gx#current-expander-context
                                              (let ((__obj8850
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj8850)
                                                  __obj8850))))
                                           (_E74677479_))))))
                               (_E74677479_))))
                       (_E74677479_)))))
            (let () (_E74667506_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7413_)
      (let ((_e74147424_ _stx7413_))
        (let ((_E74167428_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74147424_))))
          (let ((_E74157460_
                 (lambda ()
                   (if (gx#stx-pair? _e74147424_)
                       (let ((_e74177432_ (gx#syntax-e _e74147424_)))
                         (let ((_hd74187435_ (##car _e74177432_))
                               (_tl74197437_ (##cdr _e74177432_)))
                           (if (gx#stx-pair? _tl74197437_)
                               (let ((_e74207440_ (gx#syntax-e _tl74197437_)))
                                 (let ((_hd74217443_ (##car _e74207440_))
                                       (_tl74227445_ (##cdr _e74207440_)))
                                   (let ((_hd7448_ _hd74217443_))
                                     (let ((_body7450_ _tl74227445_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7448_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7448_
                                                 (make-list
                                                  (gx#stx-length _hd7448_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g74527455_
                                                          _g74537457_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7270
                                                    _g74527455_
                                                    _g74537457_
                                                    '#t))
                                                 _hd7448_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7448_))
                                                (gx#core-expand-local-block
                                                 _stx7413_
                                                 _body7450_)))
                                            gx#current-expander-context
                                            (let ((__obj8851
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj8851)
                                                __obj8851)))
                                           (_E74167428_))))))
                               (_E74167428_))))
                       (_E74167428_)))))
            (let () (_E74157460_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7370_)
      (if (gx#stx-list? _stx7370_)
          (gx#stx-andmap
           (lambda (_bind7372_)
             (let ((_e73737383_ _bind7372_))
               (let ((_E73757387_ (lambda () '#f)))
                 (let ((_E73747409_
                        (lambda ()
                          (if (gx#stx-pair? _e73737383_)
                              (let ((_e73767391_ (gx#syntax-e _e73737383_)))
                                (let ((_hd73777394_ (##car _e73767391_))
                                      (_tl73787396_ (##cdr _e73767391_)))
                                  (let ((_hd7399_ _hd73777394_))
                                    (if (gx#stx-pair? _tl73787396_)
                                        (let ((_e73797401_
                                               (gx#syntax-e _tl73787396_)))
                                          (let ((_hd73807404_
                                                 (##car _e73797401_))
                                                (_tl73817406_
                                                 (##cdr _e73797401_)))
                                            (if (gx#stx-null? _tl73817406_)
                                                (if '#t
                                                    (gx#identifier? _hd7399_)
                                                    (_E73757387_))
                                                (_E73757387_))))
                                        (_E73757387_)))))
                              (_E73757387_)))))
                   (let () (_E73747409_))))))
           _stx7370_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7327_)
      (let ((_e73287338_ _bind7327_))
        (let ((_E73307342_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73287338_))))
          (let ((_E73297366_
                 (lambda ()
                   (if (gx#stx-pair? _e73287338_)
                       (let ((_e73317346_ (gx#syntax-e _e73287338_)))
                         (let ((_hd73327349_ (##car _e73317346_))
                               (_tl73337351_ (##cdr _e73317346_)))
                           (if (gx#stx-pair? _tl73337351_)
                               (let ((_e73347354_ (gx#syntax-e _tl73337351_)))
                                 (let ((_hd73357357_ (##car _e73347354_))
                                       (_tl73367359_ (##cdr _e73347354_)))
                                   (let ((_expr7362_ _hd73357357_))
                                     (if (gx#stx-null? _tl73367359_)
                                         (if '#t
                                             (let ((_g8860_ (gx#core-expand-expression+1
                                                             _expr7362_)))
                                               (begin
                                                 (let ((_g8861_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g8861_ 2))
                                                       (error "Context expects 2 values"
                                                              _g8861_)))
                                                 (let ((_e7364_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g8860_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7364_)))
                                             (_E73307342_))
                                         (_E73307342_)))))
                               (_E73307342_))))
                       (_E73307342_)))))
            (let () (_E73297366_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7270
      (lambda (_bind7272_ _e7273_ _rebind?7274_)
        (let ((_e72757285_ _bind7272_))
          (let ((_E72777289_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e72757285_))))
            (let ((_E72767311_
                   (lambda ()
                     (if (gx#stx-pair? _e72757285_)
                         (let ((_e72787293_ (gx#syntax-e _e72757285_)))
                           (let ((_hd72797296_ (##car _e72787293_))
                                 (_tl72807298_ (##cdr _e72787293_)))
                             (let ((_id7301_ _hd72797296_))
                               (if (gx#stx-pair? _tl72807298_)
                                   (let ((_e72817303_
                                          (gx#syntax-e _tl72807298_)))
                                     (let ((_hd72827306_ (##car _e72817303_))
                                           (_tl72837308_ (##cdr _e72817303_)))
                                       (if (gx#stx-null? _tl72837308_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7301_
                                                _e7273_
                                                _rebind?7274_)
                                               (_E72777289_))
                                           (_E72777289_))))
                                   (_E72777289_)))))
                         (_E72777289_)))))
              (let () (_E72767311_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7318_ _e7319_)
          (let ((_rebind?7321_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7270
             _bind7318_
             _e7319_
             _rebind?7321_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g8863_
          (let ((_g8862_ (length _g8863_)))
            (cond ((fx= _g8862_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g8863_))
                  ((fx= _g8862_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7270
                          _g8863_))
                  (else (error "No clause matching arguments" _g8863_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7230_)
      (let ((_e72317241_ _stx7230_))
        (let ((_E72337245_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72317241_))))
          (let ((_E72327267_
                 (lambda ()
                   (if (gx#stx-pair? _e72317241_)
                       (let ((_e72347249_ (gx#syntax-e _e72317241_)))
                         (let ((_hd72357252_ (##car _e72347249_))
                               (_tl72367254_ (##cdr _e72347249_)))
                           (if (gx#stx-pair? _tl72367254_)
                               (let ((_e72377257_ (gx#syntax-e _tl72367254_)))
                                 (let ((_hd72387260_ (##car _e72377257_))
                                       (_tl72397262_ (##cdr _e72377257_)))
                                   (let ((_expr7265_ _hd72387260_))
                                     (if (gx#stx-null? _tl72397262_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7265_)
                                             (_E72337245_))
                                         (_E72337245_)))))
                               (_E72337245_))))
                       (_E72337245_)))))
            (let () (_E72327267_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7189_)
      (let ((_e71907200_ _stx7189_))
        (let ((_E71927204_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71907200_))))
          (let ((_E71917226_
                 (lambda ()
                   (if (gx#stx-pair? _e71907200_)
                       (let ((_e71937208_ (gx#syntax-e _e71907200_)))
                         (let ((_hd71947211_ (##car _e71937208_))
                               (_tl71957213_ (##cdr _e71937208_)))
                           (if (gx#stx-pair? _tl71957213_)
                               (let ((_e71967216_ (gx#syntax-e _tl71957213_)))
                                 (let ((_hd71977219_ (##car _e71967216_))
                                       (_tl71987221_ (##cdr _e71967216_)))
                                   (let ((_e7224_ _hd71977219_))
                                     (if (gx#stx-null? _tl71987221_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7224_)
                                                          '()))
                                              (gx#stx-source _stx7189_))
                                             (_E71927204_))
                                         (_E71927204_)))))
                               (_E71927204_))))
                       (_E71927204_)))))
            (let () (_E71917226_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7148_)
      (let ((_e71497159_ _stx7148_))
        (let ((_E71517163_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71497159_))))
          (let ((_E71507185_
                 (lambda ()
                   (if (gx#stx-pair? _e71497159_)
                       (let ((_e71527167_ (gx#syntax-e _e71497159_)))
                         (let ((_hd71537170_ (##car _e71527167_))
                               (_tl71547172_ (##cdr _e71527167_)))
                           (if (gx#stx-pair? _tl71547172_)
                               (let ((_e71557175_ (gx#syntax-e _tl71547172_)))
                                 (let ((_hd71567178_ (##car _e71557175_))
                                       (_tl71577180_ (##cdr _e71557175_)))
                                   (let ((_e7183_ _hd71567178_))
                                     (if (gx#stx-null? _tl71577180_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7183_)
                                                          '()))
                                              (gx#stx-source _stx7148_))
                                             (_E71517163_))
                                         (_E71517163_)))))
                               (_E71517163_))))
                       (_E71517163_)))))
            (let () (_E71507185_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7105_)
      (let ((_e71067116_ _stx7105_))
        (let ((_E71087120_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71067116_))))
          (let ((_E71077144_
                 (lambda ()
                   (if (gx#stx-pair? _e71067116_)
                       (let ((_e71097124_ (gx#syntax-e _e71067116_)))
                         (let ((_hd71107127_ (##car _e71097124_))
                               (_tl71117129_ (##cdr _e71097124_)))
                           (if (gx#stx-pair? _tl71117129_)
                               (let ((_e71127132_ (gx#syntax-e _tl71117129_)))
                                 (let ((_hd71137135_ (##car _e71127132_))
                                       (_tl71147137_ (##cdr _e71127132_)))
                                   (let ((_rator7140_ _hd71137135_))
                                     (let ((_args7142_ _tl71147137_))
                                       (if (gx#stx-list? _args7142_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7140_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7142_))
                                            (gx#stx-source _stx7105_))
                                           (_E71087120_))))))
                               (_E71087120_))))
                       (_E71087120_)))))
            (let () (_E71077144_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7038_)
      (let ((_e70397055_ _stx7038_))
        (let ((_E70417059_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70397055_))))
          (let ((_E70407101_
                 (lambda ()
                   (if (gx#stx-pair? _e70397055_)
                       (let ((_e70427063_ (gx#syntax-e _e70397055_)))
                         (let ((_hd70437066_ (##car _e70427063_))
                               (_tl70447068_ (##cdr _e70427063_)))
                           (if (gx#stx-pair? _tl70447068_)
                               (let ((_e70457071_ (gx#syntax-e _tl70447068_)))
                                 (let ((_hd70467074_ (##car _e70457071_))
                                       (_tl70477076_ (##cdr _e70457071_)))
                                   (let ((_test7079_ _hd70467074_))
                                     (if (gx#stx-pair? _tl70477076_)
                                         (let ((_e70487081_
                                                (gx#syntax-e _tl70477076_)))
                                           (let ((_hd70497084_
                                                  (##car _e70487081_))
                                                 (_tl70507086_
                                                  (##cdr _e70487081_)))
                                             (let ((_K7089_ _hd70497084_))
                                               (if (gx#stx-pair? _tl70507086_)
                                                   (let ((_e70517091_
                                                          (gx#syntax-e
                                                           _tl70507086_)))
                                                     (let ((_hd70527094_
                                                            (##car _e70517091_))
                                                           (_tl70537096_
                                                            (##cdr _e70517091_)))
                                                       (let ((_E7099_ _hd70527094_))
                                                         (if (gx#stx-null?
                                                              _tl70537096_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7079_)
                                      (cons (gx#core-expand-expression _K7089_)
                                            (cons (gx#core-expand-expression
                                                   _E7099_)
                                                  '()))))
                          (gx#stx-source _stx7038_))
                         (_E70417059_))
                     (_E70417059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E70417059_)))))
                                         (_E70417059_)))))
                               (_E70417059_))))
                       (_E70417059_)))))
            (let () (_E70407101_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx6997_)
      (let ((_e69987008_ _stx6997_))
        (let ((_E70007012_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69987008_))))
          (let ((_E69997034_
                 (lambda ()
                   (if (gx#stx-pair? _e69987008_)
                       (let ((_e70017016_ (gx#syntax-e _e69987008_)))
                         (let ((_hd70027019_ (##car _e70017016_))
                               (_tl70037021_ (##cdr _e70017016_)))
                           (if (gx#stx-pair? _tl70037021_)
                               (let ((_e70047024_ (gx#syntax-e _tl70037021_)))
                                 (let ((_hd70057027_ (##car _e70047024_))
                                       (_tl70067029_ (##cdr _e70047024_)))
                                   (let ((_id7032_ _hd70057027_))
                                     (if (gx#stx-null? _tl70067029_)
                                         (if (gx#core-runtime-ref? _id7032_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7032_
                                                           _stx6997_)
                                                          '()))
                                              (gx#stx-source _stx6997_))
                                             (_E70007012_))
                                         (_E70007012_)))))
                               (_E70007012_))))
                       (_E70007012_)))))
            (let () (_E69997034_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx6943_)
      (let ((_e69446957_ _stx6943_))
        (let ((_E69466961_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69446957_))))
          (let ((_E69456993_
                 (lambda ()
                   (if (gx#stx-pair? _e69446957_)
                       (let ((_e69476965_ (gx#syntax-e _e69446957_)))
                         (let ((_hd69486968_ (##car _e69476965_))
                               (_tl69496970_ (##cdr _e69476965_)))
                           (if (gx#stx-pair? _tl69496970_)
                               (let ((_e69506973_ (gx#syntax-e _tl69496970_)))
                                 (let ((_hd69516976_ (##car _e69506973_))
                                       (_tl69526978_ (##cdr _e69506973_)))
                                   (let ((_id6981_ _hd69516976_))
                                     (if (gx#stx-pair? _tl69526978_)
                                         (let ((_e69536983_
                                                (gx#syntax-e _tl69526978_)))
                                           (let ((_hd69546986_
                                                  (##car _e69536983_))
                                                 (_tl69556988_
                                                  (##cdr _e69536983_)))
                                             (let ((_expr6991_ _hd69546986_))
                                               (if (gx#stx-null? _tl69556988_)
                                                   (if (gx#core-runtime-ref?
                                                        _id6981_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6981_
                             _stx6943_)
                            (cons (gx#core-expand-expression _expr6991_) '())))
                (gx#stx-source _stx6943_))
               (_E69466961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69466961_)))))
                                         (_E69466961_)))))
                               (_E69466961_))))
                       (_E69466961_)))))
            (let () (_E69456993_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx6791_)
      (let ((_generate6793_
             (lambda (_body6823_)
               ((letrec ((_lp6825_
                          (lambda (_rest6827_ _ns6828_ _r6829_)
                            (let ((_e68306845_ _rest6827_))
                              (let ((_E68436849_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e68306845_))))
                                (let ((_E68396853_
                                       (lambda ()
                                         (if (gx#stx-null? _e68306845_)
                                             (if '#t
                                                 (reverse _r6829_)
                                                 (_E68436849_))
                                             (_E68436849_)))))
                                  (let ((_E68326910_
                                         (lambda ()
                                           (if (gx#stx-pair? _e68306845_)
                                               (let ((_e68406857_
                                                      (gx#syntax-e
                                                       _e68306845_)))
                                                 (let ((_hd68416860_
                                                        (##car _e68406857_))
                                                       (_tl68426862_
                                                        (##cdr _e68406857_)))
                                                   (let ((_hd6865_
                                                          _hd68416860_))
                                                     (let ((_rest6867_
                                                            _tl68426862_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd6865_)
                                                               (_lp6825_
                                                                _rest6867_
                                                                _ns6828_
                                                                (cons (cons _hd6865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns6828_
                                              (gx#stx-identifier
                                               _hd6865_
                                               _ns6828_
                                               '"#"
                                               _hd6865_)
                                              _hd6865_)
                                          '()))
                              _r6829_))
                       (let ((_e68686878_ _hd6865_))
                         (let ((_E68706882_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e68686878_))))
                           (let ((_E68696906_
                                  (lambda ()
                                    (if (gx#stx-pair? _e68686878_)
                                        (let ((_e68716886_
                                               (gx#syntax-e _e68686878_)))
                                          (let ((_hd68726889_
                                                 (##car _e68716886_))
                                                (_tl68736891_
                                                 (##cdr _e68716886_)))
                                            (let ((_id6894_ _hd68726889_))
                                              (if (gx#stx-pair? _tl68736891_)
                                                  (let ((_e68746896_
                                                         (gx#syntax-e
                                                          _tl68736891_)))
                                                    (let ((_hd68756899_
                                                           (##car _e68746896_))
                                                          (_tl68766901_
                                                           (##cdr _e68746896_)))
                                                      (let ((_eid6904_
                                                             _hd68756899_))
                                                        (if (gx#stx-null?
                                                             _tl68766901_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id6894_)
                            (gx#identifier? _eid6904_)
                            '#f)
                        (_lp6825_
                         _rest6867_
                         _ns6828_
                         (cons (cons _id6894_ (cons _eid6904_ '())) _r6829_))
                        (_E68706882_))
                    (_E68706882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68706882_)))))
                                        (_E68706882_)))))
                             (let () (_E68696906_))))))
                   (_E68396853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E68396853_)))))
                                    (let ((_E68316939_
                                           (lambda ()
                                             (if (gx#stx-pair? _e68306845_)
                                                 (let ((_e68336914_
                                                        (gx#syntax-e
                                                         _e68306845_)))
                                                   (let ((_hd68346917_
                                                          (##car _e68336914_))
                                                         (_tl68356919_
                                                          (##cdr _e68336914_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd68346917_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl68356919_)
                                                             (let ((_e68366922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl68356919_)))
                       (let ((_hd68376925_ (##car _e68366922_))
                             (_tl68386927_ (##cdr _e68366922_)))
                         (let ((_ns6930_ _hd68376925_))
                           (let ((_rest6932_ _tl68386927_))
                             (if '#t
                                 (let ((_ns6937_
                                        (if (gx#identifier? _ns6930_)
                                            (symbol->string
                                             (gx#stx-e _ns6930_))
                                            (if (let ((_$e6934_
                                                       (gx#stx-string?
                                                        _ns6930_)))
                                                  (if _$e6934_
                                                      _$e6934_
                                                      (gx#stx-false?
                                                       _ns6930_)))
                                                (gx#stx-e _ns6930_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx6791_
                                                 _ns6930_)))))
                                   (_lp6825_ _rest6932_ _ns6937_ _r6829_))
                                 (_E68326910_))))))
                     (_E68326910_))
                 (_E68326910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E68326910_)))))
                                      (let () (_E68316939_))))))))))
                  _lp6825_)
                _body6823_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e67946801_ _stx6791_))
          (let ((_E67966805_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67946801_))))
            (let ((_E67956819_
                   (lambda ()
                     (if (gx#stx-pair? _e67946801_)
                         (let ((_e67976809_ (gx#syntax-e _e67946801_)))
                           (let ((_hd67986812_ (##car _e67976809_))
                                 (_tl67996814_ (##cdr _e67976809_)))
                             (let ((_body6817_ _tl67996814_))
                               (if (gx#stx-list? _body6817_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate6793_ _body6817_))
                                   (_E67966805_)))))
                         (_E67966805_)))))
              (let () (_E67956819_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6737_)
      (let ((_e67386751_ _stx6737_))
        (let ((_E67406755_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67386751_))))
          (let ((_E67396787_
                 (lambda ()
                   (if (gx#stx-pair? _e67386751_)
                       (let ((_e67416759_ (gx#syntax-e _e67386751_)))
                         (let ((_hd67426762_ (##car _e67416759_))
                               (_tl67436764_ (##cdr _e67416759_)))
                           (if (gx#stx-pair? _tl67436764_)
                               (let ((_e67446767_ (gx#syntax-e _tl67436764_)))
                                 (let ((_hd67456770_ (##car _e67446767_))
                                       (_tl67466772_ (##cdr _e67446767_)))
                                   (let ((_hd6775_ _hd67456770_))
                                     (if (gx#stx-pair? _tl67466772_)
                                         (let ((_e67476777_
                                                (gx#syntax-e _tl67466772_)))
                                           (let ((_hd67486780_
                                                  (##car _e67476777_))
                                                 (_tl67496782_
                                                  (##cdr _e67476777_)))
                                             (let ((_expr6785_ _hd67486780_))
                                               (if (gx#stx-null? _tl67496782_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd6775_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd6775_)
                           (cons _expr6785_ '())))
               (_E67406755_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67406755_)))))
                                         (_E67406755_)))))
                               (_E67406755_))))
                       (_E67406755_)))))
            (let () (_E67396787_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6683_)
      (let ((_e66846697_ _stx6683_))
        (let ((_E66866701_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66846697_))))
          (let ((_E66856733_
                 (lambda ()
                   (if (gx#stx-pair? _e66846697_)
                       (let ((_e66876705_ (gx#syntax-e _e66846697_)))
                         (let ((_hd66886708_ (##car _e66876705_))
                               (_tl66896710_ (##cdr _e66876705_)))
                           (if (gx#stx-pair? _tl66896710_)
                               (let ((_e66906713_ (gx#syntax-e _tl66896710_)))
                                 (let ((_hd66916716_ (##car _e66906713_))
                                       (_tl66926718_ (##cdr _e66906713_)))
                                   (let ((_hd6721_ _hd66916716_))
                                     (if (gx#stx-pair? _tl66926718_)
                                         (let ((_e66936723_
                                                (gx#syntax-e _tl66926718_)))
                                           (let ((_hd66946726_
                                                  (##car _e66936723_))
                                                 (_tl66956728_
                                                  (##cdr _e66936723_)))
                                             (let ((_expr6731_ _hd66946726_))
                                               (if (gx#stx-null? _tl66956728_)
                                                   (if (gx#identifier?
                                                        _hd6721_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6731_ '())))
               (_E66866701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66866701_)))))
                                         (_E66866701_)))))
                               (_E66866701_))))
                       (_E66866701_)))))
            (let () (_E66856733_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6629_)
      (let ((_e66306643_ _stx6629_))
        (let ((_E66326647_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66306643_))))
          (let ((_E66316679_
                 (lambda ()
                   (if (gx#stx-pair? _e66306643_)
                       (let ((_e66336651_ (gx#syntax-e _e66306643_)))
                         (let ((_hd66346654_ (##car _e66336651_))
                               (_tl66356656_ (##cdr _e66336651_)))
                           (if (gx#stx-pair? _tl66356656_)
                               (let ((_e66366659_ (gx#syntax-e _tl66356656_)))
                                 (let ((_hd66376662_ (##car _e66366659_))
                                       (_tl66386664_ (##cdr _e66366659_)))
                                   (let ((_id6667_ _hd66376662_))
                                     (if (gx#stx-pair? _tl66386664_)
                                         (let ((_e66396669_
                                                (gx#syntax-e _tl66386664_)))
                                           (let ((_hd66406672_
                                                  (##car _e66396669_))
                                                 (_tl66416674_
                                                  (##cdr _e66396669_)))
                                             (let ((_alias-id6677_
                                                    _hd66406672_))
                                               (if (gx#stx-null? _tl66416674_)
                                                   (if (if (gx#identifier?
                                                            _id6667_)
                                                           (gx#identifier?
                                                            _alias-id6677_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6677_ '())))
               (_E66326647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66326647_)))))
                                         (_E66326647_)))))
                               (_E66326647_))))
                       (_E66326647_)))))
            (let () (_E66316679_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6586_)
      (let ((_e65876597_ _stx6586_))
        (let ((_E65896601_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65876597_))))
          (let ((_E65886625_
                 (lambda ()
                   (if (gx#stx-pair? _e65876597_)
                       (let ((_e65906605_ (gx#syntax-e _e65876597_)))
                         (let ((_hd65916608_ (##car _e65906605_))
                               (_tl65926610_ (##cdr _e65906605_)))
                           (if (gx#stx-pair? _tl65926610_)
                               (let ((_e65936613_ (gx#syntax-e _tl65926610_)))
                                 (let ((_hd65946616_ (##car _e65936613_))
                                       (_tl65956618_ (##cdr _e65936613_)))
                                   (let ((_hd6621_ _hd65946616_))
                                     (let ((_body6623_ _tl65956618_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6621_)
                                               (if (gx#stx-list? _body6623_)
                                                   (not (gx#stx-null?
                                                         _body6623_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6621_)
                                            _body6623_)
                                           (_E65896601_))))))
                               (_E65896601_))))
                       (_E65896601_)))))
            (let () (_E65886625_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6522_)
      (let ((_generate6524_
             (lambda (_clause6554_)
               (let ((_e65556562_ _clause6554_))
                 (let ((_E65576566_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6522_
                           _clause6554_))))
                   (let ((_E65566582_
                          (lambda ()
                            (if (gx#stx-pair? _e65556562_)
                                (let ((_e65586570_ (gx#syntax-e _e65556562_)))
                                  (let ((_hd65596573_ (##car _e65586570_))
                                        (_tl65606575_ (##cdr _e65586570_)))
                                    (let ((_hd6578_ _hd65596573_))
                                      (let ((_body6580_ _tl65606575_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6578_)
                                                (if (gx#stx-list? _body6580_)
                                                    (not (gx#stx-null?
                                                          _body6580_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6578_)
                                                   _body6580_)
                                             (gx#stx-source _clause6554_))
                                            (_E65576566_))))))
                                (_E65576566_)))))
                     (let () (_E65566582_))))))))
        (let ((_e65256532_ _stx6522_))
          (let ((_E65276536_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e65256532_))))
            (let ((_E65266550_
                   (lambda ()
                     (if (gx#stx-pair? _e65256532_)
                         (let ((_e65286540_ (gx#syntax-e _e65256532_)))
                           (let ((_hd65296543_ (##car _e65286540_))
                                 (_tl65306545_ (##cdr _e65286540_)))
                             (let ((_clauses6548_ _tl65306545_))
                               (if (gx#stx-list? _clauses6548_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6524_ _clauses6548_))
                                   (_E65276536_)))))
                         (_E65276536_)))))
              (let () (_E65266550_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6421
      (lambda (_stx6423_ _form6424_)
        (let ((_generate6426_
               (lambda (_bind6469_)
                 (let ((_e64706480_ _bind6469_))
                   (let ((_E64726484_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6423_
                             _bind6469_))))
                     (let ((_E64716508_
                            (lambda ()
                              (if (gx#stx-pair? _e64706480_)
                                  (let ((_e64736488_
                                         (gx#syntax-e _e64706480_)))
                                    (let ((_hd64746491_ (##car _e64736488_))
                                          (_tl64756493_ (##cdr _e64736488_)))
                                      (let ((_ids6496_ _hd64746491_))
                                        (if (gx#stx-pair? _tl64756493_)
                                            (let ((_e64766498_
                                                   (gx#syntax-e _tl64756493_)))
                                              (let ((_hd64776501_
                                                     (##car _e64766498_))
                                                    (_tl64786503_
                                                     (##cdr _e64766498_)))
                                                (let ((_expr6506_
                                                       _hd64776501_))
                                                  (if (gx#stx-null?
                                                       _tl64786503_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6496_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6496_)
                        (cons _expr6506_ '()))
                  (_E64726484_))
              (_E64726484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E64726484_)))))
                                  (_E64726484_)))))
                       (let () (_E64716508_))))))))
          (let ((_e64276437_ _stx6423_))
            (let ((_E64296441_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e64276437_))))
              (let ((_E64286465_
                     (lambda ()
                       (if (gx#stx-pair? _e64276437_)
                           (let ((_e64306445_ (gx#syntax-e _e64276437_)))
                             (let ((_hd64316448_ (##car _e64306445_))
                                   (_tl64326450_ (##cdr _e64306445_)))
                               (if (gx#stx-pair? _tl64326450_)
                                   (let ((_e64336453_
                                          (gx#syntax-e _tl64326450_)))
                                     (let ((_hd64346456_ (##car _e64336453_))
                                           (_tl64356458_ (##cdr _e64336453_)))
                                       (let ((_hd6461_ _hd64346456_))
                                         (let ((_body6463_ _tl64356458_))
                                           (if (if (gx#stx-list? _hd6461_)
                                                   (if (gx#stx-list?
                                                        _body6463_)
                                                       (not (gx#stx-null?
                                                             _body6463_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6424_
                                                (gx#stx-map1
                                                 _generate6426_
                                                 _hd6461_)
                                                _body6463_)
                                               (_E64296441_))))))
                                   (_E64296441_))))
                           (_E64296441_)))))
                (let () (_E64286465_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6515_)
          (let ((_form6517_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6421
             _stx6515_
             _form6517_))))
      (define gx#macro-expand-let-values
        (lambda _g8865_
          (let ((_g8864_ (length _g8865_)))
            (cond ((fx= _g8864_ 1)
                   (apply gx#macro-expand-let-values__0 _g8865_))
                  ((fx= _g8864_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6421 _g8865_))
                  (else (error "No clause matching arguments" _g8865_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6420_)
      (gx#macro-expand-let-values__opt-lambda6421 _stx6420_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6418_)
      (gx#macro-expand-let-values__opt-lambda6421
       _stx6418_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6309_)
      (let ((_e63106336_ _stx6309_))
        (let ((_E63226340_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63106336_))))
          (let ((_E63126382_
                 (lambda ()
                   (if (gx#stx-pair? _e63106336_)
                       (let ((_e63236344_ (gx#syntax-e _e63106336_)))
                         (let ((_hd63246347_ (##car _e63236344_))
                               (_tl63256349_ (##cdr _e63236344_)))
                           (if (gx#stx-pair? _tl63256349_)
                               (let ((_e63266352_ (gx#syntax-e _tl63256349_)))
                                 (let ((_hd63276355_ (##car _e63266352_))
                                       (_tl63286357_ (##cdr _e63266352_)))
                                   (let ((_test6360_ _hd63276355_))
                                     (if (gx#stx-pair? _tl63286357_)
                                         (let ((_e63296362_
                                                (gx#syntax-e _tl63286357_)))
                                           (let ((_hd63306365_
                                                  (##car _e63296362_))
                                                 (_tl63316367_
                                                  (##cdr _e63296362_)))
                                             (let ((_K6370_ _hd63306365_))
                                               (if (gx#stx-pair? _tl63316367_)
                                                   (let ((_e63326372_
                                                          (gx#syntax-e
                                                           _tl63316367_)))
                                                     (let ((_hd63336375_
                                                            (##car _e63326372_))
                                                           (_tl63346377_
                                                            (##cdr _e63326372_)))
                                                       (let ((_E6380_ _hd63336375_))
                                                         (if (gx#stx-null?
                                                              _tl63346377_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6360_ _K6370_ _E6380_)
                         (_E63226340_))
                     (_E63226340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E63226340_)))))
                                         (_E63226340_)))))
                               (_E63226340_))))
                       (_E63226340_)))))
            (let ((_E63116414_
                   (lambda ()
                     (if (gx#stx-pair? _e63106336_)
                         (let ((_e63136386_ (gx#syntax-e _e63106336_)))
                           (let ((_hd63146389_ (##car _e63136386_))
                                 (_tl63156391_ (##cdr _e63136386_)))
                             (if (gx#stx-pair? _tl63156391_)
                                 (let ((_e63166394_
                                        (gx#syntax-e _tl63156391_)))
                                   (let ((_hd63176397_ (##car _e63166394_))
                                         (_tl63186399_ (##cdr _e63166394_)))
                                     (let ((_test6402_ _hd63176397_))
                                       (if (gx#stx-pair? _tl63186399_)
                                           (let ((_e63196404_
                                                  (gx#syntax-e _tl63186399_)))
                                             (let ((_hd63206407_
                                                    (##car _e63196404_))
                                                   (_tl63216409_
                                                    (##cdr _e63196404_)))
                                               (let ((_K6412_ _hd63206407_))
                                                 (if (gx#stx-null?
                                                      _tl63216409_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6402_
                                                          _K6412_
                                                          '#!void)
                                                         (_E63126382_))
                                                     (_E63126382_)))))
                                           (_E63126382_)))))
                                 (_E63126382_))))
                         (_E63126382_)))))
              (let () (_E63116414_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6297_ _yid6298_)
      (let ((_xe6300_ (gx#resolve-identifier__0 _xid6297_))
            (_ye6301_ (gx#resolve-identifier__0 _yid6298_)))
        (if (if _xe6300_ _ye6301_ '#f)
            (let ((_$e6303_ (eq? _xe6300_ _ye6301_)))
              (if _$e6303_
                  _$e6303_
                  (if (##structure-instance-of? _xe6300_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6301_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6300_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6301_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6306_ _xe6300_)) (if _$e6306_ _$e6306_ _ye6301_))
                '#f
                (gx#stx-eq? _xid6297_ _yid6298_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6281_ _yid6282_)
      (let ((_context6284_
             (lambda (_e6295_)
               (if (##structure-direct-instance-of?
                    _e6295_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6295_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6285_
               (lambda (_e6293_)
                 (if (symbol? _e6293_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6293_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6293_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6293_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6286_
                 (lambda (_e6291_)
                   (if (symbol? _e6291_)
                       _e6291_
                       (gx#syntax-local-unwrap _e6291_)))))
            (let ((_x6288_ (_unwrap6286_ _xid6281_))
                  (_y6289_ (_unwrap6286_ _yid6282_)))
              (if (gx#stx-eq? _x6288_ _y6289_)
                  (if (eq? (_context6284_ _x6288_) (_context6284_ _y6289_))
                      (andmap eq? (_marks6285_ _x6288_) (_marks6285_ _y6289_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6279_)
      (if (gx#identifier? _stx6279_) (gx#core-identifier=? _stx6279_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6277_)
      (if (gx#identifier? _stx6277_)
          (gx#core-identifier=? _stx6277_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6275_)
      (if (gx#identifier? _x6275_)
          (if (not (gx#underscore? _x6275_)) _x6275_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6219
      (lambda (_stx6221_ _where6222_)
        ((letrec ((_lp6224_
                   (lambda (_rest6226_)
                     (let ((_rest62276235_ _rest6226_))
                       (let ((_E62306239_
                              (lambda ()
                                (error '"No clause matching" _rest62276235_))))
                         (let ((_else62296243_ (lambda () '#t)))
                           (let ((_K62316253_
                                  (lambda (_rest6246_ _hd6247_)
                                    (if (not (gx#identifier? _hd6247_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6222_
                                         _hd6247_)
                                        (if (find (lambda (_g62486250_)
                                                    (gx#bound-identifier=?
                                                     _g62486250_
                                                     _hd6247_))
                                                  _rest6246_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6222_
                                             _hd6247_)
                                            (_lp6224_ _rest6246_))))))
                             (if (##pair? _rest62276235_)
                                 (let ((_hd62326256_ (##car _rest62276235_))
                                       (_tl62336258_ (##cdr _rest62276235_)))
                                   (let ((_hd6261_ _hd62326256_))
                                     (let ((_rest6263_ _tl62336258_))
                                       (_K62316253_ _rest6263_ _hd6261_))))
                                 (_else62296243_)))))))))
           _lp6224_)
         (gx#syntax->list _stx6221_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6268_)
          (let ((_where6270_ _stx6268_))
            (gx#check-duplicate-identifiers__opt-lambda6219
             _stx6268_
             _where6270_))))
      (define gx#check-duplicate-identifiers
        (lambda _g8867_
          (let ((_g8866_ (length _g8867_)))
            (cond ((fx= _g8866_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g8867_))
                  ((fx= _g8866_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6219
                          _g8867_))
                  (else (error "No clause matching arguments" _g8867_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6213_)
      (gx#stx-andmap
       (lambda (_x6215_)
         (let ((_$e6217_ (gx#identifier? _x6215_)))
           (if _$e6217_ _$e6217_ (gx#stx-false? _x6215_))))
       _stx6213_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6175
      (lambda (_stx6177_ _rebind?6178_ _phi6179_ _ctx6180_)
        (gx#stx-for-each1
         (lambda (_id6182_)
           (if (gx#identifier? _id6182_)
               (gx#core-bind-runtime!__opt-lambda6111
                _id6182_
                _rebind?6178_
                _phi6179_
                _ctx6180_)
               '#!void))
         _stx6177_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6187_)
          (let ((_rebind?6189_ '#f))
            (let ((_phi6191_ (gx#current-expander-phi)))
              (let ((_ctx6193_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6175
                 _stx6187_
                 _rebind?6189_
                 _phi6191_
                 _ctx6193_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6195_ _rebind?6196_)
          (let ((_phi6198_ (gx#current-expander-phi)))
            (let ((_ctx6200_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6175
               _stx6195_
               _rebind?6196_
               _phi6198_
               _ctx6200_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6202_ _rebind?6203_ _phi6204_)
          (let ((_ctx6206_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6175
             _stx6202_
             _rebind?6203_
             _phi6204_
             _ctx6206_))))
      (define gx#core-bind-values!
        (lambda _g8869_
          (let ((_g8868_ (length _g8869_)))
            (cond ((fx= _g8868_ 1) (apply gx#core-bind-values!__0 _g8869_))
                  ((fx= _g8868_ 2) (apply gx#core-bind-values!__1 _g8869_))
                  ((fx= _g8868_ 3) (apply gx#core-bind-values!__2 _g8869_))
                  ((fx= _g8868_ 4)
                   (apply gx#core-bind-values!__opt-lambda6175 _g8869_))
                  (else (error "No clause matching arguments" _g8869_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6172_)
      (gx#stx-map1
       (lambda (_x6174_)
         (if (gx#identifier? _x6174_) (gx#core-quote-syntax__0 _x6174_) '#f))
       _stx6172_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6165_)
      (if (gx#identifier? _stx6165_)
          (let ((_bind6167_ (gx#resolve-identifier__0 _stx6165_)))
            (let ((_$e6169_ (not _bind6167_)))
              (if _$e6169_
                  _$e6169_
                  (##structure-instance-of?
                   _bind6167_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6154_ _form6155_)
      (let ((_bind6157_ (gx#resolve-identifier__0 _id6154_)))
        (if (##structure-instance-of? _bind6157_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6154_)
            (if (not _bind6157_)
                (if (let ((_$e6159_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e6159_
                          _$e6159_
                          (let ((_$e6162_
                                 (gx#core-context-rebind?__opt-lambda4023
                                  (gx#core-context-top__0))))
                            (if _$e6162_
                                _$e6162_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id6154_))))))
                    (gx#core-quote-syntax__0 _id6154_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6155_
                     _id6154_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6155_
                 _id6154_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6111
      (lambda (_id6113_ _rebind?6114_ _phi6115_ _ctx6116_)
        (let ((_key6118_ (gx#core-identifier-key _id6113_)))
          (let ((_eid6120_
                 (gx#make-binding-id__opt-lambda5878
                  _key6118_
                  '#f
                  _phi6115_
                  _ctx6116_)))
            (let ((_bind6122_
                   (if (##structure-instance-of?
                        _ctx6116_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6120_
                        _key6118_
                        _phi6115_
                        _ctx6116_)
                       (if (##structure-instance-of?
                            _ctx6116_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6120_
                            _key6118_
                            _phi6115_)
                           (if (##structure-instance-of?
                                _ctx6116_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6120_
                                _key6118_
                                _phi6115_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6120_
                                _key6118_
                                _phi6115_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4469
                 _id6113_
                 _bind6122_
                 _rebind?6114_
                 _phi6115_
                 _ctx6116_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6128_)
          (let ((_rebind?6130_ '#f))
            (let ((_phi6132_ (gx#current-expander-phi)))
              (let ((_ctx6134_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6111
                 _id6128_
                 _rebind?6130_
                 _phi6132_
                 _ctx6134_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6136_ _rebind?6137_)
          (let ((_phi6139_ (gx#current-expander-phi)))
            (let ((_ctx6141_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6111
               _id6136_
               _rebind?6137_
               _phi6139_
               _ctx6141_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6143_ _rebind?6144_ _phi6145_)
          (let ((_ctx6147_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6111
             _id6143_
             _rebind?6144_
             _phi6145_
             _ctx6147_))))
      (define gx#core-bind-runtime!
        (lambda _g8871_
          (let ((_g8870_ (length _g8871_)))
            (cond ((fx= _g8870_ 1) (apply gx#core-bind-runtime!__0 _g8871_))
                  ((fx= _g8870_ 2) (apply gx#core-bind-runtime!__1 _g8871_))
                  ((fx= _g8870_ 3) (apply gx#core-bind-runtime!__2 _g8871_))
                  ((fx= _g8870_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6111 _g8871_))
                  (else (error "No clause matching arguments" _g8871_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6066
      (lambda (_id6068_ _eid6069_ _rebind?6070_ _phi6071_ _ctx6072_)
        (let ((_key6074_ (gx#core-identifier-key _id6068_)))
          (let ((_bind6076_
                 (if (##structure-instance-of? _ctx6072_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6069_
                      _key6074_
                      _phi6071_
                      _ctx6072_)
                     (if (##structure-instance-of?
                          _ctx6072_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6069_
                          _key6074_
                          _phi6071_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6069_
                          _key6074_
                          _phi6071_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4469
               _id6068_
               _bind6076_
               _rebind?6070_
               _phi6071_
               _ctx6072_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6082_ _eid6083_)
          (let ((_rebind?6085_ '#f))
            (let ((_phi6087_ (gx#current-expander-phi)))
              (let ((_ctx6089_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6066
                 _id6082_
                 _eid6083_
                 _rebind?6085_
                 _phi6087_
                 _ctx6089_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6091_ _eid6092_ _rebind?6093_)
          (let ((_phi6095_ (gx#current-expander-phi)))
            (let ((_ctx6097_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6066
               _id6091_
               _eid6092_
               _rebind?6093_
               _phi6095_
               _ctx6097_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6099_ _eid6100_ _rebind?6101_ _phi6102_)
          (let ((_ctx6104_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6066
             _id6099_
             _eid6100_
             _rebind?6101_
             _phi6102_
             _ctx6104_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g8873_
          (let ((_g8872_ (length _g8873_)))
            (cond ((fx= _g8872_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g8873_))
                  ((fx= _g8872_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g8873_))
                  ((fx= _g8872_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g8873_))
                  ((fx= _g8872_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6066
                          _g8873_))
                  (else (error "No clause matching arguments" _g8873_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6026
      (lambda (_id6028_ _eid6029_ _rebind?6030_ _phi6031_ _ctx6032_)
        (gx#bind-identifier!__opt-lambda4469
         _id6028_
         (##structure
          gx#extern-binding::t
          _eid6029_
          (gx#core-identifier-key _id6028_)
          _phi6031_)
         _rebind?6030_
         _phi6031_
         _ctx6032_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6037_ _eid6038_)
          (let ((_rebind?6040_ '#f))
            (let ((_phi6042_ (gx#current-expander-phi)))
              (let ((_ctx6044_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6026
                 _id6037_
                 _eid6038_
                 _rebind?6040_
                 _phi6042_
                 _ctx6044_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6046_ _eid6047_ _rebind?6048_)
          (let ((_phi6050_ (gx#current-expander-phi)))
            (let ((_ctx6052_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6026
               _id6046_
               _eid6047_
               _rebind?6048_
               _phi6050_
               _ctx6052_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6054_ _eid6055_ _rebind?6056_ _phi6057_)
          (let ((_ctx6059_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6026
             _id6054_
             _eid6055_
             _rebind?6056_
             _phi6057_
             _ctx6059_))))
      (define gx#core-bind-extern!
        (lambda _g8875_
          (let ((_g8874_ (length _g8875_)))
            (cond ((fx= _g8874_ 2) (apply gx#core-bind-extern!__0 _g8875_))
                  ((fx= _g8874_ 3) (apply gx#core-bind-extern!__1 _g8875_))
                  ((fx= _g8874_ 4) (apply gx#core-bind-extern!__2 _g8875_))
                  ((fx= _g8874_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6026 _g8875_))
                  (else (error "No clause matching arguments" _g8875_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda5980
      (lambda (_id5982_ _e5983_ _rebind?5984_ _phi5985_ _ctx5986_)
        (gx#bind-identifier!__opt-lambda4469
         _id5982_
         (let ((_key5991_ (gx#core-identifier-key _id5982_))
               (_e5992_ (if (let ((_$e5988_
                                   (##structure-instance-of?
                                    _e5983_
                                    'gx#expander::t)))
                              (if _$e5988_
                                  _$e5988_
                                  (##structure-instance-of?
                                   _e5983_
                                   'gx#expander-context::t)))
                            _e5983_
                            (##structure
                             gx#user-expander::t
                             _e5983_
                             _ctx5986_
                             _phi5985_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda5878
             _key5991_
             '#t
             _phi5985_
             _ctx5986_)
            _key5991_
            _phi5985_
            _e5992_))
         _rebind?5984_
         _phi5985_
         _ctx5986_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id5997_ _e5998_)
          (let ((_rebind?6000_ '#f))
            (let ((_phi6002_ (gx#current-expander-phi)))
              (let ((_ctx6004_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda5980
                 _id5997_
                 _e5998_
                 _rebind?6000_
                 _phi6002_
                 _ctx6004_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6006_ _e6007_ _rebind?6008_)
          (let ((_phi6010_ (gx#current-expander-phi)))
            (let ((_ctx6012_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda5980
               _id6006_
               _e6007_
               _rebind?6008_
               _phi6010_
               _ctx6012_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6014_ _e6015_ _rebind?6016_ _phi6017_)
          (let ((_ctx6019_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda5980
             _id6014_
             _e6015_
             _rebind?6016_
             _phi6017_
             _ctx6019_))))
      (define gx#core-bind-syntax!
        (lambda _g8877_
          (let ((_g8876_ (length _g8877_)))
            (cond ((fx= _g8876_ 2) (apply gx#core-bind-syntax!__0 _g8877_))
                  ((fx= _g8876_ 3) (apply gx#core-bind-syntax!__1 _g8877_))
                  ((fx= _g8876_ 4) (apply gx#core-bind-syntax!__2 _g8877_))
                  ((fx= _g8876_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda5980 _g8877_))
                  (else (error "No clause matching arguments" _g8877_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda5963
      (lambda (_id5965_ _e5966_ _rebind?5967_)
        (gx#core-bind-syntax!__opt-lambda5980
         _id5965_
         _e5966_
         _rebind?5967_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id5972_ _e5973_)
          (let ((_rebind?5975_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda5963
             _id5972_
             _e5973_
             _rebind?5975_))))
      (define gx#core-bind-root-syntax!
        (lambda _g8879_
          (let ((_g8878_ (length _g8879_)))
            (cond ((fx= _g8878_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g8879_))
                  ((fx= _g8878_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda5963 _g8879_))
                  (else (error "No clause matching arguments" _g8879_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda5921
      (lambda (_id5923_ _alias-id5924_ _rebind?5925_ _phi5926_ _ctx5927_)
        (gx#bind-identifier!__opt-lambda4469
         _id5923_
         (let ((_key5929_ (gx#core-identifier-key _id5923_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda5878
             _key5929_
             '#t
             _phi5926_
             _ctx5927_)
            _key5929_
            _phi5926_
            _alias-id5924_))
         _rebind?5925_
         _phi5926_
         _ctx5927_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id5934_ _alias-id5935_)
          (let ((_rebind?5937_ '#f))
            (let ((_phi5939_ (gx#current-expander-phi)))
              (let ((_ctx5941_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda5921
                 _id5934_
                 _alias-id5935_
                 _rebind?5937_
                 _phi5939_
                 _ctx5941_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id5943_ _alias-id5944_ _rebind?5945_)
          (let ((_phi5947_ (gx#current-expander-phi)))
            (let ((_ctx5949_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda5921
               _id5943_
               _alias-id5944_
               _rebind?5945_
               _phi5947_
               _ctx5949_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id5951_ _alias-id5952_ _rebind?5953_ _phi5954_)
          (let ((_ctx5956_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda5921
             _id5951_
             _alias-id5952_
             _rebind?5953_
             _phi5954_
             _ctx5956_))))
      (define gx#core-bind-alias!
        (lambda _g8881_
          (let ((_g8880_ (length _g8881_)))
            (cond ((fx= _g8880_ 2) (apply gx#core-bind-alias!__0 _g8881_))
                  ((fx= _g8880_ 3) (apply gx#core-bind-alias!__1 _g8881_))
                  ((fx= _g8880_ 4) (apply gx#core-bind-alias!__2 _g8881_))
                  ((fx= _g8880_ 5)
                   (apply gx#core-bind-alias!__opt-lambda5921 _g8881_))
                  (else (error "No clause matching arguments" _g8881_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda5878
      (lambda (_key5880_ _syntax?5881_ _phi5882_ _ctx5883_)
        (if (uninterned-symbol? _key5880_)
            (gensym 'L)
            (if (pair? _key5880_)
                (gensym (car _key5880_))
                (if (##structure-instance-of? _ctx5883_ 'gx#top-context::t)
                    (let ((_ns5885_
                           (gx#core-context-namespace__opt-lambda4006
                            _ctx5883_)))
                      (if (if (fxzero? _phi5882_) (not _syntax?5881_) '#f)
                          (if _ns5885_
                              (make-symbol _ns5885_ '"#" _key5880_)
                              _key5880_)
                          (if _syntax?5881_
                              (make-symbol
                               (let ((_$e5887_ _ns5885_))
                                 (if _$e5887_ _$e5887_ '""))
                               '"[:"
                               (number->string _phi5882_)
                               '":]#"
                               _key5880_)
                              (make-symbol
                               (let ((_$e5890_ _ns5885_))
                                 (if _$e5890_ _$e5890_ '""))
                               '"["
                               (number->string _phi5882_)
                               '"]#"
                               _key5880_))))
                    (gensym _key5880_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key5896_)
          (let ((_syntax?5898_ '#f))
            (let ((_phi5900_ (gx#current-expander-phi)))
              (let ((_ctx5902_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda5878
                 _key5896_
                 _syntax?5898_
                 _phi5900_
                 _ctx5902_))))))
      (define gx#make-binding-id__1
        (lambda (_key5904_ _syntax?5905_)
          (let ((_phi5907_ (gx#current-expander-phi)))
            (let ((_ctx5909_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda5878
               _key5904_
               _syntax?5905_
               _phi5907_
               _ctx5909_)))))
      (define gx#make-binding-id__2
        (lambda (_key5911_ _syntax?5912_ _phi5913_)
          (let ((_ctx5915_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda5878
             _key5911_
             _syntax?5912_
             _phi5913_
             _ctx5915_))))
      (define gx#make-binding-id
        (lambda _g8883_
          (let ((_g8882_ (length _g8883_)))
            (cond ((fx= _g8882_ 1) (apply gx#make-binding-id__0 _g8883_))
                  ((fx= _g8882_ 2) (apply gx#make-binding-id__1 _g8883_))
                  ((fx= _g8882_ 3) (apply gx#make-binding-id__2 _g8883_))
                  ((fx= _g8882_ 4)
                   (apply gx#make-binding-id__opt-lambda5878 _g8883_))
                  (else (error "No clause matching arguments" _g8883_)))))))))
