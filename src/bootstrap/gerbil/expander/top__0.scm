(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707846530)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx155715_)
        (letrec ((_expand-special155717_
                  (lambda (_hd155719_ _K155720_ _rest155721_ _r155722_)
                    (_K155720_
                     _rest155721_
                     (cons (gx#core-expand-top _hd155719_) _r155722_)))))
          (gx#core-expand-block__0 _stx155715_ _expand-special155717_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx155468_)
        (letrec ((_expand-special155470_
                  (lambda (_hd155590_ _K155591_ _rest155592_ _r155593_)
                    (let* ((_K155597_
                            (lambda (_e155595_)
                              (_K155591_
                               _rest155592_
                               (cons _e155595_ _r155593_))))
                           (_e155598155627_ _hd155590_)
                           (_E155622155631_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155598155627_)))
                           (_E155618155643_
                            (lambda ()
                              (if (gx#stx-pair? _e155598155627_)
                                  (let ((_e155623155635_
                                         (gx#syntax-e _e155598155627_)))
                                    (let ((_hd155624155638_
                                           (##car _e155623155635_))
                                          (_tl155625155640_
                                           (##cdr _e155623155635_)))
                                      (if (and (gx#identifier?
                                                _hd155624155638_)
                                               (gx#core-identifier=?
                                                _hd155624155638_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K155597_
                                               (gx#core-expand-define-runtime%
                                                _hd155590_))
                                              (_E155622155631_))
                                          (_E155622155631_))))
                                  (_E155622155631_))))
                           (_E155614155655_
                            (lambda ()
                              (if (gx#stx-pair? _e155598155627_)
                                  (let ((_e155619155647_
                                         (gx#syntax-e _e155598155627_)))
                                    (let ((_hd155620155650_
                                           (##car _e155619155647_))
                                          (_tl155621155652_
                                           (##cdr _e155619155647_)))
                                      (if (and (gx#identifier?
                                                _hd155620155650_)
                                               (gx#core-identifier=?
                                                _hd155620155650_
                                                '%#define-alias))
                                          (if '#t
                                              (_K155597_
                                               (gx#core-expand-define-alias%
                                                _hd155590_))
                                              (_E155618155643_))
                                          (_E155618155643_))))
                                  (_E155618155643_))))
                           (_E155604155667_
                            (lambda ()
                              (if (gx#stx-pair? _e155598155627_)
                                  (let ((_e155615155659_
                                         (gx#syntax-e _e155598155627_)))
                                    (let ((_hd155616155662_
                                           (##car _e155615155659_))
                                          (_tl155617155664_
                                           (##cdr _e155615155659_)))
                                      (if (and (gx#identifier?
                                                _hd155616155662_)
                                               (gx#core-identifier=?
                                                _hd155616155662_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K155597_
                                               (gx#core-expand-define-syntax%
                                                _hd155590_))
                                              (_E155614155655_))
                                          (_E155614155655_))))
                                  (_E155614155655_))))
                           (_E155600155699_
                            (lambda ()
                              (if (gx#stx-pair? _e155598155627_)
                                  (let ((_e155605155671_
                                         (gx#syntax-e _e155598155627_)))
                                    (let ((_hd155606155674_
                                           (##car _e155605155671_))
                                          (_tl155607155676_
                                           (##cdr _e155605155671_)))
                                      (if (and (gx#identifier?
                                                _hd155606155674_)
                                               (gx#core-identifier=?
                                                _hd155606155674_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155607155676_)
                                              (let ((_e155608155679_
                                                     (gx#syntax-e
                                                      _tl155607155676_)))
                                                (let ((_hd155609155682_
                                                       (##car _e155608155679_))
                                                      (_tl155610155684_
                                                       (##cdr _e155608155679_)))
                                                  (let ((_hd-bind155687_
                                                         _hd155609155682_))
                                                    (if (gx#stx-pair?
                                                         _tl155610155684_)
                                                        (let ((_e155611155689_
                                                               (gx#syntax-e
                                                                _tl155610155684_)))
                                                          (let ((_hd155612155692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155611155689_))
                        (_tl155613155694_ (##cdr _e155611155689_)))
                    (let ((_expr155697_ _hd155612155692_))
                      (if (gx#stx-null? _tl155613155694_)
                          (if (gx#core-bind-values? _hd-bind155687_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155687_)
                                (_K155597_ _hd155590_))
                              (_E155604155667_))
                          (_E155604155667_)))))
                (_E155604155667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155604155667_))
                                          (_E155604155667_))))
                                  (_E155604155667_))))
                           (_E155599155711_
                            (lambda ()
                              (if (gx#stx-pair? _e155598155627_)
                                  (let ((_e155601155703_
                                         (gx#syntax-e _e155598155627_)))
                                    (let ((_hd155602155706_
                                           (##car _e155601155703_))
                                          (_tl155603155708_
                                           (##cdr _e155601155703_)))
                                      (if (and (gx#identifier?
                                                _hd155602155706_)
                                               (gx#core-identifier=?
                                                _hd155602155706_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K155597_
                                               (gx#core-expand-begin-syntax%
                                                _hd155590_))
                                              (_E155600155699_))
                                          (_E155600155699_))))
                                  (_E155600155699_)))))
                      (_E155599155711_))))
                 (_eval-body155471_
                  (lambda (_rbody155479_)
                    (let _lp155481_ ((_rest155483_ _rbody155479_)
                                     (_body155484_ '())
                                     (_ebody155485_ '()))
                      (let* ((_rest155486155494_ _rest155483_)
                             (_else155488155502_
                              (lambda ()
                                (values _body155484_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody155485_)
                                          (gx#stx-source _stx155468_))))))
                             (_K155490155578_
                              (lambda (_rest155505_ _hd155506_)
                                (let* ((_e155507155524_ _hd155506_)
                                       (_E155519155528_
                                        (lambda ()
                                          (_lp155481_
                                           _rest155505_
                                           (cons _hd155506_ _body155484_)
                                           (cons _hd155506_ _ebody155485_))))
                                       (_E155509155540_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155507155524_)
                                              (let ((_e155520155532_
                                                     (gx#syntax-e
                                                      _e155507155524_)))
                                                (let ((_hd155521155535_
                                                       (##car _e155520155532_))
                                                      (_tl155522155537_
                                                       (##cdr _e155520155532_)))
                                                  (if (and (gx#identifier?
                                                            _hd155521155535_)
                                                           (gx#core-identifier=?
                                                            _hd155521155535_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp155481_
                                                           _rest155505_
                                                           (cons _hd155506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body155484_)
                   _ebody155485_)
                  (_E155519155528_))
              (_E155519155528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155519155528_))))
                                       (_E155508155574_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155507155524_)
                                              (let ((_e155510155544_
                                                     (gx#syntax-e
                                                      _e155507155524_)))
                                                (let ((_hd155511155547_
                                                       (##car _e155510155544_))
                                                      (_tl155512155549_
                                                       (##cdr _e155510155544_)))
                                                  (if (and (gx#identifier?
                                                            _hd155511155547_)
                                                           (gx#core-identifier=?
                                                            _hd155511155547_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl155512155549_)
                                                          (let ((_e155513155552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl155512155549_)))
                    (let ((_hd155514155555_ (##car _e155513155552_))
                          (_tl155515155557_ (##cdr _e155513155552_)))
                      (let ((_hd-bind155560_ _hd155514155555_))
                        (if (gx#stx-pair? _tl155515155557_)
                            (let ((_e155516155562_
                                   (gx#syntax-e _tl155515155557_)))
                              (let ((_hd155517155565_ (##car _e155516155562_))
                                    (_tl155518155567_ (##cdr _e155516155562_)))
                                (let ((_expr155570_ _hd155517155565_))
                                  (if (gx#stx-null? _tl155518155567_)
                                      (if '#t
                                          (let ((_ehd155572_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind155560_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr155570_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd155506_))))
                                            (_lp155481_
                                             _rest155505_
                                             (cons _ehd155572_ _body155484_)
                                             (cons _ehd155572_ _ebody155485_)))
                                          (_E155509155540_))
                                      (_E155509155540_)))))
                            (_E155509155540_)))))
                  (_E155509155540_))
              (_E155509155540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155509155540_)))))
                                  (_E155508155574_)))))
                        (if (##pair? _rest155486155494_)
                            (let ((_hd155491155581_ (##car _rest155486155494_))
                                  (_tl155492155583_
                                   (##cdr _rest155486155494_)))
                              (let* ((_hd155586_ _hd155491155581_)
                                     (_rest155588_ _tl155492155583_))
                                (_K155490155578_ _rest155588_ _hd155586_)))
                            (_else155488155502_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody155474_
                     (gx#core-expand-block__1
                      _stx155468_
                      _expand-special155470_
                      '#f))
                    (_g160306_ (_eval-body155471_ _rbody155474_)))
               (begin
                 (let ((_g160307_
                        (if (##values? _g160306_)
                            (##vector-length _g160306_)
                            1)))
                   (if (not (##fx= _g160307_ 2))
                       (error "Context expects 2 values" _g160307_)))
                 (let ((_expanded-body155476_ (##vector-ref _g160306_ 0))
                       (_value155477_ (##vector-ref _g160306_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body155476_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value155477_ '())))
                    (gx#stx-source _stx155468_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx155438_)
        (let* ((_e155439155446_ _stx155438_)
               (_E155441155450_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155439155446_)))
               (_E155440155464_
                (lambda ()
                  (if (gx#stx-pair? _e155439155446_)
                      (let ((_e155442155454_ (gx#syntax-e _e155439155446_)))
                        (let ((_hd155443155457_ (##car _e155442155454_))
                              (_tl155444155459_ (##cdr _e155442155454_)))
                          (let ((_body155462_ _tl155444155459_))
                            (if (gx#stx-list? _body155462_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body155462_)
                                 (gx#stx-source _stx155438_))
                                (_E155441155450_)))))
                      (_E155441155450_)))))
          (_E155440155464_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx155436_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx155436_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx155382_)
        (let* ((_e155383155396_ _stx155382_)
               (_E155385155400_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155383155396_)))
               (_E155384155432_
                (lambda ()
                  (if (gx#stx-pair? _e155383155396_)
                      (let ((_e155386155404_ (gx#syntax-e _e155383155396_)))
                        (let ((_hd155387155407_ (##car _e155386155404_))
                              (_tl155388155409_ (##cdr _e155386155404_)))
                          (if (gx#stx-pair? _tl155388155409_)
                              (let ((_e155389155412_
                                     (gx#syntax-e _tl155388155409_)))
                                (let ((_hd155390155415_
                                       (##car _e155389155412_))
                                      (_tl155391155417_
                                       (##cdr _e155389155412_)))
                                  (let ((_ann155420_ _hd155390155415_))
                                    (if (gx#stx-pair? _tl155391155417_)
                                        (let ((_e155392155422_
                                               (gx#syntax-e _tl155391155417_)))
                                          (let ((_hd155393155425_
                                                 (##car _e155392155422_))
                                                (_tl155394155427_
                                                 (##cdr _e155392155422_)))
                                            (let ((_expr155430_
                                                   _hd155393155425_))
                                              (if (gx#stx-null?
                                                   _tl155394155427_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann155420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr155430_)
                                 '())))
               (gx#stx-source _stx155382_))
              (_E155385155400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E155385155400_)))))
                                        (_E155385155400_)))))
                              (_E155385155400_))))
                      (_E155385155400_)))))
          (_E155384155432_))))
    (define gx#core-expand-local-block
      (lambda (_stx155106_ _body155107_)
        (letrec ((_expand-special155109_
                  (lambda (_hd155377_ _K155378_ _rest155379_ _r155380_)
                    (_K155378_
                     '()
                     (cons (_expand-internal155110_ _hd155377_ _rest155379_)
                           _r155380_))))
                 (_expand-internal155110_
                  (lambda (_hd155373_ _rest155374_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal155112_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd155373_ _rest155374_))
                          (gx#stx-source _stx155106_))
                         _expand-internal-special155111_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj160300
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj160300)
                       __obj160300))))
                 (_expand-internal-special155111_
                  (lambda (_hd155268_ _K155269_ _rest155270_ _r155271_)
                    (let* ((_e155272155297_ _hd155268_)
                           (_E155292155301_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155272155297_)))
                           (_E155288155313_
                            (lambda ()
                              (if (gx#stx-pair? _e155272155297_)
                                  (let ((_e155293155305_
                                         (gx#syntax-e _e155272155297_)))
                                    (let ((_hd155294155308_
                                           (##car _e155293155305_))
                                          (_tl155295155310_
                                           (##cdr _e155293155305_)))
                                      (if (and (gx#identifier?
                                                _hd155294155308_)
                                               (gx#core-identifier=?
                                                _hd155294155308_
                                                '%#declare))
                                          (if '#t
                                              (_K155269_
                                               _rest155270_
                                               (cons (gx#core-expand-declare%
                                                      _hd155268_)
                                                     _r155271_))
                                              (_E155292155301_))
                                          (_E155292155301_))))
                                  (_E155292155301_))))
                           (_E155284155325_
                            (lambda ()
                              (if (gx#stx-pair? _e155272155297_)
                                  (let ((_e155289155317_
                                         (gx#syntax-e _e155272155297_)))
                                    (let ((_hd155290155320_
                                           (##car _e155289155317_))
                                          (_tl155291155322_
                                           (##cdr _e155289155317_)))
                                      (if (and (gx#identifier?
                                                _hd155290155320_)
                                               (gx#core-identifier=?
                                                _hd155290155320_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd155268_)
                                                (_K155269_
                                                 _rest155270_
                                                 _r155271_))
                                              (_E155288155313_))
                                          (_E155288155313_))))
                                  (_E155288155313_))))
                           (_E155274155337_
                            (lambda ()
                              (if (gx#stx-pair? _e155272155297_)
                                  (let ((_e155285155329_
                                         (gx#syntax-e _e155272155297_)))
                                    (let ((_hd155286155332_
                                           (##car _e155285155329_))
                                          (_tl155287155334_
                                           (##cdr _e155285155329_)))
                                      (if (and (gx#identifier?
                                                _hd155286155332_)
                                               (gx#core-identifier=?
                                                _hd155286155332_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd155268_)
                                                (_K155269_
                                                 _rest155270_
                                                 _r155271_))
                                              (_E155284155325_))
                                          (_E155284155325_))))
                                  (_E155284155325_))))
                           (_E155273155369_
                            (lambda ()
                              (if (gx#stx-pair? _e155272155297_)
                                  (let ((_e155275155341_
                                         (gx#syntax-e _e155272155297_)))
                                    (let ((_hd155276155344_
                                           (##car _e155275155341_))
                                          (_tl155277155346_
                                           (##cdr _e155275155341_)))
                                      (if (and (gx#identifier?
                                                _hd155276155344_)
                                               (gx#core-identifier=?
                                                _hd155276155344_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155277155346_)
                                              (let ((_e155278155349_
                                                     (gx#syntax-e
                                                      _tl155277155346_)))
                                                (let ((_hd155279155352_
                                                       (##car _e155278155349_))
                                                      (_tl155280155354_
                                                       (##cdr _e155278155349_)))
                                                  (let ((_hd-bind155357_
                                                         _hd155279155352_))
                                                    (if (gx#stx-pair?
                                                         _tl155280155354_)
                                                        (let ((_e155281155359_
                                                               (gx#syntax-e
                                                                _tl155280155354_)))
                                                          (let ((_hd155282155362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155281155359_))
                        (_tl155283155364_ (##cdr _e155281155359_)))
                    (let ((_expr155367_ _hd155282155362_))
                      (if (gx#stx-null? _tl155283155364_)
                          (if (gx#core-bind-values? _hd-bind155357_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155357_)
                                (_K155269_
                                 _rest155270_
                                 (cons _hd155268_ _r155271_)))
                              (_E155274155337_))
                          (_E155274155337_)))))
                (_E155274155337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155274155337_))
                                          (_E155274155337_))))
                                  (_E155274155337_)))))
                      (_E155273155369_))))
                 (_wrap-internal155112_
                  (lambda (_rbody155114_)
                    (let _lp155116_ ((_rest155118_ _rbody155114_)
                                     (_decls155119_ '())
                                     (_bind155120_ '())
                                     (_body155121_ '()))
                      (let* ((_e155122155129_ _rest155118_)
                             (_E155124155178_
                              (lambda ()
                                (let* ((_body155173_
                                        (let* ((_body155132155142_
                                                _body155121_)
                                               (_else155135155150_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body155121_)
                                                   (gx#stx-source
                                                    _stx155106_)))))
                                          (let ((_K155140155170_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx155106_)))
                                                (_K155137155156_
                                                 (lambda (_expr155154_)
                                                   _expr155154_)))
                                            (let ((_try-match155134155166_
                                                   (lambda ()
                                                     (if (##pair? _body155132155142_)
                                                         (let ((_tl155139155161_
                                                                (##cdr _body155132155142_))
                                                               (_hd155138155159_
                                                                (##car _body155132155142_)))
                                                           (if (##null? _tl155139155161_)
                                                               (let ((_expr155164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd155138155159_))
                         (_K155137155156_ _expr155164_))
                       (_else155135155150_)))
                 (_else155135155150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body155132155142_)
                                                  (_K155140155170_)
                                                  (_try-match155134155166_))))))
                                       (_body155175_
                                        (if (null? _bind155120_)
                                            _body155173_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind155120_
                                                         (cons _body155173_
                                                               '())))
                                             (gx#stx-source _stx155106_)))))
                                  (if (null? _decls155119_)
                                      _body155175_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls155119_
                                                   (cons _body155175_ '())))
                                       (gx#stx-source _stx155106_))))))
                             (_E155123155264_
                              (lambda ()
                                (if (gx#stx-pair? _e155122155129_)
                                    (let ((_e155125155182_
                                           (gx#syntax-e _e155122155129_)))
                                      (let ((_hd155126155185_
                                             (##car _e155125155182_))
                                            (_tl155127155187_
                                             (##cdr _e155125155182_)))
                                        (let* ((_hd155190_ _hd155126155185_)
                                               (_rest155192_ _tl155127155187_))
                                          (if '#t
                                              (let* ((_e155193155210_
                                                      _hd155190_)
                                                     (_E155205155214_
                                                      (lambda ()
                                                        (if (null? _bind155120_)
                                                            (_lp155116_
                                                             _rest155192_
                                                             _decls155119_
                                                             _bind155120_
                                                             (cons _hd155190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body155121_))
                    (_lp155116_
                     _rest155192_
                     _decls155119_
                     (cons (cons '#f (cons _hd155190_ '())) _bind155120_)
                     _body155121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155195155228_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155193155210_)
                                                            (let ((_e155206155218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155193155210_)))
                      (let ((_hd155207155221_ (##car _e155206155218_))
                            (_tl155208155223_ (##cdr _e155206155218_)))
                        (if (and (gx#identifier? _hd155207155221_)
                                 (gx#core-identifier=?
                                  _hd155207155221_
                                  '%#declare))
                            (let ((_xdecls155226_ _tl155208155223_))
                              (if '#t
                                  (_lp155116_
                                   _rest155192_
                                   (gx#stx-foldr
                                    cons
                                    _decls155119_
                                    _xdecls155226_)
                                   _bind155120_
                                   _body155121_)
                                  (_E155205155214_)))
                            (_E155205155214_))))
                    (_E155205155214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155194155260_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155193155210_)
                                                            (let ((_e155196155232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155193155210_)))
                      (let ((_hd155197155235_ (##car _e155196155232_))
                            (_tl155198155237_ (##cdr _e155196155232_)))
                        (if (and (gx#identifier? _hd155197155235_)
                                 (gx#core-identifier=?
                                  _hd155197155235_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl155198155237_)
                                (let ((_e155199155240_
                                       (gx#syntax-e _tl155198155237_)))
                                  (let ((_hd155200155243_
                                         (##car _e155199155240_))
                                        (_tl155201155245_
                                         (##cdr _e155199155240_)))
                                    (let ((_hd-bind155248_ _hd155200155243_))
                                      (if (gx#stx-pair? _tl155201155245_)
                                          (let ((_e155202155250_
                                                 (gx#syntax-e
                                                  _tl155201155245_)))
                                            (let ((_hd155203155253_
                                                   (##car _e155202155250_))
                                                  (_tl155204155255_
                                                   (##cdr _e155202155250_)))
                                              (let ((_expr155258_
                                                     _hd155203155253_))
                                                (if (gx#stx-null?
                                                     _tl155204155255_)
                                                    (if '#t
                                                        (_lp155116_
                                                         _rest155192_
                                                         _decls155119_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind155248_)
                             (cons (gx#core-expand-expression _expr155258_)
                                   '()))
                       _bind155120_)
                 _body155121_)
                (_E155195155228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E155195155228_)))))
                                          (_E155195155228_)))))
                                (_E155195155228_))
                            (_E155195155228_))))
                    (_E155195155228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E155194155260_))
                                              (_E155124155178_)))))
                                    (_E155124155178_)))))
                        (_E155123155264_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body155107_)
            (gx#stx-source _stx155106_))
           _expand-special155109_))))
    (define gx#core-expand-declare%
      (lambda (_stx155044_)
        (let* ((_e155045155052_ _stx155044_)
               (_E155047155056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155045155052_)))
               (_E155046155102_
                (lambda ()
                  (if (gx#stx-pair? _e155045155052_)
                      (let ((_e155048155060_ (gx#syntax-e _e155045155052_)))
                        (let ((_hd155049155063_ (##car _e155048155060_))
                              (_tl155050155065_ (##cdr _e155048155060_)))
                          (let ((_body155068_ _tl155050155065_))
                            (if (gx#stx-list? _body155068_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl155070_)
                                     (let* ((_e155071155078_ _decl155070_)
                                            (_E155073155082_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e155071155078_)))
                                            (_E155072155098_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e155071155078_)
                                                   (let ((_e155074155086_
                                                          (gx#syntax-e
                                                           _e155071155078_)))
                                                     (let ((_hd155075155089_
                                                            (##car _e155074155086_))
                                                           (_tl155076155091_
                                                            (##cdr _e155074155086_)))
                                                       (let* ((_head155094_
                                                               _hd155075155089_)
                                                              (_args155096_
                                                               _tl155076155091_))
                                                         (if (gx#stx-list?
                                                              _args155096_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl155070_)
                                                             (_E155073155082_)))))
                                                   (_E155073155082_)))))
                                       (_E155072155098_)))
                                   _body155068_))
                                 (gx#stx-source _stx155044_))
                                (_E155047155056_)))))
                      (_E155047155056_)))))
          (_E155046155102_))))
    (define gx#core-expand-extern%
      (lambda (_stx154948_)
        (let* ((_e154949154956_ _stx154948_)
               (_E154951154960_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154949154956_)))
               (_E154950155040_
                (lambda ()
                  (if (gx#stx-pair? _e154949154956_)
                      (let ((_e154952154964_ (gx#syntax-e _e154949154956_)))
                        (let ((_hd154953154967_ (##car _e154952154964_))
                              (_tl154954154969_ (##cdr _e154952154964_)))
                          (let ((_body154972_ _tl154954154969_))
                            (if '#t
                                (let _lp154974_ ((_rest154976_ _body154972_)
                                                 (_r154977_ '()))
                                  (let* ((_e154978154992_ _rest154976_)
                                         (_E154990154996_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx154948_)))
                                         (_E154980155000_
                                          (lambda ()
                                            (if (gx#stx-null? _e154978154992_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r154977_))
                                                     (gx#stx-source
                                                      _stx154948_))
                                                    (_E154990154996_))
                                                (_E154990154996_))))
                                         (_E154979155036_
                                          (lambda ()
                                            (if (gx#stx-pair? _e154978154992_)
                                                (let ((_e154981155004_
                                                       (gx#syntax-e
                                                        _e154978154992_)))
                                                  (let ((_hd154982155007_
                                                         (##car _e154981155004_))
                                                        (_tl154983155009_
                                                         (##cdr _e154981155004_)))
                                                    (if (gx#stx-pair?
                                                         _hd154982155007_)
                                                        (let ((_e154984155012_
                                                               (gx#syntax-e
                                                                _hd154982155007_)))
                                                          (let ((_hd154985155015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154984155012_))
                        (_tl154986155017_ (##cdr _e154984155012_)))
                    (let ((_id155020_ _hd154985155015_))
                      (if (gx#stx-pair? _tl154986155017_)
                          (let ((_e154987155022_
                                 (gx#syntax-e _tl154986155017_)))
                            (let ((_hd154988155025_ (##car _e154987155022_))
                                  (_tl154989155027_ (##cdr _e154987155022_)))
                              (let ((_eid155030_ _hd154988155025_))
                                (if (gx#stx-null? _tl154989155027_)
                                    (let ((_rest155032_ _tl154983155009_))
                                      (if (and (gx#identifier? _id155020_)
                                               (gx#identifier? _eid155030_))
                                          (let ((_eid155034_
                                                 (gx#stx-e _eid155030_)))
                                            (gx#core-bind-extern!__0
                                             _id155020_
                                             _eid155034_)
                                            (_lp154974_
                                             _rest155032_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id155020_)
                                                         (cons _eid155034_
                                                               '()))
                                                   _r154977_)))
                                          (_E154980155000_)))
                                    (_E154980155000_)))))
                          (_E154980155000_)))))
                (_E154980155000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154980155000_)))))
                                    (_E154979155036_)))
                                (_E154951154960_)))))
                      (_E154951154960_)))))
          (_E154950155040_))))
    (define gx#core-expand-define-values%
      (lambda (_stx154894_)
        (let* ((_e154895154908_ _stx154894_)
               (_E154897154912_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154895154908_)))
               (_E154896154944_
                (lambda ()
                  (if (gx#stx-pair? _e154895154908_)
                      (let ((_e154898154916_ (gx#syntax-e _e154895154908_)))
                        (let ((_hd154899154919_ (##car _e154898154916_))
                              (_tl154900154921_ (##cdr _e154898154916_)))
                          (if (gx#stx-pair? _tl154900154921_)
                              (let ((_e154901154924_
                                     (gx#syntax-e _tl154900154921_)))
                                (let ((_hd154902154927_
                                       (##car _e154901154924_))
                                      (_tl154903154929_
                                       (##cdr _e154901154924_)))
                                  (let ((_hd154932_ _hd154902154927_))
                                    (if (gx#stx-pair? _tl154903154929_)
                                        (let ((_e154904154934_
                                               (gx#syntax-e _tl154903154929_)))
                                          (let ((_hd154905154937_
                                                 (##car _e154904154934_))
                                                (_tl154906154939_
                                                 (##cdr _e154904154934_)))
                                            (let ((_expr154942_
                                                   _hd154905154937_))
                                              (if (gx#stx-null?
                                                   _tl154906154939_)
                                                  (if (gx#core-bind-values?
                                                       _hd154932_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd154932_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd154932_)
                             (cons (gx#core-expand-expression _expr154942_)
                                   '())))
                 (gx#stx-source _stx154894_)))
              (_E154897154912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154897154912_)))))
                                        (_E154897154912_)))))
                              (_E154897154912_))))
                      (_E154897154912_)))))
          (_E154896154944_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx154838_)
        (let* ((_e154839154852_ _stx154838_)
               (_E154841154856_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154839154852_)))
               (_E154840154890_
                (lambda ()
                  (if (gx#stx-pair? _e154839154852_)
                      (let ((_e154842154860_ (gx#syntax-e _e154839154852_)))
                        (let ((_hd154843154863_ (##car _e154842154860_))
                              (_tl154844154865_ (##cdr _e154842154860_)))
                          (if (gx#stx-pair? _tl154844154865_)
                              (let ((_e154845154868_
                                     (gx#syntax-e _tl154844154865_)))
                                (let ((_hd154846154871_
                                       (##car _e154845154868_))
                                      (_tl154847154873_
                                       (##cdr _e154845154868_)))
                                  (let ((_id154876_ _hd154846154871_))
                                    (if (gx#stx-pair? _tl154847154873_)
                                        (let ((_e154848154878_
                                               (gx#syntax-e _tl154847154873_)))
                                          (let ((_hd154849154881_
                                                 (##car _e154848154878_))
                                                (_tl154850154883_
                                                 (##cdr _e154848154878_)))
                                            (let ((_binding-id154886_
                                                   _hd154849154881_))
                                              (if (gx#stx-null?
                                                   _tl154850154883_)
                                                  (if (and (gx#identifier?
                                                            _id154876_)
                                                           (gx#identifier?
                                                            _binding-id154886_))
                                                      (let ((_eid154888_
                                                             (gx#stx-e
                                                              _binding-id154886_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id154876_
                                                         _eid154888_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154876_)
                             (cons _eid154888_ '())))))
              (_E154841154856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154841154856_)))))
                                        (_E154841154856_)))))
                              (_E154841154856_))))
                      (_E154841154856_)))))
          (_E154840154890_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx154781_)
        (let* ((_e154782154795_ _stx154781_)
               (_E154784154799_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154782154795_)))
               (_E154783154834_
                (lambda ()
                  (if (gx#stx-pair? _e154782154795_)
                      (let ((_e154785154803_ (gx#syntax-e _e154782154795_)))
                        (let ((_hd154786154806_ (##car _e154785154803_))
                              (_tl154787154808_ (##cdr _e154785154803_)))
                          (if (gx#stx-pair? _tl154787154808_)
                              (let ((_e154788154811_
                                     (gx#syntax-e _tl154787154808_)))
                                (let ((_hd154789154814_
                                       (##car _e154788154811_))
                                      (_tl154790154816_
                                       (##cdr _e154788154811_)))
                                  (let ((_id154819_ _hd154789154814_))
                                    (if (gx#stx-pair? _tl154790154816_)
                                        (let ((_e154791154821_
                                               (gx#syntax-e _tl154790154816_)))
                                          (let ((_hd154792154824_
                                                 (##car _e154791154821_))
                                                (_tl154793154826_
                                                 (##cdr _e154791154821_)))
                                            (let ((_expr154829_
                                                   _hd154792154824_))
                                              (if (gx#stx-null?
                                                   _tl154793154826_)
                                                  (if (gx#identifier?
                                                       _id154819_)
                                                      (let ((_g160308_
                                                             (gx#core-expand-expression+1
                                                              _expr154829_)))
                                                        (begin
                                                          (let ((_g160309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g160308_)
                             (##vector-length _g160308_)
                             1)))
                    (if (not (##fx= _g160309_ 2))
                        (error "Context expects 2 values" _g160309_)))
                  (let ((_e-stx154831_ (##vector-ref _g160308_ 0))
                        (_e154832_ (##vector-ref _g160308_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id154819_ _e154832_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id154819_)
                                   (cons _e-stx154831_ '())))
                       (gx#stx-source _stx154781_))))))
              (_E154784154799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154784154799_)))))
                                        (_E154784154799_)))))
                              (_E154784154799_))))
                      (_E154784154799_)))))
          (_E154783154834_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx154725_)
        (let* ((_e154726154739_ _stx154725_)
               (_E154728154743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154726154739_)))
               (_E154727154777_
                (lambda ()
                  (if (gx#stx-pair? _e154726154739_)
                      (let ((_e154729154747_ (gx#syntax-e _e154726154739_)))
                        (let ((_hd154730154750_ (##car _e154729154747_))
                              (_tl154731154752_ (##cdr _e154729154747_)))
                          (if (gx#stx-pair? _tl154731154752_)
                              (let ((_e154732154755_
                                     (gx#syntax-e _tl154731154752_)))
                                (let ((_hd154733154758_
                                       (##car _e154732154755_))
                                      (_tl154734154760_
                                       (##cdr _e154732154755_)))
                                  (let ((_id154763_ _hd154733154758_))
                                    (if (gx#stx-pair? _tl154734154760_)
                                        (let ((_e154735154765_
                                               (gx#syntax-e _tl154734154760_)))
                                          (let ((_hd154736154768_
                                                 (##car _e154735154765_))
                                                (_tl154737154770_
                                                 (##cdr _e154735154765_)))
                                            (let ((_alias-id154773_
                                                   _hd154736154768_))
                                              (if (gx#stx-null?
                                                   _tl154737154770_)
                                                  (if (and (gx#identifier?
                                                            _id154763_)
                                                           (gx#identifier?
                                                            _alias-id154773_))
                                                      (let ((_alias-id154775_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id154773_)))
                                                        (gx#core-bind-alias!__0
                                                         _id154763_
                                                         _alias-id154775_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154763_)
                             (cons _alias-id154775_ '())))))
              (_E154728154743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154728154743_)))))
                                        (_E154728154743_)))))
                              (_E154728154743_))))
                      (_E154728154743_)))))
          (_E154727154777_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx154668_ _wrap?154669_)
        (let* ((_e154670154680_ _stx154668_)
               (_E154672154684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154670154680_)))
               (_E154671154711_
                (lambda ()
                  (if (gx#stx-pair? _e154670154680_)
                      (let ((_e154673154688_ (gx#syntax-e _e154670154680_)))
                        (let ((_hd154674154691_ (##car _e154673154688_))
                              (_tl154675154693_ (##cdr _e154673154688_)))
                          (if (gx#stx-pair? _tl154675154693_)
                              (let ((_e154676154696_
                                     (gx#syntax-e _tl154675154693_)))
                                (let ((_hd154677154699_
                                       (##car _e154676154696_))
                                      (_tl154678154701_
                                       (##cdr _e154676154696_)))
                                  (let* ((_hd154704_ _hd154677154699_)
                                         (_body154706_ _tl154678154701_))
                                    (if (gx#core-bind-values? _hd154704_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd154704_)
                                           (let ((_body154709_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd154704_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx154668_
                                                               _body154706_)
                                                              '()))))
                                             (if _wrap?154669_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body154709_)
                                                  (gx#stx-source _stx154668_))
                                                 _body154709_)))
                                         gx#current-expander-context
                                         (let ((__obj160301
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160301)
                                           __obj160301))
                                        (_E154672154684_)))))
                              (_E154672154684_))))
                      (_E154672154684_)))))
          (_E154671154711_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx154718_)
        (let ((_wrap?154720_ '#t))
          (gx#core-expand-lambda%__% _stx154718_ _wrap?154720_))))
    (define gx#core-expand-lambda%
      (lambda _g160311_
        (let ((_g160310_ (##length _g160311_)))
          (cond ((##fx= _g160310_ 1)
                 (apply (lambda (_stx154718_)
                          (gx#core-expand-lambda%__0 _stx154718_))
                        _g160311_))
                ((##fx= _g160310_ 2)
                 (apply (lambda (_stx154722_ _wrap?154723_)
                          (gx#core-expand-lambda%__%
                           _stx154722_
                           _wrap?154723_))
                        _g160311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g160311_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx154632_)
        (let* ((_e154633154640_ _stx154632_)
               (_E154635154644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154633154640_)))
               (_E154634154663_
                (lambda ()
                  (if (gx#stx-pair? _e154633154640_)
                      (let ((_e154636154648_ (gx#syntax-e _e154633154640_)))
                        (let ((_hd154637154651_ (##car _e154636154648_))
                              (_tl154638154653_ (##cdr _e154636154648_)))
                          (let ((_clauses154656_ _tl154638154653_))
                            (if (gx#stx-list? _clauses154656_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause154658_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause154658_)
                                       (let ((_$e154660_
                                              (gx#stx-source _clause154658_)))
                                         (if _$e154660_
                                             _$e154660_
                                             (gx#stx-source _stx154632_))))
                                      '#f))
                                   _clauses154656_))
                                 (gx#stx-source _stx154632_))
                                (_E154635154644_)))))
                      (_E154635154644_)))))
          (_E154634154663_))))
    (define gx#core-expand-let-values%
      (lambda (_stx154586_)
        (let* ((_e154587154597_ _stx154586_)
               (_E154589154601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154587154597_)))
               (_E154588154628_
                (lambda ()
                  (if (gx#stx-pair? _e154587154597_)
                      (let ((_e154590154605_ (gx#syntax-e _e154587154597_)))
                        (let ((_hd154591154608_ (##car _e154590154605_))
                              (_tl154592154610_ (##cdr _e154590154605_)))
                          (if (gx#stx-pair? _tl154592154610_)
                              (let ((_e154593154613_
                                     (gx#syntax-e _tl154592154610_)))
                                (let ((_hd154594154616_
                                       (##car _e154593154613_))
                                      (_tl154595154618_
                                       (##cdr _e154593154613_)))
                                  (let* ((_hd154621_ _hd154594154616_)
                                         (_body154623_ _tl154595154618_))
                                    (if (gx#core-expand-let-bind? _hd154621_)
                                        (let ((_expressions154625_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd154621_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd154621_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd154621_
                                                           _expressions154625_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx154586_
                         _body154623_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx154586_)))
                                           gx#current-expander-context
                                           (let ((__obj160302
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160302)
                                             __obj160302)))
                                        (_E154589154601_)))))
                              (_E154589154601_))))
                      (_E154589154601_)))))
          (_E154588154628_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx154531_ _form154532_)
        (let* ((_e154533154543_ _stx154531_)
               (_E154535154547_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154533154543_)))
               (_E154534154572_
                (lambda ()
                  (if (gx#stx-pair? _e154533154543_)
                      (let ((_e154536154551_ (gx#syntax-e _e154533154543_)))
                        (let ((_hd154537154554_ (##car _e154536154551_))
                              (_tl154538154556_ (##cdr _e154536154551_)))
                          (if (gx#stx-pair? _tl154538154556_)
                              (let ((_e154539154559_
                                     (gx#syntax-e _tl154538154556_)))
                                (let ((_hd154540154562_
                                       (##car _e154539154559_))
                                      (_tl154541154564_
                                       (##cdr _e154539154559_)))
                                  (let* ((_hd154567_ _hd154540154562_)
                                         (_body154569_ _tl154541154564_))
                                    (if (gx#core-expand-let-bind? _hd154567_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd154567_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form154532_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd154567_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd154567_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx154531_
                                                               _body154569_)
                                                              '())))
                                            (gx#stx-source _stx154531_)))
                                         gx#current-expander-context
                                         (let ((__obj160303
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160303)
                                           __obj160303))
                                        (_E154535154547_)))))
                              (_E154535154547_))))
                      (_E154535154547_)))))
          (_E154534154572_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx154579_)
        (let ((_form154581_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx154579_ _form154581_))))
    (define gx#core-expand-letrec-values%
      (lambda _g160313_
        (let ((_g160312_ (##length _g160313_)))
          (cond ((##fx= _g160312_ 1)
                 (apply (lambda (_stx154579_)
                          (gx#core-expand-letrec-values%__0 _stx154579_))
                        _g160313_))
                ((##fx= _g160312_ 2)
                 (apply (lambda (_stx154583_ _form154584_)
                          (gx#core-expand-letrec-values%__%
                           _stx154583_
                           _form154584_))
                        _g160313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g160313_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx154528_)
        (gx#core-expand-letrec-values%__% _stx154528_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx154485_)
        (if (gx#stx-list? _stx154485_)
            (gx#stx-andmap
             (lambda (_bind154487_)
               (let* ((_e154488154498_ _bind154487_)
                      (_E154490154502_ (lambda () '#f))
                      (_E154489154524_
                       (lambda ()
                         (if (gx#stx-pair? _e154488154498_)
                             (let ((_e154491154506_
                                    (gx#syntax-e _e154488154498_)))
                               (let ((_hd154492154509_ (##car _e154491154506_))
                                     (_tl154493154511_
                                      (##cdr _e154491154506_)))
                                 (let ((_hd154514_ _hd154492154509_))
                                   (if (gx#stx-pair? _tl154493154511_)
                                       (let ((_e154494154516_
                                              (gx#syntax-e _tl154493154511_)))
                                         (let ((_hd154495154519_
                                                (##car _e154494154516_))
                                               (_tl154496154521_
                                                (##cdr _e154494154516_)))
                                           (if (gx#stx-null? _tl154496154521_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd154514_)
                                                   (_E154490154502_))
                                               (_E154490154502_))))
                                       (_E154490154502_)))))
                             (_E154490154502_)))))
                 (_E154489154524_)))
             _stx154485_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind154444_)
        (let* ((_e154445154455_ _bind154444_)
               (_E154447154459_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154445154455_)))
               (_E154446154481_
                (lambda ()
                  (if (gx#stx-pair? _e154445154455_)
                      (let ((_e154448154463_ (gx#syntax-e _e154445154455_)))
                        (let ((_hd154449154466_ (##car _e154448154463_))
                              (_tl154450154468_ (##cdr _e154448154463_)))
                          (if (gx#stx-pair? _tl154450154468_)
                              (let ((_e154451154471_
                                     (gx#syntax-e _tl154450154468_)))
                                (let ((_hd154452154474_
                                       (##car _e154451154471_))
                                      (_tl154453154476_
                                       (##cdr _e154451154471_)))
                                  (let ((_expr154479_ _hd154452154474_))
                                    (if (gx#stx-null? _tl154453154476_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154479_)
                                            (_E154447154459_))
                                        (_E154447154459_)))))
                              (_E154447154459_))))
                      (_E154447154459_)))))
          (_E154446154481_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind154403_)
        (let* ((_e154404154414_ _bind154403_)
               (_E154406154418_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154404154414_)))
               (_E154405154440_
                (lambda ()
                  (if (gx#stx-pair? _e154404154414_)
                      (let ((_e154407154422_ (gx#syntax-e _e154404154414_)))
                        (let ((_hd154408154425_ (##car _e154407154422_))
                              (_tl154409154427_ (##cdr _e154407154422_)))
                          (let ((_hd154430_ _hd154408154425_))
                            (if (gx#stx-pair? _tl154409154427_)
                                (let ((_e154410154432_
                                       (gx#syntax-e _tl154409154427_)))
                                  (let ((_hd154411154435_
                                         (##car _e154410154432_))
                                        (_tl154412154437_
                                         (##cdr _e154410154432_)))
                                    (if (gx#stx-null? _tl154412154437_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd154430_)
                                            (_E154406154418_))
                                        (_E154406154418_))))
                                (_E154406154418_)))))
                      (_E154406154418_)))))
          (_E154405154440_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind154361_ _expr154362_)
        (let* ((_e154363154373_ _bind154361_)
               (_E154365154377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154363154373_)))
               (_E154364154399_
                (lambda ()
                  (if (gx#stx-pair? _e154363154373_)
                      (let ((_e154366154381_ (gx#syntax-e _e154363154373_)))
                        (let ((_hd154367154384_ (##car _e154366154381_))
                              (_tl154368154386_ (##cdr _e154366154381_)))
                          (let ((_hd154389_ _hd154367154384_))
                            (if (gx#stx-pair? _tl154368154386_)
                                (let ((_e154369154391_
                                       (gx#syntax-e _tl154368154386_)))
                                  (let ((_hd154370154394_
                                         (##car _e154369154391_))
                                        (_tl154371154396_
                                         (##cdr _e154369154391_)))
                                    (if (gx#stx-null? _tl154371154396_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd154389_)
                                                  (cons _expr154362_ '()))
                                            (_E154365154377_))
                                        (_E154365154377_))))
                                (_E154365154377_)))))
                      (_E154365154377_)))))
          (_E154364154399_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx154315_)
        (let* ((_e154316154326_ _stx154315_)
               (_E154318154330_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154316154326_)))
               (_E154317154357_
                (lambda ()
                  (if (gx#stx-pair? _e154316154326_)
                      (let ((_e154319154334_ (gx#syntax-e _e154316154326_)))
                        (let ((_hd154320154337_ (##car _e154319154334_))
                              (_tl154321154339_ (##cdr _e154319154334_)))
                          (if (gx#stx-pair? _tl154321154339_)
                              (let ((_e154322154342_
                                     (gx#syntax-e _tl154321154339_)))
                                (let ((_hd154323154345_
                                       (##car _e154322154342_))
                                      (_tl154324154347_
                                       (##cdr _e154322154342_)))
                                  (let* ((_hd154350_ _hd154323154345_)
                                         (_body154352_ _tl154324154347_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154350_)
                                        (let ((_expanders154354_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd154350_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd154350_
                                              _expanders154354_)
                                             (gx#core-expand-local-block
                                              _stx154315_
                                              _body154352_))
                                           gx#current-expander-context
                                           (let ((__obj160304
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160304)
                                             __obj160304)))
                                        (_E154318154330_)))))
                              (_E154318154330_))))
                      (_E154318154330_)))))
          (_E154317154357_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx154264_)
        (let* ((_e154265154275_ _stx154264_)
               (_E154267154279_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154265154275_)))
               (_E154266154311_
                (lambda ()
                  (if (gx#stx-pair? _e154265154275_)
                      (let ((_e154268154283_ (gx#syntax-e _e154265154275_)))
                        (let ((_hd154269154286_ (##car _e154268154283_))
                              (_tl154270154288_ (##cdr _e154268154283_)))
                          (if (gx#stx-pair? _tl154270154288_)
                              (let ((_e154271154291_
                                     (gx#syntax-e _tl154270154288_)))
                                (let ((_hd154272154294_
                                       (##car _e154271154291_))
                                      (_tl154273154296_
                                       (##cdr _e154271154291_)))
                                  (let* ((_hd154299_ _hd154272154294_)
                                         (_body154301_ _tl154273154296_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154299_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd154299_
                                            (make-list
                                             (gx#stx-length _hd154299_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g154303154306_
                                                     _g154304154308_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g154303154306_
                                               _g154304154308_
                                               '#t))
                                            _hd154299_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd154299_))
                                           (gx#core-expand-local-block
                                            _stx154264_
                                            _body154301_))
                                         gx#current-expander-context
                                         (let ((__obj160305
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160305)
                                           __obj160305))
                                        (_E154267154279_)))))
                              (_E154267154279_))))
                      (_E154267154279_)))))
          (_E154266154311_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx154221_)
        (if (gx#stx-list? _stx154221_)
            (gx#stx-andmap
             (lambda (_bind154223_)
               (let* ((_e154224154234_ _bind154223_)
                      (_E154226154238_ (lambda () '#f))
                      (_E154225154260_
                       (lambda ()
                         (if (gx#stx-pair? _e154224154234_)
                             (let ((_e154227154242_
                                    (gx#syntax-e _e154224154234_)))
                               (let ((_hd154228154245_ (##car _e154227154242_))
                                     (_tl154229154247_
                                      (##cdr _e154227154242_)))
                                 (let ((_hd154250_ _hd154228154245_))
                                   (if (gx#stx-pair? _tl154229154247_)
                                       (let ((_e154230154252_
                                              (gx#syntax-e _tl154229154247_)))
                                         (let ((_hd154231154255_
                                                (##car _e154230154252_))
                                               (_tl154232154257_
                                                (##cdr _e154230154252_)))
                                           (if (gx#stx-null? _tl154232154257_)
                                               (if '#t
                                                   (gx#identifier? _hd154250_)
                                                   (_E154226154238_))
                                               (_E154226154238_))))
                                       (_E154226154238_)))))
                             (_E154226154238_)))))
                 (_E154225154260_)))
             _stx154221_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind154178_)
        (let* ((_e154179154189_ _bind154178_)
               (_E154181154193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154179154189_)))
               (_E154180154217_
                (lambda ()
                  (if (gx#stx-pair? _e154179154189_)
                      (let ((_e154182154197_ (gx#syntax-e _e154179154189_)))
                        (let ((_hd154183154200_ (##car _e154182154197_))
                              (_tl154184154202_ (##cdr _e154182154197_)))
                          (if (gx#stx-pair? _tl154184154202_)
                              (let ((_e154185154205_
                                     (gx#syntax-e _tl154184154202_)))
                                (let ((_hd154186154208_
                                       (##car _e154185154205_))
                                      (_tl154187154210_
                                       (##cdr _e154185154205_)))
                                  (let ((_expr154213_ _hd154186154208_))
                                    (if (gx#stx-null? _tl154187154210_)
                                        (if '#t
                                            (let ((_g160314_
                                                   (gx#core-expand-expression+1
                                                    _expr154213_)))
                                              (begin
                                                (let ((_g160315_
                                                       (if (##values?
                                                            _g160314_)
                                                           (##vector-length
                                                            _g160314_)
                                                           1)))
                                                  (if (not (##fx= _g160315_ 2))
                                                      (error "Context expects 2 values"
                                                             _g160315_)))
                                                (let ((_e154215_
                                                       (##vector-ref
                                                        _g160314_
                                                        1)))
                                                  _e154215_)))
                                            (_E154181154193_))
                                        (_E154181154193_)))))
                              (_E154181154193_))))
                      (_E154181154193_)))))
          (_E154180154217_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind154123_ _e154124_ _rebind?154125_)
        (let* ((_e154126154136_ _bind154123_)
               (_E154128154140_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154126154136_)))
               (_E154127154162_
                (lambda ()
                  (if (gx#stx-pair? _e154126154136_)
                      (let ((_e154129154144_ (gx#syntax-e _e154126154136_)))
                        (let ((_hd154130154147_ (##car _e154129154144_))
                              (_tl154131154149_ (##cdr _e154129154144_)))
                          (let ((_id154152_ _hd154130154147_))
                            (if (gx#stx-pair? _tl154131154149_)
                                (let ((_e154132154154_
                                       (gx#syntax-e _tl154131154149_)))
                                  (let ((_hd154133154157_
                                         (##car _e154132154154_))
                                        (_tl154134154159_
                                         (##cdr _e154132154154_)))
                                    (if (gx#stx-null? _tl154134154159_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id154152_
                                             _e154124_
                                             _rebind?154125_)
                                            (_E154128154140_))
                                        (_E154128154140_))))
                                (_E154128154140_)))))
                      (_E154128154140_)))))
          (_E154127154162_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind154169_ _e154170_)
        (let ((_rebind?154172_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind154169_
           _e154170_
           _rebind?154172_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g160317_
        (let ((_g160316_ (##length _g160317_)))
          (cond ((##fx= _g160316_ 2)
                 (apply (lambda (_bind154169_ _e154170_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind154169_
                           _e154170_))
                        _g160317_))
                ((##fx= _g160316_ 3)
                 (apply (lambda (_bind154174_ _e154175_ _rebind?154176_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind154174_
                           _e154175_
                           _rebind?154176_))
                        _g160317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g160317_))))))
    (define gx#core-expand-expression%
      (lambda (_stx154081_)
        (let* ((_e154082154092_ _stx154081_)
               (_E154084154096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154082154092_)))
               (_E154083154118_
                (lambda ()
                  (if (gx#stx-pair? _e154082154092_)
                      (let ((_e154085154100_ (gx#syntax-e _e154082154092_)))
                        (let ((_hd154086154103_ (##car _e154085154100_))
                              (_tl154087154105_ (##cdr _e154085154100_)))
                          (if (gx#stx-pair? _tl154087154105_)
                              (let ((_e154088154108_
                                     (gx#syntax-e _tl154087154105_)))
                                (let ((_hd154089154111_
                                       (##car _e154088154108_))
                                      (_tl154090154113_
                                       (##cdr _e154088154108_)))
                                  (let ((_expr154116_ _hd154089154111_))
                                    (if (gx#stx-null? _tl154090154113_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154116_)
                                            (_E154084154096_))
                                        (_E154084154096_)))))
                              (_E154084154096_))))
                      (_E154084154096_)))))
          (_E154083154118_))))
    (define gx#core-expand-quote%
      (lambda (_stx154040_)
        (let* ((_e154041154051_ _stx154040_)
               (_E154043154055_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154041154051_)))
               (_E154042154077_
                (lambda ()
                  (if (gx#stx-pair? _e154041154051_)
                      (let ((_e154044154059_ (gx#syntax-e _e154041154051_)))
                        (let ((_hd154045154062_ (##car _e154044154059_))
                              (_tl154046154064_ (##cdr _e154044154059_)))
                          (if (gx#stx-pair? _tl154046154064_)
                              (let ((_e154047154067_
                                     (gx#syntax-e _tl154046154064_)))
                                (let ((_hd154048154070_
                                       (##car _e154047154067_))
                                      (_tl154049154072_
                                       (##cdr _e154047154067_)))
                                  (let ((_e154075_ _hd154048154070_))
                                    (if (gx#stx-null? _tl154049154072_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e154075_)
                                                         '()))
                                             (gx#stx-source _stx154040_))
                                            (_E154043154055_))
                                        (_E154043154055_)))))
                              (_E154043154055_))))
                      (_E154043154055_)))))
          (_E154042154077_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx153999_)
        (let* ((_e154000154010_ _stx153999_)
               (_E154002154014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154000154010_)))
               (_E154001154036_
                (lambda ()
                  (if (gx#stx-pair? _e154000154010_)
                      (let ((_e154003154018_ (gx#syntax-e _e154000154010_)))
                        (let ((_hd154004154021_ (##car _e154003154018_))
                              (_tl154005154023_ (##cdr _e154003154018_)))
                          (if (gx#stx-pair? _tl154005154023_)
                              (let ((_e154006154026_
                                     (gx#syntax-e _tl154005154023_)))
                                (let ((_hd154007154029_
                                       (##car _e154006154026_))
                                      (_tl154008154031_
                                       (##cdr _e154006154026_)))
                                  (let ((_e154034_ _hd154007154029_))
                                    (if (gx#stx-null? _tl154008154031_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e154034_)
                                                         '()))
                                             (gx#stx-source _stx153999_))
                                            (_E154002154014_))
                                        (_E154002154014_)))))
                              (_E154002154014_))))
                      (_E154002154014_)))))
          (_E154001154036_))))
    (define gx#core-expand-call%
      (lambda (_stx153956_)
        (let* ((_e153957153967_ _stx153956_)
               (_E153959153971_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153957153967_)))
               (_E153958153995_
                (lambda ()
                  (if (gx#stx-pair? _e153957153967_)
                      (let ((_e153960153975_ (gx#syntax-e _e153957153967_)))
                        (let ((_hd153961153978_ (##car _e153960153975_))
                              (_tl153962153980_ (##cdr _e153960153975_)))
                          (if (gx#stx-pair? _tl153962153980_)
                              (let ((_e153963153983_
                                     (gx#syntax-e _tl153962153980_)))
                                (let ((_hd153964153986_
                                       (##car _e153963153983_))
                                      (_tl153965153988_
                                       (##cdr _e153963153983_)))
                                  (let* ((_rator153991_ _hd153964153986_)
                                         (_args153993_ _tl153965153988_))
                                    (if (gx#stx-list? _args153993_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator153991_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args153993_))
                                         (gx#stx-source _stx153956_))
                                        (_E153959153971_)))))
                              (_E153959153971_))))
                      (_E153959153971_)))))
          (_E153958153995_))))
    (define gx#core-expand-if%
      (lambda (_stx153889_)
        (let* ((_e153890153906_ _stx153889_)
               (_E153892153910_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153890153906_)))
               (_E153891153952_
                (lambda ()
                  (if (gx#stx-pair? _e153890153906_)
                      (let ((_e153893153914_ (gx#syntax-e _e153890153906_)))
                        (let ((_hd153894153917_ (##car _e153893153914_))
                              (_tl153895153919_ (##cdr _e153893153914_)))
                          (if (gx#stx-pair? _tl153895153919_)
                              (let ((_e153896153922_
                                     (gx#syntax-e _tl153895153919_)))
                                (let ((_hd153897153925_
                                       (##car _e153896153922_))
                                      (_tl153898153927_
                                       (##cdr _e153896153922_)))
                                  (let ((_test153930_ _hd153897153925_))
                                    (if (gx#stx-pair? _tl153898153927_)
                                        (let ((_e153899153932_
                                               (gx#syntax-e _tl153898153927_)))
                                          (let ((_hd153900153935_
                                                 (##car _e153899153932_))
                                                (_tl153901153937_
                                                 (##cdr _e153899153932_)))
                                            (let ((_K153940_ _hd153900153935_))
                                              (if (gx#stx-pair?
                                                   _tl153901153937_)
                                                  (let ((_e153902153942_
                                                         (gx#syntax-e
                                                          _tl153901153937_)))
                                                    (let ((_hd153903153945_
                                                           (##car _e153902153942_))
                                                          (_tl153904153947_
                                                           (##cdr _e153902153942_)))
                                                      (let ((_E153950_
                                                             _hd153903153945_))
                                                        (if (gx#stx-null?
                                                             _tl153904153947_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test153930_)
                                     (cons (gx#core-expand-expression
                                            _K153940_)
                                           (cons (gx#core-expand-expression
                                                  _E153950_)
                                                 '()))))
                         (gx#stx-source _stx153889_))
                        (_E153892153910_))
                    (_E153892153910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153892153910_)))))
                                        (_E153892153910_)))))
                              (_E153892153910_))))
                      (_E153892153910_)))))
          (_E153891153952_))))
    (define gx#core-expand-ref%
      (lambda (_stx153848_)
        (let* ((_e153849153859_ _stx153848_)
               (_E153851153863_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153849153859_)))
               (_E153850153885_
                (lambda ()
                  (if (gx#stx-pair? _e153849153859_)
                      (let ((_e153852153867_ (gx#syntax-e _e153849153859_)))
                        (let ((_hd153853153870_ (##car _e153852153867_))
                              (_tl153854153872_ (##cdr _e153852153867_)))
                          (if (gx#stx-pair? _tl153854153872_)
                              (let ((_e153855153875_
                                     (gx#syntax-e _tl153854153872_)))
                                (let ((_hd153856153878_
                                       (##car _e153855153875_))
                                      (_tl153857153880_
                                       (##cdr _e153855153875_)))
                                  (let ((_id153883_ _hd153856153878_))
                                    (if (gx#stx-null? _tl153857153880_)
                                        (if (gx#identifier? _id153883_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id153883_
                                                          _stx153848_)
                                                         '()))
                                             (gx#stx-source _stx153848_))
                                            (_E153851153863_))
                                        (_E153851153863_)))))
                              (_E153851153863_))))
                      (_E153851153863_)))))
          (_E153850153885_))))
    (define gx#core-expand-setq%
      (lambda (_stx153794_)
        (let* ((_e153795153808_ _stx153794_)
               (_E153797153812_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153795153808_)))
               (_E153796153844_
                (lambda ()
                  (if (gx#stx-pair? _e153795153808_)
                      (let ((_e153798153816_ (gx#syntax-e _e153795153808_)))
                        (let ((_hd153799153819_ (##car _e153798153816_))
                              (_tl153800153821_ (##cdr _e153798153816_)))
                          (if (gx#stx-pair? _tl153800153821_)
                              (let ((_e153801153824_
                                     (gx#syntax-e _tl153800153821_)))
                                (let ((_hd153802153827_
                                       (##car _e153801153824_))
                                      (_tl153803153829_
                                       (##cdr _e153801153824_)))
                                  (let ((_id153832_ _hd153802153827_))
                                    (if (gx#stx-pair? _tl153803153829_)
                                        (let ((_e153804153834_
                                               (gx#syntax-e _tl153803153829_)))
                                          (let ((_hd153805153837_
                                                 (##car _e153804153834_))
                                                (_tl153806153839_
                                                 (##cdr _e153804153834_)))
                                            (let ((_expr153842_
                                                   _hd153805153837_))
                                              (if (gx#stx-null?
                                                   _tl153806153839_)
                                                  (if (gx#identifier?
                                                       _id153832_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id153832_
                            _stx153794_)
                           (cons (gx#core-expand-expression _expr153842_)
                                 '())))
               (gx#stx-source _stx153794_))
              (_E153797153812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153797153812_)))))
                                        (_E153797153812_)))))
                              (_E153797153812_))))
                      (_E153797153812_)))))
          (_E153796153844_))))
    (define gx#macro-expand-extern
      (lambda (_stx153642_)
        (letrec ((_generate153644_
                  (lambda (_body153674_)
                    (let _lp153676_ ((_rest153678_ _body153674_)
                                     (_ns153679_
                                      (gx#core-context-namespace__0))
                                     (_r153680_ '()))
                      (let* ((_e153681153696_ _rest153678_)
                             (_E153694153700_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e153681153696_)))
                             (_E153690153704_
                              (lambda ()
                                (if (gx#stx-null? _e153681153696_)
                                    (if '#t
                                        (reverse _r153680_)
                                        (_E153694153700_))
                                    (_E153694153700_))))
                             (_E153683153761_
                              (lambda ()
                                (if (gx#stx-pair? _e153681153696_)
                                    (let ((_e153691153708_
                                           (gx#syntax-e _e153681153696_)))
                                      (let ((_hd153692153711_
                                             (##car _e153691153708_))
                                            (_tl153693153713_
                                             (##cdr _e153691153708_)))
                                        (let* ((_hd153716_ _hd153692153711_)
                                               (_rest153718_ _tl153693153713_))
                                          (if '#t
                                              (if (gx#identifier? _hd153716_)
                                                  (_lp153676_
                                                   _rest153718_
                                                   _ns153679_
                                                   (cons (cons _hd153716_
                                                               (cons (if _ns153679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd153716_
                                  _ns153679_
                                  '"#"
                                  _hd153716_)
                                 _hd153716_)
                             '()))
                 _r153680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e153719153729_
                                                          _hd153716_)
                                                         (_E153721153733_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e153719153729_)))
                                                         (_E153720153757_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e153719153729_)
                        (let ((_e153722153737_ (gx#syntax-e _e153719153729_)))
                          (let ((_hd153723153740_ (##car _e153722153737_))
                                (_tl153724153742_ (##cdr _e153722153737_)))
                            (let ((_id153745_ _hd153723153740_))
                              (if (gx#stx-pair? _tl153724153742_)
                                  (let ((_e153725153747_
                                         (gx#syntax-e _tl153724153742_)))
                                    (let ((_hd153726153750_
                                           (##car _e153725153747_))
                                          (_tl153727153752_
                                           (##cdr _e153725153747_)))
                                      (let ((_eid153755_ _hd153726153750_))
                                        (if (gx#stx-null? _tl153727153752_)
                                            (if (and (gx#identifier?
                                                      _id153745_)
                                                     (gx#identifier?
                                                      _eid153755_))
                                                (_lp153676_
                                                 _rest153718_
                                                 _ns153679_
                                                 (cons (cons _id153745_
                                                             (cons _eid153755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r153680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153721153733_))
                                            (_E153721153733_)))))
                                  (_E153721153733_)))))
                        (_E153721153733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153720153757_)))
                                              (_E153690153704_)))))
                                    (_E153690153704_))))
                             (_E153682153790_
                              (lambda ()
                                (if (gx#stx-pair? _e153681153696_)
                                    (let ((_e153684153765_
                                           (gx#syntax-e _e153681153696_)))
                                      (let ((_hd153685153768_
                                             (##car _e153684153765_))
                                            (_tl153686153770_
                                             (##cdr _e153684153765_)))
                                        (if (eq? (gx#stx-e _hd153685153768_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl153686153770_)
                                                (let ((_e153687153773_
                                                       (gx#syntax-e
                                                        _tl153686153770_)))
                                                  (let ((_hd153688153776_
                                                         (##car _e153687153773_))
                                                        (_tl153689153778_
                                                         (##cdr _e153687153773_)))
                                                    (let* ((_ns153781_
                                                            _hd153688153776_)
                                                           (_rest153783_
                                                            _tl153689153778_))
                                                      (if '#t
                                                          (let ((_ns153788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns153781_)
                             (symbol->string (gx#stx-e _ns153781_))
                             (if (or (gx#stx-string? _ns153781_)
                                     (gx#stx-false? _ns153781_))
                                 (gx#stx-e _ns153781_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx153642_
                                  _ns153781_)))))
                    (_lp153676_ _rest153783_ _ns153788_ _r153680_))
                  (_E153683153761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153683153761_))
                                            (_E153683153761_))))
                                    (_E153683153761_)))))
                        (_E153682153790_))))))
          (let* ((_e153645153652_ _stx153642_)
                 (_E153647153656_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153645153652_)))
                 (_E153646153670_
                  (lambda ()
                    (if (gx#stx-pair? _e153645153652_)
                        (let ((_e153648153660_ (gx#syntax-e _e153645153652_)))
                          (let ((_hd153649153663_ (##car _e153648153660_))
                                (_tl153650153665_ (##cdr _e153648153660_)))
                            (let ((_body153668_ _tl153650153665_))
                              (if (gx#stx-list? _body153668_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate153644_ _body153668_))
                                  (_E153647153656_)))))
                        (_E153647153656_)))))
            (_E153646153670_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx153588_)
        (let* ((_e153589153602_ _stx153588_)
               (_E153591153606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153589153602_)))
               (_E153590153638_
                (lambda ()
                  (if (gx#stx-pair? _e153589153602_)
                      (let ((_e153592153610_ (gx#syntax-e _e153589153602_)))
                        (let ((_hd153593153613_ (##car _e153592153610_))
                              (_tl153594153615_ (##cdr _e153592153610_)))
                          (if (gx#stx-pair? _tl153594153615_)
                              (let ((_e153595153618_
                                     (gx#syntax-e _tl153594153615_)))
                                (let ((_hd153596153621_
                                       (##car _e153595153618_))
                                      (_tl153597153623_
                                       (##cdr _e153595153618_)))
                                  (let ((_hd153626_ _hd153596153621_))
                                    (if (gx#stx-pair? _tl153597153623_)
                                        (let ((_e153598153628_
                                               (gx#syntax-e _tl153597153623_)))
                                          (let ((_hd153599153631_
                                                 (##car _e153598153628_))
                                                (_tl153600153633_
                                                 (##cdr _e153598153628_)))
                                            (let ((_expr153636_
                                                   _hd153599153631_))
                                              (if (gx#stx-null?
                                                   _tl153600153633_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd153626_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd153626_)
                          (cons _expr153636_ '())))
              (_E153591153606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153591153606_)))))
                                        (_E153591153606_)))))
                              (_E153591153606_))))
                      (_E153591153606_)))))
          (_E153590153638_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx153534_)
        (let* ((_e153535153548_ _stx153534_)
               (_E153537153552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153535153548_)))
               (_E153536153584_
                (lambda ()
                  (if (gx#stx-pair? _e153535153548_)
                      (let ((_e153538153556_ (gx#syntax-e _e153535153548_)))
                        (let ((_hd153539153559_ (##car _e153538153556_))
                              (_tl153540153561_ (##cdr _e153538153556_)))
                          (if (gx#stx-pair? _tl153540153561_)
                              (let ((_e153541153564_
                                     (gx#syntax-e _tl153540153561_)))
                                (let ((_hd153542153567_
                                       (##car _e153541153564_))
                                      (_tl153543153569_
                                       (##cdr _e153541153564_)))
                                  (let ((_hd153572_ _hd153542153567_))
                                    (if (gx#stx-pair? _tl153543153569_)
                                        (let ((_e153544153574_
                                               (gx#syntax-e _tl153543153569_)))
                                          (let ((_hd153545153577_
                                                 (##car _e153544153574_))
                                                (_tl153546153579_
                                                 (##cdr _e153544153574_)))
                                            (let ((_expr153582_
                                                   _hd153545153577_))
                                              (if (gx#stx-null?
                                                   _tl153546153579_)
                                                  (if (gx#identifier?
                                                       _hd153572_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd153572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr153582_ '())))
              (_E153537153552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153537153552_)))))
                                        (_E153537153552_)))))
                              (_E153537153552_))))
                      (_E153537153552_)))))
          (_E153536153584_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx153480_)
        (let* ((_e153481153494_ _stx153480_)
               (_E153483153498_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153481153494_)))
               (_E153482153530_
                (lambda ()
                  (if (gx#stx-pair? _e153481153494_)
                      (let ((_e153484153502_ (gx#syntax-e _e153481153494_)))
                        (let ((_hd153485153505_ (##car _e153484153502_))
                              (_tl153486153507_ (##cdr _e153484153502_)))
                          (if (gx#stx-pair? _tl153486153507_)
                              (let ((_e153487153510_
                                     (gx#syntax-e _tl153486153507_)))
                                (let ((_hd153488153513_
                                       (##car _e153487153510_))
                                      (_tl153489153515_
                                       (##cdr _e153487153510_)))
                                  (let ((_id153518_ _hd153488153513_))
                                    (if (gx#stx-pair? _tl153489153515_)
                                        (let ((_e153490153520_
                                               (gx#syntax-e _tl153489153515_)))
                                          (let ((_hd153491153523_
                                                 (##car _e153490153520_))
                                                (_tl153492153525_
                                                 (##cdr _e153490153520_)))
                                            (let ((_alias-id153528_
                                                   _hd153491153523_))
                                              (if (gx#stx-null?
                                                   _tl153492153525_)
                                                  (if (and (gx#identifier?
                                                            _id153518_)
                                                           (gx#identifier?
                                                            _alias-id153528_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id153518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id153528_ '())))
              (_E153483153498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153483153498_)))))
                                        (_E153483153498_)))))
                              (_E153483153498_))))
                      (_E153483153498_)))))
          (_E153482153530_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx153437_)
        (let* ((_e153438153448_ _stx153437_)
               (_E153440153452_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153438153448_)))
               (_E153439153476_
                (lambda ()
                  (if (gx#stx-pair? _e153438153448_)
                      (let ((_e153441153456_ (gx#syntax-e _e153438153448_)))
                        (let ((_hd153442153459_ (##car _e153441153456_))
                              (_tl153443153461_ (##cdr _e153441153456_)))
                          (if (gx#stx-pair? _tl153443153461_)
                              (let ((_e153444153464_
                                     (gx#syntax-e _tl153443153461_)))
                                (let ((_hd153445153467_
                                       (##car _e153444153464_))
                                      (_tl153446153469_
                                       (##cdr _e153444153464_)))
                                  (let* ((_hd153472_ _hd153445153467_)
                                         (_body153474_ _tl153446153469_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd153472_)
                                             (gx#stx-list? _body153474_)
                                             (not (gx#stx-null? _body153474_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd153472_)
                                         _body153474_)
                                        (_E153440153452_)))))
                              (_E153440153452_))))
                      (_E153440153452_)))))
          (_E153439153476_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx153373_)
        (letrec ((_generate153375_
                  (lambda (_clause153405_)
                    (let* ((_e153406153413_ _clause153405_)
                           (_E153408153417_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx153373_
                               _clause153405_)))
                           (_E153407153433_
                            (lambda ()
                              (if (gx#stx-pair? _e153406153413_)
                                  (let ((_e153409153421_
                                         (gx#syntax-e _e153406153413_)))
                                    (let ((_hd153410153424_
                                           (##car _e153409153421_))
                                          (_tl153411153426_
                                           (##cdr _e153409153421_)))
                                      (let* ((_hd153429_ _hd153410153424_)
                                             (_body153431_ _tl153411153426_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd153429_)
                                                 (gx#stx-list? _body153431_)
                                                 (not (gx#stx-null?
                                                       _body153431_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd153429_)
                                                   _body153431_)
                                             (gx#stx-source _clause153405_))
                                            (_E153408153417_)))))
                                  (_E153408153417_)))))
                      (_E153407153433_)))))
          (let* ((_e153376153383_ _stx153373_)
                 (_E153378153387_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153376153383_)))
                 (_E153377153401_
                  (lambda ()
                    (if (gx#stx-pair? _e153376153383_)
                        (let ((_e153379153391_ (gx#syntax-e _e153376153383_)))
                          (let ((_hd153380153394_ (##car _e153379153391_))
                                (_tl153381153396_ (##cdr _e153379153391_)))
                            (let ((_clauses153399_ _tl153381153396_))
                              (if (gx#stx-list? _clauses153399_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate153375_
                                    _clauses153399_))
                                  (_E153378153387_)))))
                        (_E153378153387_)))))
            (_E153377153401_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx153274_ _form153275_)
        (letrec ((_generate153277_
                  (lambda (_bind153320_)
                    (let* ((_e153321153331_ _bind153320_)
                           (_E153323153335_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx153274_
                               _bind153320_)))
                           (_E153322153359_
                            (lambda ()
                              (if (gx#stx-pair? _e153321153331_)
                                  (let ((_e153324153339_
                                         (gx#syntax-e _e153321153331_)))
                                    (let ((_hd153325153342_
                                           (##car _e153324153339_))
                                          (_tl153326153344_
                                           (##cdr _e153324153339_)))
                                      (let ((_ids153347_ _hd153325153342_))
                                        (if (gx#stx-pair? _tl153326153344_)
                                            (let ((_e153327153349_
                                                   (gx#syntax-e
                                                    _tl153326153344_)))
                                              (let ((_hd153328153352_
                                                     (##car _e153327153349_))
                                                    (_tl153329153354_
                                                     (##cdr _e153327153349_)))
                                                (let ((_expr153357_
                                                       _hd153328153352_))
                                                  (if (gx#stx-null?
                                                       _tl153329153354_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids153347_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids153347_)
                        (cons _expr153357_ '()))
                  (_E153323153335_))
              (_E153323153335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E153323153335_)))))
                                  (_E153323153335_)))))
                      (_E153322153359_)))))
          (let* ((_e153278153288_ _stx153274_)
                 (_E153280153292_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153278153288_)))
                 (_E153279153316_
                  (lambda ()
                    (if (gx#stx-pair? _e153278153288_)
                        (let ((_e153281153296_ (gx#syntax-e _e153278153288_)))
                          (let ((_hd153282153299_ (##car _e153281153296_))
                                (_tl153283153301_ (##cdr _e153281153296_)))
                            (if (gx#stx-pair? _tl153283153301_)
                                (let ((_e153284153304_
                                       (gx#syntax-e _tl153283153301_)))
                                  (let ((_hd153285153307_
                                         (##car _e153284153304_))
                                        (_tl153286153309_
                                         (##cdr _e153284153304_)))
                                    (let* ((_hd153312_ _hd153285153307_)
                                           (_body153314_ _tl153286153309_))
                                      (if (and (gx#stx-list? _hd153312_)
                                               (gx#stx-list? _body153314_)
                                               (not (gx#stx-null?
                                                     _body153314_)))
                                          (gx#core-cons*
                                           _form153275_
                                           (gx#stx-map1
                                            _generate153277_
                                            _hd153312_)
                                           _body153314_)
                                          (_E153280153292_)))))
                                (_E153280153292_))))
                        (_E153280153292_)))))
            (_E153279153316_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx153366_)
        (let ((_form153368_ '%#let-values))
          (gx#macro-expand-let-values__% _stx153366_ _form153368_))))
    (define gx#macro-expand-let-values
      (lambda _g160319_
        (let ((_g160318_ (##length _g160319_)))
          (cond ((##fx= _g160318_ 1)
                 (apply (lambda (_stx153366_)
                          (gx#macro-expand-let-values__0 _stx153366_))
                        _g160319_))
                ((##fx= _g160318_ 2)
                 (apply (lambda (_stx153370_ _form153371_)
                          (gx#macro-expand-let-values__%
                           _stx153370_
                           _form153371_))
                        _g160319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g160319_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx153271_)
        (gx#macro-expand-let-values__% _stx153271_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx153269_)
        (gx#macro-expand-let-values__% _stx153269_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx153160_)
        (let* ((_e153161153187_ _stx153160_)
               (_E153173153191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153161153187_)))
               (_E153163153233_
                (lambda ()
                  (if (gx#stx-pair? _e153161153187_)
                      (let ((_e153174153195_ (gx#syntax-e _e153161153187_)))
                        (let ((_hd153175153198_ (##car _e153174153195_))
                              (_tl153176153200_ (##cdr _e153174153195_)))
                          (if (gx#stx-pair? _tl153176153200_)
                              (let ((_e153177153203_
                                     (gx#syntax-e _tl153176153200_)))
                                (let ((_hd153178153206_
                                       (##car _e153177153203_))
                                      (_tl153179153208_
                                       (##cdr _e153177153203_)))
                                  (let ((_test153211_ _hd153178153206_))
                                    (if (gx#stx-pair? _tl153179153208_)
                                        (let ((_e153180153213_
                                               (gx#syntax-e _tl153179153208_)))
                                          (let ((_hd153181153216_
                                                 (##car _e153180153213_))
                                                (_tl153182153218_
                                                 (##cdr _e153180153213_)))
                                            (let ((_K153221_ _hd153181153216_))
                                              (if (gx#stx-pair?
                                                   _tl153182153218_)
                                                  (let ((_e153183153223_
                                                         (gx#syntax-e
                                                          _tl153182153218_)))
                                                    (let ((_hd153184153226_
                                                           (##car _e153183153223_))
                                                          (_tl153185153228_
                                                           (##cdr _e153183153223_)))
                                                      (let ((_E153231_
                                                             _hd153184153226_))
                                                        (if (gx#stx-null?
                                                             _tl153185153228_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test153211_
                         _K153221_
                         _E153231_)
                        (_E153173153191_))
                    (_E153173153191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153173153191_)))))
                                        (_E153173153191_)))))
                              (_E153173153191_))))
                      (_E153173153191_))))
               (_E153162153265_
                (lambda ()
                  (if (gx#stx-pair? _e153161153187_)
                      (let ((_e153164153237_ (gx#syntax-e _e153161153187_)))
                        (let ((_hd153165153240_ (##car _e153164153237_))
                              (_tl153166153242_ (##cdr _e153164153237_)))
                          (if (gx#stx-pair? _tl153166153242_)
                              (let ((_e153167153245_
                                     (gx#syntax-e _tl153166153242_)))
                                (let ((_hd153168153248_
                                       (##car _e153167153245_))
                                      (_tl153169153250_
                                       (##cdr _e153167153245_)))
                                  (let ((_test153253_ _hd153168153248_))
                                    (if (gx#stx-pair? _tl153169153250_)
                                        (let ((_e153170153255_
                                               (gx#syntax-e _tl153169153250_)))
                                          (let ((_hd153171153258_
                                                 (##car _e153170153255_))
                                                (_tl153172153260_
                                                 (##cdr _e153170153255_)))
                                            (let ((_K153263_ _hd153171153258_))
                                              (if (gx#stx-null?
                                                   _tl153172153260_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test153253_
                                                       _K153263_
                                                       '#!void)
                                                      (_E153163153233_))
                                                  (_E153163153233_)))))
                                        (_E153163153233_)))))
                              (_E153163153233_))))
                      (_E153163153233_)))))
          (_E153162153265_))))
    (define gx#free-identifier=?
      (lambda (_xid153148_ _yid153149_)
        (let ((_xe153151_ (gx#resolve-identifier__0 _xid153148_))
              (_ye153152_ (gx#resolve-identifier__0 _yid153149_)))
          (if (and _xe153151_ _ye153152_)
              (let ((_$e153154_ (eq? _xe153151_ _ye153152_)))
                (if _$e153154_
                    _$e153154_
                    (if (##structure-instance-of? _xe153151_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye153152_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe153151_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye153152_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe153151_ _ye153152_)
                  '#f
                  (gx#stx-eq? _xid153148_ _yid153149_))))))
    (define gx#bound-identifier=?
      (lambda (_xid153132_ _yid153133_)
        (letrec ((_context153135_
                  (lambda (_e153146_)
                    (if (##structure-direct-instance-of?
                         _e153146_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e153146_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks153136_
                  (lambda (_e153144_)
                    (if (symbol? _e153144_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e153144_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e153144_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e153144_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap153137_
                  (lambda (_e153142_)
                    (if (symbol? _e153142_)
                        _e153142_
                        (gx#syntax-local-unwrap _e153142_)))))
          (let ((_x153139_ (_unwrap153137_ _xid153132_))
                (_y153140_ (_unwrap153137_ _yid153133_)))
            (if (gx#stx-eq? _x153139_ _y153140_)
                (if (eq? (_context153135_ _x153139_)
                         (_context153135_ _y153140_))
                    (equal? (_marks153136_ _x153139_)
                            (_marks153136_ _y153140_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx153130_)
        (if (gx#identifier? _stx153130_)
            (gx#core-identifier=? _stx153130_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx153128_)
        (if (gx#identifier? _stx153128_)
            (gx#core-identifier=? _stx153128_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x153126_)
        (if (gx#identifier? _x153126_)
            (if (not (gx#underscore? _x153126_)) _x153126_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx153072_ _where153073_)
        (let _lp153075_ ((_rest153077_ (gx#syntax->list _stx153072_)))
          (let* ((_rest153078153086_ _rest153077_)
                 (_else153080153094_ (lambda () '#t))
                 (_K153082153104_
                  (lambda (_rest153097_ _hd153098_)
                    (if (not (gx#identifier? _hd153098_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where153073_
                         _hd153098_)
                        (if (find (lambda (_g153099153101_)
                                    (gx#bound-identifier=?
                                     _g153099153101_
                                     _hd153098_))
                                  _rest153097_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where153073_
                             _hd153098_)
                            (_lp153075_ _rest153097_))))))
            (if (##pair? _rest153078153086_)
                (let ((_hd153083153107_ (##car _rest153078153086_))
                      (_tl153084153109_ (##cdr _rest153078153086_)))
                  (let* ((_hd153112_ _hd153083153107_)
                         (_rest153114_ _tl153084153109_))
                    (_K153082153104_ _rest153114_ _hd153112_)))
                (_else153080153094_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx153119_)
        (let ((_where153121_ _stx153119_))
          (gx#check-duplicate-identifiers__% _stx153119_ _where153121_))))
    (define gx#check-duplicate-identifiers
      (lambda _g160321_
        (let ((_g160320_ (##length _g160321_)))
          (cond ((##fx= _g160320_ 1)
                 (apply (lambda (_stx153119_)
                          (gx#check-duplicate-identifiers__0 _stx153119_))
                        _g160321_))
                ((##fx= _g160320_ 2)
                 (apply (lambda (_stx153123_ _where153124_)
                          (gx#check-duplicate-identifiers__%
                           _stx153123_
                           _where153124_))
                        _g160321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g160321_))))))
    (define gx#core-bind-values?
      (lambda (_stx153064_)
        (gx#stx-andmap
         (lambda (_x153066_)
           (let ((_$e153068_ (gx#identifier? _x153066_)))
             (if _$e153068_ _$e153068_ (gx#stx-false? _x153066_))))
         _stx153064_)))
    (define gx#core-bind-values!__%
      (lambda (_stx153028_ _rebind?153029_ _phi153030_ _ctx153031_)
        (gx#stx-for-each1
         (lambda (_id153033_)
           (if (gx#identifier? _id153033_)
               (gx#core-bind-runtime!__%
                _id153033_
                _rebind?153029_
                _phi153030_
                _ctx153031_)
               '#!void))
         _stx153028_)))
    (define gx#core-bind-values!__0
      (lambda (_stx153038_)
        (let* ((_rebind?153040_ '#f)
               (_phi153042_ (gx#current-expander-phi))
               (_ctx153044_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153038_
           _rebind?153040_
           _phi153042_
           _ctx153044_))))
    (define gx#core-bind-values!__1
      (lambda (_stx153046_ _rebind?153047_)
        (let* ((_phi153049_ (gx#current-expander-phi))
               (_ctx153051_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153046_
           _rebind?153047_
           _phi153049_
           _ctx153051_))))
    (define gx#core-bind-values!__2
      (lambda (_stx153053_ _rebind?153054_ _phi153055_)
        (let ((_ctx153057_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153053_
           _rebind?153054_
           _phi153055_
           _ctx153057_))))
    (define gx#core-bind-values!
      (lambda _g160323_
        (let ((_g160322_ (##length _g160323_)))
          (cond ((##fx= _g160322_ 1)
                 (apply (lambda (_stx153038_)
                          (gx#core-bind-values!__0 _stx153038_))
                        _g160323_))
                ((##fx= _g160322_ 2)
                 (apply (lambda (_stx153046_ _rebind?153047_)
                          (gx#core-bind-values!__1
                           _stx153046_
                           _rebind?153047_))
                        _g160323_))
                ((##fx= _g160322_ 3)
                 (apply (lambda (_stx153053_ _rebind?153054_ _phi153055_)
                          (gx#core-bind-values!__2
                           _stx153053_
                           _rebind?153054_
                           _phi153055_))
                        _g160323_))
                ((##fx= _g160322_ 4)
                 (apply (lambda (_stx153059_
                                 _rebind?153060_
                                 _phi153061_
                                 _ctx153062_)
                          (gx#core-bind-values!__%
                           _stx153059_
                           _rebind?153060_
                           _phi153061_
                           _ctx153062_))
                        _g160323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g160323_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx153023_)
        (gx#stx-map1
         (lambda (_x153025_)
           (if (gx#identifier? _x153025_)
               (gx#core-quote-syntax__0 _x153025_)
               '#f))
         _stx153023_)))
    (define gx#core-runtime-ref?
      (lambda (_stx153016_)
        (if (gx#identifier? _stx153016_)
            (let* ((_bind153018_ (gx#resolve-identifier__0 _stx153016_))
                   (_$e153020_ (not _bind153018_)))
              (if _$e153020_
                  _$e153020_
                  (##structure-instance-of?
                   _bind153018_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id153008_ _form153009_)
        (let ((_bind153011_ (gx#resolve-identifier__0 _id153008_)))
          (if (##structure-instance-of? _bind153011_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id153008_)
              (if (not _bind153011_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id153008_)))
                      (gx#core-quote-syntax__0 _id153008_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form153009_
                       _id153008_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form153009_
                   _id153008_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id152967_ _rebind?152968_ _phi152969_ _ctx152970_)
        (let* ((_key152972_ (gx#core-identifier-key _id152967_))
               (_eid152974_
                (gx#make-binding-id__%
                 _key152972_
                 '#f
                 _phi152969_
                 _ctx152970_))
               (_bind152976_
                (if (##structure-instance-of?
                     _ctx152970_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152974_
                     _key152972_
                     _phi152969_
                     _ctx152970_)
                    (if (##structure-instance-of?
                         _ctx152970_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152974_
                         _key152972_
                         _phi152969_)
                        (if (##structure-instance-of?
                             _ctx152970_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid152974_
                             _key152972_
                             _phi152969_)
                            (##structure
                             gx#runtime-binding::t
                             _eid152974_
                             _key152972_
                             _phi152969_))))))
          (gx#bind-identifier!__%
           _id152967_
           _bind152976_
           _rebind?152968_
           _phi152969_
           _ctx152970_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id152982_)
        (let* ((_rebind?152984_ '#f)
               (_phi152986_ (gx#current-expander-phi))
               (_ctx152988_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152982_
           _rebind?152984_
           _phi152986_
           _ctx152988_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id152990_ _rebind?152991_)
        (let* ((_phi152993_ (gx#current-expander-phi))
               (_ctx152995_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152990_
           _rebind?152991_
           _phi152993_
           _ctx152995_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id152997_ _rebind?152998_ _phi152999_)
        (let ((_ctx153001_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152997_
           _rebind?152998_
           _phi152999_
           _ctx153001_))))
    (define gx#core-bind-runtime!
      (lambda _g160325_
        (let ((_g160324_ (##length _g160325_)))
          (cond ((##fx= _g160324_ 1)
                 (apply (lambda (_id152982_)
                          (gx#core-bind-runtime!__0 _id152982_))
                        _g160325_))
                ((##fx= _g160324_ 2)
                 (apply (lambda (_id152990_ _rebind?152991_)
                          (gx#core-bind-runtime!__1
                           _id152990_
                           _rebind?152991_))
                        _g160325_))
                ((##fx= _g160324_ 3)
                 (apply (lambda (_id152997_ _rebind?152998_ _phi152999_)
                          (gx#core-bind-runtime!__2
                           _id152997_
                           _rebind?152998_
                           _phi152999_))
                        _g160325_))
                ((##fx= _g160324_ 4)
                 (apply (lambda (_id153003_
                                 _rebind?153004_
                                 _phi153005_
                                 _ctx153006_)
                          (gx#core-bind-runtime!__%
                           _id153003_
                           _rebind?153004_
                           _phi153005_
                           _ctx153006_))
                        _g160325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g160325_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id152922_ _eid152923_ _rebind?152924_ _phi152925_ _ctx152926_)
        (let* ((_key152928_ (gx#core-identifier-key _id152922_))
               (_bind152930_
                (if (##structure-instance-of?
                     _ctx152926_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152923_
                     _key152928_
                     _phi152925_
                     _ctx152926_)
                    (if (##structure-instance-of?
                         _ctx152926_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152923_
                         _key152928_
                         _phi152925_)
                        (##structure
                         gx#runtime-binding::t
                         _eid152923_
                         _key152928_
                         _phi152925_)))))
          (gx#bind-identifier!__%
           _id152922_
           _bind152930_
           _rebind?152924_
           _phi152925_
           _ctx152926_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id152936_ _eid152937_)
        (let* ((_rebind?152939_ '#f)
               (_phi152941_ (gx#current-expander-phi))
               (_ctx152943_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152936_
           _eid152937_
           _rebind?152939_
           _phi152941_
           _ctx152943_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id152945_ _eid152946_ _rebind?152947_)
        (let* ((_phi152949_ (gx#current-expander-phi))
               (_ctx152951_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152945_
           _eid152946_
           _rebind?152947_
           _phi152949_
           _ctx152951_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id152953_ _eid152954_ _rebind?152955_ _phi152956_)
        (let ((_ctx152958_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152953_
           _eid152954_
           _rebind?152955_
           _phi152956_
           _ctx152958_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g160327_
        (let ((_g160326_ (##length _g160327_)))
          (cond ((##fx= _g160326_ 2)
                 (apply (lambda (_id152936_ _eid152937_)
                          (gx#core-bind-runtime-reference!__0
                           _id152936_
                           _eid152937_))
                        _g160327_))
                ((##fx= _g160326_ 3)
                 (apply (lambda (_id152945_ _eid152946_ _rebind?152947_)
                          (gx#core-bind-runtime-reference!__1
                           _id152945_
                           _eid152946_
                           _rebind?152947_))
                        _g160327_))
                ((##fx= _g160326_ 4)
                 (apply (lambda (_id152953_
                                 _eid152954_
                                 _rebind?152955_
                                 _phi152956_)
                          (gx#core-bind-runtime-reference!__2
                           _id152953_
                           _eid152954_
                           _rebind?152955_
                           _phi152956_))
                        _g160327_))
                ((##fx= _g160326_ 5)
                 (apply (lambda (_id152960_
                                 _eid152961_
                                 _rebind?152962_
                                 _phi152963_
                                 _ctx152964_)
                          (gx#core-bind-runtime-reference!__%
                           _id152960_
                           _eid152961_
                           _rebind?152962_
                           _phi152963_
                           _ctx152964_))
                        _g160327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g160327_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id152882_ _eid152883_ _rebind?152884_ _phi152885_ _ctx152886_)
        (gx#bind-identifier!__%
         _id152882_
         (##structure
          gx#extern-binding::t
          _eid152883_
          (gx#core-identifier-key _id152882_)
          _phi152885_)
         _rebind?152884_
         _phi152885_
         _ctx152886_)))
    (define gx#core-bind-extern!__0
      (lambda (_id152891_ _eid152892_)
        (let* ((_rebind?152894_ '#f)
               (_phi152896_ (gx#current-expander-phi))
               (_ctx152898_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152891_
           _eid152892_
           _rebind?152894_
           _phi152896_
           _ctx152898_))))
    (define gx#core-bind-extern!__1
      (lambda (_id152900_ _eid152901_ _rebind?152902_)
        (let* ((_phi152904_ (gx#current-expander-phi))
               (_ctx152906_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152900_
           _eid152901_
           _rebind?152902_
           _phi152904_
           _ctx152906_))))
    (define gx#core-bind-extern!__2
      (lambda (_id152908_ _eid152909_ _rebind?152910_ _phi152911_)
        (let ((_ctx152913_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152908_
           _eid152909_
           _rebind?152910_
           _phi152911_
           _ctx152913_))))
    (define gx#core-bind-extern!
      (lambda _g160329_
        (let ((_g160328_ (##length _g160329_)))
          (cond ((##fx= _g160328_ 2)
                 (apply (lambda (_id152891_ _eid152892_)
                          (gx#core-bind-extern!__0 _id152891_ _eid152892_))
                        _g160329_))
                ((##fx= _g160328_ 3)
                 (apply (lambda (_id152900_ _eid152901_ _rebind?152902_)
                          (gx#core-bind-extern!__1
                           _id152900_
                           _eid152901_
                           _rebind?152902_))
                        _g160329_))
                ((##fx= _g160328_ 4)
                 (apply (lambda (_id152908_
                                 _eid152909_
                                 _rebind?152910_
                                 _phi152911_)
                          (gx#core-bind-extern!__2
                           _id152908_
                           _eid152909_
                           _rebind?152910_
                           _phi152911_))
                        _g160329_))
                ((##fx= _g160328_ 5)
                 (apply (lambda (_id152915_
                                 _eid152916_
                                 _rebind?152917_
                                 _phi152918_
                                 _ctx152919_)
                          (gx#core-bind-extern!__%
                           _id152915_
                           _eid152916_
                           _rebind?152917_
                           _phi152918_
                           _ctx152919_))
                        _g160329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g160329_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id152836_ _e152837_ _rebind?152838_ _phi152839_ _ctx152840_)
        (gx#bind-identifier!__%
         _id152836_
         (let ((_key152845_ (gx#core-identifier-key _id152836_))
               (_e152846_
                (if (or (##structure-instance-of? _e152837_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e152837_
                         'gx#expander-context::t))
                    _e152837_
                    (##structure
                     gx#user-expander::t
                     _e152837_
                     _ctx152840_
                     _phi152839_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key152845_ '#t _phi152839_ _ctx152840_)
            _key152845_
            _phi152839_
            _e152846_))
         _rebind?152838_
         _phi152839_
         _ctx152840_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id152851_ _e152852_)
        (let* ((_rebind?152854_ '#f)
               (_phi152856_ (gx#current-expander-phi))
               (_ctx152858_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152851_
           _e152852_
           _rebind?152854_
           _phi152856_
           _ctx152858_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id152860_ _e152861_ _rebind?152862_)
        (let* ((_phi152864_ (gx#current-expander-phi))
               (_ctx152866_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152860_
           _e152861_
           _rebind?152862_
           _phi152864_
           _ctx152866_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id152868_ _e152869_ _rebind?152870_ _phi152871_)
        (let ((_ctx152873_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152868_
           _e152869_
           _rebind?152870_
           _phi152871_
           _ctx152873_))))
    (define gx#core-bind-syntax!
      (lambda _g160331_
        (let ((_g160330_ (##length _g160331_)))
          (cond ((##fx= _g160330_ 2)
                 (apply (lambda (_id152851_ _e152852_)
                          (gx#core-bind-syntax!__0 _id152851_ _e152852_))
                        _g160331_))
                ((##fx= _g160330_ 3)
                 (apply (lambda (_id152860_ _e152861_ _rebind?152862_)
                          (gx#core-bind-syntax!__1
                           _id152860_
                           _e152861_
                           _rebind?152862_))
                        _g160331_))
                ((##fx= _g160330_ 4)
                 (apply (lambda (_id152868_
                                 _e152869_
                                 _rebind?152870_
                                 _phi152871_)
                          (gx#core-bind-syntax!__2
                           _id152868_
                           _e152869_
                           _rebind?152870_
                           _phi152871_))
                        _g160331_))
                ((##fx= _g160330_ 5)
                 (apply (lambda (_id152875_
                                 _e152876_
                                 _rebind?152877_
                                 _phi152878_
                                 _ctx152879_)
                          (gx#core-bind-syntax!__%
                           _id152875_
                           _e152876_
                           _rebind?152877_
                           _phi152878_
                           _ctx152879_))
                        _g160331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g160331_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id152819_ _e152820_ _rebind?152821_)
        (gx#core-bind-syntax!__%
         _id152819_
         _e152820_
         _rebind?152821_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id152826_ _e152827_)
        (let ((_rebind?152829_ '#f))
          (gx#core-bind-root-syntax!__%
           _id152826_
           _e152827_
           _rebind?152829_))))
    (define gx#core-bind-root-syntax!
      (lambda _g160333_
        (let ((_g160332_ (##length _g160333_)))
          (cond ((##fx= _g160332_ 2)
                 (apply (lambda (_id152826_ _e152827_)
                          (gx#core-bind-root-syntax!__0 _id152826_ _e152827_))
                        _g160333_))
                ((##fx= _g160332_ 3)
                 (apply (lambda (_id152831_ _e152832_ _rebind?152833_)
                          (gx#core-bind-root-syntax!__%
                           _id152831_
                           _e152832_
                           _rebind?152833_))
                        _g160333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g160333_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id152777_
               _alias-id152778_
               _rebind?152779_
               _phi152780_
               _ctx152781_)
        (gx#bind-identifier!__%
         _id152777_
         (let ((_key152783_ (gx#core-identifier-key _id152777_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key152783_ '#t _phi152780_ _ctx152781_)
            _key152783_
            _phi152780_
            _alias-id152778_))
         _rebind?152779_
         _phi152780_
         _ctx152781_)))
    (define gx#core-bind-alias!__0
      (lambda (_id152788_ _alias-id152789_)
        (let* ((_rebind?152791_ '#f)
               (_phi152793_ (gx#current-expander-phi))
               (_ctx152795_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152788_
           _alias-id152789_
           _rebind?152791_
           _phi152793_
           _ctx152795_))))
    (define gx#core-bind-alias!__1
      (lambda (_id152797_ _alias-id152798_ _rebind?152799_)
        (let* ((_phi152801_ (gx#current-expander-phi))
               (_ctx152803_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152797_
           _alias-id152798_
           _rebind?152799_
           _phi152801_
           _ctx152803_))))
    (define gx#core-bind-alias!__2
      (lambda (_id152805_ _alias-id152806_ _rebind?152807_ _phi152808_)
        (let ((_ctx152810_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152805_
           _alias-id152806_
           _rebind?152807_
           _phi152808_
           _ctx152810_))))
    (define gx#core-bind-alias!
      (lambda _g160335_
        (let ((_g160334_ (##length _g160335_)))
          (cond ((##fx= _g160334_ 2)
                 (apply (lambda (_id152788_ _alias-id152789_)
                          (gx#core-bind-alias!__0 _id152788_ _alias-id152789_))
                        _g160335_))
                ((##fx= _g160334_ 3)
                 (apply (lambda (_id152797_ _alias-id152798_ _rebind?152799_)
                          (gx#core-bind-alias!__1
                           _id152797_
                           _alias-id152798_
                           _rebind?152799_))
                        _g160335_))
                ((##fx= _g160334_ 4)
                 (apply (lambda (_id152805_
                                 _alias-id152806_
                                 _rebind?152807_
                                 _phi152808_)
                          (gx#core-bind-alias!__2
                           _id152805_
                           _alias-id152806_
                           _rebind?152807_
                           _phi152808_))
                        _g160335_))
                ((##fx= _g160334_ 5)
                 (apply (lambda (_id152812_
                                 _alias-id152813_
                                 _rebind?152814_
                                 _phi152815_
                                 _ctx152816_)
                          (gx#core-bind-alias!__%
                           _id152812_
                           _alias-id152813_
                           _rebind?152814_
                           _phi152815_
                           _ctx152816_))
                        _g160335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g160335_))))))
    (define gx#make-binding-id__%
      (lambda (_key152734_ _syntax?152735_ _phi152736_ _ctx152737_)
        (if (uninterned-symbol? _key152734_)
            (gensym 'L)
            (if (pair? _key152734_)
                (gensym (car _key152734_))
                (if (##structure-instance-of? _ctx152737_ 'gx#top-context::t)
                    (let ((_ns152739_
                           (gx#core-context-namespace__% _ctx152737_)))
                      (if (and (fxzero? _phi152736_) (not _syntax?152735_))
                          (if _ns152739_
                              (make-symbol__1 _ns152739_ '"#" _key152734_)
                              _key152734_)
                          (if _syntax?152735_
                              (make-symbol__1
                               (let ((_$e152741_ _ns152739_))
                                 (if _$e152741_ _$e152741_ '""))
                               '"[:"
                               (number->string _phi152736_)
                               '":]#"
                               _key152734_)
                              (make-symbol__1
                               (let ((_$e152744_ _ns152739_))
                                 (if _$e152744_ _$e152744_ '""))
                               '"["
                               (number->string _phi152736_)
                               '"]#"
                               _key152734_))))
                    (gensym _key152734_))))))
    (define gx#make-binding-id__0
      (lambda (_key152750_)
        (let* ((_syntax?152752_ '#f)
               (_phi152754_ (gx#current-expander-phi))
               (_ctx152756_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152750_
           _syntax?152752_
           _phi152754_
           _ctx152756_))))
    (define gx#make-binding-id__1
      (lambda (_key152758_ _syntax?152759_)
        (let* ((_phi152761_ (gx#current-expander-phi))
               (_ctx152763_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152758_
           _syntax?152759_
           _phi152761_
           _ctx152763_))))
    (define gx#make-binding-id__2
      (lambda (_key152765_ _syntax?152766_ _phi152767_)
        (let ((_ctx152769_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152765_
           _syntax?152766_
           _phi152767_
           _ctx152769_))))
    (define gx#make-binding-id
      (lambda _g160337_
        (let ((_g160336_ (##length _g160337_)))
          (cond ((##fx= _g160336_ 1)
                 (apply (lambda (_key152750_)
                          (gx#make-binding-id__0 _key152750_))
                        _g160337_))
                ((##fx= _g160336_ 2)
                 (apply (lambda (_key152758_ _syntax?152759_)
                          (gx#make-binding-id__1 _key152758_ _syntax?152759_))
                        _g160337_))
                ((##fx= _g160336_ 3)
                 (apply (lambda (_key152765_ _syntax?152766_ _phi152767_)
                          (gx#make-binding-id__2
                           _key152765_
                           _syntax?152766_
                           _phi152767_))
                        _g160337_))
                ((##fx= _g160336_ 4)
                 (apply (lambda (_key152771_
                                 _syntax?152772_
                                 _phi152773_
                                 _ctx152774_)
                          (gx#make-binding-id__%
                           _key152771_
                           _syntax?152772_
                           _phi152773_
                           _ctx152774_))
                        _g160337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g160337_))))))))
