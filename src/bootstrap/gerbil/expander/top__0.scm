(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707842372)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx155711_)
        (letrec ((_expand-special155713_
                  (lambda (_hd155715_ _K155716_ _rest155717_ _r155718_)
                    (_K155716_
                     _rest155717_
                     (cons (gx#core-expand-top _hd155715_) _r155718_)))))
          (gx#core-expand-block__0 _stx155711_ _expand-special155713_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx155464_)
        (letrec ((_expand-special155466_
                  (lambda (_hd155586_ _K155587_ _rest155588_ _r155589_)
                    (let* ((_K155593_
                            (lambda (_e155591_)
                              (_K155587_
                               _rest155588_
                               (cons _e155591_ _r155589_))))
                           (_e155594155623_ _hd155586_)
                           (_E155618155627_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155594155623_)))
                           (_E155614155639_
                            (lambda ()
                              (if (gx#stx-pair? _e155594155623_)
                                  (let ((_e155619155631_
                                         (gx#syntax-e _e155594155623_)))
                                    (let ((_hd155620155634_
                                           (##car _e155619155631_))
                                          (_tl155621155636_
                                           (##cdr _e155619155631_)))
                                      (if (and (gx#identifier?
                                                _hd155620155634_)
                                               (gx#core-identifier=?
                                                _hd155620155634_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K155593_
                                               (gx#core-expand-define-runtime%
                                                _hd155586_))
                                              (_E155618155627_))
                                          (_E155618155627_))))
                                  (_E155618155627_))))
                           (_E155610155651_
                            (lambda ()
                              (if (gx#stx-pair? _e155594155623_)
                                  (let ((_e155615155643_
                                         (gx#syntax-e _e155594155623_)))
                                    (let ((_hd155616155646_
                                           (##car _e155615155643_))
                                          (_tl155617155648_
                                           (##cdr _e155615155643_)))
                                      (if (and (gx#identifier?
                                                _hd155616155646_)
                                               (gx#core-identifier=?
                                                _hd155616155646_
                                                '%#define-alias))
                                          (if '#t
                                              (_K155593_
                                               (gx#core-expand-define-alias%
                                                _hd155586_))
                                              (_E155614155639_))
                                          (_E155614155639_))))
                                  (_E155614155639_))))
                           (_E155600155663_
                            (lambda ()
                              (if (gx#stx-pair? _e155594155623_)
                                  (let ((_e155611155655_
                                         (gx#syntax-e _e155594155623_)))
                                    (let ((_hd155612155658_
                                           (##car _e155611155655_))
                                          (_tl155613155660_
                                           (##cdr _e155611155655_)))
                                      (if (and (gx#identifier?
                                                _hd155612155658_)
                                               (gx#core-identifier=?
                                                _hd155612155658_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K155593_
                                               (gx#core-expand-define-syntax%
                                                _hd155586_))
                                              (_E155610155651_))
                                          (_E155610155651_))))
                                  (_E155610155651_))))
                           (_E155596155695_
                            (lambda ()
                              (if (gx#stx-pair? _e155594155623_)
                                  (let ((_e155601155667_
                                         (gx#syntax-e _e155594155623_)))
                                    (let ((_hd155602155670_
                                           (##car _e155601155667_))
                                          (_tl155603155672_
                                           (##cdr _e155601155667_)))
                                      (if (and (gx#identifier?
                                                _hd155602155670_)
                                               (gx#core-identifier=?
                                                _hd155602155670_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155603155672_)
                                              (let ((_e155604155675_
                                                     (gx#syntax-e
                                                      _tl155603155672_)))
                                                (let ((_hd155605155678_
                                                       (##car _e155604155675_))
                                                      (_tl155606155680_
                                                       (##cdr _e155604155675_)))
                                                  (let ((_hd-bind155683_
                                                         _hd155605155678_))
                                                    (if (gx#stx-pair?
                                                         _tl155606155680_)
                                                        (let ((_e155607155685_
                                                               (gx#syntax-e
                                                                _tl155606155680_)))
                                                          (let ((_hd155608155688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155607155685_))
                        (_tl155609155690_ (##cdr _e155607155685_)))
                    (let ((_expr155693_ _hd155608155688_))
                      (if (gx#stx-null? _tl155609155690_)
                          (if (gx#core-bind-values? _hd-bind155683_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155683_)
                                (_K155593_ _hd155586_))
                              (_E155600155663_))
                          (_E155600155663_)))))
                (_E155600155663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155600155663_))
                                          (_E155600155663_))))
                                  (_E155600155663_))))
                           (_E155595155707_
                            (lambda ()
                              (if (gx#stx-pair? _e155594155623_)
                                  (let ((_e155597155699_
                                         (gx#syntax-e _e155594155623_)))
                                    (let ((_hd155598155702_
                                           (##car _e155597155699_))
                                          (_tl155599155704_
                                           (##cdr _e155597155699_)))
                                      (if (and (gx#identifier?
                                                _hd155598155702_)
                                               (gx#core-identifier=?
                                                _hd155598155702_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K155593_
                                               (gx#core-expand-begin-syntax%
                                                _hd155586_))
                                              (_E155596155695_))
                                          (_E155596155695_))))
                                  (_E155596155695_)))))
                      (_E155595155707_))))
                 (_eval-body155467_
                  (lambda (_rbody155475_)
                    (let _lp155477_ ((_rest155479_ _rbody155475_)
                                     (_body155480_ '())
                                     (_ebody155481_ '()))
                      (let* ((_rest155482155490_ _rest155479_)
                             (_else155484155498_
                              (lambda ()
                                (values _body155480_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody155481_)
                                          (gx#stx-source _stx155464_))))))
                             (_K155486155574_
                              (lambda (_rest155501_ _hd155502_)
                                (let* ((_e155503155520_ _hd155502_)
                                       (_E155515155524_
                                        (lambda ()
                                          (_lp155477_
                                           _rest155501_
                                           (cons _hd155502_ _body155480_)
                                           (cons _hd155502_ _ebody155481_))))
                                       (_E155505155536_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155503155520_)
                                              (let ((_e155516155528_
                                                     (gx#syntax-e
                                                      _e155503155520_)))
                                                (let ((_hd155517155531_
                                                       (##car _e155516155528_))
                                                      (_tl155518155533_
                                                       (##cdr _e155516155528_)))
                                                  (if (and (gx#identifier?
                                                            _hd155517155531_)
                                                           (gx#core-identifier=?
                                                            _hd155517155531_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp155477_
                                                           _rest155501_
                                                           (cons _hd155502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body155480_)
                   _ebody155481_)
                  (_E155515155524_))
              (_E155515155524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155515155524_))))
                                       (_E155504155570_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155503155520_)
                                              (let ((_e155506155540_
                                                     (gx#syntax-e
                                                      _e155503155520_)))
                                                (let ((_hd155507155543_
                                                       (##car _e155506155540_))
                                                      (_tl155508155545_
                                                       (##cdr _e155506155540_)))
                                                  (if (and (gx#identifier?
                                                            _hd155507155543_)
                                                           (gx#core-identifier=?
                                                            _hd155507155543_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl155508155545_)
                                                          (let ((_e155509155548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl155508155545_)))
                    (let ((_hd155510155551_ (##car _e155509155548_))
                          (_tl155511155553_ (##cdr _e155509155548_)))
                      (let ((_hd-bind155556_ _hd155510155551_))
                        (if (gx#stx-pair? _tl155511155553_)
                            (let ((_e155512155558_
                                   (gx#syntax-e _tl155511155553_)))
                              (let ((_hd155513155561_ (##car _e155512155558_))
                                    (_tl155514155563_ (##cdr _e155512155558_)))
                                (let ((_expr155566_ _hd155513155561_))
                                  (if (gx#stx-null? _tl155514155563_)
                                      (if '#t
                                          (let ((_ehd155568_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind155556_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr155566_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd155502_))))
                                            (_lp155477_
                                             _rest155501_
                                             (cons _ehd155568_ _body155480_)
                                             (cons _ehd155568_ _ebody155481_)))
                                          (_E155505155536_))
                                      (_E155505155536_)))))
                            (_E155505155536_)))))
                  (_E155505155536_))
              (_E155505155536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155505155536_)))))
                                  (_E155504155570_)))))
                        (if (##pair? _rest155482155490_)
                            (let ((_hd155487155577_ (##car _rest155482155490_))
                                  (_tl155488155579_
                                   (##cdr _rest155482155490_)))
                              (let* ((_hd155582_ _hd155487155577_)
                                     (_rest155584_ _tl155488155579_))
                                (_K155486155574_ _rest155584_ _hd155582_)))
                            (_else155484155498_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody155470_
                     (gx#core-expand-block__1
                      _stx155464_
                      _expand-special155466_
                      '#f))
                    (_g160302_ (_eval-body155467_ _rbody155470_)))
               (begin
                 (let ((_g160303_
                        (if (##values? _g160302_)
                            (##vector-length _g160302_)
                            1)))
                   (if (not (##fx= _g160303_ 2))
                       (error "Context expects 2 values" _g160303_)))
                 (let ((_expanded-body155472_ (##vector-ref _g160302_ 0))
                       (_value155473_ (##vector-ref _g160302_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body155472_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value155473_ '())))
                    (gx#stx-source _stx155464_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx155434_)
        (let* ((_e155435155442_ _stx155434_)
               (_E155437155446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155435155442_)))
               (_E155436155460_
                (lambda ()
                  (if (gx#stx-pair? _e155435155442_)
                      (let ((_e155438155450_ (gx#syntax-e _e155435155442_)))
                        (let ((_hd155439155453_ (##car _e155438155450_))
                              (_tl155440155455_ (##cdr _e155438155450_)))
                          (let ((_body155458_ _tl155440155455_))
                            (if (gx#stx-list? _body155458_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body155458_)
                                 (gx#stx-source _stx155434_))
                                (_E155437155446_)))))
                      (_E155437155446_)))))
          (_E155436155460_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx155432_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx155432_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx155378_)
        (let* ((_e155379155392_ _stx155378_)
               (_E155381155396_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155379155392_)))
               (_E155380155428_
                (lambda ()
                  (if (gx#stx-pair? _e155379155392_)
                      (let ((_e155382155400_ (gx#syntax-e _e155379155392_)))
                        (let ((_hd155383155403_ (##car _e155382155400_))
                              (_tl155384155405_ (##cdr _e155382155400_)))
                          (if (gx#stx-pair? _tl155384155405_)
                              (let ((_e155385155408_
                                     (gx#syntax-e _tl155384155405_)))
                                (let ((_hd155386155411_
                                       (##car _e155385155408_))
                                      (_tl155387155413_
                                       (##cdr _e155385155408_)))
                                  (let ((_ann155416_ _hd155386155411_))
                                    (if (gx#stx-pair? _tl155387155413_)
                                        (let ((_e155388155418_
                                               (gx#syntax-e _tl155387155413_)))
                                          (let ((_hd155389155421_
                                                 (##car _e155388155418_))
                                                (_tl155390155423_
                                                 (##cdr _e155388155418_)))
                                            (let ((_expr155426_
                                                   _hd155389155421_))
                                              (if (gx#stx-null?
                                                   _tl155390155423_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann155416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr155426_)
                                 '())))
               (gx#stx-source _stx155378_))
              (_E155381155396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E155381155396_)))))
                                        (_E155381155396_)))))
                              (_E155381155396_))))
                      (_E155381155396_)))))
          (_E155380155428_))))
    (define gx#core-expand-local-block
      (lambda (_stx155102_ _body155103_)
        (letrec ((_expand-special155105_
                  (lambda (_hd155373_ _K155374_ _rest155375_ _r155376_)
                    (_K155374_
                     '()
                     (cons (_expand-internal155106_ _hd155373_ _rest155375_)
                           _r155376_))))
                 (_expand-internal155106_
                  (lambda (_hd155369_ _rest155370_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal155108_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd155369_ _rest155370_))
                          (gx#stx-source _stx155102_))
                         _expand-internal-special155107_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj160296
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj160296)
                       __obj160296))))
                 (_expand-internal-special155107_
                  (lambda (_hd155264_ _K155265_ _rest155266_ _r155267_)
                    (let* ((_e155268155293_ _hd155264_)
                           (_E155288155297_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155268155293_)))
                           (_E155284155309_
                            (lambda ()
                              (if (gx#stx-pair? _e155268155293_)
                                  (let ((_e155289155301_
                                         (gx#syntax-e _e155268155293_)))
                                    (let ((_hd155290155304_
                                           (##car _e155289155301_))
                                          (_tl155291155306_
                                           (##cdr _e155289155301_)))
                                      (if (and (gx#identifier?
                                                _hd155290155304_)
                                               (gx#core-identifier=?
                                                _hd155290155304_
                                                '%#declare))
                                          (if '#t
                                              (_K155265_
                                               _rest155266_
                                               (cons (gx#core-expand-declare%
                                                      _hd155264_)
                                                     _r155267_))
                                              (_E155288155297_))
                                          (_E155288155297_))))
                                  (_E155288155297_))))
                           (_E155280155321_
                            (lambda ()
                              (if (gx#stx-pair? _e155268155293_)
                                  (let ((_e155285155313_
                                         (gx#syntax-e _e155268155293_)))
                                    (let ((_hd155286155316_
                                           (##car _e155285155313_))
                                          (_tl155287155318_
                                           (##cdr _e155285155313_)))
                                      (if (and (gx#identifier?
                                                _hd155286155316_)
                                               (gx#core-identifier=?
                                                _hd155286155316_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd155264_)
                                                (_K155265_
                                                 _rest155266_
                                                 _r155267_))
                                              (_E155284155309_))
                                          (_E155284155309_))))
                                  (_E155284155309_))))
                           (_E155270155333_
                            (lambda ()
                              (if (gx#stx-pair? _e155268155293_)
                                  (let ((_e155281155325_
                                         (gx#syntax-e _e155268155293_)))
                                    (let ((_hd155282155328_
                                           (##car _e155281155325_))
                                          (_tl155283155330_
                                           (##cdr _e155281155325_)))
                                      (if (and (gx#identifier?
                                                _hd155282155328_)
                                               (gx#core-identifier=?
                                                _hd155282155328_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd155264_)
                                                (_K155265_
                                                 _rest155266_
                                                 _r155267_))
                                              (_E155280155321_))
                                          (_E155280155321_))))
                                  (_E155280155321_))))
                           (_E155269155365_
                            (lambda ()
                              (if (gx#stx-pair? _e155268155293_)
                                  (let ((_e155271155337_
                                         (gx#syntax-e _e155268155293_)))
                                    (let ((_hd155272155340_
                                           (##car _e155271155337_))
                                          (_tl155273155342_
                                           (##cdr _e155271155337_)))
                                      (if (and (gx#identifier?
                                                _hd155272155340_)
                                               (gx#core-identifier=?
                                                _hd155272155340_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155273155342_)
                                              (let ((_e155274155345_
                                                     (gx#syntax-e
                                                      _tl155273155342_)))
                                                (let ((_hd155275155348_
                                                       (##car _e155274155345_))
                                                      (_tl155276155350_
                                                       (##cdr _e155274155345_)))
                                                  (let ((_hd-bind155353_
                                                         _hd155275155348_))
                                                    (if (gx#stx-pair?
                                                         _tl155276155350_)
                                                        (let ((_e155277155355_
                                                               (gx#syntax-e
                                                                _tl155276155350_)))
                                                          (let ((_hd155278155358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155277155355_))
                        (_tl155279155360_ (##cdr _e155277155355_)))
                    (let ((_expr155363_ _hd155278155358_))
                      (if (gx#stx-null? _tl155279155360_)
                          (if (gx#core-bind-values? _hd-bind155353_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155353_)
                                (_K155265_
                                 _rest155266_
                                 (cons _hd155264_ _r155267_)))
                              (_E155270155333_))
                          (_E155270155333_)))))
                (_E155270155333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155270155333_))
                                          (_E155270155333_))))
                                  (_E155270155333_)))))
                      (_E155269155365_))))
                 (_wrap-internal155108_
                  (lambda (_rbody155110_)
                    (let _lp155112_ ((_rest155114_ _rbody155110_)
                                     (_decls155115_ '())
                                     (_bind155116_ '())
                                     (_body155117_ '()))
                      (let* ((_e155118155125_ _rest155114_)
                             (_E155120155174_
                              (lambda ()
                                (let* ((_body155169_
                                        (let* ((_body155128155138_
                                                _body155117_)
                                               (_else155131155146_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body155117_)
                                                   (gx#stx-source
                                                    _stx155102_)))))
                                          (let ((_K155136155166_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx155102_)))
                                                (_K155133155152_
                                                 (lambda (_expr155150_)
                                                   _expr155150_)))
                                            (let ((_try-match155130155162_
                                                   (lambda ()
                                                     (if (##pair? _body155128155138_)
                                                         (let ((_tl155135155157_
                                                                (##cdr _body155128155138_))
                                                               (_hd155134155155_
                                                                (##car _body155128155138_)))
                                                           (if (##null? _tl155135155157_)
                                                               (let ((_expr155160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd155134155155_))
                         (_K155133155152_ _expr155160_))
                       (_else155131155146_)))
                 (_else155131155146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body155128155138_)
                                                  (_K155136155166_)
                                                  (_try-match155130155162_))))))
                                       (_body155171_
                                        (if (null? _bind155116_)
                                            _body155169_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind155116_
                                                         (cons _body155169_
                                                               '())))
                                             (gx#stx-source _stx155102_)))))
                                  (if (null? _decls155115_)
                                      _body155171_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls155115_
                                                   (cons _body155171_ '())))
                                       (gx#stx-source _stx155102_))))))
                             (_E155119155260_
                              (lambda ()
                                (if (gx#stx-pair? _e155118155125_)
                                    (let ((_e155121155178_
                                           (gx#syntax-e _e155118155125_)))
                                      (let ((_hd155122155181_
                                             (##car _e155121155178_))
                                            (_tl155123155183_
                                             (##cdr _e155121155178_)))
                                        (let* ((_hd155186_ _hd155122155181_)
                                               (_rest155188_ _tl155123155183_))
                                          (if '#t
                                              (let* ((_e155189155206_
                                                      _hd155186_)
                                                     (_E155201155210_
                                                      (lambda ()
                                                        (if (null? _bind155116_)
                                                            (_lp155112_
                                                             _rest155188_
                                                             _decls155115_
                                                             _bind155116_
                                                             (cons _hd155186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body155117_))
                    (_lp155112_
                     _rest155188_
                     _decls155115_
                     (cons (cons '#f (cons _hd155186_ '())) _bind155116_)
                     _body155117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155191155224_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155189155206_)
                                                            (let ((_e155202155214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155189155206_)))
                      (let ((_hd155203155217_ (##car _e155202155214_))
                            (_tl155204155219_ (##cdr _e155202155214_)))
                        (if (and (gx#identifier? _hd155203155217_)
                                 (gx#core-identifier=?
                                  _hd155203155217_
                                  '%#declare))
                            (let ((_xdecls155222_ _tl155204155219_))
                              (if '#t
                                  (_lp155112_
                                   _rest155188_
                                   (gx#stx-foldr
                                    cons
                                    _decls155115_
                                    _xdecls155222_)
                                   _bind155116_
                                   _body155117_)
                                  (_E155201155210_)))
                            (_E155201155210_))))
                    (_E155201155210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155190155256_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155189155206_)
                                                            (let ((_e155192155228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155189155206_)))
                      (let ((_hd155193155231_ (##car _e155192155228_))
                            (_tl155194155233_ (##cdr _e155192155228_)))
                        (if (and (gx#identifier? _hd155193155231_)
                                 (gx#core-identifier=?
                                  _hd155193155231_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl155194155233_)
                                (let ((_e155195155236_
                                       (gx#syntax-e _tl155194155233_)))
                                  (let ((_hd155196155239_
                                         (##car _e155195155236_))
                                        (_tl155197155241_
                                         (##cdr _e155195155236_)))
                                    (let ((_hd-bind155244_ _hd155196155239_))
                                      (if (gx#stx-pair? _tl155197155241_)
                                          (let ((_e155198155246_
                                                 (gx#syntax-e
                                                  _tl155197155241_)))
                                            (let ((_hd155199155249_
                                                   (##car _e155198155246_))
                                                  (_tl155200155251_
                                                   (##cdr _e155198155246_)))
                                              (let ((_expr155254_
                                                     _hd155199155249_))
                                                (if (gx#stx-null?
                                                     _tl155200155251_)
                                                    (if '#t
                                                        (_lp155112_
                                                         _rest155188_
                                                         _decls155115_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind155244_)
                             (cons (gx#core-expand-expression _expr155254_)
                                   '()))
                       _bind155116_)
                 _body155117_)
                (_E155191155224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E155191155224_)))))
                                          (_E155191155224_)))))
                                (_E155191155224_))
                            (_E155191155224_))))
                    (_E155191155224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E155190155256_))
                                              (_E155120155174_)))))
                                    (_E155120155174_)))))
                        (_E155119155260_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body155103_)
            (gx#stx-source _stx155102_))
           _expand-special155105_))))
    (define gx#core-expand-declare%
      (lambda (_stx155040_)
        (let* ((_e155041155048_ _stx155040_)
               (_E155043155052_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155041155048_)))
               (_E155042155098_
                (lambda ()
                  (if (gx#stx-pair? _e155041155048_)
                      (let ((_e155044155056_ (gx#syntax-e _e155041155048_)))
                        (let ((_hd155045155059_ (##car _e155044155056_))
                              (_tl155046155061_ (##cdr _e155044155056_)))
                          (let ((_body155064_ _tl155046155061_))
                            (if (gx#stx-list? _body155064_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl155066_)
                                     (let* ((_e155067155074_ _decl155066_)
                                            (_E155069155078_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e155067155074_)))
                                            (_E155068155094_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e155067155074_)
                                                   (let ((_e155070155082_
                                                          (gx#syntax-e
                                                           _e155067155074_)))
                                                     (let ((_hd155071155085_
                                                            (##car _e155070155082_))
                                                           (_tl155072155087_
                                                            (##cdr _e155070155082_)))
                                                       (let* ((_head155090_
                                                               _hd155071155085_)
                                                              (_args155092_
                                                               _tl155072155087_))
                                                         (if (gx#stx-list?
                                                              _args155092_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl155066_)
                                                             (_E155069155078_)))))
                                                   (_E155069155078_)))))
                                       (_E155068155094_)))
                                   _body155064_))
                                 (gx#stx-source _stx155040_))
                                (_E155043155052_)))))
                      (_E155043155052_)))))
          (_E155042155098_))))
    (define gx#core-expand-extern%
      (lambda (_stx154944_)
        (let* ((_e154945154952_ _stx154944_)
               (_E154947154956_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154945154952_)))
               (_E154946155036_
                (lambda ()
                  (if (gx#stx-pair? _e154945154952_)
                      (let ((_e154948154960_ (gx#syntax-e _e154945154952_)))
                        (let ((_hd154949154963_ (##car _e154948154960_))
                              (_tl154950154965_ (##cdr _e154948154960_)))
                          (let ((_body154968_ _tl154950154965_))
                            (if '#t
                                (let _lp154970_ ((_rest154972_ _body154968_)
                                                 (_r154973_ '()))
                                  (let* ((_e154974154988_ _rest154972_)
                                         (_E154986154992_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx154944_)))
                                         (_E154976154996_
                                          (lambda ()
                                            (if (gx#stx-null? _e154974154988_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r154973_))
                                                     (gx#stx-source
                                                      _stx154944_))
                                                    (_E154986154992_))
                                                (_E154986154992_))))
                                         (_E154975155032_
                                          (lambda ()
                                            (if (gx#stx-pair? _e154974154988_)
                                                (let ((_e154977155000_
                                                       (gx#syntax-e
                                                        _e154974154988_)))
                                                  (let ((_hd154978155003_
                                                         (##car _e154977155000_))
                                                        (_tl154979155005_
                                                         (##cdr _e154977155000_)))
                                                    (if (gx#stx-pair?
                                                         _hd154978155003_)
                                                        (let ((_e154980155008_
                                                               (gx#syntax-e
                                                                _hd154978155003_)))
                                                          (let ((_hd154981155011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154980155008_))
                        (_tl154982155013_ (##cdr _e154980155008_)))
                    (let ((_id155016_ _hd154981155011_))
                      (if (gx#stx-pair? _tl154982155013_)
                          (let ((_e154983155018_
                                 (gx#syntax-e _tl154982155013_)))
                            (let ((_hd154984155021_ (##car _e154983155018_))
                                  (_tl154985155023_ (##cdr _e154983155018_)))
                              (let ((_eid155026_ _hd154984155021_))
                                (if (gx#stx-null? _tl154985155023_)
                                    (let ((_rest155028_ _tl154979155005_))
                                      (if (and (gx#identifier? _id155016_)
                                               (gx#identifier? _eid155026_))
                                          (let ((_eid155030_
                                                 (gx#stx-e _eid155026_)))
                                            (gx#core-bind-extern!__0
                                             _id155016_
                                             _eid155030_)
                                            (_lp154970_
                                             _rest155028_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id155016_)
                                                         (cons _eid155030_
                                                               '()))
                                                   _r154973_)))
                                          (_E154976154996_)))
                                    (_E154976154996_)))))
                          (_E154976154996_)))))
                (_E154976154996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154976154996_)))))
                                    (_E154975155032_)))
                                (_E154947154956_)))))
                      (_E154947154956_)))))
          (_E154946155036_))))
    (define gx#core-expand-define-values%
      (lambda (_stx154890_)
        (let* ((_e154891154904_ _stx154890_)
               (_E154893154908_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154891154904_)))
               (_E154892154940_
                (lambda ()
                  (if (gx#stx-pair? _e154891154904_)
                      (let ((_e154894154912_ (gx#syntax-e _e154891154904_)))
                        (let ((_hd154895154915_ (##car _e154894154912_))
                              (_tl154896154917_ (##cdr _e154894154912_)))
                          (if (gx#stx-pair? _tl154896154917_)
                              (let ((_e154897154920_
                                     (gx#syntax-e _tl154896154917_)))
                                (let ((_hd154898154923_
                                       (##car _e154897154920_))
                                      (_tl154899154925_
                                       (##cdr _e154897154920_)))
                                  (let ((_hd154928_ _hd154898154923_))
                                    (if (gx#stx-pair? _tl154899154925_)
                                        (let ((_e154900154930_
                                               (gx#syntax-e _tl154899154925_)))
                                          (let ((_hd154901154933_
                                                 (##car _e154900154930_))
                                                (_tl154902154935_
                                                 (##cdr _e154900154930_)))
                                            (let ((_expr154938_
                                                   _hd154901154933_))
                                              (if (gx#stx-null?
                                                   _tl154902154935_)
                                                  (if (gx#core-bind-values?
                                                       _hd154928_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd154928_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd154928_)
                             (cons (gx#core-expand-expression _expr154938_)
                                   '())))
                 (gx#stx-source _stx154890_)))
              (_E154893154908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154893154908_)))))
                                        (_E154893154908_)))))
                              (_E154893154908_))))
                      (_E154893154908_)))))
          (_E154892154940_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx154834_)
        (let* ((_e154835154848_ _stx154834_)
               (_E154837154852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154835154848_)))
               (_E154836154886_
                (lambda ()
                  (if (gx#stx-pair? _e154835154848_)
                      (let ((_e154838154856_ (gx#syntax-e _e154835154848_)))
                        (let ((_hd154839154859_ (##car _e154838154856_))
                              (_tl154840154861_ (##cdr _e154838154856_)))
                          (if (gx#stx-pair? _tl154840154861_)
                              (let ((_e154841154864_
                                     (gx#syntax-e _tl154840154861_)))
                                (let ((_hd154842154867_
                                       (##car _e154841154864_))
                                      (_tl154843154869_
                                       (##cdr _e154841154864_)))
                                  (let ((_id154872_ _hd154842154867_))
                                    (if (gx#stx-pair? _tl154843154869_)
                                        (let ((_e154844154874_
                                               (gx#syntax-e _tl154843154869_)))
                                          (let ((_hd154845154877_
                                                 (##car _e154844154874_))
                                                (_tl154846154879_
                                                 (##cdr _e154844154874_)))
                                            (let ((_binding-id154882_
                                                   _hd154845154877_))
                                              (if (gx#stx-null?
                                                   _tl154846154879_)
                                                  (if (and (gx#identifier?
                                                            _id154872_)
                                                           (gx#identifier?
                                                            _binding-id154882_))
                                                      (let ((_eid154884_
                                                             (gx#stx-e
                                                              _binding-id154882_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id154872_
                                                         _eid154884_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154872_)
                             (cons _eid154884_ '())))))
              (_E154837154852_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154837154852_)))))
                                        (_E154837154852_)))))
                              (_E154837154852_))))
                      (_E154837154852_)))))
          (_E154836154886_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx154777_)
        (let* ((_e154778154791_ _stx154777_)
               (_E154780154795_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154778154791_)))
               (_E154779154830_
                (lambda ()
                  (if (gx#stx-pair? _e154778154791_)
                      (let ((_e154781154799_ (gx#syntax-e _e154778154791_)))
                        (let ((_hd154782154802_ (##car _e154781154799_))
                              (_tl154783154804_ (##cdr _e154781154799_)))
                          (if (gx#stx-pair? _tl154783154804_)
                              (let ((_e154784154807_
                                     (gx#syntax-e _tl154783154804_)))
                                (let ((_hd154785154810_
                                       (##car _e154784154807_))
                                      (_tl154786154812_
                                       (##cdr _e154784154807_)))
                                  (let ((_id154815_ _hd154785154810_))
                                    (if (gx#stx-pair? _tl154786154812_)
                                        (let ((_e154787154817_
                                               (gx#syntax-e _tl154786154812_)))
                                          (let ((_hd154788154820_
                                                 (##car _e154787154817_))
                                                (_tl154789154822_
                                                 (##cdr _e154787154817_)))
                                            (let ((_expr154825_
                                                   _hd154788154820_))
                                              (if (gx#stx-null?
                                                   _tl154789154822_)
                                                  (if (gx#identifier?
                                                       _id154815_)
                                                      (let ((_g160304_
                                                             (gx#core-expand-expression+1
                                                              _expr154825_)))
                                                        (begin
                                                          (let ((_g160305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g160304_)
                             (##vector-length _g160304_)
                             1)))
                    (if (not (##fx= _g160305_ 2))
                        (error "Context expects 2 values" _g160305_)))
                  (let ((_e-stx154827_ (##vector-ref _g160304_ 0))
                        (_e154828_ (##vector-ref _g160304_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id154815_ _e154828_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id154815_)
                                   (cons _e-stx154827_ '())))
                       (gx#stx-source _stx154777_))))))
              (_E154780154795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154780154795_)))))
                                        (_E154780154795_)))))
                              (_E154780154795_))))
                      (_E154780154795_)))))
          (_E154779154830_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx154721_)
        (let* ((_e154722154735_ _stx154721_)
               (_E154724154739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154722154735_)))
               (_E154723154773_
                (lambda ()
                  (if (gx#stx-pair? _e154722154735_)
                      (let ((_e154725154743_ (gx#syntax-e _e154722154735_)))
                        (let ((_hd154726154746_ (##car _e154725154743_))
                              (_tl154727154748_ (##cdr _e154725154743_)))
                          (if (gx#stx-pair? _tl154727154748_)
                              (let ((_e154728154751_
                                     (gx#syntax-e _tl154727154748_)))
                                (let ((_hd154729154754_
                                       (##car _e154728154751_))
                                      (_tl154730154756_
                                       (##cdr _e154728154751_)))
                                  (let ((_id154759_ _hd154729154754_))
                                    (if (gx#stx-pair? _tl154730154756_)
                                        (let ((_e154731154761_
                                               (gx#syntax-e _tl154730154756_)))
                                          (let ((_hd154732154764_
                                                 (##car _e154731154761_))
                                                (_tl154733154766_
                                                 (##cdr _e154731154761_)))
                                            (let ((_alias-id154769_
                                                   _hd154732154764_))
                                              (if (gx#stx-null?
                                                   _tl154733154766_)
                                                  (if (and (gx#identifier?
                                                            _id154759_)
                                                           (gx#identifier?
                                                            _alias-id154769_))
                                                      (let ((_alias-id154771_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id154769_)))
                                                        (gx#core-bind-alias!__0
                                                         _id154759_
                                                         _alias-id154771_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154759_)
                             (cons _alias-id154771_ '())))))
              (_E154724154739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154724154739_)))))
                                        (_E154724154739_)))))
                              (_E154724154739_))))
                      (_E154724154739_)))))
          (_E154723154773_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx154664_ _wrap?154665_)
        (let* ((_e154666154676_ _stx154664_)
               (_E154668154680_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154666154676_)))
               (_E154667154707_
                (lambda ()
                  (if (gx#stx-pair? _e154666154676_)
                      (let ((_e154669154684_ (gx#syntax-e _e154666154676_)))
                        (let ((_hd154670154687_ (##car _e154669154684_))
                              (_tl154671154689_ (##cdr _e154669154684_)))
                          (if (gx#stx-pair? _tl154671154689_)
                              (let ((_e154672154692_
                                     (gx#syntax-e _tl154671154689_)))
                                (let ((_hd154673154695_
                                       (##car _e154672154692_))
                                      (_tl154674154697_
                                       (##cdr _e154672154692_)))
                                  (let* ((_hd154700_ _hd154673154695_)
                                         (_body154702_ _tl154674154697_))
                                    (if (gx#core-bind-values? _hd154700_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd154700_)
                                           (let ((_body154705_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd154700_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx154664_
                                                               _body154702_)
                                                              '()))))
                                             (if _wrap?154665_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body154705_)
                                                  (gx#stx-source _stx154664_))
                                                 _body154705_)))
                                         gx#current-expander-context
                                         (let ((__obj160297
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160297)
                                           __obj160297))
                                        (_E154668154680_)))))
                              (_E154668154680_))))
                      (_E154668154680_)))))
          (_E154667154707_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx154714_)
        (let ((_wrap?154716_ '#t))
          (gx#core-expand-lambda%__% _stx154714_ _wrap?154716_))))
    (define gx#core-expand-lambda%
      (lambda _g160307_
        (let ((_g160306_ (##length _g160307_)))
          (cond ((##fx= _g160306_ 1)
                 (apply (lambda (_stx154714_)
                          (gx#core-expand-lambda%__0 _stx154714_))
                        _g160307_))
                ((##fx= _g160306_ 2)
                 (apply (lambda (_stx154718_ _wrap?154719_)
                          (gx#core-expand-lambda%__%
                           _stx154718_
                           _wrap?154719_))
                        _g160307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g160307_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx154628_)
        (let* ((_e154629154636_ _stx154628_)
               (_E154631154640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154629154636_)))
               (_E154630154659_
                (lambda ()
                  (if (gx#stx-pair? _e154629154636_)
                      (let ((_e154632154644_ (gx#syntax-e _e154629154636_)))
                        (let ((_hd154633154647_ (##car _e154632154644_))
                              (_tl154634154649_ (##cdr _e154632154644_)))
                          (let ((_clauses154652_ _tl154634154649_))
                            (if (gx#stx-list? _clauses154652_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause154654_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause154654_)
                                       (let ((_$e154656_
                                              (gx#stx-source _clause154654_)))
                                         (if _$e154656_
                                             _$e154656_
                                             (gx#stx-source _stx154628_))))
                                      '#f))
                                   _clauses154652_))
                                 (gx#stx-source _stx154628_))
                                (_E154631154640_)))))
                      (_E154631154640_)))))
          (_E154630154659_))))
    (define gx#core-expand-let-values%
      (lambda (_stx154582_)
        (let* ((_e154583154593_ _stx154582_)
               (_E154585154597_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154583154593_)))
               (_E154584154624_
                (lambda ()
                  (if (gx#stx-pair? _e154583154593_)
                      (let ((_e154586154601_ (gx#syntax-e _e154583154593_)))
                        (let ((_hd154587154604_ (##car _e154586154601_))
                              (_tl154588154606_ (##cdr _e154586154601_)))
                          (if (gx#stx-pair? _tl154588154606_)
                              (let ((_e154589154609_
                                     (gx#syntax-e _tl154588154606_)))
                                (let ((_hd154590154612_
                                       (##car _e154589154609_))
                                      (_tl154591154614_
                                       (##cdr _e154589154609_)))
                                  (let* ((_hd154617_ _hd154590154612_)
                                         (_body154619_ _tl154591154614_))
                                    (if (gx#core-expand-let-bind? _hd154617_)
                                        (let ((_expressions154621_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd154617_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd154617_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd154617_
                                                           _expressions154621_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx154582_
                         _body154619_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx154582_)))
                                           gx#current-expander-context
                                           (let ((__obj160298
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160298)
                                             __obj160298)))
                                        (_E154585154597_)))))
                              (_E154585154597_))))
                      (_E154585154597_)))))
          (_E154584154624_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx154527_ _form154528_)
        (let* ((_e154529154539_ _stx154527_)
               (_E154531154543_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154529154539_)))
               (_E154530154568_
                (lambda ()
                  (if (gx#stx-pair? _e154529154539_)
                      (let ((_e154532154547_ (gx#syntax-e _e154529154539_)))
                        (let ((_hd154533154550_ (##car _e154532154547_))
                              (_tl154534154552_ (##cdr _e154532154547_)))
                          (if (gx#stx-pair? _tl154534154552_)
                              (let ((_e154535154555_
                                     (gx#syntax-e _tl154534154552_)))
                                (let ((_hd154536154558_
                                       (##car _e154535154555_))
                                      (_tl154537154560_
                                       (##cdr _e154535154555_)))
                                  (let* ((_hd154563_ _hd154536154558_)
                                         (_body154565_ _tl154537154560_))
                                    (if (gx#core-expand-let-bind? _hd154563_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd154563_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form154528_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd154563_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd154563_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx154527_
                                                               _body154565_)
                                                              '())))
                                            (gx#stx-source _stx154527_)))
                                         gx#current-expander-context
                                         (let ((__obj160299
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160299)
                                           __obj160299))
                                        (_E154531154543_)))))
                              (_E154531154543_))))
                      (_E154531154543_)))))
          (_E154530154568_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx154575_)
        (let ((_form154577_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx154575_ _form154577_))))
    (define gx#core-expand-letrec-values%
      (lambda _g160309_
        (let ((_g160308_ (##length _g160309_)))
          (cond ((##fx= _g160308_ 1)
                 (apply (lambda (_stx154575_)
                          (gx#core-expand-letrec-values%__0 _stx154575_))
                        _g160309_))
                ((##fx= _g160308_ 2)
                 (apply (lambda (_stx154579_ _form154580_)
                          (gx#core-expand-letrec-values%__%
                           _stx154579_
                           _form154580_))
                        _g160309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g160309_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx154524_)
        (gx#core-expand-letrec-values%__% _stx154524_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx154481_)
        (if (gx#stx-list? _stx154481_)
            (gx#stx-andmap
             (lambda (_bind154483_)
               (let* ((_e154484154494_ _bind154483_)
                      (_E154486154498_ (lambda () '#f))
                      (_E154485154520_
                       (lambda ()
                         (if (gx#stx-pair? _e154484154494_)
                             (let ((_e154487154502_
                                    (gx#syntax-e _e154484154494_)))
                               (let ((_hd154488154505_ (##car _e154487154502_))
                                     (_tl154489154507_
                                      (##cdr _e154487154502_)))
                                 (let ((_hd154510_ _hd154488154505_))
                                   (if (gx#stx-pair? _tl154489154507_)
                                       (let ((_e154490154512_
                                              (gx#syntax-e _tl154489154507_)))
                                         (let ((_hd154491154515_
                                                (##car _e154490154512_))
                                               (_tl154492154517_
                                                (##cdr _e154490154512_)))
                                           (if (gx#stx-null? _tl154492154517_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd154510_)
                                                   (_E154486154498_))
                                               (_E154486154498_))))
                                       (_E154486154498_)))))
                             (_E154486154498_)))))
                 (_E154485154520_)))
             _stx154481_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind154440_)
        (let* ((_e154441154451_ _bind154440_)
               (_E154443154455_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154441154451_)))
               (_E154442154477_
                (lambda ()
                  (if (gx#stx-pair? _e154441154451_)
                      (let ((_e154444154459_ (gx#syntax-e _e154441154451_)))
                        (let ((_hd154445154462_ (##car _e154444154459_))
                              (_tl154446154464_ (##cdr _e154444154459_)))
                          (if (gx#stx-pair? _tl154446154464_)
                              (let ((_e154447154467_
                                     (gx#syntax-e _tl154446154464_)))
                                (let ((_hd154448154470_
                                       (##car _e154447154467_))
                                      (_tl154449154472_
                                       (##cdr _e154447154467_)))
                                  (let ((_expr154475_ _hd154448154470_))
                                    (if (gx#stx-null? _tl154449154472_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154475_)
                                            (_E154443154455_))
                                        (_E154443154455_)))))
                              (_E154443154455_))))
                      (_E154443154455_)))))
          (_E154442154477_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind154399_)
        (let* ((_e154400154410_ _bind154399_)
               (_E154402154414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154400154410_)))
               (_E154401154436_
                (lambda ()
                  (if (gx#stx-pair? _e154400154410_)
                      (let ((_e154403154418_ (gx#syntax-e _e154400154410_)))
                        (let ((_hd154404154421_ (##car _e154403154418_))
                              (_tl154405154423_ (##cdr _e154403154418_)))
                          (let ((_hd154426_ _hd154404154421_))
                            (if (gx#stx-pair? _tl154405154423_)
                                (let ((_e154406154428_
                                       (gx#syntax-e _tl154405154423_)))
                                  (let ((_hd154407154431_
                                         (##car _e154406154428_))
                                        (_tl154408154433_
                                         (##cdr _e154406154428_)))
                                    (if (gx#stx-null? _tl154408154433_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd154426_)
                                            (_E154402154414_))
                                        (_E154402154414_))))
                                (_E154402154414_)))))
                      (_E154402154414_)))))
          (_E154401154436_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind154357_ _expr154358_)
        (let* ((_e154359154369_ _bind154357_)
               (_E154361154373_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154359154369_)))
               (_E154360154395_
                (lambda ()
                  (if (gx#stx-pair? _e154359154369_)
                      (let ((_e154362154377_ (gx#syntax-e _e154359154369_)))
                        (let ((_hd154363154380_ (##car _e154362154377_))
                              (_tl154364154382_ (##cdr _e154362154377_)))
                          (let ((_hd154385_ _hd154363154380_))
                            (if (gx#stx-pair? _tl154364154382_)
                                (let ((_e154365154387_
                                       (gx#syntax-e _tl154364154382_)))
                                  (let ((_hd154366154390_
                                         (##car _e154365154387_))
                                        (_tl154367154392_
                                         (##cdr _e154365154387_)))
                                    (if (gx#stx-null? _tl154367154392_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd154385_)
                                                  (cons _expr154358_ '()))
                                            (_E154361154373_))
                                        (_E154361154373_))))
                                (_E154361154373_)))))
                      (_E154361154373_)))))
          (_E154360154395_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx154311_)
        (let* ((_e154312154322_ _stx154311_)
               (_E154314154326_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154312154322_)))
               (_E154313154353_
                (lambda ()
                  (if (gx#stx-pair? _e154312154322_)
                      (let ((_e154315154330_ (gx#syntax-e _e154312154322_)))
                        (let ((_hd154316154333_ (##car _e154315154330_))
                              (_tl154317154335_ (##cdr _e154315154330_)))
                          (if (gx#stx-pair? _tl154317154335_)
                              (let ((_e154318154338_
                                     (gx#syntax-e _tl154317154335_)))
                                (let ((_hd154319154341_
                                       (##car _e154318154338_))
                                      (_tl154320154343_
                                       (##cdr _e154318154338_)))
                                  (let* ((_hd154346_ _hd154319154341_)
                                         (_body154348_ _tl154320154343_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154346_)
                                        (let ((_expanders154350_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd154346_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd154346_
                                              _expanders154350_)
                                             (gx#core-expand-local-block
                                              _stx154311_
                                              _body154348_))
                                           gx#current-expander-context
                                           (let ((__obj160300
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160300)
                                             __obj160300)))
                                        (_E154314154326_)))))
                              (_E154314154326_))))
                      (_E154314154326_)))))
          (_E154313154353_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx154260_)
        (let* ((_e154261154271_ _stx154260_)
               (_E154263154275_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154261154271_)))
               (_E154262154307_
                (lambda ()
                  (if (gx#stx-pair? _e154261154271_)
                      (let ((_e154264154279_ (gx#syntax-e _e154261154271_)))
                        (let ((_hd154265154282_ (##car _e154264154279_))
                              (_tl154266154284_ (##cdr _e154264154279_)))
                          (if (gx#stx-pair? _tl154266154284_)
                              (let ((_e154267154287_
                                     (gx#syntax-e _tl154266154284_)))
                                (let ((_hd154268154290_
                                       (##car _e154267154287_))
                                      (_tl154269154292_
                                       (##cdr _e154267154287_)))
                                  (let* ((_hd154295_ _hd154268154290_)
                                         (_body154297_ _tl154269154292_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154295_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd154295_
                                            (make-list
                                             (gx#stx-length _hd154295_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g154299154302_
                                                     _g154300154304_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g154299154302_
                                               _g154300154304_
                                               '#t))
                                            _hd154295_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd154295_))
                                           (gx#core-expand-local-block
                                            _stx154260_
                                            _body154297_))
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
                                        (_E154263154275_)))))
                              (_E154263154275_))))
                      (_E154263154275_)))))
          (_E154262154307_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx154217_)
        (if (gx#stx-list? _stx154217_)
            (gx#stx-andmap
             (lambda (_bind154219_)
               (let* ((_e154220154230_ _bind154219_)
                      (_E154222154234_ (lambda () '#f))
                      (_E154221154256_
                       (lambda ()
                         (if (gx#stx-pair? _e154220154230_)
                             (let ((_e154223154238_
                                    (gx#syntax-e _e154220154230_)))
                               (let ((_hd154224154241_ (##car _e154223154238_))
                                     (_tl154225154243_
                                      (##cdr _e154223154238_)))
                                 (let ((_hd154246_ _hd154224154241_))
                                   (if (gx#stx-pair? _tl154225154243_)
                                       (let ((_e154226154248_
                                              (gx#syntax-e _tl154225154243_)))
                                         (let ((_hd154227154251_
                                                (##car _e154226154248_))
                                               (_tl154228154253_
                                                (##cdr _e154226154248_)))
                                           (if (gx#stx-null? _tl154228154253_)
                                               (if '#t
                                                   (gx#identifier? _hd154246_)
                                                   (_E154222154234_))
                                               (_E154222154234_))))
                                       (_E154222154234_)))))
                             (_E154222154234_)))))
                 (_E154221154256_)))
             _stx154217_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind154174_)
        (let* ((_e154175154185_ _bind154174_)
               (_E154177154189_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154175154185_)))
               (_E154176154213_
                (lambda ()
                  (if (gx#stx-pair? _e154175154185_)
                      (let ((_e154178154193_ (gx#syntax-e _e154175154185_)))
                        (let ((_hd154179154196_ (##car _e154178154193_))
                              (_tl154180154198_ (##cdr _e154178154193_)))
                          (if (gx#stx-pair? _tl154180154198_)
                              (let ((_e154181154201_
                                     (gx#syntax-e _tl154180154198_)))
                                (let ((_hd154182154204_
                                       (##car _e154181154201_))
                                      (_tl154183154206_
                                       (##cdr _e154181154201_)))
                                  (let ((_expr154209_ _hd154182154204_))
                                    (if (gx#stx-null? _tl154183154206_)
                                        (if '#t
                                            (let ((_g160310_
                                                   (gx#core-expand-expression+1
                                                    _expr154209_)))
                                              (begin
                                                (let ((_g160311_
                                                       (if (##values?
                                                            _g160310_)
                                                           (##vector-length
                                                            _g160310_)
                                                           1)))
                                                  (if (not (##fx= _g160311_ 2))
                                                      (error "Context expects 2 values"
                                                             _g160311_)))
                                                (let ((_e154211_
                                                       (##vector-ref
                                                        _g160310_
                                                        1)))
                                                  _e154211_)))
                                            (_E154177154189_))
                                        (_E154177154189_)))))
                              (_E154177154189_))))
                      (_E154177154189_)))))
          (_E154176154213_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind154119_ _e154120_ _rebind?154121_)
        (let* ((_e154122154132_ _bind154119_)
               (_E154124154136_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154122154132_)))
               (_E154123154158_
                (lambda ()
                  (if (gx#stx-pair? _e154122154132_)
                      (let ((_e154125154140_ (gx#syntax-e _e154122154132_)))
                        (let ((_hd154126154143_ (##car _e154125154140_))
                              (_tl154127154145_ (##cdr _e154125154140_)))
                          (let ((_id154148_ _hd154126154143_))
                            (if (gx#stx-pair? _tl154127154145_)
                                (let ((_e154128154150_
                                       (gx#syntax-e _tl154127154145_)))
                                  (let ((_hd154129154153_
                                         (##car _e154128154150_))
                                        (_tl154130154155_
                                         (##cdr _e154128154150_)))
                                    (if (gx#stx-null? _tl154130154155_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id154148_
                                             _e154120_
                                             _rebind?154121_)
                                            (_E154124154136_))
                                        (_E154124154136_))))
                                (_E154124154136_)))))
                      (_E154124154136_)))))
          (_E154123154158_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind154165_ _e154166_)
        (let ((_rebind?154168_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind154165_
           _e154166_
           _rebind?154168_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g160313_
        (let ((_g160312_ (##length _g160313_)))
          (cond ((##fx= _g160312_ 2)
                 (apply (lambda (_bind154165_ _e154166_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind154165_
                           _e154166_))
                        _g160313_))
                ((##fx= _g160312_ 3)
                 (apply (lambda (_bind154170_ _e154171_ _rebind?154172_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind154170_
                           _e154171_
                           _rebind?154172_))
                        _g160313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g160313_))))))
    (define gx#core-expand-expression%
      (lambda (_stx154077_)
        (let* ((_e154078154088_ _stx154077_)
               (_E154080154092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154078154088_)))
               (_E154079154114_
                (lambda ()
                  (if (gx#stx-pair? _e154078154088_)
                      (let ((_e154081154096_ (gx#syntax-e _e154078154088_)))
                        (let ((_hd154082154099_ (##car _e154081154096_))
                              (_tl154083154101_ (##cdr _e154081154096_)))
                          (if (gx#stx-pair? _tl154083154101_)
                              (let ((_e154084154104_
                                     (gx#syntax-e _tl154083154101_)))
                                (let ((_hd154085154107_
                                       (##car _e154084154104_))
                                      (_tl154086154109_
                                       (##cdr _e154084154104_)))
                                  (let ((_expr154112_ _hd154085154107_))
                                    (if (gx#stx-null? _tl154086154109_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154112_)
                                            (_E154080154092_))
                                        (_E154080154092_)))))
                              (_E154080154092_))))
                      (_E154080154092_)))))
          (_E154079154114_))))
    (define gx#core-expand-quote%
      (lambda (_stx154036_)
        (let* ((_e154037154047_ _stx154036_)
               (_E154039154051_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154037154047_)))
               (_E154038154073_
                (lambda ()
                  (if (gx#stx-pair? _e154037154047_)
                      (let ((_e154040154055_ (gx#syntax-e _e154037154047_)))
                        (let ((_hd154041154058_ (##car _e154040154055_))
                              (_tl154042154060_ (##cdr _e154040154055_)))
                          (if (gx#stx-pair? _tl154042154060_)
                              (let ((_e154043154063_
                                     (gx#syntax-e _tl154042154060_)))
                                (let ((_hd154044154066_
                                       (##car _e154043154063_))
                                      (_tl154045154068_
                                       (##cdr _e154043154063_)))
                                  (let ((_e154071_ _hd154044154066_))
                                    (if (gx#stx-null? _tl154045154068_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e154071_)
                                                         '()))
                                             (gx#stx-source _stx154036_))
                                            (_E154039154051_))
                                        (_E154039154051_)))))
                              (_E154039154051_))))
                      (_E154039154051_)))))
          (_E154038154073_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx153995_)
        (let* ((_e153996154006_ _stx153995_)
               (_E153998154010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153996154006_)))
               (_E153997154032_
                (lambda ()
                  (if (gx#stx-pair? _e153996154006_)
                      (let ((_e153999154014_ (gx#syntax-e _e153996154006_)))
                        (let ((_hd154000154017_ (##car _e153999154014_))
                              (_tl154001154019_ (##cdr _e153999154014_)))
                          (if (gx#stx-pair? _tl154001154019_)
                              (let ((_e154002154022_
                                     (gx#syntax-e _tl154001154019_)))
                                (let ((_hd154003154025_
                                       (##car _e154002154022_))
                                      (_tl154004154027_
                                       (##cdr _e154002154022_)))
                                  (let ((_e154030_ _hd154003154025_))
                                    (if (gx#stx-null? _tl154004154027_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e154030_)
                                                         '()))
                                             (gx#stx-source _stx153995_))
                                            (_E153998154010_))
                                        (_E153998154010_)))))
                              (_E153998154010_))))
                      (_E153998154010_)))))
          (_E153997154032_))))
    (define gx#core-expand-call%
      (lambda (_stx153952_)
        (let* ((_e153953153963_ _stx153952_)
               (_E153955153967_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153953153963_)))
               (_E153954153991_
                (lambda ()
                  (if (gx#stx-pair? _e153953153963_)
                      (let ((_e153956153971_ (gx#syntax-e _e153953153963_)))
                        (let ((_hd153957153974_ (##car _e153956153971_))
                              (_tl153958153976_ (##cdr _e153956153971_)))
                          (if (gx#stx-pair? _tl153958153976_)
                              (let ((_e153959153979_
                                     (gx#syntax-e _tl153958153976_)))
                                (let ((_hd153960153982_
                                       (##car _e153959153979_))
                                      (_tl153961153984_
                                       (##cdr _e153959153979_)))
                                  (let* ((_rator153987_ _hd153960153982_)
                                         (_args153989_ _tl153961153984_))
                                    (if (gx#stx-list? _args153989_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator153987_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args153989_))
                                         (gx#stx-source _stx153952_))
                                        (_E153955153967_)))))
                              (_E153955153967_))))
                      (_E153955153967_)))))
          (_E153954153991_))))
    (define gx#core-expand-if%
      (lambda (_stx153885_)
        (let* ((_e153886153902_ _stx153885_)
               (_E153888153906_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153886153902_)))
               (_E153887153948_
                (lambda ()
                  (if (gx#stx-pair? _e153886153902_)
                      (let ((_e153889153910_ (gx#syntax-e _e153886153902_)))
                        (let ((_hd153890153913_ (##car _e153889153910_))
                              (_tl153891153915_ (##cdr _e153889153910_)))
                          (if (gx#stx-pair? _tl153891153915_)
                              (let ((_e153892153918_
                                     (gx#syntax-e _tl153891153915_)))
                                (let ((_hd153893153921_
                                       (##car _e153892153918_))
                                      (_tl153894153923_
                                       (##cdr _e153892153918_)))
                                  (let ((_test153926_ _hd153893153921_))
                                    (if (gx#stx-pair? _tl153894153923_)
                                        (let ((_e153895153928_
                                               (gx#syntax-e _tl153894153923_)))
                                          (let ((_hd153896153931_
                                                 (##car _e153895153928_))
                                                (_tl153897153933_
                                                 (##cdr _e153895153928_)))
                                            (let ((_K153936_ _hd153896153931_))
                                              (if (gx#stx-pair?
                                                   _tl153897153933_)
                                                  (let ((_e153898153938_
                                                         (gx#syntax-e
                                                          _tl153897153933_)))
                                                    (let ((_hd153899153941_
                                                           (##car _e153898153938_))
                                                          (_tl153900153943_
                                                           (##cdr _e153898153938_)))
                                                      (let ((_E153946_
                                                             _hd153899153941_))
                                                        (if (gx#stx-null?
                                                             _tl153900153943_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test153926_)
                                     (cons (gx#core-expand-expression
                                            _K153936_)
                                           (cons (gx#core-expand-expression
                                                  _E153946_)
                                                 '()))))
                         (gx#stx-source _stx153885_))
                        (_E153888153906_))
                    (_E153888153906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153888153906_)))))
                                        (_E153888153906_)))))
                              (_E153888153906_))))
                      (_E153888153906_)))))
          (_E153887153948_))))
    (define gx#core-expand-ref%
      (lambda (_stx153844_)
        (let* ((_e153845153855_ _stx153844_)
               (_E153847153859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153845153855_)))
               (_E153846153881_
                (lambda ()
                  (if (gx#stx-pair? _e153845153855_)
                      (let ((_e153848153863_ (gx#syntax-e _e153845153855_)))
                        (let ((_hd153849153866_ (##car _e153848153863_))
                              (_tl153850153868_ (##cdr _e153848153863_)))
                          (if (gx#stx-pair? _tl153850153868_)
                              (let ((_e153851153871_
                                     (gx#syntax-e _tl153850153868_)))
                                (let ((_hd153852153874_
                                       (##car _e153851153871_))
                                      (_tl153853153876_
                                       (##cdr _e153851153871_)))
                                  (let ((_id153879_ _hd153852153874_))
                                    (if (gx#stx-null? _tl153853153876_)
                                        (if (gx#identifier? _id153879_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id153879_
                                                          _stx153844_)
                                                         '()))
                                             (gx#stx-source _stx153844_))
                                            (_E153847153859_))
                                        (_E153847153859_)))))
                              (_E153847153859_))))
                      (_E153847153859_)))))
          (_E153846153881_))))
    (define gx#core-expand-setq%
      (lambda (_stx153790_)
        (let* ((_e153791153804_ _stx153790_)
               (_E153793153808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153791153804_)))
               (_E153792153840_
                (lambda ()
                  (if (gx#stx-pair? _e153791153804_)
                      (let ((_e153794153812_ (gx#syntax-e _e153791153804_)))
                        (let ((_hd153795153815_ (##car _e153794153812_))
                              (_tl153796153817_ (##cdr _e153794153812_)))
                          (if (gx#stx-pair? _tl153796153817_)
                              (let ((_e153797153820_
                                     (gx#syntax-e _tl153796153817_)))
                                (let ((_hd153798153823_
                                       (##car _e153797153820_))
                                      (_tl153799153825_
                                       (##cdr _e153797153820_)))
                                  (let ((_id153828_ _hd153798153823_))
                                    (if (gx#stx-pair? _tl153799153825_)
                                        (let ((_e153800153830_
                                               (gx#syntax-e _tl153799153825_)))
                                          (let ((_hd153801153833_
                                                 (##car _e153800153830_))
                                                (_tl153802153835_
                                                 (##cdr _e153800153830_)))
                                            (let ((_expr153838_
                                                   _hd153801153833_))
                                              (if (gx#stx-null?
                                                   _tl153802153835_)
                                                  (if (gx#identifier?
                                                       _id153828_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id153828_
                            _stx153790_)
                           (cons (gx#core-expand-expression _expr153838_)
                                 '())))
               (gx#stx-source _stx153790_))
              (_E153793153808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153793153808_)))))
                                        (_E153793153808_)))))
                              (_E153793153808_))))
                      (_E153793153808_)))))
          (_E153792153840_))))
    (define gx#macro-expand-extern
      (lambda (_stx153638_)
        (letrec ((_generate153640_
                  (lambda (_body153670_)
                    (let _lp153672_ ((_rest153674_ _body153670_)
                                     (_ns153675_
                                      (gx#core-context-namespace__0))
                                     (_r153676_ '()))
                      (let* ((_e153677153692_ _rest153674_)
                             (_E153690153696_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e153677153692_)))
                             (_E153686153700_
                              (lambda ()
                                (if (gx#stx-null? _e153677153692_)
                                    (if '#t
                                        (reverse _r153676_)
                                        (_E153690153696_))
                                    (_E153690153696_))))
                             (_E153679153757_
                              (lambda ()
                                (if (gx#stx-pair? _e153677153692_)
                                    (let ((_e153687153704_
                                           (gx#syntax-e _e153677153692_)))
                                      (let ((_hd153688153707_
                                             (##car _e153687153704_))
                                            (_tl153689153709_
                                             (##cdr _e153687153704_)))
                                        (let* ((_hd153712_ _hd153688153707_)
                                               (_rest153714_ _tl153689153709_))
                                          (if '#t
                                              (if (gx#identifier? _hd153712_)
                                                  (_lp153672_
                                                   _rest153714_
                                                   _ns153675_
                                                   (cons (cons _hd153712_
                                                               (cons (if _ns153675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd153712_
                                  _ns153675_
                                  '"#"
                                  _hd153712_)
                                 _hd153712_)
                             '()))
                 _r153676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e153715153725_
                                                          _hd153712_)
                                                         (_E153717153729_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e153715153725_)))
                                                         (_E153716153753_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e153715153725_)
                        (let ((_e153718153733_ (gx#syntax-e _e153715153725_)))
                          (let ((_hd153719153736_ (##car _e153718153733_))
                                (_tl153720153738_ (##cdr _e153718153733_)))
                            (let ((_id153741_ _hd153719153736_))
                              (if (gx#stx-pair? _tl153720153738_)
                                  (let ((_e153721153743_
                                         (gx#syntax-e _tl153720153738_)))
                                    (let ((_hd153722153746_
                                           (##car _e153721153743_))
                                          (_tl153723153748_
                                           (##cdr _e153721153743_)))
                                      (let ((_eid153751_ _hd153722153746_))
                                        (if (gx#stx-null? _tl153723153748_)
                                            (if (and (gx#identifier?
                                                      _id153741_)
                                                     (gx#identifier?
                                                      _eid153751_))
                                                (_lp153672_
                                                 _rest153714_
                                                 _ns153675_
                                                 (cons (cons _id153741_
                                                             (cons _eid153751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r153676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153717153729_))
                                            (_E153717153729_)))))
                                  (_E153717153729_)))))
                        (_E153717153729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153716153753_)))
                                              (_E153686153700_)))))
                                    (_E153686153700_))))
                             (_E153678153786_
                              (lambda ()
                                (if (gx#stx-pair? _e153677153692_)
                                    (let ((_e153680153761_
                                           (gx#syntax-e _e153677153692_)))
                                      (let ((_hd153681153764_
                                             (##car _e153680153761_))
                                            (_tl153682153766_
                                             (##cdr _e153680153761_)))
                                        (if (eq? (gx#stx-e _hd153681153764_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl153682153766_)
                                                (let ((_e153683153769_
                                                       (gx#syntax-e
                                                        _tl153682153766_)))
                                                  (let ((_hd153684153772_
                                                         (##car _e153683153769_))
                                                        (_tl153685153774_
                                                         (##cdr _e153683153769_)))
                                                    (let* ((_ns153777_
                                                            _hd153684153772_)
                                                           (_rest153779_
                                                            _tl153685153774_))
                                                      (if '#t
                                                          (let ((_ns153784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns153777_)
                             (symbol->string (gx#stx-e _ns153777_))
                             (if (or (gx#stx-string? _ns153777_)
                                     (gx#stx-false? _ns153777_))
                                 (gx#stx-e _ns153777_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx153638_
                                  _ns153777_)))))
                    (_lp153672_ _rest153779_ _ns153784_ _r153676_))
                  (_E153679153757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153679153757_))
                                            (_E153679153757_))))
                                    (_E153679153757_)))))
                        (_E153678153786_))))))
          (let* ((_e153641153648_ _stx153638_)
                 (_E153643153652_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153641153648_)))
                 (_E153642153666_
                  (lambda ()
                    (if (gx#stx-pair? _e153641153648_)
                        (let ((_e153644153656_ (gx#syntax-e _e153641153648_)))
                          (let ((_hd153645153659_ (##car _e153644153656_))
                                (_tl153646153661_ (##cdr _e153644153656_)))
                            (let ((_body153664_ _tl153646153661_))
                              (if (gx#stx-list? _body153664_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate153640_ _body153664_))
                                  (_E153643153652_)))))
                        (_E153643153652_)))))
            (_E153642153666_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx153584_)
        (let* ((_e153585153598_ _stx153584_)
               (_E153587153602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153585153598_)))
               (_E153586153634_
                (lambda ()
                  (if (gx#stx-pair? _e153585153598_)
                      (let ((_e153588153606_ (gx#syntax-e _e153585153598_)))
                        (let ((_hd153589153609_ (##car _e153588153606_))
                              (_tl153590153611_ (##cdr _e153588153606_)))
                          (if (gx#stx-pair? _tl153590153611_)
                              (let ((_e153591153614_
                                     (gx#syntax-e _tl153590153611_)))
                                (let ((_hd153592153617_
                                       (##car _e153591153614_))
                                      (_tl153593153619_
                                       (##cdr _e153591153614_)))
                                  (let ((_hd153622_ _hd153592153617_))
                                    (if (gx#stx-pair? _tl153593153619_)
                                        (let ((_e153594153624_
                                               (gx#syntax-e _tl153593153619_)))
                                          (let ((_hd153595153627_
                                                 (##car _e153594153624_))
                                                (_tl153596153629_
                                                 (##cdr _e153594153624_)))
                                            (let ((_expr153632_
                                                   _hd153595153627_))
                                              (if (gx#stx-null?
                                                   _tl153596153629_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd153622_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd153622_)
                          (cons _expr153632_ '())))
              (_E153587153602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153587153602_)))))
                                        (_E153587153602_)))))
                              (_E153587153602_))))
                      (_E153587153602_)))))
          (_E153586153634_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx153530_)
        (let* ((_e153531153544_ _stx153530_)
               (_E153533153548_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153531153544_)))
               (_E153532153580_
                (lambda ()
                  (if (gx#stx-pair? _e153531153544_)
                      (let ((_e153534153552_ (gx#syntax-e _e153531153544_)))
                        (let ((_hd153535153555_ (##car _e153534153552_))
                              (_tl153536153557_ (##cdr _e153534153552_)))
                          (if (gx#stx-pair? _tl153536153557_)
                              (let ((_e153537153560_
                                     (gx#syntax-e _tl153536153557_)))
                                (let ((_hd153538153563_
                                       (##car _e153537153560_))
                                      (_tl153539153565_
                                       (##cdr _e153537153560_)))
                                  (let ((_hd153568_ _hd153538153563_))
                                    (if (gx#stx-pair? _tl153539153565_)
                                        (let ((_e153540153570_
                                               (gx#syntax-e _tl153539153565_)))
                                          (let ((_hd153541153573_
                                                 (##car _e153540153570_))
                                                (_tl153542153575_
                                                 (##cdr _e153540153570_)))
                                            (let ((_expr153578_
                                                   _hd153541153573_))
                                              (if (gx#stx-null?
                                                   _tl153542153575_)
                                                  (if (gx#identifier?
                                                       _hd153568_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd153568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr153578_ '())))
              (_E153533153548_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153533153548_)))))
                                        (_E153533153548_)))))
                              (_E153533153548_))))
                      (_E153533153548_)))))
          (_E153532153580_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx153476_)
        (let* ((_e153477153490_ _stx153476_)
               (_E153479153494_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153477153490_)))
               (_E153478153526_
                (lambda ()
                  (if (gx#stx-pair? _e153477153490_)
                      (let ((_e153480153498_ (gx#syntax-e _e153477153490_)))
                        (let ((_hd153481153501_ (##car _e153480153498_))
                              (_tl153482153503_ (##cdr _e153480153498_)))
                          (if (gx#stx-pair? _tl153482153503_)
                              (let ((_e153483153506_
                                     (gx#syntax-e _tl153482153503_)))
                                (let ((_hd153484153509_
                                       (##car _e153483153506_))
                                      (_tl153485153511_
                                       (##cdr _e153483153506_)))
                                  (let ((_id153514_ _hd153484153509_))
                                    (if (gx#stx-pair? _tl153485153511_)
                                        (let ((_e153486153516_
                                               (gx#syntax-e _tl153485153511_)))
                                          (let ((_hd153487153519_
                                                 (##car _e153486153516_))
                                                (_tl153488153521_
                                                 (##cdr _e153486153516_)))
                                            (let ((_alias-id153524_
                                                   _hd153487153519_))
                                              (if (gx#stx-null?
                                                   _tl153488153521_)
                                                  (if (and (gx#identifier?
                                                            _id153514_)
                                                           (gx#identifier?
                                                            _alias-id153524_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id153514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id153524_ '())))
              (_E153479153494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153479153494_)))))
                                        (_E153479153494_)))))
                              (_E153479153494_))))
                      (_E153479153494_)))))
          (_E153478153526_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx153433_)
        (let* ((_e153434153444_ _stx153433_)
               (_E153436153448_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153434153444_)))
               (_E153435153472_
                (lambda ()
                  (if (gx#stx-pair? _e153434153444_)
                      (let ((_e153437153452_ (gx#syntax-e _e153434153444_)))
                        (let ((_hd153438153455_ (##car _e153437153452_))
                              (_tl153439153457_ (##cdr _e153437153452_)))
                          (if (gx#stx-pair? _tl153439153457_)
                              (let ((_e153440153460_
                                     (gx#syntax-e _tl153439153457_)))
                                (let ((_hd153441153463_
                                       (##car _e153440153460_))
                                      (_tl153442153465_
                                       (##cdr _e153440153460_)))
                                  (let* ((_hd153468_ _hd153441153463_)
                                         (_body153470_ _tl153442153465_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd153468_)
                                             (gx#stx-list? _body153470_)
                                             (not (gx#stx-null? _body153470_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd153468_)
                                         _body153470_)
                                        (_E153436153448_)))))
                              (_E153436153448_))))
                      (_E153436153448_)))))
          (_E153435153472_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx153369_)
        (letrec ((_generate153371_
                  (lambda (_clause153401_)
                    (let* ((_e153402153409_ _clause153401_)
                           (_E153404153413_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx153369_
                               _clause153401_)))
                           (_E153403153429_
                            (lambda ()
                              (if (gx#stx-pair? _e153402153409_)
                                  (let ((_e153405153417_
                                         (gx#syntax-e _e153402153409_)))
                                    (let ((_hd153406153420_
                                           (##car _e153405153417_))
                                          (_tl153407153422_
                                           (##cdr _e153405153417_)))
                                      (let* ((_hd153425_ _hd153406153420_)
                                             (_body153427_ _tl153407153422_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd153425_)
                                                 (gx#stx-list? _body153427_)
                                                 (not (gx#stx-null?
                                                       _body153427_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd153425_)
                                                   _body153427_)
                                             (gx#stx-source _clause153401_))
                                            (_E153404153413_)))))
                                  (_E153404153413_)))))
                      (_E153403153429_)))))
          (let* ((_e153372153379_ _stx153369_)
                 (_E153374153383_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153372153379_)))
                 (_E153373153397_
                  (lambda ()
                    (if (gx#stx-pair? _e153372153379_)
                        (let ((_e153375153387_ (gx#syntax-e _e153372153379_)))
                          (let ((_hd153376153390_ (##car _e153375153387_))
                                (_tl153377153392_ (##cdr _e153375153387_)))
                            (let ((_clauses153395_ _tl153377153392_))
                              (if (gx#stx-list? _clauses153395_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate153371_
                                    _clauses153395_))
                                  (_E153374153383_)))))
                        (_E153374153383_)))))
            (_E153373153397_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx153270_ _form153271_)
        (letrec ((_generate153273_
                  (lambda (_bind153316_)
                    (let* ((_e153317153327_ _bind153316_)
                           (_E153319153331_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx153270_
                               _bind153316_)))
                           (_E153318153355_
                            (lambda ()
                              (if (gx#stx-pair? _e153317153327_)
                                  (let ((_e153320153335_
                                         (gx#syntax-e _e153317153327_)))
                                    (let ((_hd153321153338_
                                           (##car _e153320153335_))
                                          (_tl153322153340_
                                           (##cdr _e153320153335_)))
                                      (let ((_ids153343_ _hd153321153338_))
                                        (if (gx#stx-pair? _tl153322153340_)
                                            (let ((_e153323153345_
                                                   (gx#syntax-e
                                                    _tl153322153340_)))
                                              (let ((_hd153324153348_
                                                     (##car _e153323153345_))
                                                    (_tl153325153350_
                                                     (##cdr _e153323153345_)))
                                                (let ((_expr153353_
                                                       _hd153324153348_))
                                                  (if (gx#stx-null?
                                                       _tl153325153350_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids153343_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids153343_)
                        (cons _expr153353_ '()))
                  (_E153319153331_))
              (_E153319153331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E153319153331_)))))
                                  (_E153319153331_)))))
                      (_E153318153355_)))))
          (let* ((_e153274153284_ _stx153270_)
                 (_E153276153288_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153274153284_)))
                 (_E153275153312_
                  (lambda ()
                    (if (gx#stx-pair? _e153274153284_)
                        (let ((_e153277153292_ (gx#syntax-e _e153274153284_)))
                          (let ((_hd153278153295_ (##car _e153277153292_))
                                (_tl153279153297_ (##cdr _e153277153292_)))
                            (if (gx#stx-pair? _tl153279153297_)
                                (let ((_e153280153300_
                                       (gx#syntax-e _tl153279153297_)))
                                  (let ((_hd153281153303_
                                         (##car _e153280153300_))
                                        (_tl153282153305_
                                         (##cdr _e153280153300_)))
                                    (let* ((_hd153308_ _hd153281153303_)
                                           (_body153310_ _tl153282153305_))
                                      (if (and (gx#stx-list? _hd153308_)
                                               (gx#stx-list? _body153310_)
                                               (not (gx#stx-null?
                                                     _body153310_)))
                                          (gx#core-cons*
                                           _form153271_
                                           (gx#stx-map1
                                            _generate153273_
                                            _hd153308_)
                                           _body153310_)
                                          (_E153276153288_)))))
                                (_E153276153288_))))
                        (_E153276153288_)))))
            (_E153275153312_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx153362_)
        (let ((_form153364_ '%#let-values))
          (gx#macro-expand-let-values__% _stx153362_ _form153364_))))
    (define gx#macro-expand-let-values
      (lambda _g160315_
        (let ((_g160314_ (##length _g160315_)))
          (cond ((##fx= _g160314_ 1)
                 (apply (lambda (_stx153362_)
                          (gx#macro-expand-let-values__0 _stx153362_))
                        _g160315_))
                ((##fx= _g160314_ 2)
                 (apply (lambda (_stx153366_ _form153367_)
                          (gx#macro-expand-let-values__%
                           _stx153366_
                           _form153367_))
                        _g160315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g160315_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx153267_)
        (gx#macro-expand-let-values__% _stx153267_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx153265_)
        (gx#macro-expand-let-values__% _stx153265_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx153156_)
        (let* ((_e153157153183_ _stx153156_)
               (_E153169153187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153157153183_)))
               (_E153159153229_
                (lambda ()
                  (if (gx#stx-pair? _e153157153183_)
                      (let ((_e153170153191_ (gx#syntax-e _e153157153183_)))
                        (let ((_hd153171153194_ (##car _e153170153191_))
                              (_tl153172153196_ (##cdr _e153170153191_)))
                          (if (gx#stx-pair? _tl153172153196_)
                              (let ((_e153173153199_
                                     (gx#syntax-e _tl153172153196_)))
                                (let ((_hd153174153202_
                                       (##car _e153173153199_))
                                      (_tl153175153204_
                                       (##cdr _e153173153199_)))
                                  (let ((_test153207_ _hd153174153202_))
                                    (if (gx#stx-pair? _tl153175153204_)
                                        (let ((_e153176153209_
                                               (gx#syntax-e _tl153175153204_)))
                                          (let ((_hd153177153212_
                                                 (##car _e153176153209_))
                                                (_tl153178153214_
                                                 (##cdr _e153176153209_)))
                                            (let ((_K153217_ _hd153177153212_))
                                              (if (gx#stx-pair?
                                                   _tl153178153214_)
                                                  (let ((_e153179153219_
                                                         (gx#syntax-e
                                                          _tl153178153214_)))
                                                    (let ((_hd153180153222_
                                                           (##car _e153179153219_))
                                                          (_tl153181153224_
                                                           (##cdr _e153179153219_)))
                                                      (let ((_E153227_
                                                             _hd153180153222_))
                                                        (if (gx#stx-null?
                                                             _tl153181153224_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test153207_
                         _K153217_
                         _E153227_)
                        (_E153169153187_))
                    (_E153169153187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153169153187_)))))
                                        (_E153169153187_)))))
                              (_E153169153187_))))
                      (_E153169153187_))))
               (_E153158153261_
                (lambda ()
                  (if (gx#stx-pair? _e153157153183_)
                      (let ((_e153160153233_ (gx#syntax-e _e153157153183_)))
                        (let ((_hd153161153236_ (##car _e153160153233_))
                              (_tl153162153238_ (##cdr _e153160153233_)))
                          (if (gx#stx-pair? _tl153162153238_)
                              (let ((_e153163153241_
                                     (gx#syntax-e _tl153162153238_)))
                                (let ((_hd153164153244_
                                       (##car _e153163153241_))
                                      (_tl153165153246_
                                       (##cdr _e153163153241_)))
                                  (let ((_test153249_ _hd153164153244_))
                                    (if (gx#stx-pair? _tl153165153246_)
                                        (let ((_e153166153251_
                                               (gx#syntax-e _tl153165153246_)))
                                          (let ((_hd153167153254_
                                                 (##car _e153166153251_))
                                                (_tl153168153256_
                                                 (##cdr _e153166153251_)))
                                            (let ((_K153259_ _hd153167153254_))
                                              (if (gx#stx-null?
                                                   _tl153168153256_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test153249_
                                                       _K153259_
                                                       '#!void)
                                                      (_E153159153229_))
                                                  (_E153159153229_)))))
                                        (_E153159153229_)))))
                              (_E153159153229_))))
                      (_E153159153229_)))))
          (_E153158153261_))))
    (define gx#free-identifier=?
      (lambda (_xid153144_ _yid153145_)
        (let ((_xe153147_ (gx#resolve-identifier__0 _xid153144_))
              (_ye153148_ (gx#resolve-identifier__0 _yid153145_)))
          (if (and _xe153147_ _ye153148_)
              (let ((_$e153150_ (eq? _xe153147_ _ye153148_)))
                (if _$e153150_
                    _$e153150_
                    (if (##structure-instance-of? _xe153147_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye153148_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe153147_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye153148_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe153147_ _ye153148_)
                  '#f
                  (gx#stx-eq? _xid153144_ _yid153145_))))))
    (define gx#bound-identifier=?
      (lambda (_xid153128_ _yid153129_)
        (letrec ((_context153131_
                  (lambda (_e153142_)
                    (if (##structure-direct-instance-of?
                         _e153142_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e153142_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks153132_
                  (lambda (_e153140_)
                    (if (symbol? _e153140_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e153140_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e153140_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e153140_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap153133_
                  (lambda (_e153138_)
                    (if (symbol? _e153138_)
                        _e153138_
                        (gx#syntax-local-unwrap _e153138_)))))
          (let ((_x153135_ (_unwrap153133_ _xid153128_))
                (_y153136_ (_unwrap153133_ _yid153129_)))
            (if (gx#stx-eq? _x153135_ _y153136_)
                (if (eq? (_context153131_ _x153135_)
                         (_context153131_ _y153136_))
                    (equal? (_marks153132_ _x153135_)
                            (_marks153132_ _y153136_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx153126_)
        (if (gx#identifier? _stx153126_)
            (gx#core-identifier=? _stx153126_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx153124_)
        (if (gx#identifier? _stx153124_)
            (gx#core-identifier=? _stx153124_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x153122_)
        (if (gx#identifier? _x153122_)
            (if (not (gx#underscore? _x153122_)) _x153122_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx153068_ _where153069_)
        (let _lp153071_ ((_rest153073_ (gx#syntax->list _stx153068_)))
          (let* ((_rest153074153082_ _rest153073_)
                 (_else153076153090_ (lambda () '#t))
                 (_K153078153100_
                  (lambda (_rest153093_ _hd153094_)
                    (if (not (gx#identifier? _hd153094_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where153069_
                         _hd153094_)
                        (if (find (lambda (_g153095153097_)
                                    (gx#bound-identifier=?
                                     _g153095153097_
                                     _hd153094_))
                                  _rest153093_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where153069_
                             _hd153094_)
                            (_lp153071_ _rest153093_))))))
            (if (##pair? _rest153074153082_)
                (let ((_hd153079153103_ (##car _rest153074153082_))
                      (_tl153080153105_ (##cdr _rest153074153082_)))
                  (let* ((_hd153108_ _hd153079153103_)
                         (_rest153110_ _tl153080153105_))
                    (_K153078153100_ _rest153110_ _hd153108_)))
                (_else153076153090_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx153115_)
        (let ((_where153117_ _stx153115_))
          (gx#check-duplicate-identifiers__% _stx153115_ _where153117_))))
    (define gx#check-duplicate-identifiers
      (lambda _g160317_
        (let ((_g160316_ (##length _g160317_)))
          (cond ((##fx= _g160316_ 1)
                 (apply (lambda (_stx153115_)
                          (gx#check-duplicate-identifiers__0 _stx153115_))
                        _g160317_))
                ((##fx= _g160316_ 2)
                 (apply (lambda (_stx153119_ _where153120_)
                          (gx#check-duplicate-identifiers__%
                           _stx153119_
                           _where153120_))
                        _g160317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g160317_))))))
    (define gx#core-bind-values?
      (lambda (_stx153060_)
        (gx#stx-andmap
         (lambda (_x153062_)
           (let ((_$e153064_ (gx#identifier? _x153062_)))
             (if _$e153064_ _$e153064_ (gx#stx-false? _x153062_))))
         _stx153060_)))
    (define gx#core-bind-values!__%
      (lambda (_stx153024_ _rebind?153025_ _phi153026_ _ctx153027_)
        (gx#stx-for-each1
         (lambda (_id153029_)
           (if (gx#identifier? _id153029_)
               (gx#core-bind-runtime!__%
                _id153029_
                _rebind?153025_
                _phi153026_
                _ctx153027_)
               '#!void))
         _stx153024_)))
    (define gx#core-bind-values!__0
      (lambda (_stx153034_)
        (let* ((_rebind?153036_ '#f)
               (_phi153038_ (gx#current-expander-phi))
               (_ctx153040_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153034_
           _rebind?153036_
           _phi153038_
           _ctx153040_))))
    (define gx#core-bind-values!__1
      (lambda (_stx153042_ _rebind?153043_)
        (let* ((_phi153045_ (gx#current-expander-phi))
               (_ctx153047_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153042_
           _rebind?153043_
           _phi153045_
           _ctx153047_))))
    (define gx#core-bind-values!__2
      (lambda (_stx153049_ _rebind?153050_ _phi153051_)
        (let ((_ctx153053_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153049_
           _rebind?153050_
           _phi153051_
           _ctx153053_))))
    (define gx#core-bind-values!
      (lambda _g160319_
        (let ((_g160318_ (##length _g160319_)))
          (cond ((##fx= _g160318_ 1)
                 (apply (lambda (_stx153034_)
                          (gx#core-bind-values!__0 _stx153034_))
                        _g160319_))
                ((##fx= _g160318_ 2)
                 (apply (lambda (_stx153042_ _rebind?153043_)
                          (gx#core-bind-values!__1
                           _stx153042_
                           _rebind?153043_))
                        _g160319_))
                ((##fx= _g160318_ 3)
                 (apply (lambda (_stx153049_ _rebind?153050_ _phi153051_)
                          (gx#core-bind-values!__2
                           _stx153049_
                           _rebind?153050_
                           _phi153051_))
                        _g160319_))
                ((##fx= _g160318_ 4)
                 (apply (lambda (_stx153055_
                                 _rebind?153056_
                                 _phi153057_
                                 _ctx153058_)
                          (gx#core-bind-values!__%
                           _stx153055_
                           _rebind?153056_
                           _phi153057_
                           _ctx153058_))
                        _g160319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g160319_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx153019_)
        (gx#stx-map1
         (lambda (_x153021_)
           (if (gx#identifier? _x153021_)
               (gx#core-quote-syntax__0 _x153021_)
               '#f))
         _stx153019_)))
    (define gx#core-runtime-ref?
      (lambda (_stx153012_)
        (if (gx#identifier? _stx153012_)
            (let* ((_bind153014_ (gx#resolve-identifier__0 _stx153012_))
                   (_$e153016_ (not _bind153014_)))
              (if _$e153016_
                  _$e153016_
                  (##structure-instance-of?
                   _bind153014_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id153004_ _form153005_)
        (let ((_bind153007_ (gx#resolve-identifier__0 _id153004_)))
          (if (##structure-instance-of? _bind153007_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id153004_)
              (if (not _bind153007_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id153004_)))
                      (gx#core-quote-syntax__0 _id153004_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form153005_
                       _id153004_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form153005_
                   _id153004_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id152963_ _rebind?152964_ _phi152965_ _ctx152966_)
        (let* ((_key152968_ (gx#core-identifier-key _id152963_))
               (_eid152970_
                (gx#make-binding-id__%
                 _key152968_
                 '#f
                 _phi152965_
                 _ctx152966_))
               (_bind152972_
                (if (##structure-instance-of?
                     _ctx152966_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152970_
                     _key152968_
                     _phi152965_
                     _ctx152966_)
                    (if (##structure-instance-of?
                         _ctx152966_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152970_
                         _key152968_
                         _phi152965_)
                        (if (##structure-instance-of?
                             _ctx152966_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid152970_
                             _key152968_
                             _phi152965_)
                            (##structure
                             gx#runtime-binding::t
                             _eid152970_
                             _key152968_
                             _phi152965_))))))
          (gx#bind-identifier!__%
           _id152963_
           _bind152972_
           _rebind?152964_
           _phi152965_
           _ctx152966_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id152978_)
        (let* ((_rebind?152980_ '#f)
               (_phi152982_ (gx#current-expander-phi))
               (_ctx152984_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152978_
           _rebind?152980_
           _phi152982_
           _ctx152984_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id152986_ _rebind?152987_)
        (let* ((_phi152989_ (gx#current-expander-phi))
               (_ctx152991_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152986_
           _rebind?152987_
           _phi152989_
           _ctx152991_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id152993_ _rebind?152994_ _phi152995_)
        (let ((_ctx152997_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152993_
           _rebind?152994_
           _phi152995_
           _ctx152997_))))
    (define gx#core-bind-runtime!
      (lambda _g160321_
        (let ((_g160320_ (##length _g160321_)))
          (cond ((##fx= _g160320_ 1)
                 (apply (lambda (_id152978_)
                          (gx#core-bind-runtime!__0 _id152978_))
                        _g160321_))
                ((##fx= _g160320_ 2)
                 (apply (lambda (_id152986_ _rebind?152987_)
                          (gx#core-bind-runtime!__1
                           _id152986_
                           _rebind?152987_))
                        _g160321_))
                ((##fx= _g160320_ 3)
                 (apply (lambda (_id152993_ _rebind?152994_ _phi152995_)
                          (gx#core-bind-runtime!__2
                           _id152993_
                           _rebind?152994_
                           _phi152995_))
                        _g160321_))
                ((##fx= _g160320_ 4)
                 (apply (lambda (_id152999_
                                 _rebind?153000_
                                 _phi153001_
                                 _ctx153002_)
                          (gx#core-bind-runtime!__%
                           _id152999_
                           _rebind?153000_
                           _phi153001_
                           _ctx153002_))
                        _g160321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g160321_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id152918_ _eid152919_ _rebind?152920_ _phi152921_ _ctx152922_)
        (let* ((_key152924_ (gx#core-identifier-key _id152918_))
               (_bind152926_
                (if (##structure-instance-of?
                     _ctx152922_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152919_
                     _key152924_
                     _phi152921_
                     _ctx152922_)
                    (if (##structure-instance-of?
                         _ctx152922_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152919_
                         _key152924_
                         _phi152921_)
                        (##structure
                         gx#runtime-binding::t
                         _eid152919_
                         _key152924_
                         _phi152921_)))))
          (gx#bind-identifier!__%
           _id152918_
           _bind152926_
           _rebind?152920_
           _phi152921_
           _ctx152922_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id152932_ _eid152933_)
        (let* ((_rebind?152935_ '#f)
               (_phi152937_ (gx#current-expander-phi))
               (_ctx152939_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152932_
           _eid152933_
           _rebind?152935_
           _phi152937_
           _ctx152939_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id152941_ _eid152942_ _rebind?152943_)
        (let* ((_phi152945_ (gx#current-expander-phi))
               (_ctx152947_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152941_
           _eid152942_
           _rebind?152943_
           _phi152945_
           _ctx152947_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id152949_ _eid152950_ _rebind?152951_ _phi152952_)
        (let ((_ctx152954_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152949_
           _eid152950_
           _rebind?152951_
           _phi152952_
           _ctx152954_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g160323_
        (let ((_g160322_ (##length _g160323_)))
          (cond ((##fx= _g160322_ 2)
                 (apply (lambda (_id152932_ _eid152933_)
                          (gx#core-bind-runtime-reference!__0
                           _id152932_
                           _eid152933_))
                        _g160323_))
                ((##fx= _g160322_ 3)
                 (apply (lambda (_id152941_ _eid152942_ _rebind?152943_)
                          (gx#core-bind-runtime-reference!__1
                           _id152941_
                           _eid152942_
                           _rebind?152943_))
                        _g160323_))
                ((##fx= _g160322_ 4)
                 (apply (lambda (_id152949_
                                 _eid152950_
                                 _rebind?152951_
                                 _phi152952_)
                          (gx#core-bind-runtime-reference!__2
                           _id152949_
                           _eid152950_
                           _rebind?152951_
                           _phi152952_))
                        _g160323_))
                ((##fx= _g160322_ 5)
                 (apply (lambda (_id152956_
                                 _eid152957_
                                 _rebind?152958_
                                 _phi152959_
                                 _ctx152960_)
                          (gx#core-bind-runtime-reference!__%
                           _id152956_
                           _eid152957_
                           _rebind?152958_
                           _phi152959_
                           _ctx152960_))
                        _g160323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g160323_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id152878_ _eid152879_ _rebind?152880_ _phi152881_ _ctx152882_)
        (gx#bind-identifier!__%
         _id152878_
         (##structure
          gx#extern-binding::t
          _eid152879_
          (gx#core-identifier-key _id152878_)
          _phi152881_)
         _rebind?152880_
         _phi152881_
         _ctx152882_)))
    (define gx#core-bind-extern!__0
      (lambda (_id152887_ _eid152888_)
        (let* ((_rebind?152890_ '#f)
               (_phi152892_ (gx#current-expander-phi))
               (_ctx152894_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152887_
           _eid152888_
           _rebind?152890_
           _phi152892_
           _ctx152894_))))
    (define gx#core-bind-extern!__1
      (lambda (_id152896_ _eid152897_ _rebind?152898_)
        (let* ((_phi152900_ (gx#current-expander-phi))
               (_ctx152902_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152896_
           _eid152897_
           _rebind?152898_
           _phi152900_
           _ctx152902_))))
    (define gx#core-bind-extern!__2
      (lambda (_id152904_ _eid152905_ _rebind?152906_ _phi152907_)
        (let ((_ctx152909_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152904_
           _eid152905_
           _rebind?152906_
           _phi152907_
           _ctx152909_))))
    (define gx#core-bind-extern!
      (lambda _g160325_
        (let ((_g160324_ (##length _g160325_)))
          (cond ((##fx= _g160324_ 2)
                 (apply (lambda (_id152887_ _eid152888_)
                          (gx#core-bind-extern!__0 _id152887_ _eid152888_))
                        _g160325_))
                ((##fx= _g160324_ 3)
                 (apply (lambda (_id152896_ _eid152897_ _rebind?152898_)
                          (gx#core-bind-extern!__1
                           _id152896_
                           _eid152897_
                           _rebind?152898_))
                        _g160325_))
                ((##fx= _g160324_ 4)
                 (apply (lambda (_id152904_
                                 _eid152905_
                                 _rebind?152906_
                                 _phi152907_)
                          (gx#core-bind-extern!__2
                           _id152904_
                           _eid152905_
                           _rebind?152906_
                           _phi152907_))
                        _g160325_))
                ((##fx= _g160324_ 5)
                 (apply (lambda (_id152911_
                                 _eid152912_
                                 _rebind?152913_
                                 _phi152914_
                                 _ctx152915_)
                          (gx#core-bind-extern!__%
                           _id152911_
                           _eid152912_
                           _rebind?152913_
                           _phi152914_
                           _ctx152915_))
                        _g160325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g160325_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id152832_ _e152833_ _rebind?152834_ _phi152835_ _ctx152836_)
        (gx#bind-identifier!__%
         _id152832_
         (let ((_key152841_ (gx#core-identifier-key _id152832_))
               (_e152842_
                (if (or (##structure-instance-of? _e152833_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e152833_
                         'gx#expander-context::t))
                    _e152833_
                    (##structure
                     gx#user-expander::t
                     _e152833_
                     _ctx152836_
                     _phi152835_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key152841_ '#t _phi152835_ _ctx152836_)
            _key152841_
            _phi152835_
            _e152842_))
         _rebind?152834_
         _phi152835_
         _ctx152836_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id152847_ _e152848_)
        (let* ((_rebind?152850_ '#f)
               (_phi152852_ (gx#current-expander-phi))
               (_ctx152854_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152847_
           _e152848_
           _rebind?152850_
           _phi152852_
           _ctx152854_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id152856_ _e152857_ _rebind?152858_)
        (let* ((_phi152860_ (gx#current-expander-phi))
               (_ctx152862_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152856_
           _e152857_
           _rebind?152858_
           _phi152860_
           _ctx152862_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id152864_ _e152865_ _rebind?152866_ _phi152867_)
        (let ((_ctx152869_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152864_
           _e152865_
           _rebind?152866_
           _phi152867_
           _ctx152869_))))
    (define gx#core-bind-syntax!
      (lambda _g160327_
        (let ((_g160326_ (##length _g160327_)))
          (cond ((##fx= _g160326_ 2)
                 (apply (lambda (_id152847_ _e152848_)
                          (gx#core-bind-syntax!__0 _id152847_ _e152848_))
                        _g160327_))
                ((##fx= _g160326_ 3)
                 (apply (lambda (_id152856_ _e152857_ _rebind?152858_)
                          (gx#core-bind-syntax!__1
                           _id152856_
                           _e152857_
                           _rebind?152858_))
                        _g160327_))
                ((##fx= _g160326_ 4)
                 (apply (lambda (_id152864_
                                 _e152865_
                                 _rebind?152866_
                                 _phi152867_)
                          (gx#core-bind-syntax!__2
                           _id152864_
                           _e152865_
                           _rebind?152866_
                           _phi152867_))
                        _g160327_))
                ((##fx= _g160326_ 5)
                 (apply (lambda (_id152871_
                                 _e152872_
                                 _rebind?152873_
                                 _phi152874_
                                 _ctx152875_)
                          (gx#core-bind-syntax!__%
                           _id152871_
                           _e152872_
                           _rebind?152873_
                           _phi152874_
                           _ctx152875_))
                        _g160327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g160327_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id152815_ _e152816_ _rebind?152817_)
        (gx#core-bind-syntax!__%
         _id152815_
         _e152816_
         _rebind?152817_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id152822_ _e152823_)
        (let ((_rebind?152825_ '#f))
          (gx#core-bind-root-syntax!__%
           _id152822_
           _e152823_
           _rebind?152825_))))
    (define gx#core-bind-root-syntax!
      (lambda _g160329_
        (let ((_g160328_ (##length _g160329_)))
          (cond ((##fx= _g160328_ 2)
                 (apply (lambda (_id152822_ _e152823_)
                          (gx#core-bind-root-syntax!__0 _id152822_ _e152823_))
                        _g160329_))
                ((##fx= _g160328_ 3)
                 (apply (lambda (_id152827_ _e152828_ _rebind?152829_)
                          (gx#core-bind-root-syntax!__%
                           _id152827_
                           _e152828_
                           _rebind?152829_))
                        _g160329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g160329_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id152773_
               _alias-id152774_
               _rebind?152775_
               _phi152776_
               _ctx152777_)
        (gx#bind-identifier!__%
         _id152773_
         (let ((_key152779_ (gx#core-identifier-key _id152773_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key152779_ '#t _phi152776_ _ctx152777_)
            _key152779_
            _phi152776_
            _alias-id152774_))
         _rebind?152775_
         _phi152776_
         _ctx152777_)))
    (define gx#core-bind-alias!__0
      (lambda (_id152784_ _alias-id152785_)
        (let* ((_rebind?152787_ '#f)
               (_phi152789_ (gx#current-expander-phi))
               (_ctx152791_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152784_
           _alias-id152785_
           _rebind?152787_
           _phi152789_
           _ctx152791_))))
    (define gx#core-bind-alias!__1
      (lambda (_id152793_ _alias-id152794_ _rebind?152795_)
        (let* ((_phi152797_ (gx#current-expander-phi))
               (_ctx152799_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152793_
           _alias-id152794_
           _rebind?152795_
           _phi152797_
           _ctx152799_))))
    (define gx#core-bind-alias!__2
      (lambda (_id152801_ _alias-id152802_ _rebind?152803_ _phi152804_)
        (let ((_ctx152806_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152801_
           _alias-id152802_
           _rebind?152803_
           _phi152804_
           _ctx152806_))))
    (define gx#core-bind-alias!
      (lambda _g160331_
        (let ((_g160330_ (##length _g160331_)))
          (cond ((##fx= _g160330_ 2)
                 (apply (lambda (_id152784_ _alias-id152785_)
                          (gx#core-bind-alias!__0 _id152784_ _alias-id152785_))
                        _g160331_))
                ((##fx= _g160330_ 3)
                 (apply (lambda (_id152793_ _alias-id152794_ _rebind?152795_)
                          (gx#core-bind-alias!__1
                           _id152793_
                           _alias-id152794_
                           _rebind?152795_))
                        _g160331_))
                ((##fx= _g160330_ 4)
                 (apply (lambda (_id152801_
                                 _alias-id152802_
                                 _rebind?152803_
                                 _phi152804_)
                          (gx#core-bind-alias!__2
                           _id152801_
                           _alias-id152802_
                           _rebind?152803_
                           _phi152804_))
                        _g160331_))
                ((##fx= _g160330_ 5)
                 (apply (lambda (_id152808_
                                 _alias-id152809_
                                 _rebind?152810_
                                 _phi152811_
                                 _ctx152812_)
                          (gx#core-bind-alias!__%
                           _id152808_
                           _alias-id152809_
                           _rebind?152810_
                           _phi152811_
                           _ctx152812_))
                        _g160331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g160331_))))))
    (define gx#make-binding-id__%
      (lambda (_key152730_ _syntax?152731_ _phi152732_ _ctx152733_)
        (if (uninterned-symbol? _key152730_)
            (gensym 'L)
            (if (pair? _key152730_)
                (gensym (car _key152730_))
                (if (##structure-instance-of? _ctx152733_ 'gx#top-context::t)
                    (let ((_ns152735_
                           (gx#core-context-namespace__% _ctx152733_)))
                      (if (and (fxzero? _phi152732_) (not _syntax?152731_))
                          (if _ns152735_
                              (make-symbol__1 _ns152735_ '"#" _key152730_)
                              _key152730_)
                          (if _syntax?152731_
                              (make-symbol__1
                               (let ((_$e152737_ _ns152735_))
                                 (if _$e152737_ _$e152737_ '""))
                               '"[:"
                               (number->string _phi152732_)
                               '":]#"
                               _key152730_)
                              (make-symbol__1
                               (let ((_$e152740_ _ns152735_))
                                 (if _$e152740_ _$e152740_ '""))
                               '"["
                               (number->string _phi152732_)
                               '"]#"
                               _key152730_))))
                    (gensym _key152730_))))))
    (define gx#make-binding-id__0
      (lambda (_key152746_)
        (let* ((_syntax?152748_ '#f)
               (_phi152750_ (gx#current-expander-phi))
               (_ctx152752_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152746_
           _syntax?152748_
           _phi152750_
           _ctx152752_))))
    (define gx#make-binding-id__1
      (lambda (_key152754_ _syntax?152755_)
        (let* ((_phi152757_ (gx#current-expander-phi))
               (_ctx152759_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152754_
           _syntax?152755_
           _phi152757_
           _ctx152759_))))
    (define gx#make-binding-id__2
      (lambda (_key152761_ _syntax?152762_ _phi152763_)
        (let ((_ctx152765_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152761_
           _syntax?152762_
           _phi152763_
           _ctx152765_))))
    (define gx#make-binding-id
      (lambda _g160333_
        (let ((_g160332_ (##length _g160333_)))
          (cond ((##fx= _g160332_ 1)
                 (apply (lambda (_key152746_)
                          (gx#make-binding-id__0 _key152746_))
                        _g160333_))
                ((##fx= _g160332_ 2)
                 (apply (lambda (_key152754_ _syntax?152755_)
                          (gx#make-binding-id__1 _key152754_ _syntax?152755_))
                        _g160333_))
                ((##fx= _g160332_ 3)
                 (apply (lambda (_key152761_ _syntax?152762_ _phi152763_)
                          (gx#make-binding-id__2
                           _key152761_
                           _syntax?152762_
                           _phi152763_))
                        _g160333_))
                ((##fx= _g160332_ 4)
                 (apply (lambda (_key152767_
                                 _syntax?152768_
                                 _phi152769_
                                 _ctx152770_)
                          (gx#make-binding-id__%
                           _key152767_
                           _syntax?152768_
                           _phi152769_
                           _ctx152770_))
                        _g160333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g160333_))))))))
