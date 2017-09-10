(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9082_)
      (letrec ((_expand-special9084_
                (lambda (_hd9086_ _K9087_ _rest9088_ _r9089_)
                  (_K9087_ _rest9088_
                           (cons (gx#core-expand-top _hd9086_) _r9089_)))))
        (gx#core-expand-block__0 _stx9082_ _expand-special9084_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8835_)
      (letrec ((_expand-special8837_
                (lambda (_hd8957_ _K8958_ _rest8959_ _r8960_)
                  (let* ((_K8964_ (lambda (_e8962_)
                                    (_K8958_ _rest8959_
                                             (cons _e8962_ _r8960_))))
                         (_e89658994_ _hd8957_)
                         (_E89898998_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89658994_)))
                         (_E89859010_
                          (lambda ()
                            (if (gx#stx-pair? _e89658994_)
                                (let ((_e89909002_ (gx#syntax-e _e89658994_)))
                                  (let ((_hd89919005_ (##car _e89909002_))
                                        (_tl89929007_ (##cdr _e89909002_)))
                                    (if (if (gx#identifier? _hd89919005_)
                                            (gx#core-identifier=?
                                             _hd89919005_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K8964_ (gx#core-expand-define-runtime%
                                                      _hd8957_))
                                            (_E89898998_))
                                        (_E89898998_))))
                                (_E89898998_))))
                         (_E89819022_
                          (lambda ()
                            (if (gx#stx-pair? _e89658994_)
                                (let ((_e89869014_ (gx#syntax-e _e89658994_)))
                                  (let ((_hd89879017_ (##car _e89869014_))
                                        (_tl89889019_ (##cdr _e89869014_)))
                                    (if (if (gx#identifier? _hd89879017_)
                                            (gx#core-identifier=?
                                             _hd89879017_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K8964_ (gx#core-expand-define-alias%
                                                      _hd8957_))
                                            (_E89859010_))
                                        (_E89859010_))))
                                (_E89859010_))))
                         (_E89719034_
                          (lambda ()
                            (if (gx#stx-pair? _e89658994_)
                                (let ((_e89829026_ (gx#syntax-e _e89658994_)))
                                  (let ((_hd89839029_ (##car _e89829026_))
                                        (_tl89849031_ (##cdr _e89829026_)))
                                    (if (if (gx#identifier? _hd89839029_)
                                            (gx#core-identifier=?
                                             _hd89839029_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8964_ (gx#core-expand-define-syntax%
                                                      _hd8957_))
                                            (_E89819022_))
                                        (_E89819022_))))
                                (_E89819022_))))
                         (_E89679066_
                          (lambda ()
                            (if (gx#stx-pair? _e89658994_)
                                (let ((_e89729038_ (gx#syntax-e _e89658994_)))
                                  (let ((_hd89739041_ (##car _e89729038_))
                                        (_tl89749043_ (##cdr _e89729038_)))
                                    (if (if (gx#identifier? _hd89739041_)
                                            (gx#core-identifier=?
                                             _hd89739041_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl89749043_)
                                            (let ((_e89759046_
                                                   (gx#syntax-e _tl89749043_)))
                                              (let ((_hd89769049_
                                                     (##car _e89759046_))
                                                    (_tl89779051_
                                                     (##cdr _e89759046_)))
                                                (let ((_hd-bind9054_
                                                       _hd89769049_))
                                                  (if (gx#stx-pair?
                                                       _tl89779051_)
                                                      (let ((_e89789056_
                                                             (gx#syntax-e
                                                              _tl89779051_)))
                                                        (let ((_hd89799059_
                                                               (##car _e89789056_))
                                                              (_tl89809061_
                                                               (##cdr _e89789056_)))
                                                          (let ((_expr9064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd89799059_))
                    (if (gx#stx-null? _tl89809061_)
                        (if (gx#core-bind-values? _hd-bind9054_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9054_)
                              (_K8964_ _hd8957_))
                            (_E89719034_))
                        (_E89719034_)))))
              (_E89719034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E89719034_))
                                        (_E89719034_))))
                                (_E89719034_))))
                         (_E89669078_
                          (lambda ()
                            (if (gx#stx-pair? _e89658994_)
                                (let ((_e89689070_ (gx#syntax-e _e89658994_)))
                                  (let ((_hd89699073_ (##car _e89689070_))
                                        (_tl89709075_ (##cdr _e89689070_)))
                                    (if (if (gx#identifier? _hd89699073_)
                                            (gx#core-identifier=?
                                             _hd89699073_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K8964_ (gx#core-expand-begin-syntax%
                                                      _hd8957_))
                                            (_E89679066_))
                                        (_E89679066_))))
                                (_E89679066_)))))
                    (_E89669078_))))
               (_eval-body8838_
                (lambda (_rbody8846_)
                  (let _lp8848_ ((_rest8850_ _rbody8846_)
                                 (_body8851_ '())
                                 (_ebody8852_ '()))
                    (let* ((_rest88538861_ _rest8850_)
                           (_E88568865_
                            (lambda ()
                              (error '"No clause matching" _rest88538861_)))
                           (_else88558869_
                            (lambda ()
                              (values _body8851_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody8852_)
                                        (gx#stx-source _stx8835_))))))
                           (_K88578945_
                            (lambda (_rest8872_ _hd8873_)
                              (let* ((_e88748891_ _hd8873_)
                                     (_E88868895_
                                      (lambda ()
                                        (_lp8848_
                                         _rest8872_
                                         (cons _hd8873_ _body8851_)
                                         (cons _hd8873_ _ebody8852_))))
                                     (_E88768907_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88748891_)
                                            (let ((_e88878899_
                                                   (gx#syntax-e _e88748891_)))
                                              (let ((_hd88888902_
                                                     (##car _e88878899_))
                                                    (_tl88898904_
                                                     (##cdr _e88878899_)))
                                                (if (if (gx#identifier?
                                                         _hd88888902_)
                                                        (gx#core-identifier=?
                                                         _hd88888902_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp8848_
                                                         _rest8872_
                                                         (cons _hd8873_
                                                               _body8851_)
                                                         _ebody8852_)
                                                        (_E88868895_))
                                                    (_E88868895_))))
                                            (_E88868895_))))
                                     (_E88758941_
                                      (lambda ()
                                        (if (gx#stx-pair? _e88748891_)
                                            (let ((_e88778911_
                                                   (gx#syntax-e _e88748891_)))
                                              (let ((_hd88788914_
                                                     (##car _e88778911_))
                                                    (_tl88798916_
                                                     (##cdr _e88778911_)))
                                                (if (if (gx#identifier?
                                                         _hd88788914_)
                                                        (gx#core-identifier=?
                                                         _hd88788914_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl88798916_)
                                                        (let ((_e88808919_
                                                               (gx#syntax-e
                                                                _tl88798916_)))
                                                          (let ((_hd88818922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88808919_))
                        (_tl88828924_ (##cdr _e88808919_)))
                    (let ((_hd-bind8927_ _hd88818922_))
                      (if (gx#stx-pair? _tl88828924_)
                          (let ((_e88838929_ (gx#syntax-e _tl88828924_)))
                            (let ((_hd88848932_ (##car _e88838929_))
                                  (_tl88858934_ (##cdr _e88838929_)))
                              (let ((_expr8937_ _hd88848932_))
                                (if (gx#stx-null? _tl88858934_)
                                    (if '#t
                                        (let ((_ehd8939_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind8927_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr8937_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd8873_))))
                                          (_lp8848_
                                           _rest8872_
                                           (cons _ehd8939_ _body8851_)
                                           (cons _ehd8939_ _ebody8852_)))
                                        (_E88768907_))
                                    (_E88768907_)))))
                          (_E88768907_)))))
                (_E88768907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88768907_))))
                                            (_E88768907_)))))
                                (_E88758941_)))))
                      (if (##pair? _rest88538861_)
                          (let ((_hd88588948_ (##car _rest88538861_))
                                (_tl88598950_ (##cdr _rest88538861_)))
                            (let* ((_hd8953_ _hd88588948_)
                                   (_rest8955_ _tl88598950_))
                              (_K88578945_ _rest8955_ _hd8953_)))
                          (_else88558869_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody8841_
                   (gx#core-expand-block__1
                    _stx8835_
                    _expand-special8837_
                    '#f))
                  (_g9096_ (_eval-body8838_ _rbody8841_)))
             (begin
               (let ((_g9097_ (values-count _g9096_)))
                 (if (not (fx= _g9097_ 2))
                     (error "Context expects 2 values" _g9097_)))
               (let ((_expanded-body8843_ (values-ref _g9096_ 0))
                     (_value8844_ (values-ref _g9096_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body8843_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value8844_ '())))
                  (gx#stx-source _stx8835_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8805_)
      (let* ((_e88068813_ _stx8805_)
             (_E88088817_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88068813_)))
             (_E88078831_
              (lambda ()
                (if (gx#stx-pair? _e88068813_)
                    (let ((_e88098821_ (gx#syntax-e _e88068813_)))
                      (let ((_hd88108824_ (##car _e88098821_))
                            (_tl88118826_ (##cdr _e88098821_)))
                        (let ((_body8829_ _tl88118826_))
                          (if (gx#stx-list? _body8829_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body8829_)
                               (gx#stx-source _stx8805_))
                              (_E88088817_)))))
                    (_E88088817_)))))
        (_E88078831_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8803_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8803_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8791_)
      (let* ((_e87928795_ _stx8791_)
             (_E87938799_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87928795_))))
        (_E87938799_))))
  (define gx#core-expand-local-block
    (lambda (_stx8515_ _body8516_)
      (letrec ((_expand-special8518_
                (lambda (_hd8786_ _K8787_ _rest8788_ _r8789_)
                  (_K8787_ '()
                           (cons (_expand-internal8519_ _hd8786_ _rest8788_)
                                 _r8789_))))
               (_expand-internal8519_
                (lambda (_hd8782_ _rest8783_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal8521_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd8782_ _rest8783_)
                        (gx#stx-source _stx8515_))
                       _expand-internal-special8520_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj9090 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj9090)
                       __obj9090)))))
               (_expand-internal-special8520_
                (lambda (_hd8677_ _K8678_ _rest8679_ _r8680_)
                  (let* ((_e86818706_ _hd8677_)
                         (_E87018710_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86818706_)))
                         (_E86978722_
                          (lambda ()
                            (if (gx#stx-pair? _e86818706_)
                                (let ((_e87028714_ (gx#syntax-e _e86818706_)))
                                  (let ((_hd87038717_ (##car _e87028714_))
                                        (_tl87048719_ (##cdr _e87028714_)))
                                    (if (if (gx#identifier? _hd87038717_)
                                            (gx#core-identifier=?
                                             _hd87038717_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8678_ _rest8679_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8677_)
                                                           _r8680_))
                                            (_E87018710_))
                                        (_E87018710_))))
                                (_E87018710_))))
                         (_E86938734_
                          (lambda ()
                            (if (gx#stx-pair? _e86818706_)
                                (let ((_e86988726_ (gx#syntax-e _e86818706_)))
                                  (let ((_hd86998729_ (##car _e86988726_))
                                        (_tl87008731_ (##cdr _e86988726_)))
                                    (if (if (gx#identifier? _hd86998729_)
                                            (gx#core-identifier=?
                                             _hd86998729_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd8677_)
                                              (_K8678_ _rest8679_ _r8680_))
                                            (_E86978722_))
                                        (_E86978722_))))
                                (_E86978722_))))
                         (_E86838746_
                          (lambda ()
                            (if (gx#stx-pair? _e86818706_)
                                (let ((_e86948738_ (gx#syntax-e _e86818706_)))
                                  (let ((_hd86958741_ (##car _e86948738_))
                                        (_tl86968743_ (##cdr _e86948738_)))
                                    (if (if (gx#identifier? _hd86958741_)
                                            (gx#core-identifier=?
                                             _hd86958741_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd8677_)
                                              (_K8678_ _rest8679_ _r8680_))
                                            (_E86938734_))
                                        (_E86938734_))))
                                (_E86938734_))))
                         (_E86828778_
                          (lambda ()
                            (if (gx#stx-pair? _e86818706_)
                                (let ((_e86848750_ (gx#syntax-e _e86818706_)))
                                  (let ((_hd86858753_ (##car _e86848750_))
                                        (_tl86868755_ (##cdr _e86848750_)))
                                    (if (if (gx#identifier? _hd86858753_)
                                            (gx#core-identifier=?
                                             _hd86858753_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl86868755_)
                                            (let ((_e86878758_
                                                   (gx#syntax-e _tl86868755_)))
                                              (let ((_hd86888761_
                                                     (##car _e86878758_))
                                                    (_tl86898763_
                                                     (##cdr _e86878758_)))
                                                (let ((_hd-bind8766_
                                                       _hd86888761_))
                                                  (if (gx#stx-pair?
                                                       _tl86898763_)
                                                      (let ((_e86908768_
                                                             (gx#syntax-e
                                                              _tl86898763_)))
                                                        (let ((_hd86918771_
                                                               (##car _e86908768_))
                                                              (_tl86928773_
                                                               (##cdr _e86908768_)))
                                                          (let ((_expr8776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd86918771_))
                    (if (gx#stx-null? _tl86928773_)
                        (if (gx#core-bind-values? _hd-bind8766_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind8766_)
                              (_K8678_ _rest8679_ (cons _hd8677_ _r8680_)))
                            (_E86838746_))
                        (_E86838746_)))))
              (_E86838746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E86838746_))
                                        (_E86838746_))))
                                (_E86838746_)))))
                    (_E86828778_))))
               (_wrap-internal8521_
                (lambda (_rbody8523_)
                  (let _lp8525_ ((_rest8527_ _rbody8523_)
                                 (_decls8528_ '())
                                 (_bind8529_ '())
                                 (_body8530_ '()))
                    (let* ((_e85318538_ _rest8527_)
                           (_E85338587_
                            (lambda ()
                              (let* ((_body8582_
                                      (let* ((_body85418551_ _body8530_)
                                             (_E85458555_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body85418551_)))
                                             (_else85448559_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body8530_)
                                                 (gx#stx-source _stx8515_))))
                                             (_try-match85438575_
                                              (lambda ()
                                                (let ((_K85468565_
                                                       (lambda (_expr8563_)
                                                         _expr8563_)))
                                                  (if (##pair? _body85418551_)
                                                      (let ((_hd85478568_
                                                             (##car _body85418551_))
                                                            (_tl85488570_
                                                             (##cdr _body85418551_)))
                                                        (let ((_expr8573_
                                                               _hd85478568_))
                                                          (if (##null? _tl85488570_)
                                                              (_K85468565_
                                                               _expr8573_)
                                                              (_else85448559_))))
                                                      (_else85448559_)))))
                                             (_K85498579_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx8515_))))
                                        (if (##null? _body85418551_)
                                            (_K85498579_)
                                            (_try-match85438575_))))
                                     (_body8584_
                                      (if (null? _bind8529_)
                                          _body8582_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind8529_
                                                       (cons _body8582_ '())))
                                           (gx#stx-source _stx8515_)))))
                                (if (null? _decls8528_)
                                    _body8584_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls8528_
                                                 (cons _body8584_ '())))
                                     (gx#stx-source _stx8515_))))))
                           (_E85328673_
                            (lambda ()
                              (if (gx#stx-pair? _e85318538_)
                                  (let ((_e85348591_
                                         (gx#syntax-e _e85318538_)))
                                    (let ((_hd85358594_ (##car _e85348591_))
                                          (_tl85368596_ (##cdr _e85348591_)))
                                      (let* ((_hd8599_ _hd85358594_)
                                             (_rest8601_ _tl85368596_))
                                        (if '#t
                                            (let* ((_e86028619_ _hd8599_)
                                                   (_E86148623_
                                                    (lambda ()
                                                      (if (null? _bind8529_)
                                                          (_lp8525_
                                                           _rest8601_
                                                           _decls8528_
                                                           _bind8529_
                                                           (cons _hd8599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body8530_))
                  (_lp8525_
                   _rest8601_
                   _decls8528_
                   (cons (cons '#f (cons _hd8599_ '())) _bind8529_)
                   _body8530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86048637_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86028619_)
                                                          (let ((_e86158627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86028619_)))
                    (let ((_hd86168630_ (##car _e86158627_))
                          (_tl86178632_ (##cdr _e86158627_)))
                      (if (if (gx#identifier? _hd86168630_)
                              (gx#core-identifier=? _hd86168630_ '%#declare)
                              '#f)
                          (let ((_xdecls8635_ _tl86178632_))
                            (if '#t
                                (_lp8525_
                                 _rest8601_
                                 (gx#stx-foldr cons _decls8528_ _xdecls8635_)
                                 _bind8529_
                                 _body8530_)
                                (_E86148623_)))
                          (_E86148623_))))
                  (_E86148623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86038669_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86028619_)
                                                          (let ((_e86058641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86028619_)))
                    (let ((_hd86068644_ (##car _e86058641_))
                          (_tl86078646_ (##cdr _e86058641_)))
                      (if (if (gx#identifier? _hd86068644_)
                              (gx#core-identifier=?
                               _hd86068644_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl86078646_)
                              (let ((_e86088649_ (gx#syntax-e _tl86078646_)))
                                (let ((_hd86098652_ (##car _e86088649_))
                                      (_tl86108654_ (##cdr _e86088649_)))
                                  (let ((_hd-bind8657_ _hd86098652_))
                                    (if (gx#stx-pair? _tl86108654_)
                                        (let ((_e86118659_
                                               (gx#syntax-e _tl86108654_)))
                                          (let ((_hd86128662_
                                                 (##car _e86118659_))
                                                (_tl86138664_
                                                 (##cdr _e86118659_)))
                                            (let ((_expr8667_ _hd86128662_))
                                              (if (gx#stx-null? _tl86138664_)
                                                  (if '#t
                                                      (_lp8525_
                                                       _rest8601_
                                                       _decls8528_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind8657_)
                           (cons (gx#core-expand-expression _expr8667_) '()))
                     _bind8529_)
               _body8530_)
              (_E86048637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86048637_)))))
                                        (_E86048637_)))))
                              (_E86048637_))
                          (_E86048637_))))
                  (_E86048637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86038669_))
                                            (_E85338587_)))))
                                  (_E85338587_)))))
                      (_E85328673_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body8516_)
          (gx#stx-source _stx8515_))
         _expand-special8518_))))
  (define gx#core-expand-declare%
    (lambda (_stx8453_)
      (let* ((_e84548461_ _stx8453_)
             (_E84568465_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84548461_)))
             (_E84558511_
              (lambda ()
                (if (gx#stx-pair? _e84548461_)
                    (let ((_e84578469_ (gx#syntax-e _e84548461_)))
                      (let ((_hd84588472_ (##car _e84578469_))
                            (_tl84598474_ (##cdr _e84578469_)))
                        (let ((_body8477_ _tl84598474_))
                          (if (gx#stx-list? _body8477_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl8479_)
                                   (let* ((_e84808487_ _decl8479_)
                                          (_E84828491_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e84808487_)))
                                          (_E84818507_
                                           (lambda ()
                                             (if (gx#stx-pair? _e84808487_)
                                                 (let ((_e84838495_
                                                        (gx#syntax-e
                                                         _e84808487_)))
                                                   (let ((_hd84848498_
                                                          (##car _e84838495_))
                                                         (_tl84858500_
                                                          (##cdr _e84838495_)))
                                                     (let* ((_head8503_
                                                             _hd84848498_)
                                                            (_args8505_
                                                             _tl84858500_))
                                                       (if (gx#stx-list?
                                                            _args8505_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl8479_)
                                                           (_E84828491_)))))
                                                 (_E84828491_)))))
                                     (_E84818507_)))
                                 _body8477_))
                               (gx#stx-source _stx8453_))
                              (_E84568465_)))))
                    (_E84568465_)))))
        (_E84558511_))))
  (define gx#core-expand-extern%
    (lambda (_stx8337_)
      (let* ((_e83388345_ _stx8337_)
             (_E83408349_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83388345_)))
             (_E83398449_
              (lambda ()
                (if (gx#stx-pair? _e83388345_)
                    (let ((_e83418353_ (gx#syntax-e _e83388345_)))
                      (let ((_hd83428356_ (##car _e83418353_))
                            (_tl83438358_ (##cdr _e83418353_)))
                        (let ((_body8361_ _tl83438358_))
                          (if (gx#stx-list? _body8361_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind8363_)
                                   (let* ((_e83648374_ _bind8363_)
                                          (_E83668378_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e83648374_)))
                                          (_E83658402_
                                           (lambda ()
                                             (if (gx#stx-pair? _e83648374_)
                                                 (let ((_e83678382_
                                                        (gx#syntax-e
                                                         _e83648374_)))
                                                   (let ((_hd83688385_
                                                          (##car _e83678382_))
                                                         (_tl83698387_
                                                          (##cdr _e83678382_)))
                                                     (let ((_id8390_
                                                            _hd83688385_))
                                                       (if (gx#stx-pair?
                                                            _tl83698387_)
                                                           (let ((_e83708392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl83698387_)))
                     (let ((_hd83718395_ (##car _e83708392_))
                           (_tl83728397_ (##cdr _e83708392_)))
                       (let ((_eid8400_ _hd83718395_))
                         (if (gx#stx-null? _tl83728397_)
                             (if (if (gx#identifier? _id8390_)
                                     (gx#identifier? _eid8400_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id8390_
                                  (gx#stx-e _eid8400_))
                                 (_E83668378_))
                             (_E83668378_)))))
                   (_E83668378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E83668378_)))))
                                     (_E83658402_)))
                                 _body8361_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind8406_)
                                     (let* ((_e84078417_ _bind8406_)
                                            (_E84098421_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e84078417_)))
                                            (_E84088445_
                                             (lambda ()
                                               (if (gx#stx-pair? _e84078417_)
                                                   (let ((_e84108425_
                                                          (gx#syntax-e
                                                           _e84078417_)))
                                                     (let ((_hd84118428_
                                                            (##car _e84108425_))
                                                           (_tl84128430_
                                                            (##cdr _e84108425_)))
                                                       (let ((_id8433_
                                                              _hd84118428_))
                                                         (if (gx#stx-pair?
                                                              _tl84128430_)
                                                             (let ((_e84138435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84128430_)))
                       (let ((_hd84148438_ (##car _e84138435_))
                             (_tl84158440_ (##cdr _e84138435_)))
                         (let ((_eid8443_ _hd84148438_))
                           (if (gx#stx-null? _tl84158440_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id8433_)
                                         (cons (gx#stx-e _eid8443_) '()))
                                   (_E84098421_))
                               (_E84098421_)))))
                     (_E84098421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84098421_)))))
                                       (_E84088445_)))
                                   _body8361_))
                                 (gx#stx-source _stx8337_)))
                              (_E83408349_)))))
                    (_E83408349_)))))
        (_E83398449_))))
  (define gx#core-expand-define-values%
    (lambda (_stx8283_)
      (let* ((_e82848297_ _stx8283_)
             (_E82868301_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82848297_)))
             (_E82858333_
              (lambda ()
                (if (gx#stx-pair? _e82848297_)
                    (let ((_e82878305_ (gx#syntax-e _e82848297_)))
                      (let ((_hd82888308_ (##car _e82878305_))
                            (_tl82898310_ (##cdr _e82878305_)))
                        (if (gx#stx-pair? _tl82898310_)
                            (let ((_e82908313_ (gx#syntax-e _tl82898310_)))
                              (let ((_hd82918316_ (##car _e82908313_))
                                    (_tl82928318_ (##cdr _e82908313_)))
                                (let ((_hd8321_ _hd82918316_))
                                  (if (gx#stx-pair? _tl82928318_)
                                      (let ((_e82938323_
                                             (gx#syntax-e _tl82928318_)))
                                        (let ((_hd82948326_
                                               (##car _e82938323_))
                                              (_tl82958328_
                                               (##cdr _e82938323_)))
                                          (let ((_expr8331_ _hd82948326_))
                                            (if (gx#stx-null? _tl82958328_)
                                                (if (gx#core-bind-values?
                                                     _hd8321_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd8321_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd8321_)
                           (cons (gx#core-expand-expression _expr8331_) '())))
               (gx#stx-source _stx8283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82868301_))
                                                (_E82868301_)))))
                                      (_E82868301_)))))
                            (_E82868301_))))
                    (_E82868301_)))))
        (_E82858333_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8229_)
      (let* ((_e82308243_ _stx8229_)
             (_E82328247_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82308243_)))
             (_E82318279_
              (lambda ()
                (if (gx#stx-pair? _e82308243_)
                    (let ((_e82338251_ (gx#syntax-e _e82308243_)))
                      (let ((_hd82348254_ (##car _e82338251_))
                            (_tl82358256_ (##cdr _e82338251_)))
                        (if (gx#stx-pair? _tl82358256_)
                            (let ((_e82368259_ (gx#syntax-e _tl82358256_)))
                              (let ((_hd82378262_ (##car _e82368259_))
                                    (_tl82388264_ (##cdr _e82368259_)))
                                (let ((_id8267_ _hd82378262_))
                                  (if (gx#stx-pair? _tl82388264_)
                                      (let ((_e82398269_
                                             (gx#syntax-e _tl82388264_)))
                                        (let ((_hd82408272_
                                               (##car _e82398269_))
                                              (_tl82418274_
                                               (##cdr _e82398269_)))
                                          (let ((_binding-id8277_
                                                 _hd82408272_))
                                            (if (gx#stx-null? _tl82418274_)
                                                (if (if (gx#identifier?
                                                         _id8267_)
                                                        (gx#identifier?
                                                         _binding-id8277_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id8267_
                                                       (gx#stx-e
                                                        _binding-id8277_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id8267_)
                           (cons (gx#core-quote-syntax__0 _binding-id8277_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82328247_))
                                                (_E82328247_)))))
                                      (_E82328247_)))))
                            (_E82328247_))))
                    (_E82328247_)))))
        (_E82318279_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8172_)
      (let* ((_e81738186_ _stx8172_)
             (_E81758190_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81738186_)))
             (_E81748225_
              (lambda ()
                (if (gx#stx-pair? _e81738186_)
                    (let ((_e81768194_ (gx#syntax-e _e81738186_)))
                      (let ((_hd81778197_ (##car _e81768194_))
                            (_tl81788199_ (##cdr _e81768194_)))
                        (if (gx#stx-pair? _tl81788199_)
                            (let ((_e81798202_ (gx#syntax-e _tl81788199_)))
                              (let ((_hd81808205_ (##car _e81798202_))
                                    (_tl81818207_ (##cdr _e81798202_)))
                                (let ((_id8210_ _hd81808205_))
                                  (if (gx#stx-pair? _tl81818207_)
                                      (let ((_e81828212_
                                             (gx#syntax-e _tl81818207_)))
                                        (let ((_hd81838215_
                                               (##car _e81828212_))
                                              (_tl81848217_
                                               (##cdr _e81828212_)))
                                          (let ((_expr8220_ _hd81838215_))
                                            (if (gx#stx-null? _tl81848217_)
                                                (if (gx#identifier? _id8210_)
                                                    (let ((_g9098_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _expr8220_)))
              (begin
                (let ((_g9099_ (values-count _g9098_)))
                  (if (not (fx= _g9099_ 2))
                      (error "Context expects 2 values" _g9099_)))
                (let ((_e-stx8222_ (values-ref _g9098_ 0))
                      (_e8223_ (values-ref _g9098_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id8210_ _e8223_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id8210_)
                                 (cons _e-stx8222_ '())))
                     (gx#stx-source _stx8172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81758190_))
                                                (_E81758190_)))))
                                      (_E81758190_)))))
                            (_E81758190_))))
                    (_E81758190_)))))
        (_E81748225_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8116_)
      (let* ((_e81178130_ _stx8116_)
             (_E81198134_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81178130_)))
             (_E81188168_
              (lambda ()
                (if (gx#stx-pair? _e81178130_)
                    (let ((_e81208138_ (gx#syntax-e _e81178130_)))
                      (let ((_hd81218141_ (##car _e81208138_))
                            (_tl81228143_ (##cdr _e81208138_)))
                        (if (gx#stx-pair? _tl81228143_)
                            (let ((_e81238146_ (gx#syntax-e _tl81228143_)))
                              (let ((_hd81248149_ (##car _e81238146_))
                                    (_tl81258151_ (##cdr _e81238146_)))
                                (let ((_id8154_ _hd81248149_))
                                  (if (gx#stx-pair? _tl81258151_)
                                      (let ((_e81268156_
                                             (gx#syntax-e _tl81258151_)))
                                        (let ((_hd81278159_
                                               (##car _e81268156_))
                                              (_tl81288161_
                                               (##cdr _e81268156_)))
                                          (let ((_alias-id8164_ _hd81278159_))
                                            (if (gx#stx-null? _tl81288161_)
                                                (if (if (gx#identifier?
                                                         _id8154_)
                                                        (gx#identifier?
                                                         _alias-id8164_)
                                                        '#f)
                                                    (let ((_alias-id8166_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id8164_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id8154_
                                                         _alias-id8166_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id8154_)
                             (cons _alias-id8166_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81198134_))
                                                (_E81198134_)))))
                                      (_E81198134_)))))
                            (_E81198134_))))
                    (_E81198134_)))))
        (_E81188168_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8057
      (lambda (_stx8059_ _wrap?8060_)
        (let* ((_e80618071_ _stx8059_)
               (_E80638075_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e80618071_)))
               (_E80628102_
                (lambda ()
                  (if (gx#stx-pair? _e80618071_)
                      (let ((_e80648079_ (gx#syntax-e _e80618071_)))
                        (let ((_hd80658082_ (##car _e80648079_))
                              (_tl80668084_ (##cdr _e80648079_)))
                          (if (gx#stx-pair? _tl80668084_)
                              (let ((_e80678087_ (gx#syntax-e _tl80668084_)))
                                (let ((_hd80688090_ (##car _e80678087_))
                                      (_tl80698092_ (##cdr _e80678087_)))
                                  (let* ((_hd8095_ _hd80688090_)
                                         (_body8097_ _tl80698092_))
                                    (if (gx#core-bind-values? _hd8095_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd8095_)
                                             (let ((_body8100_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd8095_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8059_
                         _body8097_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?8060_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body8100_)
                                                    (gx#stx-source _stx8059_))
                                                   _body8100_))))
                                         gx#current-expander-context
                                         (let ((__obj9091
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9091)
                                             __obj9091)))
                                        (_E80638075_)))))
                              (_E80638075_))))
                      (_E80638075_)))))
          (_E80628102_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8109_)
          (let ((_wrap?8111_ '#t))
            (gx#core-expand-lambda%__opt-lambda8057 _stx8109_ _wrap?8111_))))
      (define gx#core-expand-lambda%
        (lambda _g9101_
          (let ((_g9100_ (length _g9101_)))
            (cond ((fx= _g9100_ 1) (apply gx#core-expand-lambda%__0 _g9101_))
                  ((fx= _g9100_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8057 _g9101_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9101_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8023_)
      (let* ((_e80248031_ _stx8023_)
             (_E80268035_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80248031_)))
             (_E80258054_
              (lambda ()
                (if (gx#stx-pair? _e80248031_)
                    (let ((_e80278039_ (gx#syntax-e _e80248031_)))
                      (let ((_hd80288042_ (##car _e80278039_))
                            (_tl80298044_ (##cdr _e80278039_)))
                        (let ((_clauses8047_ _tl80298044_))
                          (if (gx#stx-list? _clauses8047_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause8049_)
                                   (gx#core-expand-lambda%__opt-lambda8057
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause8049_)
                                     (let ((_$e8051_
                                            (gx#stx-source _clause8049_)))
                                       (if _$e8051_
                                           _$e8051_
                                           (gx#stx-source _stx8023_))))
                                    '#f))
                                 _clauses8047_))
                               (gx#stx-source _stx8023_))
                              (_E80268035_)))))
                    (_E80268035_)))))
        (_E80258054_))))
  (define gx#core-expand-let-values%
    (lambda (_stx7977_)
      (let* ((_e79787988_ _stx7977_)
             (_E79807992_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e79787988_)))
             (_E79798019_
              (lambda ()
                (if (gx#stx-pair? _e79787988_)
                    (let ((_e79817996_ (gx#syntax-e _e79787988_)))
                      (let ((_hd79827999_ (##car _e79817996_))
                            (_tl79838001_ (##cdr _e79817996_)))
                        (if (gx#stx-pair? _tl79838001_)
                            (let ((_e79848004_ (gx#syntax-e _tl79838001_)))
                              (let ((_hd79858007_ (##car _e79848004_))
                                    (_tl79868009_ (##cdr _e79848004_)))
                                (let* ((_hd8012_ _hd79858007_)
                                       (_body8014_ _tl79868009_))
                                  (if (gx#core-expand-let-bind? _hd8012_)
                                      (let ((_expressions8016_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd8012_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8012_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8012_
                                                           _expressions8016_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7977_
                         _body8014_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7977_))))
                                         gx#current-expander-context
                                         (let ((__obj9092
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9092)
                                             __obj9092))))
                                      (_E79807992_)))))
                            (_E79807992_))))
                    (_E79807992_)))))
        (_E79798019_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7920
      (lambda (_stx7922_ _form7923_)
        (let* ((_e79247934_ _stx7922_)
               (_E79267938_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e79247934_)))
               (_E79257963_
                (lambda ()
                  (if (gx#stx-pair? _e79247934_)
                      (let ((_e79277942_ (gx#syntax-e _e79247934_)))
                        (let ((_hd79287945_ (##car _e79277942_))
                              (_tl79297947_ (##cdr _e79277942_)))
                          (if (gx#stx-pair? _tl79297947_)
                              (let ((_e79307950_ (gx#syntax-e _tl79297947_)))
                                (let ((_hd79317953_ (##car _e79307950_))
                                      (_tl79327955_ (##cdr _e79307950_)))
                                  (let* ((_hd7958_ _hd79317953_)
                                         (_body7960_ _tl79327955_))
                                    (if (gx#core-expand-let-bind? _hd7958_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd7958_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form7923_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd7958_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd7958_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7922_
                         _body7960_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7922_))))
                                         gx#current-expander-context
                                         (let ((__obj9093
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9093)
                                             __obj9093)))
                                        (_E79267938_)))))
                              (_E79267938_))))
                      (_E79267938_)))))
          (_E79257963_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7970_)
          (let ((_form7972_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7920
             _stx7970_
             _form7972_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9103_
          (let ((_g9102_ (length _g9103_)))
            (cond ((fx= _g9102_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9103_))
                  ((fx= _g9102_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7920
                          _g9103_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9103_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7919_)
      (gx#core-expand-letrec-values%__opt-lambda7920
       _stx7919_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7876_)
      (if (gx#stx-list? _stx7876_)
          (gx#stx-andmap
           (lambda (_bind7878_)
             (let* ((_e78797889_ _bind7878_)
                    (_E78817893_ (lambda () '#f))
                    (_E78807915_
                     (lambda ()
                       (if (gx#stx-pair? _e78797889_)
                           (let ((_e78827897_ (gx#syntax-e _e78797889_)))
                             (let ((_hd78837900_ (##car _e78827897_))
                                   (_tl78847902_ (##cdr _e78827897_)))
                               (let ((_hd7905_ _hd78837900_))
                                 (if (gx#stx-pair? _tl78847902_)
                                     (let ((_e78857907_
                                            (gx#syntax-e _tl78847902_)))
                                       (let ((_hd78867910_ (##car _e78857907_))
                                             (_tl78877912_
                                              (##cdr _e78857907_)))
                                         (if (gx#stx-null? _tl78877912_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd7905_)
                                                 (_E78817893_))
                                             (_E78817893_))))
                                     (_E78817893_)))))
                           (_E78817893_)))))
               (_E78807915_)))
           _stx7876_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7835_)
      (let* ((_e78367846_ _bind7835_)
             (_E78387850_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78367846_)))
             (_E78377872_
              (lambda ()
                (if (gx#stx-pair? _e78367846_)
                    (let ((_e78397854_ (gx#syntax-e _e78367846_)))
                      (let ((_hd78407857_ (##car _e78397854_))
                            (_tl78417859_ (##cdr _e78397854_)))
                        (if (gx#stx-pair? _tl78417859_)
                            (let ((_e78427862_ (gx#syntax-e _tl78417859_)))
                              (let ((_hd78437865_ (##car _e78427862_))
                                    (_tl78447867_ (##cdr _e78427862_)))
                                (let ((_expr7870_ _hd78437865_))
                                  (if (gx#stx-null? _tl78447867_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7870_)
                                          (_E78387850_))
                                      (_E78387850_)))))
                            (_E78387850_))))
                    (_E78387850_)))))
        (_E78377872_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7794_)
      (let* ((_e77957805_ _bind7794_)
             (_E77977809_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77957805_)))
             (_E77967831_
              (lambda ()
                (if (gx#stx-pair? _e77957805_)
                    (let ((_e77987813_ (gx#syntax-e _e77957805_)))
                      (let ((_hd77997816_ (##car _e77987813_))
                            (_tl78007818_ (##cdr _e77987813_)))
                        (let ((_hd7821_ _hd77997816_))
                          (if (gx#stx-pair? _tl78007818_)
                              (let ((_e78017823_ (gx#syntax-e _tl78007818_)))
                                (let ((_hd78027826_ (##car _e78017823_))
                                      (_tl78037828_ (##cdr _e78017823_)))
                                  (if (gx#stx-null? _tl78037828_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd7821_)
                                          (_E77977809_))
                                      (_E77977809_))))
                              (_E77977809_)))))
                    (_E77977809_)))))
        (_E77967831_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7752_ _expr7753_)
      (let* ((_e77547764_ _bind7752_)
             (_E77567768_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77547764_)))
             (_E77557790_
              (lambda ()
                (if (gx#stx-pair? _e77547764_)
                    (let ((_e77577772_ (gx#syntax-e _e77547764_)))
                      (let ((_hd77587775_ (##car _e77577772_))
                            (_tl77597777_ (##cdr _e77577772_)))
                        (let ((_hd7780_ _hd77587775_))
                          (if (gx#stx-pair? _tl77597777_)
                              (let ((_e77607782_ (gx#syntax-e _tl77597777_)))
                                (let ((_hd77617785_ (##car _e77607782_))
                                      (_tl77627787_ (##cdr _e77607782_)))
                                  (if (gx#stx-null? _tl77627787_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd7780_)
                                                (cons _expr7753_ '()))
                                          (_E77567768_))
                                      (_E77567768_))))
                              (_E77567768_)))))
                    (_E77567768_)))))
        (_E77557790_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7706_)
      (let* ((_e77077717_ _stx7706_)
             (_E77097721_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77077717_)))
             (_E77087748_
              (lambda ()
                (if (gx#stx-pair? _e77077717_)
                    (let ((_e77107725_ (gx#syntax-e _e77077717_)))
                      (let ((_hd77117728_ (##car _e77107725_))
                            (_tl77127730_ (##cdr _e77107725_)))
                        (if (gx#stx-pair? _tl77127730_)
                            (let ((_e77137733_ (gx#syntax-e _tl77127730_)))
                              (let ((_hd77147736_ (##car _e77137733_))
                                    (_tl77157738_ (##cdr _e77137733_)))
                                (let* ((_hd7741_ _hd77147736_)
                                       (_body7743_ _tl77157738_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7741_)
                                      (let ((_expanders7745_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd7741_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd7741_
                                              _expanders7745_)
                                             (gx#core-expand-local-block
                                              _stx7706_
                                              _body7743_)))
                                         gx#current-expander-context
                                         (let ((__obj9094
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9094)
                                             __obj9094))))
                                      (_E77097721_)))))
                            (_E77097721_))))
                    (_E77097721_)))))
        (_E77087748_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7655_)
      (let* ((_e76567666_ _stx7655_)
             (_E76587670_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e76567666_)))
             (_E76577702_
              (lambda ()
                (if (gx#stx-pair? _e76567666_)
                    (let ((_e76597674_ (gx#syntax-e _e76567666_)))
                      (let ((_hd76607677_ (##car _e76597674_))
                            (_tl76617679_ (##cdr _e76597674_)))
                        (if (gx#stx-pair? _tl76617679_)
                            (let ((_e76627682_ (gx#syntax-e _tl76617679_)))
                              (let ((_hd76637685_ (##car _e76627682_))
                                    (_tl76647687_ (##cdr _e76627682_)))
                                (let* ((_hd7690_ _hd76637685_)
                                       (_body7692_ _tl76647687_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7690_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd7690_
                                            (make-list
                                             (gx#stx-length _hd7690_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g76947697_ _g76957699_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda7512
                                               _g76947697_
                                               _g76957699_
                                               '#t))
                                            _hd7690_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd7690_))
                                           (gx#core-expand-local-block
                                            _stx7655_
                                            _body7692_)))
                                       gx#current-expander-context
                                       (let ((__obj9095
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj9095)
                                           __obj9095)))
                                      (_E76587670_)))))
                            (_E76587670_))))
                    (_E76587670_)))))
        (_E76577702_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7612_)
      (if (gx#stx-list? _stx7612_)
          (gx#stx-andmap
           (lambda (_bind7614_)
             (let* ((_e76157625_ _bind7614_)
                    (_E76177629_ (lambda () '#f))
                    (_E76167651_
                     (lambda ()
                       (if (gx#stx-pair? _e76157625_)
                           (let ((_e76187633_ (gx#syntax-e _e76157625_)))
                             (let ((_hd76197636_ (##car _e76187633_))
                                   (_tl76207638_ (##cdr _e76187633_)))
                               (let ((_hd7641_ _hd76197636_))
                                 (if (gx#stx-pair? _tl76207638_)
                                     (let ((_e76217643_
                                            (gx#syntax-e _tl76207638_)))
                                       (let ((_hd76227646_ (##car _e76217643_))
                                             (_tl76237648_
                                              (##cdr _e76217643_)))
                                         (if (gx#stx-null? _tl76237648_)
                                             (if '#t
                                                 (gx#identifier? _hd7641_)
                                                 (_E76177629_))
                                             (_E76177629_))))
                                     (_E76177629_)))))
                           (_E76177629_)))))
               (_E76167651_)))
           _stx7612_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7569_)
      (let* ((_e75707580_ _bind7569_)
             (_E75727584_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e75707580_)))
             (_E75717608_
              (lambda ()
                (if (gx#stx-pair? _e75707580_)
                    (let ((_e75737588_ (gx#syntax-e _e75707580_)))
                      (let ((_hd75747591_ (##car _e75737588_))
                            (_tl75757593_ (##cdr _e75737588_)))
                        (if (gx#stx-pair? _tl75757593_)
                            (let ((_e75767596_ (gx#syntax-e _tl75757593_)))
                              (let ((_hd75777599_ (##car _e75767596_))
                                    (_tl75787601_ (##cdr _e75767596_)))
                                (let ((_expr7604_ _hd75777599_))
                                  (if (gx#stx-null? _tl75787601_)
                                      (if '#t
                                          (let ((_g9104_ (gx#core-expand-expression+1
                                                          _expr7604_)))
                                            (begin
                                              (let ((_g9105_ (values-count
                                                              _g9104_)))
                                                (if (not (fx= _g9105_ 2))
                                                    (error "Context expects 2 values"
                                                           _g9105_)))
                                              (let ((_e7606_ (values-ref
                                                              _g9104_
                                                              1)))
                                                _e7606_)))
                                          (_E75727584_))
                                      (_E75727584_)))))
                            (_E75727584_))))
                    (_E75727584_)))))
        (_E75717608_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7512
      (lambda (_bind7514_ _e7515_ _rebind?7516_)
        (let* ((_e75177527_ _bind7514_)
               (_E75197531_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e75177527_)))
               (_E75187553_
                (lambda ()
                  (if (gx#stx-pair? _e75177527_)
                      (let ((_e75207535_ (gx#syntax-e _e75177527_)))
                        (let ((_hd75217538_ (##car _e75207535_))
                              (_tl75227540_ (##cdr _e75207535_)))
                          (let ((_id7543_ _hd75217538_))
                            (if (gx#stx-pair? _tl75227540_)
                                (let ((_e75237545_ (gx#syntax-e _tl75227540_)))
                                  (let ((_hd75247548_ (##car _e75237545_))
                                        (_tl75257550_ (##cdr _e75237545_)))
                                    (if (gx#stx-null? _tl75257550_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id7543_
                                             _e7515_
                                             _rebind?7516_)
                                            (_E75197531_))
                                        (_E75197531_))))
                                (_E75197531_)))))
                      (_E75197531_)))))
          (_E75187553_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7560_ _e7561_)
          (let ((_rebind?7563_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7512
             _bind7560_
             _e7561_
             _rebind?7563_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9107_
          (let ((_g9106_ (length _g9107_)))
            (cond ((fx= _g9106_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9107_))
                  ((fx= _g9106_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7512
                          _g9107_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9107_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7472_)
      (let* ((_e74737483_ _stx7472_)
             (_E74757487_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74737483_)))
             (_E74747509_
              (lambda ()
                (if (gx#stx-pair? _e74737483_)
                    (let ((_e74767491_ (gx#syntax-e _e74737483_)))
                      (let ((_hd74777494_ (##car _e74767491_))
                            (_tl74787496_ (##cdr _e74767491_)))
                        (if (gx#stx-pair? _tl74787496_)
                            (let ((_e74797499_ (gx#syntax-e _tl74787496_)))
                              (let ((_hd74807502_ (##car _e74797499_))
                                    (_tl74817504_ (##cdr _e74797499_)))
                                (let ((_expr7507_ _hd74807502_))
                                  (if (gx#stx-null? _tl74817504_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7507_)
                                          (_E74757487_))
                                      (_E74757487_)))))
                            (_E74757487_))))
                    (_E74757487_)))))
        (_E74747509_))))
  (define gx#core-expand-quote%
    (lambda (_stx7431_)
      (let* ((_e74327442_ _stx7431_)
             (_E74347446_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74327442_)))
             (_E74337468_
              (lambda ()
                (if (gx#stx-pair? _e74327442_)
                    (let ((_e74357450_ (gx#syntax-e _e74327442_)))
                      (let ((_hd74367453_ (##car _e74357450_))
                            (_tl74377455_ (##cdr _e74357450_)))
                        (if (gx#stx-pair? _tl74377455_)
                            (let ((_e74387458_ (gx#syntax-e _tl74377455_)))
                              (let ((_hd74397461_ (##car _e74387458_))
                                    (_tl74407463_ (##cdr _e74387458_)))
                                (let ((_e7466_ _hd74397461_))
                                  (if (gx#stx-null? _tl74407463_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e7466_)
                                                       '()))
                                           (gx#stx-source _stx7431_))
                                          (_E74347446_))
                                      (_E74347446_)))))
                            (_E74347446_))))
                    (_E74347446_)))))
        (_E74337468_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7390_)
      (let* ((_e73917401_ _stx7390_)
             (_E73937405_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73917401_)))
             (_E73927427_
              (lambda ()
                (if (gx#stx-pair? _e73917401_)
                    (let ((_e73947409_ (gx#syntax-e _e73917401_)))
                      (let ((_hd73957412_ (##car _e73947409_))
                            (_tl73967414_ (##cdr _e73947409_)))
                        (if (gx#stx-pair? _tl73967414_)
                            (let ((_e73977417_ (gx#syntax-e _tl73967414_)))
                              (let ((_hd73987420_ (##car _e73977417_))
                                    (_tl73997422_ (##cdr _e73977417_)))
                                (let ((_e7425_ _hd73987420_))
                                  (if (gx#stx-null? _tl73997422_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e7425_)
                                                       '()))
                                           (gx#stx-source _stx7390_))
                                          (_E73937405_))
                                      (_E73937405_)))))
                            (_E73937405_))))
                    (_E73937405_)))))
        (_E73927427_))))
  (define gx#core-expand-call%
    (lambda (_stx7347_)
      (let* ((_e73487358_ _stx7347_)
             (_E73507362_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73487358_)))
             (_E73497386_
              (lambda ()
                (if (gx#stx-pair? _e73487358_)
                    (let ((_e73517366_ (gx#syntax-e _e73487358_)))
                      (let ((_hd73527369_ (##car _e73517366_))
                            (_tl73537371_ (##cdr _e73517366_)))
                        (if (gx#stx-pair? _tl73537371_)
                            (let ((_e73547374_ (gx#syntax-e _tl73537371_)))
                              (let ((_hd73557377_ (##car _e73547374_))
                                    (_tl73567379_ (##cdr _e73547374_)))
                                (let* ((_rator7382_ _hd73557377_)
                                       (_args7384_ _tl73567379_))
                                  (if (gx#stx-list? _args7384_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator7382_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args7384_))
                                       (gx#stx-source _stx7347_))
                                      (_E73507362_)))))
                            (_E73507362_))))
                    (_E73507362_)))))
        (_E73497386_))))
  (define gx#core-expand-if%
    (lambda (_stx7280_)
      (let* ((_e72817297_ _stx7280_)
             (_E72837301_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72817297_)))
             (_E72827343_
              (lambda ()
                (if (gx#stx-pair? _e72817297_)
                    (let ((_e72847305_ (gx#syntax-e _e72817297_)))
                      (let ((_hd72857308_ (##car _e72847305_))
                            (_tl72867310_ (##cdr _e72847305_)))
                        (if (gx#stx-pair? _tl72867310_)
                            (let ((_e72877313_ (gx#syntax-e _tl72867310_)))
                              (let ((_hd72887316_ (##car _e72877313_))
                                    (_tl72897318_ (##cdr _e72877313_)))
                                (let ((_test7321_ _hd72887316_))
                                  (if (gx#stx-pair? _tl72897318_)
                                      (let ((_e72907323_
                                             (gx#syntax-e _tl72897318_)))
                                        (let ((_hd72917326_
                                               (##car _e72907323_))
                                              (_tl72927328_
                                               (##cdr _e72907323_)))
                                          (let ((_K7331_ _hd72917326_))
                                            (if (gx#stx-pair? _tl72927328_)
                                                (let ((_e72937333_
                                                       (gx#syntax-e
                                                        _tl72927328_)))
                                                  (let ((_hd72947336_
                                                         (##car _e72937333_))
                                                        (_tl72957338_
                                                         (##cdr _e72937333_)))
                                                    (let ((_E7341_ _hd72947336_))
                                                      (if (gx#stx-null?
                                                           _tl72957338_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test7321_)
                                   (cons (gx#core-expand-expression _K7331_)
                                         (cons (gx#core-expand-expression
                                                _E7341_)
                                               '()))))
                       (gx#stx-source _stx7280_))
                      (_E72837301_))
                  (_E72837301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E72837301_)))))
                                      (_E72837301_)))))
                            (_E72837301_))))
                    (_E72837301_)))))
        (_E72827343_))))
  (define gx#core-expand-ref%
    (lambda (_stx7239_)
      (let* ((_e72407250_ _stx7239_)
             (_E72427254_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72407250_)))
             (_E72417276_
              (lambda ()
                (if (gx#stx-pair? _e72407250_)
                    (let ((_e72437258_ (gx#syntax-e _e72407250_)))
                      (let ((_hd72447261_ (##car _e72437258_))
                            (_tl72457263_ (##cdr _e72437258_)))
                        (if (gx#stx-pair? _tl72457263_)
                            (let ((_e72467266_ (gx#syntax-e _tl72457263_)))
                              (let ((_hd72477269_ (##car _e72467266_))
                                    (_tl72487271_ (##cdr _e72467266_)))
                                (let ((_id7274_ _hd72477269_))
                                  (if (gx#stx-null? _tl72487271_)
                                      (if (gx#core-runtime-ref? _id7274_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id7274_
                                                        _stx7239_)
                                                       '()))
                                           (gx#stx-source _stx7239_))
                                          (_E72427254_))
                                      (_E72427254_)))))
                            (_E72427254_))))
                    (_E72427254_)))))
        (_E72417276_))))
  (define gx#core-expand-setq%
    (lambda (_stx7185_)
      (let* ((_e71867199_ _stx7185_)
             (_E71887203_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e71867199_)))
             (_E71877235_
              (lambda ()
                (if (gx#stx-pair? _e71867199_)
                    (let ((_e71897207_ (gx#syntax-e _e71867199_)))
                      (let ((_hd71907210_ (##car _e71897207_))
                            (_tl71917212_ (##cdr _e71897207_)))
                        (if (gx#stx-pair? _tl71917212_)
                            (let ((_e71927215_ (gx#syntax-e _tl71917212_)))
                              (let ((_hd71937218_ (##car _e71927215_))
                                    (_tl71947220_ (##cdr _e71927215_)))
                                (let ((_id7223_ _hd71937218_))
                                  (if (gx#stx-pair? _tl71947220_)
                                      (let ((_e71957225_
                                             (gx#syntax-e _tl71947220_)))
                                        (let ((_hd71967228_
                                               (##car _e71957225_))
                                              (_tl71977230_
                                               (##cdr _e71957225_)))
                                          (let ((_expr7233_ _hd71967228_))
                                            (if (gx#stx-null? _tl71977230_)
                                                (if (gx#core-runtime-ref?
                                                     _id7223_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7223_
                          _stx7185_)
                         (cons (gx#core-expand-expression _expr7233_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx7185_))
                                                    (_E71887203_))
                                                (_E71887203_)))))
                                      (_E71887203_)))))
                            (_E71887203_))))
                    (_E71887203_)))))
        (_E71877235_))))
  (define gx#macro-expand-extern
    (lambda (_stx7033_)
      (letrec ((_generate7035_
                (lambda (_body7065_)
                  (let _lp7067_ ((_rest7069_ _body7065_)
                                 (_ns7070_ (gx#core-context-namespace__0))
                                 (_r7071_ '()))
                    (let* ((_e70727087_ _rest7069_)
                           (_E70857091_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e70727087_)))
                           (_E70817095_
                            (lambda ()
                              (if (gx#stx-null? _e70727087_)
                                  (if '#t (reverse _r7071_) (_E70857091_))
                                  (_E70857091_))))
                           (_E70747152_
                            (lambda ()
                              (if (gx#stx-pair? _e70727087_)
                                  (let ((_e70827099_
                                         (gx#syntax-e _e70727087_)))
                                    (let ((_hd70837102_ (##car _e70827099_))
                                          (_tl70847104_ (##cdr _e70827099_)))
                                      (let* ((_hd7107_ _hd70837102_)
                                             (_rest7109_ _tl70847104_))
                                        (if '#t
                                            (if (gx#identifier? _hd7107_)
                                                (_lp7067_
                                                 _rest7109_
                                                 _ns7070_
                                                 (cons (cons _hd7107_
                                                             (cons (if _ns7070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd7107_
                                _ns7070_
                                '"#"
                                _hd7107_)
                               _hd7107_)
                           '()))
               _r7071_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e71107120_ _hd7107_)
                                                       (_E71127124_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e71107120_)))
                                                       (_E71117148_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e71107120_)
                                                              (let ((_e71137128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e71107120_)))
                        (let ((_hd71147131_ (##car _e71137128_))
                              (_tl71157133_ (##cdr _e71137128_)))
                          (let ((_id7136_ _hd71147131_))
                            (if (gx#stx-pair? _tl71157133_)
                                (let ((_e71167138_ (gx#syntax-e _tl71157133_)))
                                  (let ((_hd71177141_ (##car _e71167138_))
                                        (_tl71187143_ (##cdr _e71167138_)))
                                    (let ((_eid7146_ _hd71177141_))
                                      (if (gx#stx-null? _tl71187143_)
                                          (if (if (gx#identifier? _id7136_)
                                                  (gx#identifier? _eid7146_)
                                                  '#f)
                                              (_lp7067_
                                               _rest7109_
                                               _ns7070_
                                               (cons (cons _id7136_
                                                           (cons _eid7146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r7071_))
                                              (_E71127124_))
                                          (_E71127124_)))))
                                (_E71127124_)))))
                      (_E71127124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71117148_)))
                                            (_E70817095_)))))
                                  (_E70817095_))))
                           (_E70737181_
                            (lambda ()
                              (if (gx#stx-pair? _e70727087_)
                                  (let ((_e70757156_
                                         (gx#syntax-e _e70727087_)))
                                    (let ((_hd70767159_ (##car _e70757156_))
                                          (_tl70777161_ (##cdr _e70757156_)))
                                      (if (eq? (gx#stx-e _hd70767159_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl70777161_)
                                              (let ((_e70787164_
                                                     (gx#syntax-e
                                                      _tl70777161_)))
                                                (let ((_hd70797167_
                                                       (##car _e70787164_))
                                                      (_tl70807169_
                                                       (##cdr _e70787164_)))
                                                  (let* ((_ns7172_
                                                          _hd70797167_)
                                                         (_rest7174_
                                                          _tl70807169_))
                                                    (if '#t
                                                        (let ((_ns7179_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns7172_)
                           (symbol->string (gx#stx-e _ns7172_))
                           (if (let ((_$e7176_ (gx#stx-string? _ns7172_)))
                                 (if _$e7176_
                                     _$e7176_
                                     (gx#stx-false? _ns7172_)))
                               (gx#stx-e _ns7172_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx7033_
                                _ns7172_)))))
                  (_lp7067_ _rest7174_ _ns7179_ _r7071_))
                (_E70747152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E70747152_))
                                          (_E70747152_))))
                                  (_E70747152_)))))
                      (_E70737181_))))))
        (let* ((_e70367043_ _stx7033_)
               (_E70387047_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e70367043_)))
               (_E70377061_
                (lambda ()
                  (if (gx#stx-pair? _e70367043_)
                      (let ((_e70397051_ (gx#syntax-e _e70367043_)))
                        (let ((_hd70407054_ (##car _e70397051_))
                              (_tl70417056_ (##cdr _e70397051_)))
                          (let ((_body7059_ _tl70417056_))
                            (if (gx#stx-list? _body7059_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate7035_ _body7059_))
                                (_E70387047_)))))
                      (_E70387047_)))))
          (_E70377061_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx6979_)
      (let* ((_e69806993_ _stx6979_)
             (_E69826997_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69806993_)))
             (_E69817029_
              (lambda ()
                (if (gx#stx-pair? _e69806993_)
                    (let ((_e69837001_ (gx#syntax-e _e69806993_)))
                      (let ((_hd69847004_ (##car _e69837001_))
                            (_tl69857006_ (##cdr _e69837001_)))
                        (if (gx#stx-pair? _tl69857006_)
                            (let ((_e69867009_ (gx#syntax-e _tl69857006_)))
                              (let ((_hd69877012_ (##car _e69867009_))
                                    (_tl69887014_ (##cdr _e69867009_)))
                                (let ((_hd7017_ _hd69877012_))
                                  (if (gx#stx-pair? _tl69887014_)
                                      (let ((_e69897019_
                                             (gx#syntax-e _tl69887014_)))
                                        (let ((_hd69907022_
                                               (##car _e69897019_))
                                              (_tl69917024_
                                               (##cdr _e69897019_)))
                                          (let ((_expr7027_ _hd69907022_))
                                            (if (gx#stx-null? _tl69917024_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd7017_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd7017_)
                        (cons _expr7027_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69826997_))
                                                (_E69826997_)))))
                                      (_E69826997_)))))
                            (_E69826997_))))
                    (_E69826997_)))))
        (_E69817029_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6925_)
      (let* ((_e69266939_ _stx6925_)
             (_E69286943_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69266939_)))
             (_E69276975_
              (lambda ()
                (if (gx#stx-pair? _e69266939_)
                    (let ((_e69296947_ (gx#syntax-e _e69266939_)))
                      (let ((_hd69306950_ (##car _e69296947_))
                            (_tl69316952_ (##cdr _e69296947_)))
                        (if (gx#stx-pair? _tl69316952_)
                            (let ((_e69326955_ (gx#syntax-e _tl69316952_)))
                              (let ((_hd69336958_ (##car _e69326955_))
                                    (_tl69346960_ (##cdr _e69326955_)))
                                (let ((_hd6963_ _hd69336958_))
                                  (if (gx#stx-pair? _tl69346960_)
                                      (let ((_e69356965_
                                             (gx#syntax-e _tl69346960_)))
                                        (let ((_hd69366968_
                                               (##car _e69356965_))
                                              (_tl69376970_
                                               (##cdr _e69356965_)))
                                          (let ((_expr6973_ _hd69366968_))
                                            (if (gx#stx-null? _tl69376970_)
                                                (if (gx#identifier? _hd6963_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd6963_
                                                                (cons _expr6973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69286943_))
                                                (_E69286943_)))))
                                      (_E69286943_)))))
                            (_E69286943_))))
                    (_E69286943_)))))
        (_E69276975_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6871_)
      (let* ((_e68726885_ _stx6871_)
             (_E68746889_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68726885_)))
             (_E68736921_
              (lambda ()
                (if (gx#stx-pair? _e68726885_)
                    (let ((_e68756893_ (gx#syntax-e _e68726885_)))
                      (let ((_hd68766896_ (##car _e68756893_))
                            (_tl68776898_ (##cdr _e68756893_)))
                        (if (gx#stx-pair? _tl68776898_)
                            (let ((_e68786901_ (gx#syntax-e _tl68776898_)))
                              (let ((_hd68796904_ (##car _e68786901_))
                                    (_tl68806906_ (##cdr _e68786901_)))
                                (let ((_id6909_ _hd68796904_))
                                  (if (gx#stx-pair? _tl68806906_)
                                      (let ((_e68816911_
                                             (gx#syntax-e _tl68806906_)))
                                        (let ((_hd68826914_
                                               (##car _e68816911_))
                                              (_tl68836916_
                                               (##cdr _e68816911_)))
                                          (let ((_alias-id6919_ _hd68826914_))
                                            (if (gx#stx-null? _tl68836916_)
                                                (if (if (gx#identifier?
                                                         _id6909_)
                                                        (gx#identifier?
                                                         _alias-id6919_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id6909_
                                                                (cons _alias-id6919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E68746889_))
                                                (_E68746889_)))))
                                      (_E68746889_)))))
                            (_E68746889_))))
                    (_E68746889_)))))
        (_E68736921_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6828_)
      (let* ((_e68296839_ _stx6828_)
             (_E68316843_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68296839_)))
             (_E68306867_
              (lambda ()
                (if (gx#stx-pair? _e68296839_)
                    (let ((_e68326847_ (gx#syntax-e _e68296839_)))
                      (let ((_hd68336850_ (##car _e68326847_))
                            (_tl68346852_ (##cdr _e68326847_)))
                        (if (gx#stx-pair? _tl68346852_)
                            (let ((_e68356855_ (gx#syntax-e _tl68346852_)))
                              (let ((_hd68366858_ (##car _e68356855_))
                                    (_tl68376860_ (##cdr _e68356855_)))
                                (let* ((_hd6863_ _hd68366858_)
                                       (_body6865_ _tl68376860_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd6863_)
                                          (if (gx#stx-list? _body6865_)
                                              (not (gx#stx-null? _body6865_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd6863_)
                                       _body6865_)
                                      (_E68316843_)))))
                            (_E68316843_))))
                    (_E68316843_)))))
        (_E68306867_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6764_)
      (letrec ((_generate6766_
                (lambda (_clause6796_)
                  (let* ((_e67976804_ _clause6796_)
                         (_E67996808_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx6764_
                             _clause6796_)))
                         (_E67986824_
                          (lambda ()
                            (if (gx#stx-pair? _e67976804_)
                                (let ((_e68006812_ (gx#syntax-e _e67976804_)))
                                  (let ((_hd68016815_ (##car _e68006812_))
                                        (_tl68026817_ (##cdr _e68006812_)))
                                    (let* ((_hd6820_ _hd68016815_)
                                           (_body6822_ _tl68026817_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd6820_)
                                              (if (gx#stx-list? _body6822_)
                                                  (not (gx#stx-null?
                                                        _body6822_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd6820_)
                                                 _body6822_)
                                           (gx#stx-source _clause6796_))
                                          (_E67996808_)))))
                                (_E67996808_)))))
                    (_E67986824_)))))
        (let* ((_e67676774_ _stx6764_)
               (_E67696778_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e67676774_)))
               (_E67686792_
                (lambda ()
                  (if (gx#stx-pair? _e67676774_)
                      (let ((_e67706782_ (gx#syntax-e _e67676774_)))
                        (let ((_hd67716785_ (##car _e67706782_))
                              (_tl67726787_ (##cdr _e67706782_)))
                          (let ((_clauses6790_ _tl67726787_))
                            (if (gx#stx-list? _clauses6790_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate6766_ _clauses6790_))
                                (_E67696778_)))))
                      (_E67696778_)))))
          (_E67686792_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6663
      (lambda (_stx6665_ _form6666_)
        (letrec ((_generate6668_
                  (lambda (_bind6711_)
                    (let* ((_e67126722_ _bind6711_)
                           (_E67146726_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx6665_
                               _bind6711_)))
                           (_E67136750_
                            (lambda ()
                              (if (gx#stx-pair? _e67126722_)
                                  (let ((_e67156730_
                                         (gx#syntax-e _e67126722_)))
                                    (let ((_hd67166733_ (##car _e67156730_))
                                          (_tl67176735_ (##cdr _e67156730_)))
                                      (let ((_ids6738_ _hd67166733_))
                                        (if (gx#stx-pair? _tl67176735_)
                                            (let ((_e67186740_
                                                   (gx#syntax-e _tl67176735_)))
                                              (let ((_hd67196743_
                                                     (##car _e67186740_))
                                                    (_tl67206745_
                                                     (##cdr _e67186740_)))
                                                (let ((_expr6748_
                                                       _hd67196743_))
                                                  (if (gx#stx-null?
                                                       _tl67206745_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6738_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6738_)
                        (cons _expr6748_ '()))
                  (_E67146726_))
              (_E67146726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67146726_)))))
                                  (_E67146726_)))))
                      (_E67136750_)))))
          (let* ((_e66696679_ _stx6665_)
                 (_E66716683_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66696679_)))
                 (_E66706707_
                  (lambda ()
                    (if (gx#stx-pair? _e66696679_)
                        (let ((_e66726687_ (gx#syntax-e _e66696679_)))
                          (let ((_hd66736690_ (##car _e66726687_))
                                (_tl66746692_ (##cdr _e66726687_)))
                            (if (gx#stx-pair? _tl66746692_)
                                (let ((_e66756695_ (gx#syntax-e _tl66746692_)))
                                  (let ((_hd66766698_ (##car _e66756695_))
                                        (_tl66776700_ (##cdr _e66756695_)))
                                    (let* ((_hd6703_ _hd66766698_)
                                           (_body6705_ _tl66776700_))
                                      (if (if (gx#stx-list? _hd6703_)
                                              (if (gx#stx-list? _body6705_)
                                                  (not (gx#stx-null?
                                                        _body6705_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form6666_
                                           (gx#stx-map1
                                            _generate6668_
                                            _hd6703_)
                                           _body6705_)
                                          (_E66716683_)))))
                                (_E66716683_))))
                        (_E66716683_)))))
            (_E66706707_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6757_)
          (let ((_form6759_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6663
             _stx6757_
             _form6759_))))
      (define gx#macro-expand-let-values
        (lambda _g9109_
          (let ((_g9108_ (length _g9109_)))
            (cond ((fx= _g9108_ 1)
                   (apply gx#macro-expand-let-values__0 _g9109_))
                  ((fx= _g9108_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6663 _g9109_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9109_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6662_)
      (gx#macro-expand-let-values__opt-lambda6663 _stx6662_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6660_)
      (gx#macro-expand-let-values__opt-lambda6663
       _stx6660_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6551_)
      (let* ((_e65526578_ _stx6551_)
             (_E65646582_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e65526578_)))
             (_E65546624_
              (lambda ()
                (if (gx#stx-pair? _e65526578_)
                    (let ((_e65656586_ (gx#syntax-e _e65526578_)))
                      (let ((_hd65666589_ (##car _e65656586_))
                            (_tl65676591_ (##cdr _e65656586_)))
                        (if (gx#stx-pair? _tl65676591_)
                            (let ((_e65686594_ (gx#syntax-e _tl65676591_)))
                              (let ((_hd65696597_ (##car _e65686594_))
                                    (_tl65706599_ (##cdr _e65686594_)))
                                (let ((_test6602_ _hd65696597_))
                                  (if (gx#stx-pair? _tl65706599_)
                                      (let ((_e65716604_
                                             (gx#syntax-e _tl65706599_)))
                                        (let ((_hd65726607_
                                               (##car _e65716604_))
                                              (_tl65736609_
                                               (##cdr _e65716604_)))
                                          (let ((_K6612_ _hd65726607_))
                                            (if (gx#stx-pair? _tl65736609_)
                                                (let ((_e65746614_
                                                       (gx#syntax-e
                                                        _tl65736609_)))
                                                  (let ((_hd65756617_
                                                         (##car _e65746614_))
                                                        (_tl65766619_
                                                         (##cdr _e65746614_)))
                                                    (let ((_E6622_ _hd65756617_))
                                                      (if (gx#stx-null?
                                                           _tl65766619_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test6602_
                                                               _K6612_
                                                               _E6622_)
                                                              (_E65646582_))
                                                          (_E65646582_)))))
                                                (_E65646582_)))))
                                      (_E65646582_)))))
                            (_E65646582_))))
                    (_E65646582_))))
             (_E65536656_
              (lambda ()
                (if (gx#stx-pair? _e65526578_)
                    (let ((_e65556628_ (gx#syntax-e _e65526578_)))
                      (let ((_hd65566631_ (##car _e65556628_))
                            (_tl65576633_ (##cdr _e65556628_)))
                        (if (gx#stx-pair? _tl65576633_)
                            (let ((_e65586636_ (gx#syntax-e _tl65576633_)))
                              (let ((_hd65596639_ (##car _e65586636_))
                                    (_tl65606641_ (##cdr _e65586636_)))
                                (let ((_test6644_ _hd65596639_))
                                  (if (gx#stx-pair? _tl65606641_)
                                      (let ((_e65616646_
                                             (gx#syntax-e _tl65606641_)))
                                        (let ((_hd65626649_
                                               (##car _e65616646_))
                                              (_tl65636651_
                                               (##cdr _e65616646_)))
                                          (let ((_K6654_ _hd65626649_))
                                            (if (gx#stx-null? _tl65636651_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test6644_
                                                     _K6654_
                                                     '#!void)
                                                    (_E65546624_))
                                                (_E65546624_)))))
                                      (_E65546624_)))))
                            (_E65546624_))))
                    (_E65546624_)))))
        (_E65536656_))))
  (define gx#free-identifier=?
    (lambda (_xid6539_ _yid6540_)
      (let ((_xe6542_ (gx#resolve-identifier__0 _xid6539_))
            (_ye6543_ (gx#resolve-identifier__0 _yid6540_)))
        (if (if _xe6542_ _ye6543_ '#f)
            (let ((_$e6545_ (eq? _xe6542_ _ye6543_)))
              (if _$e6545_
                  _$e6545_
                  (if (##structure-instance-of? _xe6542_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6543_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6542_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6543_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6548_ _xe6542_)) (if _$e6548_ _$e6548_ _ye6543_))
                '#f
                (gx#stx-eq? _xid6539_ _yid6540_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6523_ _yid6524_)
      (letrec ((_context6526_
                (lambda (_e6537_)
                  (if (##structure-direct-instance-of?
                       _e6537_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e6537_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks6527_
                (lambda (_e6535_)
                  (if (symbol? _e6535_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e6535_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e6535_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e6535_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap6528_
                (lambda (_e6533_)
                  (if (symbol? _e6533_)
                      _e6533_
                      (gx#syntax-local-unwrap _e6533_)))))
        (let ((_x6530_ (_unwrap6528_ _xid6523_))
              (_y6531_ (_unwrap6528_ _yid6524_)))
          (if (gx#stx-eq? _x6530_ _y6531_)
              (if (eq? (_context6526_ _x6530_) (_context6526_ _y6531_))
                  (andmap eq? (_marks6527_ _x6530_) (_marks6527_ _y6531_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx6521_)
      (if (gx#identifier? _stx6521_) (gx#core-identifier=? _stx6521_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6519_)
      (if (gx#identifier? _stx6519_)
          (gx#core-identifier=? _stx6519_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6517_)
      (if (gx#identifier? _x6517_)
          (if (not (gx#underscore? _x6517_)) _x6517_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6461
      (lambda (_stx6463_ _where6464_)
        (let _lp6466_ ((_rest6468_ (gx#syntax->list _stx6463_)))
          (let* ((_rest64696477_ _rest6468_)
                 (_E64726481_
                  (lambda () (error '"No clause matching" _rest64696477_)))
                 (_else64716485_ (lambda () '#t))
                 (_K64736495_
                  (lambda (_rest6488_ _hd6489_)
                    (if (not (gx#identifier? _hd6489_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where6464_
                         _hd6489_)
                        (if (find (lambda (_g64906492_)
                                    (gx#bound-identifier=?
                                     _g64906492_
                                     _hd6489_))
                                  _rest6488_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where6464_
                             _hd6489_)
                            (_lp6466_ _rest6488_))))))
            (if (##pair? _rest64696477_)
                (let ((_hd64746498_ (##car _rest64696477_))
                      (_tl64756500_ (##cdr _rest64696477_)))
                  (let* ((_hd6503_ _hd64746498_) (_rest6505_ _tl64756500_))
                    (_K64736495_ _rest6505_ _hd6503_)))
                (_else64716485_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6510_)
          (let ((_where6512_ _stx6510_))
            (gx#check-duplicate-identifiers__opt-lambda6461
             _stx6510_
             _where6512_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9111_
          (let ((_g9110_ (length _g9111_)))
            (cond ((fx= _g9110_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9111_))
                  ((fx= _g9110_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6461
                          _g9111_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9111_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6455_)
      (gx#stx-andmap
       (lambda (_x6457_)
         (let ((_$e6459_ (gx#identifier? _x6457_)))
           (if _$e6459_ _$e6459_ (gx#stx-false? _x6457_))))
       _stx6455_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6417
      (lambda (_stx6419_ _rebind?6420_ _phi6421_ _ctx6422_)
        (gx#stx-for-each1
         (lambda (_id6424_)
           (if (gx#identifier? _id6424_)
               (gx#core-bind-runtime!__opt-lambda6356
                _id6424_
                _rebind?6420_
                _phi6421_
                _ctx6422_)
               '#!void))
         _stx6419_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6429_)
          (let* ((_rebind?6431_ '#f)
                 (_phi6433_ (gx#current-expander-phi))
                 (_ctx6435_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6417
             _stx6429_
             _rebind?6431_
             _phi6433_
             _ctx6435_))))
      (define gx#core-bind-values!__1
        (lambda (_stx6437_ _rebind?6438_)
          (let* ((_phi6440_ (gx#current-expander-phi))
                 (_ctx6442_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6417
             _stx6437_
             _rebind?6438_
             _phi6440_
             _ctx6442_))))
      (define gx#core-bind-values!__2
        (lambda (_stx6444_ _rebind?6445_ _phi6446_)
          (let ((_ctx6448_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6417
             _stx6444_
             _rebind?6445_
             _phi6446_
             _ctx6448_))))
      (define gx#core-bind-values!
        (lambda _g9113_
          (let ((_g9112_ (length _g9113_)))
            (cond ((fx= _g9112_ 1) (apply gx#core-bind-values!__0 _g9113_))
                  ((fx= _g9112_ 2) (apply gx#core-bind-values!__1 _g9113_))
                  ((fx= _g9112_ 3) (apply gx#core-bind-values!__2 _g9113_))
                  ((fx= _g9112_ 4)
                   (apply gx#core-bind-values!__opt-lambda6417 _g9113_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9113_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6414_)
      (gx#stx-map1
       (lambda (_x6416_)
         (if (gx#identifier? _x6416_) (gx#core-quote-syntax__0 _x6416_) '#f))
       _stx6414_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6407_)
      (if (gx#identifier? _stx6407_)
          (let* ((_bind6409_ (gx#resolve-identifier__0 _stx6407_))
                 (_$e6411_ (not _bind6409_)))
            (if _$e6411_
                _$e6411_
                (##structure-instance-of? _bind6409_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6399_ _form6400_)
      (let ((_bind6402_ (gx#resolve-identifier__0 _id6399_)))
        (if (##structure-instance-of? _bind6402_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6399_)
            (if (not _bind6402_)
                (if (let ((_$e6404_
                           (gx#core-context-rebind?__opt-lambda4273
                            (gx#core-context-top__0))))
                      (if _$e6404_
                          _$e6404_
                          (gx#core-extern-symbol? (gx#stx-e _id6399_))))
                    (gx#core-quote-syntax__0 _id6399_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6400_
                     _id6399_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6400_
                 _id6399_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6356
      (lambda (_id6358_ _rebind?6359_ _phi6360_ _ctx6361_)
        (let* ((_key6363_ (gx#core-identifier-key _id6358_))
               (_eid6365_
                (gx#make-binding-id__opt-lambda6123
                 _key6363_
                 '#f
                 _phi6360_
                 _ctx6361_))
               (_bind6367_
                (if (##structure-instance-of? _ctx6361_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6365_
                     _key6363_
                     _phi6360_
                     _ctx6361_)
                    (if (##structure-instance-of? _ctx6361_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6365_
                         _key6363_
                         _phi6360_)
                        (if (##structure-instance-of?
                             _ctx6361_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid6365_
                             _key6363_
                             _phi6360_)
                            (##structure
                             gx#runtime-binding::t
                             _eid6365_
                             _key6363_
                             _phi6360_))))))
          (gx#bind-identifier!__opt-lambda4720
           _id6358_
           _bind6367_
           _rebind?6359_
           _phi6360_
           _ctx6361_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6373_)
          (let* ((_rebind?6375_ '#f)
                 (_phi6377_ (gx#current-expander-phi))
                 (_ctx6379_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6356
             _id6373_
             _rebind?6375_
             _phi6377_
             _ctx6379_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6381_ _rebind?6382_)
          (let* ((_phi6384_ (gx#current-expander-phi))
                 (_ctx6386_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6356
             _id6381_
             _rebind?6382_
             _phi6384_
             _ctx6386_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6388_ _rebind?6389_ _phi6390_)
          (let ((_ctx6392_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6356
             _id6388_
             _rebind?6389_
             _phi6390_
             _ctx6392_))))
      (define gx#core-bind-runtime!
        (lambda _g9115_
          (let ((_g9114_ (length _g9115_)))
            (cond ((fx= _g9114_ 1) (apply gx#core-bind-runtime!__0 _g9115_))
                  ((fx= _g9114_ 2) (apply gx#core-bind-runtime!__1 _g9115_))
                  ((fx= _g9114_ 3) (apply gx#core-bind-runtime!__2 _g9115_))
                  ((fx= _g9114_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6356 _g9115_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9115_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6311
      (lambda (_id6313_ _eid6314_ _rebind?6315_ _phi6316_ _ctx6317_)
        (let* ((_key6319_ (gx#core-identifier-key _id6313_))
               (_bind6321_
                (if (##structure-instance-of? _ctx6317_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6314_
                     _key6319_
                     _phi6316_
                     _ctx6317_)
                    (if (##structure-instance-of? _ctx6317_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6314_
                         _key6319_
                         _phi6316_)
                        (##structure
                         gx#runtime-binding::t
                         _eid6314_
                         _key6319_
                         _phi6316_)))))
          (gx#bind-identifier!__opt-lambda4720
           _id6313_
           _bind6321_
           _rebind?6315_
           _phi6316_
           _ctx6317_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6327_ _eid6328_)
          (let* ((_rebind?6330_ '#f)
                 (_phi6332_ (gx#current-expander-phi))
                 (_ctx6334_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6311
             _id6327_
             _eid6328_
             _rebind?6330_
             _phi6332_
             _ctx6334_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6336_ _eid6337_ _rebind?6338_)
          (let* ((_phi6340_ (gx#current-expander-phi))
                 (_ctx6342_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6311
             _id6336_
             _eid6337_
             _rebind?6338_
             _phi6340_
             _ctx6342_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6344_ _eid6345_ _rebind?6346_ _phi6347_)
          (let ((_ctx6349_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6311
             _id6344_
             _eid6345_
             _rebind?6346_
             _phi6347_
             _ctx6349_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9117_
          (let ((_g9116_ (length _g9117_)))
            (cond ((fx= _g9116_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9117_))
                  ((fx= _g9116_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9117_))
                  ((fx= _g9116_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9117_))
                  ((fx= _g9116_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6311
                          _g9117_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9117_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6271
      (lambda (_id6273_ _eid6274_ _rebind?6275_ _phi6276_ _ctx6277_)
        (gx#bind-identifier!__opt-lambda4720
         _id6273_
         (##structure
          gx#extern-binding::t
          _eid6274_
          (gx#core-identifier-key _id6273_)
          _phi6276_)
         _rebind?6275_
         _phi6276_
         _ctx6277_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6282_ _eid6283_)
          (let* ((_rebind?6285_ '#f)
                 (_phi6287_ (gx#current-expander-phi))
                 (_ctx6289_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6271
             _id6282_
             _eid6283_
             _rebind?6285_
             _phi6287_
             _ctx6289_))))
      (define gx#core-bind-extern!__1
        (lambda (_id6291_ _eid6292_ _rebind?6293_)
          (let* ((_phi6295_ (gx#current-expander-phi))
                 (_ctx6297_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6271
             _id6291_
             _eid6292_
             _rebind?6293_
             _phi6295_
             _ctx6297_))))
      (define gx#core-bind-extern!__2
        (lambda (_id6299_ _eid6300_ _rebind?6301_ _phi6302_)
          (let ((_ctx6304_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6271
             _id6299_
             _eid6300_
             _rebind?6301_
             _phi6302_
             _ctx6304_))))
      (define gx#core-bind-extern!
        (lambda _g9119_
          (let ((_g9118_ (length _g9119_)))
            (cond ((fx= _g9118_ 2) (apply gx#core-bind-extern!__0 _g9119_))
                  ((fx= _g9118_ 3) (apply gx#core-bind-extern!__1 _g9119_))
                  ((fx= _g9118_ 4) (apply gx#core-bind-extern!__2 _g9119_))
                  ((fx= _g9118_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6271 _g9119_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9119_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6225
      (lambda (_id6227_ _e6228_ _rebind?6229_ _phi6230_ _ctx6231_)
        (gx#bind-identifier!__opt-lambda4720
         _id6227_
         (let ((_key6236_ (gx#core-identifier-key _id6227_))
               (_e6237_ (if (let ((_$e6233_
                                   (##structure-instance-of?
                                    _e6228_
                                    'gx#expander::t)))
                              (if _$e6233_
                                  _$e6233_
                                  (##structure-instance-of?
                                   _e6228_
                                   'gx#expander-context::t)))
                            _e6228_
                            (##structure
                             gx#user-expander::t
                             _e6228_
                             _ctx6231_
                             _phi6230_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6123
             _key6236_
             '#t
             _phi6230_
             _ctx6231_)
            _key6236_
            _phi6230_
            _e6237_))
         _rebind?6229_
         _phi6230_
         _ctx6231_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6242_ _e6243_)
          (let* ((_rebind?6245_ '#f)
                 (_phi6247_ (gx#current-expander-phi))
                 (_ctx6249_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6225
             _id6242_
             _e6243_
             _rebind?6245_
             _phi6247_
             _ctx6249_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6251_ _e6252_ _rebind?6253_)
          (let* ((_phi6255_ (gx#current-expander-phi))
                 (_ctx6257_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6225
             _id6251_
             _e6252_
             _rebind?6253_
             _phi6255_
             _ctx6257_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6259_ _e6260_ _rebind?6261_ _phi6262_)
          (let ((_ctx6264_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6225
             _id6259_
             _e6260_
             _rebind?6261_
             _phi6262_
             _ctx6264_))))
      (define gx#core-bind-syntax!
        (lambda _g9121_
          (let ((_g9120_ (length _g9121_)))
            (cond ((fx= _g9120_ 2) (apply gx#core-bind-syntax!__0 _g9121_))
                  ((fx= _g9120_ 3) (apply gx#core-bind-syntax!__1 _g9121_))
                  ((fx= _g9120_ 4) (apply gx#core-bind-syntax!__2 _g9121_))
                  ((fx= _g9120_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6225 _g9121_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9121_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6208
      (lambda (_id6210_ _e6211_ _rebind?6212_)
        (gx#core-bind-syntax!__opt-lambda6225
         _id6210_
         _e6211_
         _rebind?6212_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6217_ _e6218_)
          (let ((_rebind?6220_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6208
             _id6217_
             _e6218_
             _rebind?6220_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9123_
          (let ((_g9122_ (length _g9123_)))
            (cond ((fx= _g9122_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9123_))
                  ((fx= _g9122_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6208 _g9123_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9123_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6166
      (lambda (_id6168_ _alias-id6169_ _rebind?6170_ _phi6171_ _ctx6172_)
        (gx#bind-identifier!__opt-lambda4720
         _id6168_
         (let ((_key6174_ (gx#core-identifier-key _id6168_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6123
             _key6174_
             '#t
             _phi6171_
             _ctx6172_)
            _key6174_
            _phi6171_
            _alias-id6169_))
         _rebind?6170_
         _phi6171_
         _ctx6172_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6179_ _alias-id6180_)
          (let* ((_rebind?6182_ '#f)
                 (_phi6184_ (gx#current-expander-phi))
                 (_ctx6186_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6166
             _id6179_
             _alias-id6180_
             _rebind?6182_
             _phi6184_
             _ctx6186_))))
      (define gx#core-bind-alias!__1
        (lambda (_id6188_ _alias-id6189_ _rebind?6190_)
          (let* ((_phi6192_ (gx#current-expander-phi))
                 (_ctx6194_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6166
             _id6188_
             _alias-id6189_
             _rebind?6190_
             _phi6192_
             _ctx6194_))))
      (define gx#core-bind-alias!__2
        (lambda (_id6196_ _alias-id6197_ _rebind?6198_ _phi6199_)
          (let ((_ctx6201_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6166
             _id6196_
             _alias-id6197_
             _rebind?6198_
             _phi6199_
             _ctx6201_))))
      (define gx#core-bind-alias!
        (lambda _g9125_
          (let ((_g9124_ (length _g9125_)))
            (cond ((fx= _g9124_ 2) (apply gx#core-bind-alias!__0 _g9125_))
                  ((fx= _g9124_ 3) (apply gx#core-bind-alias!__1 _g9125_))
                  ((fx= _g9124_ 4) (apply gx#core-bind-alias!__2 _g9125_))
                  ((fx= _g9124_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6166 _g9125_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9125_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6123
      (lambda (_key6125_ _syntax?6126_ _phi6127_ _ctx6128_)
        (if (uninterned-symbol? _key6125_)
            (gensym 'L)
            (if (pair? _key6125_)
                (gensym (car _key6125_))
                (if (##structure-instance-of? _ctx6128_ 'gx#top-context::t)
                    (let ((_ns6130_
                           (gx#core-context-namespace__opt-lambda4256
                            _ctx6128_)))
                      (if (if (fxzero? _phi6127_) (not _syntax?6126_) '#f)
                          (if _ns6130_
                              (make-symbol _ns6130_ '"#" _key6125_)
                              _key6125_)
                          (if _syntax?6126_
                              (make-symbol
                               (let ((_$e6132_ _ns6130_))
                                 (if _$e6132_ _$e6132_ '""))
                               '"[:"
                               (number->string _phi6127_)
                               '":]#"
                               _key6125_)
                              (make-symbol
                               (let ((_$e6135_ _ns6130_))
                                 (if _$e6135_ _$e6135_ '""))
                               '"["
                               (number->string _phi6127_)
                               '"]#"
                               _key6125_))))
                    (gensym _key6125_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6141_)
          (let* ((_syntax?6143_ '#f)
                 (_phi6145_ (gx#current-expander-phi))
                 (_ctx6147_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6123
             _key6141_
             _syntax?6143_
             _phi6145_
             _ctx6147_))))
      (define gx#make-binding-id__1
        (lambda (_key6149_ _syntax?6150_)
          (let* ((_phi6152_ (gx#current-expander-phi))
                 (_ctx6154_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6123
             _key6149_
             _syntax?6150_
             _phi6152_
             _ctx6154_))))
      (define gx#make-binding-id__2
        (lambda (_key6156_ _syntax?6157_ _phi6158_)
          (let ((_ctx6160_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6123
             _key6156_
             _syntax?6157_
             _phi6158_
             _ctx6160_))))
      (define gx#make-binding-id
        (lambda _g9127_
          (let ((_g9126_ (length _g9127_)))
            (cond ((fx= _g9126_ 1) (apply gx#make-binding-id__0 _g9127_))
                  ((fx= _g9126_ 2) (apply gx#make-binding-id__1 _g9127_))
                  ((fx= _g9126_ 3) (apply gx#make-binding-id__2 _g9127_))
                  ((fx= _g9126_ 4)
                   (apply gx#make-binding-id__opt-lambda6123 _g9127_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9127_)))))))))
