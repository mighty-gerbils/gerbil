(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9106_)
      (letrec ((_expand-special9108_
                (lambda (_hd9110_ _K9111_ _rest9112_ _r9113_)
                  (_K9111_ _rest9112_
                           (cons (gx#core-expand-top _hd9110_) _r9113_)))))
        (gx#core-expand-block__0 _stx9106_ _expand-special9108_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8859_)
      (letrec ((_expand-special8861_
                (lambda (_hd8981_ _K8982_ _rest8983_ _r8984_)
                  (let* ((_K8988_ (lambda (_e8986_)
                                    (_K8982_ _rest8983_
                                             (cons _e8986_ _r8984_))))
                         (_e89899018_ _hd8981_)
                         (_E90139022_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89899018_)))
                         (_E90099034_
                          (lambda ()
                            (if (gx#stx-pair? _e89899018_)
                                (let ((_e90149026_ (gx#syntax-e _e89899018_)))
                                  (let ((_hd90159029_ (##car _e90149026_))
                                        (_tl90169031_ (##cdr _e90149026_)))
                                    (if (if (gx#identifier? _hd90159029_)
                                            (gx#core-identifier=?
                                             _hd90159029_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K8988_ (gx#core-expand-define-runtime%
                                                      _hd8981_))
                                            (_E90139022_))
                                        (_E90139022_))))
                                (_E90139022_))))
                         (_E90059046_
                          (lambda ()
                            (if (gx#stx-pair? _e89899018_)
                                (let ((_e90109038_ (gx#syntax-e _e89899018_)))
                                  (let ((_hd90119041_ (##car _e90109038_))
                                        (_tl90129043_ (##cdr _e90109038_)))
                                    (if (if (gx#identifier? _hd90119041_)
                                            (gx#core-identifier=?
                                             _hd90119041_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K8988_ (gx#core-expand-define-alias%
                                                      _hd8981_))
                                            (_E90099034_))
                                        (_E90099034_))))
                                (_E90099034_))))
                         (_E89959058_
                          (lambda ()
                            (if (gx#stx-pair? _e89899018_)
                                (let ((_e90069050_ (gx#syntax-e _e89899018_)))
                                  (let ((_hd90079053_ (##car _e90069050_))
                                        (_tl90089055_ (##cdr _e90069050_)))
                                    (if (if (gx#identifier? _hd90079053_)
                                            (gx#core-identifier=?
                                             _hd90079053_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8988_ (gx#core-expand-define-syntax%
                                                      _hd8981_))
                                            (_E90059046_))
                                        (_E90059046_))))
                                (_E90059046_))))
                         (_E89919090_
                          (lambda ()
                            (if (gx#stx-pair? _e89899018_)
                                (let ((_e89969062_ (gx#syntax-e _e89899018_)))
                                  (let ((_hd89979065_ (##car _e89969062_))
                                        (_tl89989067_ (##cdr _e89969062_)))
                                    (if (if (gx#identifier? _hd89979065_)
                                            (gx#core-identifier=?
                                             _hd89979065_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl89989067_)
                                            (let ((_e89999070_
                                                   (gx#syntax-e _tl89989067_)))
                                              (let ((_hd90009073_
                                                     (##car _e89999070_))
                                                    (_tl90019075_
                                                     (##cdr _e89999070_)))
                                                (let ((_hd-bind9078_
                                                       _hd90009073_))
                                                  (if (gx#stx-pair?
                                                       _tl90019075_)
                                                      (let ((_e90029080_
                                                             (gx#syntax-e
                                                              _tl90019075_)))
                                                        (let ((_hd90039083_
                                                               (##car _e90029080_))
                                                              (_tl90049085_
                                                               (##cdr _e90029080_)))
                                                          (let ((_expr9088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd90039083_))
                    (if (gx#stx-null? _tl90049085_)
                        (if (gx#core-bind-values? _hd-bind9078_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9078_)
                              (_K8988_ _hd8981_))
                            (_E89959058_))
                        (_E89959058_)))))
              (_E89959058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E89959058_))
                                        (_E89959058_))))
                                (_E89959058_))))
                         (_E89909102_
                          (lambda ()
                            (if (gx#stx-pair? _e89899018_)
                                (let ((_e89929094_ (gx#syntax-e _e89899018_)))
                                  (let ((_hd89939097_ (##car _e89929094_))
                                        (_tl89949099_ (##cdr _e89929094_)))
                                    (if (if (gx#identifier? _hd89939097_)
                                            (gx#core-identifier=?
                                             _hd89939097_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8988_ (gx#core-expand-begin-syntax%
                                                      _hd8981_))
                                            (_E89919090_))
                                        (_E89919090_))))
                                (_E89919090_)))))
                    (_E89909102_))))
               (_eval-body8862_
                (lambda (_rbody8870_)
                  (let _lp8872_ ((_rest8874_ _rbody8870_)
                                 (_body8875_ '())
                                 (_ebody8876_ '()))
                    (let* ((_rest88778885_ _rest8874_)
                           (_E88808889_
                            (lambda ()
                              (error '"No clause matching" _rest88778885_)))
                           (_else88798893_
                            (lambda ()
                              (values _body8875_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody8876_)
                                        (gx#stx-source _stx8859_))))))
                           (_K88818969_
                            (lambda (_rest8896_ _hd8897_)
                              (let* ((_e88988915_ _hd8897_)
                                     (_E89108919_
                                      (lambda ()
                                        (_lp8872_
                                         _rest8896_
                                         (cons _hd8897_ _body8875_)
                                         (cons _hd8897_ _ebody8876_))))
                                     (_E89008931_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88988915_)
                                            (let ((_e89118923_
                                                   (gx#syntax-e _e88988915_)))
                                              (let ((_hd89128926_
                                                     (##car _e89118923_))
                                                    (_tl89138928_
                                                     (##cdr _e89118923_)))
                                                (if (if (gx#identifier?
                                                         _hd89128926_)
                                                        (gx#core-identifier=?
                                                         _hd89128926_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp8872_
                                                         _rest8896_
                                                         (cons _hd8897_
                                                               _body8875_)
                                                         _ebody8876_)
                                                        (_E89108919_))
                                                    (_E89108919_))))
                                            (_E89108919_))))
                                     (_E88998965_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88988915_)
                                            (let ((_e89018935_
                                                   (gx#syntax-e _e88988915_)))
                                              (let ((_hd89028938_
                                                     (##car _e89018935_))
                                                    (_tl89038940_
                                                     (##cdr _e89018935_)))
                                                (if (if (gx#identifier?
                                                         _hd89028938_)
                                                        (gx#core-identifier=?
                                                         _hd89028938_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl89038940_)
                                                        (let ((_e89048943_
                                                               (gx#syntax-e
                                                                _tl89038940_)))
                                                          (let ((_hd89058946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89048943_))
                        (_tl89068948_ (##cdr _e89048943_)))
                    (let ((_hd-bind8951_ _hd89058946_))
                      (if (gx#stx-pair? _tl89068948_)
                          (let ((_e89078953_ (gx#syntax-e _tl89068948_)))
                            (let ((_hd89088956_ (##car _e89078953_))
                                  (_tl89098958_ (##cdr _e89078953_)))
                              (let ((_expr8961_ _hd89088956_))
                                (if (gx#stx-null? _tl89098958_)
                                    (if '#t
                                        (let ((_ehd8963_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind8951_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr8961_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd8897_))))
                                          (_lp8872_
                                           _rest8896_
                                           (cons _ehd8963_ _body8875_)
                                           (cons _ehd8963_ _ebody8876_)))
                                        (_E89008931_))
                                    (_E89008931_)))))
                          (_E89008931_)))))
                (_E89008931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89008931_))))
                                            (_E89008931_)))))
                                (_E88998965_)))))
                      (if (##pair? _rest88778885_)
                          (let ((_hd88828972_ (##car _rest88778885_))
                                (_tl88838974_ (##cdr _rest88778885_)))
                            (let* ((_hd8977_ _hd88828972_)
                                   (_rest8979_ _tl88838974_))
                              (_K88818969_ _rest8979_ _hd8977_)))
                          (_else88798893_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody8865_
                   (gx#core-expand-block__1
                    _stx8859_
                    _expand-special8861_
                    '#f))
                  (_g9120_ (_eval-body8862_ _rbody8865_)))
             (begin
               (let ((_g9121_ (values-count _g9120_)))
                 (if (not (fx= _g9121_ 2))
                     (error "Context expects 2 values" _g9121_)))
               (let ((_expanded-body8867_ (values-ref _g9120_ 0))
                     (_value8868_ (values-ref _g9120_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body8867_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value8868_ '())))
                  (gx#stx-source _stx8859_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8829_)
      (let* ((_e88308837_ _stx8829_)
             (_E88328841_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88308837_)))
             (_E88318855_
              (lambda ()
                (if (gx#stx-pair? _e88308837_)
                    (let ((_e88338845_ (gx#syntax-e _e88308837_)))
                      (let ((_hd88348848_ (##car _e88338845_))
                            (_tl88358850_ (##cdr _e88338845_)))
                        (let ((_body8853_ _tl88358850_))
                          (if (gx#stx-list? _body8853_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body8853_)
                               (gx#stx-source _stx8829_))
                              (_E88328841_)))))
                    (_E88328841_)))))
        (_E88318855_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8827_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8827_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8815_)
      (let* ((_e88168819_ _stx8815_)
             (_E88178823_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88168819_))))
        (_E88178823_))))
  (define gx#core-expand-local-block
    (lambda (_stx8539_ _body8540_)
      (letrec ((_expand-special8542_
                (lambda (_hd8810_ _K8811_ _rest8812_ _r8813_)
                  (_K8811_ '()
                           (cons (_expand-internal8543_ _hd8810_ _rest8812_)
                                 _r8813_))))
               (_expand-internal8543_
                (lambda (_hd8806_ _rest8807_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal8545_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd8806_ _rest8807_)
                        (gx#stx-source _stx8539_))
                       _expand-internal-special8544_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj9114 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj9114)
                       __obj9114)))))
               (_expand-internal-special8544_
                (lambda (_hd8701_ _K8702_ _rest8703_ _r8704_)
                  (let* ((_e87058730_ _hd8701_)
                         (_E87258734_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87058730_)))
                         (_E87218746_
                          (lambda ()
                            (if (gx#stx-pair? _e87058730_)
                                (let ((_e87268738_ (gx#syntax-e _e87058730_)))
                                  (let ((_hd87278741_ (##car _e87268738_))
                                        (_tl87288743_ (##cdr _e87268738_)))
                                    (if (if (gx#identifier? _hd87278741_)
                                            (gx#core-identifier=?
                                             _hd87278741_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8702_ _rest8703_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8701_)
                                                           _r8704_))
                                            (_E87258734_))
                                        (_E87258734_))))
                                (_E87258734_))))
                         (_E87178758_
                          (lambda ()
                            (if (gx#stx-pair? _e87058730_)
                                (let ((_e87228750_ (gx#syntax-e _e87058730_)))
                                  (let ((_hd87238753_ (##car _e87228750_))
                                        (_tl87248755_ (##cdr _e87228750_)))
                                    (if (if (gx#identifier? _hd87238753_)
                                            (gx#core-identifier=?
                                             _hd87238753_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd8701_)
                                              (_K8702_ _rest8703_ _r8704_))
                                            (_E87218746_))
                                        (_E87218746_))))
                                (_E87218746_))))
                         (_E87078770_
                          (lambda ()
                            (if (gx#stx-pair? _e87058730_)
                                (let ((_e87188762_ (gx#syntax-e _e87058730_)))
                                  (let ((_hd87198765_ (##car _e87188762_))
                                        (_tl87208767_ (##cdr _e87188762_)))
                                    (if (if (gx#identifier? _hd87198765_)
                                            (gx#core-identifier=?
                                             _hd87198765_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd8701_)
                                              (_K8702_ _rest8703_ _r8704_))
                                            (_E87178758_))
                                        (_E87178758_))))
                                (_E87178758_))))
                         (_E87068802_
                          (lambda ()
                            (if (gx#stx-pair? _e87058730_)
                                (let ((_e87088774_ (gx#syntax-e _e87058730_)))
                                  (let ((_hd87098777_ (##car _e87088774_))
                                        (_tl87108779_ (##cdr _e87088774_)))
                                    (if (if (gx#identifier? _hd87098777_)
                                            (gx#core-identifier=?
                                             _hd87098777_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl87108779_)
                                            (let ((_e87118782_
                                                   (gx#syntax-e _tl87108779_)))
                                              (let ((_hd87128785_
                                                     (##car _e87118782_))
                                                    (_tl87138787_
                                                     (##cdr _e87118782_)))
                                                (let ((_hd-bind8790_
                                                       _hd87128785_))
                                                  (if (gx#stx-pair?
                                                       _tl87138787_)
                                                      (let ((_e87148792_
                                                             (gx#syntax-e
                                                              _tl87138787_)))
                                                        (let ((_hd87158795_
                                                               (##car _e87148792_))
                                                              (_tl87168797_
                                                               (##cdr _e87148792_)))
                                                          (let ((_expr8800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd87158795_))
                    (if (gx#stx-null? _tl87168797_)
                        (if (gx#core-bind-values? _hd-bind8790_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind8790_)
                              (_K8702_ _rest8703_ (cons _hd8701_ _r8704_)))
                            (_E87078770_))
                        (_E87078770_)))))
              (_E87078770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E87078770_))
                                        (_E87078770_))))
                                (_E87078770_)))))
                    (_E87068802_))))
               (_wrap-internal8545_
                (lambda (_rbody8547_)
                  (let _lp8549_ ((_rest8551_ _rbody8547_)
                                 (_decls8552_ '())
                                 (_bind8553_ '())
                                 (_body8554_ '()))
                    (let* ((_e85558562_ _rest8551_)
                           (_E85578611_
                            (lambda ()
                              (let* ((_body8606_
                                      (let* ((_body85658575_ _body8554_)
                                             (_E85698579_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body85658575_)))
                                             (_else85688583_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body8554_)
                                                 (gx#stx-source _stx8539_))))
                                             (_try-match85678599_
                                              (lambda ()
                                                (let ((_K85708589_
                                                       (lambda (_expr8587_)
                                                         _expr8587_)))
                                                  (if (##pair? _body85658575_)
                                                      (let ((_hd85718592_
                                                             (##car _body85658575_))
                                                            (_tl85728594_
                                                             (##cdr _body85658575_)))
                                                        (let ((_expr8597_
                                                               _hd85718592_))
                                                          (if (##null? _tl85728594_)
                                                              (_K85708589_
                                                               _expr8597_)
                                                              (_else85688583_))))
                                                      (_else85688583_)))))
                                             (_K85738603_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx8539_))))
                                        (if (##null? _body85658575_)
                                            (_K85738603_)
                                            (_try-match85678599_))))
                                     (_body8608_
                                      (if (null? _bind8553_)
                                          _body8606_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind8553_
                                                       (cons _body8606_ '())))
                                           (gx#stx-source _stx8539_)))))
                                (if (null? _decls8552_)
                                    _body8608_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls8552_
                                                 (cons _body8608_ '())))
                                     (gx#stx-source _stx8539_))))))
                           (_E85568697_
                            (lambda ()
                              (if (gx#stx-pair? _e85558562_)
                                  (let ((_e85588615_
                                         (gx#syntax-e _e85558562_)))
                                    (let ((_hd85598618_ (##car _e85588615_))
                                          (_tl85608620_ (##cdr _e85588615_)))
                                      (let* ((_hd8623_ _hd85598618_)
                                             (_rest8625_ _tl85608620_))
                                        (if '#t
                                            (let* ((_e86268643_ _hd8623_)
                                                   (_E86388647_
                                                    (lambda ()
                                                      (if (null? _bind8553_)
                                                          (_lp8549_
                                                           _rest8625_
                                                           _decls8552_
                                                           _bind8553_
                                                           (cons _hd8623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body8554_))
                  (_lp8549_
                   _rest8625_
                   _decls8552_
                   (cons (cons '#f (cons _hd8623_ '())) _bind8553_)
                   _body8554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86288661_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86268643_)
                                                          (let ((_e86398651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86268643_)))
                    (let ((_hd86408654_ (##car _e86398651_))
                          (_tl86418656_ (##cdr _e86398651_)))
                      (if (if (gx#identifier? _hd86408654_)
                              (gx#core-identifier=? _hd86408654_ '%#declare)
                              '#f)
                          (let ((_xdecls8659_ _tl86418656_))
                            (if '#t
                                (_lp8549_
                                 _rest8625_
                                 (gx#stx-foldr cons _decls8552_ _xdecls8659_)
                                 _bind8553_
                                 _body8554_)
                                (_E86388647_)))
                          (_E86388647_))))
                  (_E86388647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86278693_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86268643_)
                                                          (let ((_e86298665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86268643_)))
                    (let ((_hd86308668_ (##car _e86298665_))
                          (_tl86318670_ (##cdr _e86298665_)))
                      (if (if (gx#identifier? _hd86308668_)
                              (gx#core-identifier=?
                               _hd86308668_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl86318670_)
                              (let ((_e86328673_ (gx#syntax-e _tl86318670_)))
                                (let ((_hd86338676_ (##car _e86328673_))
                                      (_tl86348678_ (##cdr _e86328673_)))
                                  (let ((_hd-bind8681_ _hd86338676_))
                                    (if (gx#stx-pair? _tl86348678_)
                                        (let ((_e86358683_
                                               (gx#syntax-e _tl86348678_)))
                                          (let ((_hd86368686_
                                                 (##car _e86358683_))
                                                (_tl86378688_
                                                 (##cdr _e86358683_)))
                                            (let ((_expr8691_ _hd86368686_))
                                              (if (gx#stx-null? _tl86378688_)
                                                  (if '#t
                                                      (_lp8549_
                                                       _rest8625_
                                                       _decls8552_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind8681_)
                           (cons (gx#core-expand-expression _expr8691_) '()))
                     _bind8553_)
               _body8554_)
              (_E86288661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86288661_)))))
                                        (_E86288661_)))))
                              (_E86288661_))
                          (_E86288661_))))
                  (_E86288661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86278693_))
                                            (_E85578611_)))))
                                  (_E85578611_)))))
                      (_E85568697_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body8540_)
          (gx#stx-source _stx8539_))
         _expand-special8542_))))
  (define gx#core-expand-declare%
    (lambda (_stx8477_)
      (let* ((_e84788485_ _stx8477_)
             (_E84808489_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84788485_)))
             (_E84798535_
              (lambda ()
                (if (gx#stx-pair? _e84788485_)
                    (let ((_e84818493_ (gx#syntax-e _e84788485_)))
                      (let ((_hd84828496_ (##car _e84818493_))
                            (_tl84838498_ (##cdr _e84818493_)))
                        (let ((_body8501_ _tl84838498_))
                          (if (gx#stx-list? _body8501_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl8503_)
                                   (let* ((_e85048511_ _decl8503_)
                                          (_E85068515_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e85048511_)))
                                          (_E85058531_
                                           (lambda ()
                                             (if (gx#stx-pair? _e85048511_)
                                                 (let ((_e85078519_
                                                        (gx#syntax-e
                                                         _e85048511_)))
                                                   (let ((_hd85088522_
                                                          (##car _e85078519_))
                                                         (_tl85098524_
                                                          (##cdr _e85078519_)))
                                                     (let* ((_head8527_
                                                             _hd85088522_)
                                                            (_args8529_
                                                             _tl85098524_))
                                                       (if (gx#stx-list?
                                                            _args8529_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl8503_)
                                                           (_E85068515_)))))
                                                 (_E85068515_)))))
                                     (_E85058531_)))
                                 _body8501_))
                               (gx#stx-source _stx8477_))
                              (_E84808489_)))))
                    (_E84808489_)))))
        (_E84798535_))))
  (define gx#core-expand-extern%
    (lambda (_stx8361_)
      (let* ((_e83628369_ _stx8361_)
             (_E83648373_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83628369_)))
             (_E83638473_
              (lambda ()
                (if (gx#stx-pair? _e83628369_)
                    (let ((_e83658377_ (gx#syntax-e _e83628369_)))
                      (let ((_hd83668380_ (##car _e83658377_))
                            (_tl83678382_ (##cdr _e83658377_)))
                        (let ((_body8385_ _tl83678382_))
                          (if (gx#stx-list? _body8385_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind8387_)
                                   (let* ((_e83888398_ _bind8387_)
                                          (_E83908402_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e83888398_)))
                                          (_E83898426_
                                           (lambda ()
                                             (if (gx#stx-pair? _e83888398_)
                                                 (let ((_e83918406_
                                                        (gx#syntax-e
                                                         _e83888398_)))
                                                   (let ((_hd83928409_
                                                          (##car _e83918406_))
                                                         (_tl83938411_
                                                          (##cdr _e83918406_)))
                                                     (let ((_id8414_
                                                            _hd83928409_))
                                                       (if (gx#stx-pair?
                                                            _tl83938411_)
                                                           (let ((_e83948416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl83938411_)))
                     (let ((_hd83958419_ (##car _e83948416_))
                           (_tl83968421_ (##cdr _e83948416_)))
                       (let ((_eid8424_ _hd83958419_))
                         (if (gx#stx-null? _tl83968421_)
                             (if (if (gx#identifier? _id8414_)
                                     (gx#identifier? _eid8424_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id8414_
                                  (gx#stx-e _eid8424_))
                                 (_E83908402_))
                             (_E83908402_)))))
                   (_E83908402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E83908402_)))))
                                     (_E83898426_)))
                                 _body8385_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind8430_)
                                     (let* ((_e84318441_ _bind8430_)
                                            (_E84338445_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e84318441_)))
                                            (_E84328469_
                                             (lambda ()
                                               (if (gx#stx-pair? _e84318441_)
                                                   (let ((_e84348449_
                                                          (gx#syntax-e
                                                           _e84318441_)))
                                                     (let ((_hd84358452_
                                                            (##car _e84348449_))
                                                           (_tl84368454_
                                                            (##cdr _e84348449_)))
                                                       (let ((_id8457_
                                                              _hd84358452_))
                                                         (if (gx#stx-pair?
                                                              _tl84368454_)
                                                             (let ((_e84378459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84368454_)))
                       (let ((_hd84388462_ (##car _e84378459_))
                             (_tl84398464_ (##cdr _e84378459_)))
                         (let ((_eid8467_ _hd84388462_))
                           (if (gx#stx-null? _tl84398464_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id8457_)
                                         (cons (gx#stx-e _eid8467_) '()))
                                   (_E84338445_))
                               (_E84338445_)))))
                     (_E84338445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84338445_)))))
                                       (_E84328469_)))
                                   _body8385_))
                                 (gx#stx-source _stx8361_)))
                              (_E83648373_)))))
                    (_E83648373_)))))
        (_E83638473_))))
  (define gx#core-expand-define-values%
    (lambda (_stx8307_)
      (let* ((_e83088321_ _stx8307_)
             (_E83108325_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83088321_)))
             (_E83098357_
              (lambda ()
                (if (gx#stx-pair? _e83088321_)
                    (let ((_e83118329_ (gx#syntax-e _e83088321_)))
                      (let ((_hd83128332_ (##car _e83118329_))
                            (_tl83138334_ (##cdr _e83118329_)))
                        (if (gx#stx-pair? _tl83138334_)
                            (let ((_e83148337_ (gx#syntax-e _tl83138334_)))
                              (let ((_hd83158340_ (##car _e83148337_))
                                    (_tl83168342_ (##cdr _e83148337_)))
                                (let ((_hd8345_ _hd83158340_))
                                  (if (gx#stx-pair? _tl83168342_)
                                      (let ((_e83178347_
                                             (gx#syntax-e _tl83168342_)))
                                        (let ((_hd83188350_
                                               (##car _e83178347_))
                                              (_tl83198352_
                                               (##cdr _e83178347_)))
                                          (let ((_expr8355_ _hd83188350_))
                                            (if (gx#stx-null? _tl83198352_)
                                                (if (gx#core-bind-values?
                                                     _hd8345_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd8345_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd8345_)
                           (cons (gx#core-expand-expression _expr8355_) '())))
               (gx#stx-source _stx8307_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83108325_))
                                                (_E83108325_)))))
                                      (_E83108325_)))))
                            (_E83108325_))))
                    (_E83108325_)))))
        (_E83098357_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8253_)
      (let* ((_e82548267_ _stx8253_)
             (_E82568271_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82548267_)))
             (_E82558303_
              (lambda ()
                (if (gx#stx-pair? _e82548267_)
                    (let ((_e82578275_ (gx#syntax-e _e82548267_)))
                      (let ((_hd82588278_ (##car _e82578275_))
                            (_tl82598280_ (##cdr _e82578275_)))
                        (if (gx#stx-pair? _tl82598280_)
                            (let ((_e82608283_ (gx#syntax-e _tl82598280_)))
                              (let ((_hd82618286_ (##car _e82608283_))
                                    (_tl82628288_ (##cdr _e82608283_)))
                                (let ((_id8291_ _hd82618286_))
                                  (if (gx#stx-pair? _tl82628288_)
                                      (let ((_e82638293_
                                             (gx#syntax-e _tl82628288_)))
                                        (let ((_hd82648296_
                                               (##car _e82638293_))
                                              (_tl82658298_
                                               (##cdr _e82638293_)))
                                          (let ((_binding-id8301_
                                                 _hd82648296_))
                                            (if (gx#stx-null? _tl82658298_)
                                                (if (if (gx#identifier?
                                                         _id8291_)
                                                        (gx#identifier?
                                                         _binding-id8301_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id8291_
                                                       (gx#stx-e
                                                        _binding-id8301_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id8291_)
                           (cons (gx#core-quote-syntax__0 _binding-id8301_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82568271_))
                                                (_E82568271_)))))
                                      (_E82568271_)))))
                            (_E82568271_))))
                    (_E82568271_)))))
        (_E82558303_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8196_)
      (let* ((_e81978210_ _stx8196_)
             (_E81998214_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81978210_)))
             (_E81988249_
              (lambda ()
                (if (gx#stx-pair? _e81978210_)
                    (let ((_e82008218_ (gx#syntax-e _e81978210_)))
                      (let ((_hd82018221_ (##car _e82008218_))
                            (_tl82028223_ (##cdr _e82008218_)))
                        (if (gx#stx-pair? _tl82028223_)
                            (let ((_e82038226_ (gx#syntax-e _tl82028223_)))
                              (let ((_hd82048229_ (##car _e82038226_))
                                    (_tl82058231_ (##cdr _e82038226_)))
                                (let ((_id8234_ _hd82048229_))
                                  (if (gx#stx-pair? _tl82058231_)
                                      (let ((_e82068236_
                                             (gx#syntax-e _tl82058231_)))
                                        (let ((_hd82078239_
                                               (##car _e82068236_))
                                              (_tl82088241_
                                               (##cdr _e82068236_)))
                                          (let ((_expr8244_ _hd82078239_))
                                            (if (gx#stx-null? _tl82088241_)
                                                (if (gx#identifier? _id8234_)
                                                    (let ((_g9122_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _expr8244_)))
              (begin
                (let ((_g9123_ (values-count _g9122_)))
                  (if (not (fx= _g9123_ 2))
                      (error "Context expects 2 values" _g9123_)))
                (let ((_e-stx8246_ (values-ref _g9122_ 0))
                      (_e8247_ (values-ref _g9122_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id8234_ _e8247_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id8234_)
                                 (cons _e-stx8246_ '())))
                     (gx#stx-source _stx8196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81998214_))
                                                (_E81998214_)))))
                                      (_E81998214_)))))
                            (_E81998214_))))
                    (_E81998214_)))))
        (_E81988249_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8140_)
      (let* ((_e81418154_ _stx8140_)
             (_E81438158_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81418154_)))
             (_E81428192_
              (lambda ()
                (if (gx#stx-pair? _e81418154_)
                    (let ((_e81448162_ (gx#syntax-e _e81418154_)))
                      (let ((_hd81458165_ (##car _e81448162_))
                            (_tl81468167_ (##cdr _e81448162_)))
                        (if (gx#stx-pair? _tl81468167_)
                            (let ((_e81478170_ (gx#syntax-e _tl81468167_)))
                              (let ((_hd81488173_ (##car _e81478170_))
                                    (_tl81498175_ (##cdr _e81478170_)))
                                (let ((_id8178_ _hd81488173_))
                                  (if (gx#stx-pair? _tl81498175_)
                                      (let ((_e81508180_
                                             (gx#syntax-e _tl81498175_)))
                                        (let ((_hd81518183_
                                               (##car _e81508180_))
                                              (_tl81528185_
                                               (##cdr _e81508180_)))
                                          (let ((_alias-id8188_ _hd81518183_))
                                            (if (gx#stx-null? _tl81528185_)
                                                (if (if (gx#identifier?
                                                         _id8178_)
                                                        (gx#identifier?
                                                         _alias-id8188_)
                                                        '#f)
                                                    (let ((_alias-id8190_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id8188_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id8178_
                                                         _alias-id8190_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id8178_)
                             (cons _alias-id8190_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81438158_))
                                                (_E81438158_)))))
                                      (_E81438158_)))))
                            (_E81438158_))))
                    (_E81438158_)))))
        (_E81428192_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8081
      (lambda (_stx8083_ _wrap?8084_)
        (let* ((_e80858095_ _stx8083_)
               (_E80878099_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e80858095_)))
               (_E80868126_
                (lambda ()
                  (if (gx#stx-pair? _e80858095_)
                      (let ((_e80888103_ (gx#syntax-e _e80858095_)))
                        (let ((_hd80898106_ (##car _e80888103_))
                              (_tl80908108_ (##cdr _e80888103_)))
                          (if (gx#stx-pair? _tl80908108_)
                              (let ((_e80918111_ (gx#syntax-e _tl80908108_)))
                                (let ((_hd80928114_ (##car _e80918111_))
                                      (_tl80938116_ (##cdr _e80918111_)))
                                  (let* ((_hd8119_ _hd80928114_)
                                         (_body8121_ _tl80938116_))
                                    (if (gx#core-bind-values? _hd8119_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd8119_)
                                             (let ((_body8124_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd8119_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8083_
                         _body8121_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?8084_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body8124_)
                                                    (gx#stx-source _stx8083_))
                                                   _body8124_))))
                                         gx#current-expander-context
                                         (let ((__obj9115
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9115)
                                             __obj9115)))
                                        (_E80878099_)))))
                              (_E80878099_))))
                      (_E80878099_)))))
          (_E80868126_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8133_)
          (let ((_wrap?8135_ '#t))
            (gx#core-expand-lambda%__opt-lambda8081 _stx8133_ _wrap?8135_))))
      (define gx#core-expand-lambda%
        (lambda _g9125_
          (let ((_g9124_ (length _g9125_)))
            (cond ((fx= _g9124_ 1) (apply gx#core-expand-lambda%__0 _g9125_))
                  ((fx= _g9124_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8081 _g9125_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9125_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8047_)
      (let* ((_e80488055_ _stx8047_)
             (_E80508059_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80488055_)))
             (_E80498078_
              (lambda ()
                (if (gx#stx-pair? _e80488055_)
                    (let ((_e80518063_ (gx#syntax-e _e80488055_)))
                      (let ((_hd80528066_ (##car _e80518063_))
                            (_tl80538068_ (##cdr _e80518063_)))
                        (let ((_clauses8071_ _tl80538068_))
                          (if (gx#stx-list? _clauses8071_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause8073_)
                                   (gx#core-expand-lambda%__opt-lambda8081
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause8073_)
                                     (let ((_$e8075_
                                            (gx#stx-source _clause8073_)))
                                       (if _$e8075_
                                           _$e8075_
                                           (gx#stx-source _stx8047_))))
                                    '#f))
                                 _clauses8071_))
                               (gx#stx-source _stx8047_))
                              (_E80508059_)))))
                    (_E80508059_)))))
        (_E80498078_))))
  (define gx#core-expand-let-values%
    (lambda (_stx8001_)
      (let* ((_e80028012_ _stx8001_)
             (_E80048016_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80028012_)))
             (_E80038043_
              (lambda ()
                (if (gx#stx-pair? _e80028012_)
                    (let ((_e80058020_ (gx#syntax-e _e80028012_)))
                      (let ((_hd80068023_ (##car _e80058020_))
                            (_tl80078025_ (##cdr _e80058020_)))
                        (if (gx#stx-pair? _tl80078025_)
                            (let ((_e80088028_ (gx#syntax-e _tl80078025_)))
                              (let ((_hd80098031_ (##car _e80088028_))
                                    (_tl80108033_ (##cdr _e80088028_)))
                                (let* ((_hd8036_ _hd80098031_)
                                       (_body8038_ _tl80108033_))
                                  (if (gx#core-expand-let-bind? _hd8036_)
                                      (let ((_expressions8040_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd8036_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8036_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8036_
                                                           _expressions8040_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8001_
                         _body8038_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx8001_))))
                                         gx#current-expander-context
                                         (let ((__obj9116
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9116)
                                             __obj9116))))
                                      (_E80048016_)))))
                            (_E80048016_))))
                    (_E80048016_)))))
        (_E80038043_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7944
      (lambda (_stx7946_ _form7947_)
        (let* ((_e79487958_ _stx7946_)
               (_E79507962_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e79487958_)))
               (_E79497987_
                (lambda ()
                  (if (gx#stx-pair? _e79487958_)
                      (let ((_e79517966_ (gx#syntax-e _e79487958_)))
                        (let ((_hd79527969_ (##car _e79517966_))
                              (_tl79537971_ (##cdr _e79517966_)))
                          (if (gx#stx-pair? _tl79537971_)
                              (let ((_e79547974_ (gx#syntax-e _tl79537971_)))
                                (let ((_hd79557977_ (##car _e79547974_))
                                      (_tl79567979_ (##cdr _e79547974_)))
                                  (let* ((_hd7982_ _hd79557977_)
                                         (_body7984_ _tl79567979_))
                                    (if (gx#core-expand-let-bind? _hd7982_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd7982_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form7947_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd7982_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd7982_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7946_
                         _body7984_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7946_))))
                                         gx#current-expander-context
                                         (let ((__obj9117
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9117)
                                             __obj9117)))
                                        (_E79507962_)))))
                              (_E79507962_))))
                      (_E79507962_)))))
          (_E79497987_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7994_)
          (let ((_form7996_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7944
             _stx7994_
             _form7996_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9127_
          (let ((_g9126_ (length _g9127_)))
            (cond ((fx= _g9126_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9127_))
                  ((fx= _g9126_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7944
                          _g9127_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9127_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7943_)
      (gx#core-expand-letrec-values%__opt-lambda7944
       _stx7943_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7900_)
      (if (gx#stx-list? _stx7900_)
          (gx#stx-andmap
           (lambda (_bind7902_)
             (let* ((_e79037913_ _bind7902_)
                    (_E79057917_ (lambda () '#f))
                    (_E79047939_
                     (lambda ()
                       (if (gx#stx-pair? _e79037913_)
                           (let ((_e79067921_ (gx#syntax-e _e79037913_)))
                             (let ((_hd79077924_ (##car _e79067921_))
                                   (_tl79087926_ (##cdr _e79067921_)))
                               (let ((_hd7929_ _hd79077924_))
                                 (if (gx#stx-pair? _tl79087926_)
                                     (let ((_e79097931_
                                            (gx#syntax-e _tl79087926_)))
                                       (let ((_hd79107934_ (##car _e79097931_))
                                             (_tl79117936_
                                              (##cdr _e79097931_)))
                                         (if (gx#stx-null? _tl79117936_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd7929_)
                                                 (_E79057917_))
                                             (_E79057917_))))
                                     (_E79057917_)))))
                           (_E79057917_)))))
               (_E79047939_)))
           _stx7900_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7859_)
      (let* ((_e78607870_ _bind7859_)
             (_E78627874_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78607870_)))
             (_E78617896_
              (lambda ()
                (if (gx#stx-pair? _e78607870_)
                    (let ((_e78637878_ (gx#syntax-e _e78607870_)))
                      (let ((_hd78647881_ (##car _e78637878_))
                            (_tl78657883_ (##cdr _e78637878_)))
                        (if (gx#stx-pair? _tl78657883_)
                            (let ((_e78667886_ (gx#syntax-e _tl78657883_)))
                              (let ((_hd78677889_ (##car _e78667886_))
                                    (_tl78687891_ (##cdr _e78667886_)))
                                (let ((_expr7894_ _hd78677889_))
                                  (if (gx#stx-null? _tl78687891_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7894_)
                                          (_E78627874_))
                                      (_E78627874_)))))
                            (_E78627874_))))
                    (_E78627874_)))))
        (_E78617896_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7818_)
      (let* ((_e78197829_ _bind7818_)
             (_E78217833_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78197829_)))
             (_E78207855_
              (lambda ()
                (if (gx#stx-pair? _e78197829_)
                    (let ((_e78227837_ (gx#syntax-e _e78197829_)))
                      (let ((_hd78237840_ (##car _e78227837_))
                            (_tl78247842_ (##cdr _e78227837_)))
                        (let ((_hd7845_ _hd78237840_))
                          (if (gx#stx-pair? _tl78247842_)
                              (let ((_e78257847_ (gx#syntax-e _tl78247842_)))
                                (let ((_hd78267850_ (##car _e78257847_))
                                      (_tl78277852_ (##cdr _e78257847_)))
                                  (if (gx#stx-null? _tl78277852_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd7845_)
                                          (_E78217833_))
                                      (_E78217833_))))
                              (_E78217833_)))))
                    (_E78217833_)))))
        (_E78207855_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7776_ _expr7777_)
      (let* ((_e77787788_ _bind7776_)
             (_E77807792_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77787788_)))
             (_E77797814_
              (lambda ()
                (if (gx#stx-pair? _e77787788_)
                    (let ((_e77817796_ (gx#syntax-e _e77787788_)))
                      (let ((_hd77827799_ (##car _e77817796_))
                            (_tl77837801_ (##cdr _e77817796_)))
                        (let ((_hd7804_ _hd77827799_))
                          (if (gx#stx-pair? _tl77837801_)
                              (let ((_e77847806_ (gx#syntax-e _tl77837801_)))
                                (let ((_hd77857809_ (##car _e77847806_))
                                      (_tl77867811_ (##cdr _e77847806_)))
                                  (if (gx#stx-null? _tl77867811_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd7804_)
                                                (cons _expr7777_ '()))
                                          (_E77807792_))
                                      (_E77807792_))))
                              (_E77807792_)))))
                    (_E77807792_)))))
        (_E77797814_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7730_)
      (let* ((_e77317741_ _stx7730_)
             (_E77337745_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77317741_)))
             (_E77327772_
              (lambda ()
                (if (gx#stx-pair? _e77317741_)
                    (let ((_e77347749_ (gx#syntax-e _e77317741_)))
                      (let ((_hd77357752_ (##car _e77347749_))
                            (_tl77367754_ (##cdr _e77347749_)))
                        (if (gx#stx-pair? _tl77367754_)
                            (let ((_e77377757_ (gx#syntax-e _tl77367754_)))
                              (let ((_hd77387760_ (##car _e77377757_))
                                    (_tl77397762_ (##cdr _e77377757_)))
                                (let* ((_hd7765_ _hd77387760_)
                                       (_body7767_ _tl77397762_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7765_)
                                      (let ((_expanders7769_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd7765_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd7765_
                                              _expanders7769_)
                                             (gx#core-expand-local-block
                                              _stx7730_
                                              _body7767_)))
                                         gx#current-expander-context
                                         (let ((__obj9118
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9118)
                                             __obj9118))))
                                      (_E77337745_)))))
                            (_E77337745_))))
                    (_E77337745_)))))
        (_E77327772_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7679_)
      (let* ((_e76807690_ _stx7679_)
             (_E76827694_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e76807690_)))
             (_E76817726_
              (lambda ()
                (if (gx#stx-pair? _e76807690_)
                    (let ((_e76837698_ (gx#syntax-e _e76807690_)))
                      (let ((_hd76847701_ (##car _e76837698_))
                            (_tl76857703_ (##cdr _e76837698_)))
                        (if (gx#stx-pair? _tl76857703_)
                            (let ((_e76867706_ (gx#syntax-e _tl76857703_)))
                              (let ((_hd76877709_ (##car _e76867706_))
                                    (_tl76887711_ (##cdr _e76867706_)))
                                (let* ((_hd7714_ _hd76877709_)
                                       (_body7716_ _tl76887711_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7714_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd7714_
                                            (make-list
                                             (gx#stx-length _hd7714_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g77187721_ _g77197723_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda7536
                                               _g77187721_
                                               _g77197723_
                                               '#t))
                                            _hd7714_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd7714_))
                                           (gx#core-expand-local-block
                                            _stx7679_
                                            _body7716_)))
                                       gx#current-expander-context
                                       (let ((__obj9119
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj9119)
                                           __obj9119)))
                                      (_E76827694_)))))
                            (_E76827694_))))
                    (_E76827694_)))))
        (_E76817726_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7636_)
      (if (gx#stx-list? _stx7636_)
          (gx#stx-andmap
           (lambda (_bind7638_)
             (let* ((_e76397649_ _bind7638_)
                    (_E76417653_ (lambda () '#f))
                    (_E76407675_
                     (lambda ()
                       (if (gx#stx-pair? _e76397649_)
                           (let ((_e76427657_ (gx#syntax-e _e76397649_)))
                             (let ((_hd76437660_ (##car _e76427657_))
                                   (_tl76447662_ (##cdr _e76427657_)))
                               (let ((_hd7665_ _hd76437660_))
                                 (if (gx#stx-pair? _tl76447662_)
                                     (let ((_e76457667_
                                            (gx#syntax-e _tl76447662_)))
                                       (let ((_hd76467670_ (##car _e76457667_))
                                             (_tl76477672_
                                              (##cdr _e76457667_)))
                                         (if (gx#stx-null? _tl76477672_)
                                             (if '#t
                                                 (gx#identifier? _hd7665_)
                                                 (_E76417653_))
                                             (_E76417653_))))
                                     (_E76417653_)))))
                           (_E76417653_)))))
               (_E76407675_)))
           _stx7636_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7593_)
      (let* ((_e75947604_ _bind7593_)
             (_E75967608_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e75947604_)))
             (_E75957632_
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
                                          (let ((_g9128_ (gx#core-expand-expression+1
                                                          _expr7628_)))
                                            (begin
                                              (let ((_g9129_ (values-count
                                                              _g9128_)))
                                                (if (not (fx= _g9129_ 2))
                                                    (error "Context expects 2 values"
                                                           _g9129_)))
                                              (let ((_e7630_ (values-ref
                                                              _g9128_
                                                              1)))
                                                _e7630_)))
                                          (_E75967608_))
                                      (_E75967608_)))))
                            (_E75967608_))))
                    (_E75967608_)))))
        (_E75957632_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7536
      (lambda (_bind7538_ _e7539_ _rebind?7540_)
        (let* ((_e75417551_ _bind7538_)
               (_E75437555_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e75417551_)))
               (_E75427577_
                (lambda ()
                  (if (gx#stx-pair? _e75417551_)
                      (let ((_e75447559_ (gx#syntax-e _e75417551_)))
                        (let ((_hd75457562_ (##car _e75447559_))
                              (_tl75467564_ (##cdr _e75447559_)))
                          (let ((_id7567_ _hd75457562_))
                            (if (gx#stx-pair? _tl75467564_)
                                (let ((_e75477569_ (gx#syntax-e _tl75467564_)))
                                  (let ((_hd75487572_ (##car _e75477569_))
                                        (_tl75497574_ (##cdr _e75477569_)))
                                    (if (gx#stx-null? _tl75497574_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id7567_
                                             _e7539_
                                             _rebind?7540_)
                                            (_E75437555_))
                                        (_E75437555_))))
                                (_E75437555_)))))
                      (_E75437555_)))))
          (_E75427577_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7584_ _e7585_)
          (let ((_rebind?7587_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7536
             _bind7584_
             _e7585_
             _rebind?7587_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9131_
          (let ((_g9130_ (length _g9131_)))
            (cond ((fx= _g9130_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9131_))
                  ((fx= _g9130_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7536
                          _g9131_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9131_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7496_)
      (let* ((_e74977507_ _stx7496_)
             (_E74997511_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74977507_)))
             (_E74987533_
              (lambda ()
                (if (gx#stx-pair? _e74977507_)
                    (let ((_e75007515_ (gx#syntax-e _e74977507_)))
                      (let ((_hd75017518_ (##car _e75007515_))
                            (_tl75027520_ (##cdr _e75007515_)))
                        (if (gx#stx-pair? _tl75027520_)
                            (let ((_e75037523_ (gx#syntax-e _tl75027520_)))
                              (let ((_hd75047526_ (##car _e75037523_))
                                    (_tl75057528_ (##cdr _e75037523_)))
                                (let ((_expr7531_ _hd75047526_))
                                  (if (gx#stx-null? _tl75057528_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7531_)
                                          (_E74997511_))
                                      (_E74997511_)))))
                            (_E74997511_))))
                    (_E74997511_)))))
        (_E74987533_))))
  (define gx#core-expand-quote%
    (lambda (_stx7455_)
      (let* ((_e74567466_ _stx7455_)
             (_E74587470_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74567466_)))
             (_E74577492_
              (lambda ()
                (if (gx#stx-pair? _e74567466_)
                    (let ((_e74597474_ (gx#syntax-e _e74567466_)))
                      (let ((_hd74607477_ (##car _e74597474_))
                            (_tl74617479_ (##cdr _e74597474_)))
                        (if (gx#stx-pair? _tl74617479_)
                            (let ((_e74627482_ (gx#syntax-e _tl74617479_)))
                              (let ((_hd74637485_ (##car _e74627482_))
                                    (_tl74647487_ (##cdr _e74627482_)))
                                (let ((_e7490_ _hd74637485_))
                                  (if (gx#stx-null? _tl74647487_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e7490_)
                                                       '()))
                                           (gx#stx-source _stx7455_))
                                          (_E74587470_))
                                      (_E74587470_)))))
                            (_E74587470_))))
                    (_E74587470_)))))
        (_E74577492_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7414_)
      (let* ((_e74157425_ _stx7414_)
             (_E74177429_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74157425_)))
             (_E74167451_
              (lambda ()
                (if (gx#stx-pair? _e74157425_)
                    (let ((_e74187433_ (gx#syntax-e _e74157425_)))
                      (let ((_hd74197436_ (##car _e74187433_))
                            (_tl74207438_ (##cdr _e74187433_)))
                        (if (gx#stx-pair? _tl74207438_)
                            (let ((_e74217441_ (gx#syntax-e _tl74207438_)))
                              (let ((_hd74227444_ (##car _e74217441_))
                                    (_tl74237446_ (##cdr _e74217441_)))
                                (let ((_e7449_ _hd74227444_))
                                  (if (gx#stx-null? _tl74237446_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e7449_)
                                                       '()))
                                           (gx#stx-source _stx7414_))
                                          (_E74177429_))
                                      (_E74177429_)))))
                            (_E74177429_))))
                    (_E74177429_)))))
        (_E74167451_))))
  (define gx#core-expand-call%
    (lambda (_stx7371_)
      (let* ((_e73727382_ _stx7371_)
             (_E73747386_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73727382_)))
             (_E73737410_
              (lambda ()
                (if (gx#stx-pair? _e73727382_)
                    (let ((_e73757390_ (gx#syntax-e _e73727382_)))
                      (let ((_hd73767393_ (##car _e73757390_))
                            (_tl73777395_ (##cdr _e73757390_)))
                        (if (gx#stx-pair? _tl73777395_)
                            (let ((_e73787398_ (gx#syntax-e _tl73777395_)))
                              (let ((_hd73797401_ (##car _e73787398_))
                                    (_tl73807403_ (##cdr _e73787398_)))
                                (let* ((_rator7406_ _hd73797401_)
                                       (_args7408_ _tl73807403_))
                                  (if (gx#stx-list? _args7408_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator7406_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args7408_))
                                       (gx#stx-source _stx7371_))
                                      (_E73747386_)))))
                            (_E73747386_))))
                    (_E73747386_)))))
        (_E73737410_))))
  (define gx#core-expand-if%
    (lambda (_stx7304_)
      (let* ((_e73057321_ _stx7304_)
             (_E73077325_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73057321_)))
             (_E73067367_
              (lambda ()
                (if (gx#stx-pair? _e73057321_)
                    (let ((_e73087329_ (gx#syntax-e _e73057321_)))
                      (let ((_hd73097332_ (##car _e73087329_))
                            (_tl73107334_ (##cdr _e73087329_)))
                        (if (gx#stx-pair? _tl73107334_)
                            (let ((_e73117337_ (gx#syntax-e _tl73107334_)))
                              (let ((_hd73127340_ (##car _e73117337_))
                                    (_tl73137342_ (##cdr _e73117337_)))
                                (let ((_test7345_ _hd73127340_))
                                  (if (gx#stx-pair? _tl73137342_)
                                      (let ((_e73147347_
                                             (gx#syntax-e _tl73137342_)))
                                        (let ((_hd73157350_
                                               (##car _e73147347_))
                                              (_tl73167352_
                                               (##cdr _e73147347_)))
                                          (let ((_K7355_ _hd73157350_))
                                            (if (gx#stx-pair? _tl73167352_)
                                                (let ((_e73177357_
                                                       (gx#syntax-e
                                                        _tl73167352_)))
                                                  (let ((_hd73187360_
                                                         (##car _e73177357_))
                                                        (_tl73197362_
                                                         (##cdr _e73177357_)))
                                                    (let ((_E7365_ _hd73187360_))
                                                      (if (gx#stx-null?
                                                           _tl73197362_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test7345_)
                                   (cons (gx#core-expand-expression _K7355_)
                                         (cons (gx#core-expand-expression
                                                _E7365_)
                                               '()))))
                       (gx#stx-source _stx7304_))
                      (_E73077325_))
                  (_E73077325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E73077325_)))))
                                      (_E73077325_)))))
                            (_E73077325_))))
                    (_E73077325_)))))
        (_E73067367_))))
  (define gx#core-expand-ref%
    (lambda (_stx7263_)
      (let* ((_e72647274_ _stx7263_)
             (_E72667278_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72647274_)))
             (_E72657300_
              (lambda ()
                (if (gx#stx-pair? _e72647274_)
                    (let ((_e72677282_ (gx#syntax-e _e72647274_)))
                      (let ((_hd72687285_ (##car _e72677282_))
                            (_tl72697287_ (##cdr _e72677282_)))
                        (if (gx#stx-pair? _tl72697287_)
                            (let ((_e72707290_ (gx#syntax-e _tl72697287_)))
                              (let ((_hd72717293_ (##car _e72707290_))
                                    (_tl72727295_ (##cdr _e72707290_)))
                                (let ((_id7298_ _hd72717293_))
                                  (if (gx#stx-null? _tl72727295_)
                                      (if (gx#core-runtime-ref? _id7298_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id7298_
                                                        _stx7263_)
                                                       '()))
                                           (gx#stx-source _stx7263_))
                                          (_E72667278_))
                                      (_E72667278_)))))
                            (_E72667278_))))
                    (_E72667278_)))))
        (_E72657300_))))
  (define gx#core-expand-setq%
    (lambda (_stx7209_)
      (let* ((_e72107223_ _stx7209_)
             (_E72127227_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72107223_)))
             (_E72117259_
              (lambda ()
                (if (gx#stx-pair? _e72107223_)
                    (let ((_e72137231_ (gx#syntax-e _e72107223_)))
                      (let ((_hd72147234_ (##car _e72137231_))
                            (_tl72157236_ (##cdr _e72137231_)))
                        (if (gx#stx-pair? _tl72157236_)
                            (let ((_e72167239_ (gx#syntax-e _tl72157236_)))
                              (let ((_hd72177242_ (##car _e72167239_))
                                    (_tl72187244_ (##cdr _e72167239_)))
                                (let ((_id7247_ _hd72177242_))
                                  (if (gx#stx-pair? _tl72187244_)
                                      (let ((_e72197249_
                                             (gx#syntax-e _tl72187244_)))
                                        (let ((_hd72207252_
                                               (##car _e72197249_))
                                              (_tl72217254_
                                               (##cdr _e72197249_)))
                                          (let ((_expr7257_ _hd72207252_))
                                            (if (gx#stx-null? _tl72217254_)
                                                (if (gx#core-runtime-ref?
                                                     _id7247_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7247_
                          _stx7209_)
                         (cons (gx#core-expand-expression _expr7257_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx7209_))
                                                    (_E72127227_))
                                                (_E72127227_)))))
                                      (_E72127227_)))))
                            (_E72127227_))))
                    (_E72127227_)))))
        (_E72117259_))))
  (define gx#macro-expand-extern
    (lambda (_stx7057_)
      (letrec ((_generate7059_
                (lambda (_body7089_)
                  (let _lp7091_ ((_rest7093_ _body7089_)
                                 (_ns7094_ (gx#core-context-namespace__0))
                                 (_r7095_ '()))
                    (let* ((_e70967111_ _rest7093_)
                           (_E71097115_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e70967111_)))
                           (_E71057119_
                            (lambda ()
                              (if (gx#stx-null? _e70967111_)
                                  (if '#t (reverse _r7095_) (_E71097115_))
                                  (_E71097115_))))
                           (_E70987176_
                            (lambda ()
                              (if (gx#stx-pair? _e70967111_)
                                  (let ((_e71067123_
                                         (gx#syntax-e _e70967111_)))
                                    (let ((_hd71077126_ (##car _e71067123_))
                                          (_tl71087128_ (##cdr _e71067123_)))
                                      (let* ((_hd7131_ _hd71077126_)
                                             (_rest7133_ _tl71087128_))
                                        (if '#t
                                            (if (gx#identifier? _hd7131_)
                                                (_lp7091_
                                                 _rest7133_
                                                 _ns7094_
                                                 (cons (cons _hd7131_
                                                             (cons (if _ns7094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd7131_
                                _ns7094_
                                '"#"
                                _hd7131_)
                               _hd7131_)
                           '()))
               _r7095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e71347144_ _hd7131_)
                                                       (_E71367148_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e71347144_)))
                                                       (_E71357172_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e71347144_)
                                                              (let ((_e71377152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e71347144_)))
                        (let ((_hd71387155_ (##car _e71377152_))
                              (_tl71397157_ (##cdr _e71377152_)))
                          (let ((_id7160_ _hd71387155_))
                            (if (gx#stx-pair? _tl71397157_)
                                (let ((_e71407162_ (gx#syntax-e _tl71397157_)))
                                  (let ((_hd71417165_ (##car _e71407162_))
                                        (_tl71427167_ (##cdr _e71407162_)))
                                    (let ((_eid7170_ _hd71417165_))
                                      (if (gx#stx-null? _tl71427167_)
                                          (if (if (gx#identifier? _id7160_)
                                                  (gx#identifier? _eid7170_)
                                                  '#f)
                                              (_lp7091_
                                               _rest7133_
                                               _ns7094_
                                               (cons (cons _id7160_
                                                           (cons _eid7170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r7095_))
                                              (_E71367148_))
                                          (_E71367148_)))))
                                (_E71367148_)))))
                      (_E71367148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71357172_)))
                                            (_E71057119_)))))
                                  (_E71057119_))))
                           (_E70977205_
                            (lambda ()
                              (if (gx#stx-pair? _e70967111_)
                                  (let ((_e70997180_
                                         (gx#syntax-e _e70967111_)))
                                    (let ((_hd71007183_ (##car _e70997180_))
                                          (_tl71017185_ (##cdr _e70997180_)))
                                      (if (eq? (gx#stx-e _hd71007183_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl71017185_)
                                              (let ((_e71027188_
                                                     (gx#syntax-e
                                                      _tl71017185_)))
                                                (let ((_hd71037191_
                                                       (##car _e71027188_))
                                                      (_tl71047193_
                                                       (##cdr _e71027188_)))
                                                  (let* ((_ns7196_
                                                          _hd71037191_)
                                                         (_rest7198_
                                                          _tl71047193_))
                                                    (if '#t
                                                        (let ((_ns7203_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns7196_)
                           (symbol->string (gx#stx-e _ns7196_))
                           (if (let ((_$e7200_ (gx#stx-string? _ns7196_)))
                                 (if _$e7200_
                                     _$e7200_
                                     (gx#stx-false? _ns7196_)))
                               (gx#stx-e _ns7196_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx7057_
                                _ns7196_)))))
                  (_lp7091_ _rest7198_ _ns7203_ _r7095_))
                (_E70987176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E70987176_))
                                          (_E70987176_))))
                                  (_E70987176_)))))
                      (_E70977205_))))))
        (let* ((_e70607067_ _stx7057_)
               (_E70627071_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e70607067_)))
               (_E70617085_
                (lambda ()
                  (if (gx#stx-pair? _e70607067_)
                      (let ((_e70637075_ (gx#syntax-e _e70607067_)))
                        (let ((_hd70647078_ (##car _e70637075_))
                              (_tl70657080_ (##cdr _e70637075_)))
                          (let ((_body7083_ _tl70657080_))
                            (if (gx#stx-list? _body7083_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate7059_ _body7083_))
                                (_E70627071_)))))
                      (_E70627071_)))))
          (_E70617085_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx7003_)
      (let* ((_e70047017_ _stx7003_)
             (_E70067021_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e70047017_)))
             (_E70057053_
              (lambda ()
                (if (gx#stx-pair? _e70047017_)
                    (let ((_e70077025_ (gx#syntax-e _e70047017_)))
                      (let ((_hd70087028_ (##car _e70077025_))
                            (_tl70097030_ (##cdr _e70077025_)))
                        (if (gx#stx-pair? _tl70097030_)
                            (let ((_e70107033_ (gx#syntax-e _tl70097030_)))
                              (let ((_hd70117036_ (##car _e70107033_))
                                    (_tl70127038_ (##cdr _e70107033_)))
                                (let ((_hd7041_ _hd70117036_))
                                  (if (gx#stx-pair? _tl70127038_)
                                      (let ((_e70137043_
                                             (gx#syntax-e _tl70127038_)))
                                        (let ((_hd70147046_
                                               (##car _e70137043_))
                                              (_tl70157048_
                                               (##cdr _e70137043_)))
                                          (let ((_expr7051_ _hd70147046_))
                                            (if (gx#stx-null? _tl70157048_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd7041_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd7041_)
                        (cons _expr7051_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E70067021_))
                                                (_E70067021_)))))
                                      (_E70067021_)))))
                            (_E70067021_))))
                    (_E70067021_)))))
        (_E70057053_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6949_)
      (let* ((_e69506963_ _stx6949_)
             (_E69526967_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69506963_)))
             (_E69516999_
              (lambda ()
                (if (gx#stx-pair? _e69506963_)
                    (let ((_e69536971_ (gx#syntax-e _e69506963_)))
                      (let ((_hd69546974_ (##car _e69536971_))
                            (_tl69556976_ (##cdr _e69536971_)))
                        (if (gx#stx-pair? _tl69556976_)
                            (let ((_e69566979_ (gx#syntax-e _tl69556976_)))
                              (let ((_hd69576982_ (##car _e69566979_))
                                    (_tl69586984_ (##cdr _e69566979_)))
                                (let ((_hd6987_ _hd69576982_))
                                  (if (gx#stx-pair? _tl69586984_)
                                      (let ((_e69596989_
                                             (gx#syntax-e _tl69586984_)))
                                        (let ((_hd69606992_
                                               (##car _e69596989_))
                                              (_tl69616994_
                                               (##cdr _e69596989_)))
                                          (let ((_expr6997_ _hd69606992_))
                                            (if (gx#stx-null? _tl69616994_)
                                                (if (gx#identifier? _hd6987_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd6987_
                                                                (cons _expr6997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69526967_))
                                                (_E69526967_)))))
                                      (_E69526967_)))))
                            (_E69526967_))))
                    (_E69526967_)))))
        (_E69516999_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6895_)
      (let* ((_e68966909_ _stx6895_)
             (_E68986913_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68966909_)))
             (_E68976945_
              (lambda ()
                (if (gx#stx-pair? _e68966909_)
                    (let ((_e68996917_ (gx#syntax-e _e68966909_)))
                      (let ((_hd69006920_ (##car _e68996917_))
                            (_tl69016922_ (##cdr _e68996917_)))
                        (if (gx#stx-pair? _tl69016922_)
                            (let ((_e69026925_ (gx#syntax-e _tl69016922_)))
                              (let ((_hd69036928_ (##car _e69026925_))
                                    (_tl69046930_ (##cdr _e69026925_)))
                                (let ((_id6933_ _hd69036928_))
                                  (if (gx#stx-pair? _tl69046930_)
                                      (let ((_e69056935_
                                             (gx#syntax-e _tl69046930_)))
                                        (let ((_hd69066938_
                                               (##car _e69056935_))
                                              (_tl69076940_
                                               (##cdr _e69056935_)))
                                          (let ((_alias-id6943_ _hd69066938_))
                                            (if (gx#stx-null? _tl69076940_)
                                                (if (if (gx#identifier?
                                                         _id6933_)
                                                        (gx#identifier?
                                                         _alias-id6943_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id6933_
                                                                (cons _alias-id6943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E68986913_))
                                                (_E68986913_)))))
                                      (_E68986913_)))))
                            (_E68986913_))))
                    (_E68986913_)))))
        (_E68976945_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6852_)
      (let* ((_e68536863_ _stx6852_)
             (_E68556867_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68536863_)))
             (_E68546891_
              (lambda ()
                (if (gx#stx-pair? _e68536863_)
                    (let ((_e68566871_ (gx#syntax-e _e68536863_)))
                      (let ((_hd68576874_ (##car _e68566871_))
                            (_tl68586876_ (##cdr _e68566871_)))
                        (if (gx#stx-pair? _tl68586876_)
                            (let ((_e68596879_ (gx#syntax-e _tl68586876_)))
                              (let ((_hd68606882_ (##car _e68596879_))
                                    (_tl68616884_ (##cdr _e68596879_)))
                                (let* ((_hd6887_ _hd68606882_)
                                       (_body6889_ _tl68616884_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd6887_)
                                          (if (gx#stx-list? _body6889_)
                                              (not (gx#stx-null? _body6889_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd6887_)
                                       _body6889_)
                                      (_E68556867_)))))
                            (_E68556867_))))
                    (_E68556867_)))))
        (_E68546891_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6788_)
      (letrec ((_generate6790_
                (lambda (_clause6820_)
                  (let* ((_e68216828_ _clause6820_)
                         (_E68236832_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx6788_
                             _clause6820_)))
                         (_E68226848_
                          (lambda ()
                            (if (gx#stx-pair? _e68216828_)
                                (let ((_e68246836_ (gx#syntax-e _e68216828_)))
                                  (let ((_hd68256839_ (##car _e68246836_))
                                        (_tl68266841_ (##cdr _e68246836_)))
                                    (let* ((_hd6844_ _hd68256839_)
                                           (_body6846_ _tl68266841_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd6844_)
                                              (if (gx#stx-list? _body6846_)
                                                  (not (gx#stx-null?
                                                        _body6846_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd6844_)
                                                 _body6846_)
                                           (gx#stx-source _clause6820_))
                                          (_E68236832_)))))
                                (_E68236832_)))))
                    (_E68226848_)))))
        (let* ((_e67916798_ _stx6788_)
               (_E67936802_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e67916798_)))
               (_E67926816_
                (lambda ()
                  (if (gx#stx-pair? _e67916798_)
                      (let ((_e67946806_ (gx#syntax-e _e67916798_)))
                        (let ((_hd67956809_ (##car _e67946806_))
                              (_tl67966811_ (##cdr _e67946806_)))
                          (let ((_clauses6814_ _tl67966811_))
                            (if (gx#stx-list? _clauses6814_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate6790_ _clauses6814_))
                                (_E67936802_)))))
                      (_E67936802_)))))
          (_E67926816_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6687
      (lambda (_stx6689_ _form6690_)
        (letrec ((_generate6692_
                  (lambda (_bind6735_)
                    (let* ((_e67366746_ _bind6735_)
                           (_E67386750_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx6689_
                               _bind6735_)))
                           (_E67376774_
                            (lambda ()
                              (if (gx#stx-pair? _e67366746_)
                                  (let ((_e67396754_
                                         (gx#syntax-e _e67366746_)))
                                    (let ((_hd67406757_ (##car _e67396754_))
                                          (_tl67416759_ (##cdr _e67396754_)))
                                      (let ((_ids6762_ _hd67406757_))
                                        (if (gx#stx-pair? _tl67416759_)
                                            (let ((_e67426764_
                                                   (gx#syntax-e _tl67416759_)))
                                              (let ((_hd67436767_
                                                     (##car _e67426764_))
                                                    (_tl67446769_
                                                     (##cdr _e67426764_)))
                                                (let ((_expr6772_
                                                       _hd67436767_))
                                                  (if (gx#stx-null?
                                                       _tl67446769_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6762_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6762_)
                        (cons _expr6772_ '()))
                  (_E67386750_))
              (_E67386750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67386750_)))))
                                  (_E67386750_)))))
                      (_E67376774_)))))
          (let* ((_e66936703_ _stx6689_)
                 (_E66956707_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66936703_)))
                 (_E66946731_
                  (lambda ()
                    (if (gx#stx-pair? _e66936703_)
                        (let ((_e66966711_ (gx#syntax-e _e66936703_)))
                          (let ((_hd66976714_ (##car _e66966711_))
                                (_tl66986716_ (##cdr _e66966711_)))
                            (if (gx#stx-pair? _tl66986716_)
                                (let ((_e66996719_ (gx#syntax-e _tl66986716_)))
                                  (let ((_hd67006722_ (##car _e66996719_))
                                        (_tl67016724_ (##cdr _e66996719_)))
                                    (let* ((_hd6727_ _hd67006722_)
                                           (_body6729_ _tl67016724_))
                                      (if (if (gx#stx-list? _hd6727_)
                                              (if (gx#stx-list? _body6729_)
                                                  (not (gx#stx-null?
                                                        _body6729_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form6690_
                                           (gx#stx-map1
                                            _generate6692_
                                            _hd6727_)
                                           _body6729_)
                                          (_E66956707_)))))
                                (_E66956707_))))
                        (_E66956707_)))))
            (_E66946731_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6781_)
          (let ((_form6783_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6687
             _stx6781_
             _form6783_))))
      (define gx#macro-expand-let-values
        (lambda _g9133_
          (let ((_g9132_ (length _g9133_)))
            (cond ((fx= _g9132_ 1)
                   (apply gx#macro-expand-let-values__0 _g9133_))
                  ((fx= _g9132_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6687 _g9133_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9133_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6686_)
      (gx#macro-expand-let-values__opt-lambda6687 _stx6686_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6684_)
      (gx#macro-expand-let-values__opt-lambda6687
       _stx6684_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6575_)
      (let* ((_e65766602_ _stx6575_)
             (_E65886606_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e65766602_)))
             (_E65786648_
              (lambda ()
                (if (gx#stx-pair? _e65766602_)
                    (let ((_e65896610_ (gx#syntax-e _e65766602_)))
                      (let ((_hd65906613_ (##car _e65896610_))
                            (_tl65916615_ (##cdr _e65896610_)))
                        (if (gx#stx-pair? _tl65916615_)
                            (let ((_e65926618_ (gx#syntax-e _tl65916615_)))
                              (let ((_hd65936621_ (##car _e65926618_))
                                    (_tl65946623_ (##cdr _e65926618_)))
                                (let ((_test6626_ _hd65936621_))
                                  (if (gx#stx-pair? _tl65946623_)
                                      (let ((_e65956628_
                                             (gx#syntax-e _tl65946623_)))
                                        (let ((_hd65966631_
                                               (##car _e65956628_))
                                              (_tl65976633_
                                               (##cdr _e65956628_)))
                                          (let ((_K6636_ _hd65966631_))
                                            (if (gx#stx-pair? _tl65976633_)
                                                (let ((_e65986638_
                                                       (gx#syntax-e
                                                        _tl65976633_)))
                                                  (let ((_hd65996641_
                                                         (##car _e65986638_))
                                                        (_tl66006643_
                                                         (##cdr _e65986638_)))
                                                    (let ((_E6646_ _hd65996641_))
                                                      (if (gx#stx-null?
                                                           _tl66006643_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test6626_
                                                               _K6636_
                                                               _E6646_)
                                                              (_E65886606_))
                                                          (_E65886606_)))))
                                                (_E65886606_)))))
                                      (_E65886606_)))))
                            (_E65886606_))))
                    (_E65886606_))))
             (_E65776680_
              (lambda ()
                (if (gx#stx-pair? _e65766602_)
                    (let ((_e65796652_ (gx#syntax-e _e65766602_)))
                      (let ((_hd65806655_ (##car _e65796652_))
                            (_tl65816657_ (##cdr _e65796652_)))
                        (if (gx#stx-pair? _tl65816657_)
                            (let ((_e65826660_ (gx#syntax-e _tl65816657_)))
                              (let ((_hd65836663_ (##car _e65826660_))
                                    (_tl65846665_ (##cdr _e65826660_)))
                                (let ((_test6668_ _hd65836663_))
                                  (if (gx#stx-pair? _tl65846665_)
                                      (let ((_e65856670_
                                             (gx#syntax-e _tl65846665_)))
                                        (let ((_hd65866673_
                                               (##car _e65856670_))
                                              (_tl65876675_
                                               (##cdr _e65856670_)))
                                          (let ((_K6678_ _hd65866673_))
                                            (if (gx#stx-null? _tl65876675_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test6668_
                                                     _K6678_
                                                     '#!void)
                                                    (_E65786648_))
                                                (_E65786648_)))))
                                      (_E65786648_)))))
                            (_E65786648_))))
                    (_E65786648_)))))
        (_E65776680_))))
  (define gx#free-identifier=?
    (lambda (_xid6563_ _yid6564_)
      (let ((_xe6566_ (gx#resolve-identifier__0 _xid6563_))
            (_ye6567_ (gx#resolve-identifier__0 _yid6564_)))
        (if (if _xe6566_ _ye6567_ '#f)
            (let ((_$e6569_ (eq? _xe6566_ _ye6567_)))
              (if _$e6569_
                  _$e6569_
                  (if (##structure-instance-of? _xe6566_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6567_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6566_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6567_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6572_ _xe6566_)) (if _$e6572_ _$e6572_ _ye6567_))
                '#f
                (gx#stx-eq? _xid6563_ _yid6564_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6547_ _yid6548_)
      (letrec ((_context6550_
                (lambda (_e6561_)
                  (if (##structure-direct-instance-of?
                       _e6561_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e6561_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks6551_
                (lambda (_e6559_)
                  (if (symbol? _e6559_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e6559_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e6559_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e6559_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap6552_
                (lambda (_e6557_)
                  (if (symbol? _e6557_)
                      _e6557_
                      (gx#syntax-local-unwrap _e6557_)))))
        (let ((_x6554_ (_unwrap6552_ _xid6547_))
              (_y6555_ (_unwrap6552_ _yid6548_)))
          (if (gx#stx-eq? _x6554_ _y6555_)
              (if (eq? (_context6550_ _x6554_) (_context6550_ _y6555_))
                  (andmap eq? (_marks6551_ _x6554_) (_marks6551_ _y6555_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx6545_)
      (if (gx#identifier? _stx6545_) (gx#core-identifier=? _stx6545_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6543_)
      (if (gx#identifier? _stx6543_)
          (gx#core-identifier=? _stx6543_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6541_)
      (if (gx#identifier? _x6541_)
          (if (not (gx#underscore? _x6541_)) _x6541_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6485
      (lambda (_stx6487_ _where6488_)
        (let _lp6490_ ((_rest6492_ (gx#syntax->list _stx6487_)))
          (let* ((_rest64936501_ _rest6492_)
                 (_E64966505_
                  (lambda () (error '"No clause matching" _rest64936501_)))
                 (_else64956509_ (lambda () '#t))
                 (_K64976519_
                  (lambda (_rest6512_ _hd6513_)
                    (if (not (gx#identifier? _hd6513_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where6488_
                         _hd6513_)
                        (if (find (lambda (_g65146516_)
                                    (gx#bound-identifier=?
                                     _g65146516_
                                     _hd6513_))
                                  _rest6512_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where6488_
                             _hd6513_)
                            (_lp6490_ _rest6512_))))))
            (if (##pair? _rest64936501_)
                (let ((_hd64986522_ (##car _rest64936501_))
                      (_tl64996524_ (##cdr _rest64936501_)))
                  (let* ((_hd6527_ _hd64986522_) (_rest6529_ _tl64996524_))
                    (_K64976519_ _rest6529_ _hd6527_)))
                (_else64956509_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6534_)
          (let ((_where6536_ _stx6534_))
            (gx#check-duplicate-identifiers__opt-lambda6485
             _stx6534_
             _where6536_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9135_
          (let ((_g9134_ (length _g9135_)))
            (cond ((fx= _g9134_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9135_))
                  ((fx= _g9134_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6485
                          _g9135_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9135_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6479_)
      (gx#stx-andmap
       (lambda (_x6481_)
         (let ((_$e6483_ (gx#identifier? _x6481_)))
           (if _$e6483_ _$e6483_ (gx#stx-false? _x6481_))))
       _stx6479_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6441
      (lambda (_stx6443_ _rebind?6444_ _phi6445_ _ctx6446_)
        (gx#stx-for-each1
         (lambda (_id6448_)
           (if (gx#identifier? _id6448_)
               (gx#core-bind-runtime!__opt-lambda6380
                _id6448_
                _rebind?6444_
                _phi6445_
                _ctx6446_)
               '#!void))
         _stx6443_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6453_)
          (let* ((_rebind?6455_ '#f)
                 (_phi6457_ (gx#current-expander-phi))
                 (_ctx6459_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6441
             _stx6453_
             _rebind?6455_
             _phi6457_
             _ctx6459_))))
      (define gx#core-bind-values!__1
        (lambda (_stx6461_ _rebind?6462_)
          (let* ((_phi6464_ (gx#current-expander-phi))
                 (_ctx6466_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6441
             _stx6461_
             _rebind?6462_
             _phi6464_
             _ctx6466_))))
      (define gx#core-bind-values!__2
        (lambda (_stx6468_ _rebind?6469_ _phi6470_)
          (let ((_ctx6472_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6441
             _stx6468_
             _rebind?6469_
             _phi6470_
             _ctx6472_))))
      (define gx#core-bind-values!
        (lambda _g9137_
          (let ((_g9136_ (length _g9137_)))
            (cond ((fx= _g9136_ 1) (apply gx#core-bind-values!__0 _g9137_))
                  ((fx= _g9136_ 2) (apply gx#core-bind-values!__1 _g9137_))
                  ((fx= _g9136_ 3) (apply gx#core-bind-values!__2 _g9137_))
                  ((fx= _g9136_ 4)
                   (apply gx#core-bind-values!__opt-lambda6441 _g9137_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9137_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6438_)
      (gx#stx-map1
       (lambda (_x6440_)
         (if (gx#identifier? _x6440_) (gx#core-quote-syntax__0 _x6440_) '#f))
       _stx6438_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6431_)
      (if (gx#identifier? _stx6431_)
          (let* ((_bind6433_ (gx#resolve-identifier__0 _stx6431_))
                 (_$e6435_ (not _bind6433_)))
            (if _$e6435_
                _$e6435_
                (##structure-instance-of? _bind6433_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6423_ _form6424_)
      (let ((_bind6426_ (gx#resolve-identifier__0 _id6423_)))
        (if (##structure-instance-of? _bind6426_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6423_)
            (if (not _bind6426_)
                (if (let ((_$e6428_
                           (gx#core-context-rebind?__opt-lambda4297
                            (gx#core-context-top__0))))
                      (if _$e6428_
                          _$e6428_
                          (gx#core-extern-symbol? (gx#stx-e _id6423_))))
                    (gx#core-quote-syntax__0 _id6423_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6424_
                     _id6423_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6424_
                 _id6423_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6380
      (lambda (_id6382_ _rebind?6383_ _phi6384_ _ctx6385_)
        (let* ((_key6387_ (gx#core-identifier-key _id6382_))
               (_eid6389_
                (gx#make-binding-id__opt-lambda6147
                 _key6387_
                 '#f
                 _phi6384_
                 _ctx6385_))
               (_bind6391_
                (if (##structure-instance-of? _ctx6385_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6389_
                     _key6387_
                     _phi6384_
                     _ctx6385_)
                    (if (##structure-instance-of? _ctx6385_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6389_
                         _key6387_
                         _phi6384_)
                        (if (##structure-instance-of?
                             _ctx6385_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid6389_
                             _key6387_
                             _phi6384_)
                            (##structure
                             gx#runtime-binding::t
                             _eid6389_
                             _key6387_
                             _phi6384_))))))
          (gx#bind-identifier!__opt-lambda4744
           _id6382_
           _bind6391_
           _rebind?6383_
           _phi6384_
           _ctx6385_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6397_)
          (let* ((_rebind?6399_ '#f)
                 (_phi6401_ (gx#current-expander-phi))
                 (_ctx6403_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6380
             _id6397_
             _rebind?6399_
             _phi6401_
             _ctx6403_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6405_ _rebind?6406_)
          (let* ((_phi6408_ (gx#current-expander-phi))
                 (_ctx6410_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6380
             _id6405_
             _rebind?6406_
             _phi6408_
             _ctx6410_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6412_ _rebind?6413_ _phi6414_)
          (let ((_ctx6416_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6380
             _id6412_
             _rebind?6413_
             _phi6414_
             _ctx6416_))))
      (define gx#core-bind-runtime!
        (lambda _g9139_
          (let ((_g9138_ (length _g9139_)))
            (cond ((fx= _g9138_ 1) (apply gx#core-bind-runtime!__0 _g9139_))
                  ((fx= _g9138_ 2) (apply gx#core-bind-runtime!__1 _g9139_))
                  ((fx= _g9138_ 3) (apply gx#core-bind-runtime!__2 _g9139_))
                  ((fx= _g9138_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6380 _g9139_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9139_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6335
      (lambda (_id6337_ _eid6338_ _rebind?6339_ _phi6340_ _ctx6341_)
        (let* ((_key6343_ (gx#core-identifier-key _id6337_))
               (_bind6345_
                (if (##structure-instance-of? _ctx6341_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6338_
                     _key6343_
                     _phi6340_
                     _ctx6341_)
                    (if (##structure-instance-of? _ctx6341_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6338_
                         _key6343_
                         _phi6340_)
                        (##structure
                         gx#runtime-binding::t
                         _eid6338_
                         _key6343_
                         _phi6340_)))))
          (gx#bind-identifier!__opt-lambda4744
           _id6337_
           _bind6345_
           _rebind?6339_
           _phi6340_
           _ctx6341_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6351_ _eid6352_)
          (let* ((_rebind?6354_ '#f)
                 (_phi6356_ (gx#current-expander-phi))
                 (_ctx6358_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6335
             _id6351_
             _eid6352_
             _rebind?6354_
             _phi6356_
             _ctx6358_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6360_ _eid6361_ _rebind?6362_)
          (let* ((_phi6364_ (gx#current-expander-phi))
                 (_ctx6366_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6335
             _id6360_
             _eid6361_
             _rebind?6362_
             _phi6364_
             _ctx6366_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6368_ _eid6369_ _rebind?6370_ _phi6371_)
          (let ((_ctx6373_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6335
             _id6368_
             _eid6369_
             _rebind?6370_
             _phi6371_
             _ctx6373_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9141_
          (let ((_g9140_ (length _g9141_)))
            (cond ((fx= _g9140_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9141_))
                  ((fx= _g9140_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9141_))
                  ((fx= _g9140_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9141_))
                  ((fx= _g9140_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6335
                          _g9141_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9141_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6295
      (lambda (_id6297_ _eid6298_ _rebind?6299_ _phi6300_ _ctx6301_)
        (gx#bind-identifier!__opt-lambda4744
         _id6297_
         (##structure
          gx#extern-binding::t
          _eid6298_
          (gx#core-identifier-key _id6297_)
          _phi6300_)
         _rebind?6299_
         _phi6300_
         _ctx6301_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6306_ _eid6307_)
          (let* ((_rebind?6309_ '#f)
                 (_phi6311_ (gx#current-expander-phi))
                 (_ctx6313_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6295
             _id6306_
             _eid6307_
             _rebind?6309_
             _phi6311_
             _ctx6313_))))
      (define gx#core-bind-extern!__1
        (lambda (_id6315_ _eid6316_ _rebind?6317_)
          (let* ((_phi6319_ (gx#current-expander-phi))
                 (_ctx6321_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6295
             _id6315_
             _eid6316_
             _rebind?6317_
             _phi6319_
             _ctx6321_))))
      (define gx#core-bind-extern!__2
        (lambda (_id6323_ _eid6324_ _rebind?6325_ _phi6326_)
          (let ((_ctx6328_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6295
             _id6323_
             _eid6324_
             _rebind?6325_
             _phi6326_
             _ctx6328_))))
      (define gx#core-bind-extern!
        (lambda _g9143_
          (let ((_g9142_ (length _g9143_)))
            (cond ((fx= _g9142_ 2) (apply gx#core-bind-extern!__0 _g9143_))
                  ((fx= _g9142_ 3) (apply gx#core-bind-extern!__1 _g9143_))
                  ((fx= _g9142_ 4) (apply gx#core-bind-extern!__2 _g9143_))
                  ((fx= _g9142_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6295 _g9143_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9143_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6249
      (lambda (_id6251_ _e6252_ _rebind?6253_ _phi6254_ _ctx6255_)
        (gx#bind-identifier!__opt-lambda4744
         _id6251_
         (let ((_key6260_ (gx#core-identifier-key _id6251_))
               (_e6261_ (if (let ((_$e6257_
                                   (##structure-instance-of?
                                    _e6252_
                                    'gx#expander::t)))
                              (if _$e6257_
                                  _$e6257_
                                  (##structure-instance-of?
                                   _e6252_
                                   'gx#expander-context::t)))
                            _e6252_
                            (##structure
                             gx#user-expander::t
                             _e6252_
                             _ctx6255_
                             _phi6254_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6147
             _key6260_
             '#t
             _phi6254_
             _ctx6255_)
            _key6260_
            _phi6254_
            _e6261_))
         _rebind?6253_
         _phi6254_
         _ctx6255_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6266_ _e6267_)
          (let* ((_rebind?6269_ '#f)
                 (_phi6271_ (gx#current-expander-phi))
                 (_ctx6273_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6249
             _id6266_
             _e6267_
             _rebind?6269_
             _phi6271_
             _ctx6273_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6275_ _e6276_ _rebind?6277_)
          (let* ((_phi6279_ (gx#current-expander-phi))
                 (_ctx6281_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6249
             _id6275_
             _e6276_
             _rebind?6277_
             _phi6279_
             _ctx6281_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6283_ _e6284_ _rebind?6285_ _phi6286_)
          (let ((_ctx6288_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6249
             _id6283_
             _e6284_
             _rebind?6285_
             _phi6286_
             _ctx6288_))))
      (define gx#core-bind-syntax!
        (lambda _g9145_
          (let ((_g9144_ (length _g9145_)))
            (cond ((fx= _g9144_ 2) (apply gx#core-bind-syntax!__0 _g9145_))
                  ((fx= _g9144_ 3) (apply gx#core-bind-syntax!__1 _g9145_))
                  ((fx= _g9144_ 4) (apply gx#core-bind-syntax!__2 _g9145_))
                  ((fx= _g9144_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6249 _g9145_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9145_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6232
      (lambda (_id6234_ _e6235_ _rebind?6236_)
        (gx#core-bind-syntax!__opt-lambda6249
         _id6234_
         _e6235_
         _rebind?6236_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6241_ _e6242_)
          (let ((_rebind?6244_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6232
             _id6241_
             _e6242_
             _rebind?6244_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9147_
          (let ((_g9146_ (length _g9147_)))
            (cond ((fx= _g9146_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9147_))
                  ((fx= _g9146_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6232 _g9147_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9147_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6190
      (lambda (_id6192_ _alias-id6193_ _rebind?6194_ _phi6195_ _ctx6196_)
        (gx#bind-identifier!__opt-lambda4744
         _id6192_
         (let ((_key6198_ (gx#core-identifier-key _id6192_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6147
             _key6198_
             '#t
             _phi6195_
             _ctx6196_)
            _key6198_
            _phi6195_
            _alias-id6193_))
         _rebind?6194_
         _phi6195_
         _ctx6196_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6203_ _alias-id6204_)
          (let* ((_rebind?6206_ '#f)
                 (_phi6208_ (gx#current-expander-phi))
                 (_ctx6210_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6190
             _id6203_
             _alias-id6204_
             _rebind?6206_
             _phi6208_
             _ctx6210_))))
      (define gx#core-bind-alias!__1
        (lambda (_id6212_ _alias-id6213_ _rebind?6214_)
          (let* ((_phi6216_ (gx#current-expander-phi))
                 (_ctx6218_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6190
             _id6212_
             _alias-id6213_
             _rebind?6214_
             _phi6216_
             _ctx6218_))))
      (define gx#core-bind-alias!__2
        (lambda (_id6220_ _alias-id6221_ _rebind?6222_ _phi6223_)
          (let ((_ctx6225_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6190
             _id6220_
             _alias-id6221_
             _rebind?6222_
             _phi6223_
             _ctx6225_))))
      (define gx#core-bind-alias!
        (lambda _g9149_
          (let ((_g9148_ (length _g9149_)))
            (cond ((fx= _g9148_ 2) (apply gx#core-bind-alias!__0 _g9149_))
                  ((fx= _g9148_ 3) (apply gx#core-bind-alias!__1 _g9149_))
                  ((fx= _g9148_ 4) (apply gx#core-bind-alias!__2 _g9149_))
                  ((fx= _g9148_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6190 _g9149_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9149_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6147
      (lambda (_key6149_ _syntax?6150_ _phi6151_ _ctx6152_)
        (if (uninterned-symbol? _key6149_)
            (gensym 'L)
            (if (pair? _key6149_)
                (gensym (car _key6149_))
                (if (##structure-instance-of? _ctx6152_ 'gx#top-context::t)
                    (let ((_ns6154_
                           (gx#core-context-namespace__opt-lambda4280
                            _ctx6152_)))
                      (if (if (fxzero? _phi6151_) (not _syntax?6150_) '#f)
                          (if _ns6154_
                              (make-symbol _ns6154_ '"#" _key6149_)
                              _key6149_)
                          (if _syntax?6150_
                              (make-symbol
                               (let ((_$e6156_ _ns6154_))
                                 (if _$e6156_ _$e6156_ '""))
                               '"[:"
                               (number->string _phi6151_)
                               '":]#"
                               _key6149_)
                              (make-symbol
                               (let ((_$e6159_ _ns6154_))
                                 (if _$e6159_ _$e6159_ '""))
                               '"["
                               (number->string _phi6151_)
                               '"]#"
                               _key6149_))))
                    (gensym _key6149_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6165_)
          (let* ((_syntax?6167_ '#f)
                 (_phi6169_ (gx#current-expander-phi))
                 (_ctx6171_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6147
             _key6165_
             _syntax?6167_
             _phi6169_
             _ctx6171_))))
      (define gx#make-binding-id__1
        (lambda (_key6173_ _syntax?6174_)
          (let* ((_phi6176_ (gx#current-expander-phi))
                 (_ctx6178_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6147
             _key6173_
             _syntax?6174_
             _phi6176_
             _ctx6178_))))
      (define gx#make-binding-id__2
        (lambda (_key6180_ _syntax?6181_ _phi6182_)
          (let ((_ctx6184_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6147
             _key6180_
             _syntax?6181_
             _phi6182_
             _ctx6184_))))
      (define gx#make-binding-id
        (lambda _g9151_
          (let ((_g9150_ (length _g9151_)))
            (cond ((fx= _g9150_ 1) (apply gx#make-binding-id__0 _g9151_))
                  ((fx= _g9150_ 2) (apply gx#make-binding-id__1 _g9151_))
                  ((fx= _g9150_ 3) (apply gx#make-binding-id__2 _g9151_))
                  ((fx= _g9150_ 4)
                   (apply gx#make-binding-id__opt-lambda6147 _g9151_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9151_)))))))))
