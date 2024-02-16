(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708102803)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx155716_)
        (letrec ((_expand-special155718_
                  (lambda (_hd155720_ _K155721_ _rest155722_ _r155723_)
                    (_K155721_
                     _rest155722_
                     (cons (gx#core-expand-top _hd155720_) _r155723_)))))
          (gx#core-expand-block__0 _stx155716_ _expand-special155718_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx155469_)
        (letrec ((_expand-special155471_
                  (lambda (_hd155591_ _K155592_ _rest155593_ _r155594_)
                    (let* ((_K155598_
                            (lambda (_e155596_)
                              (_K155592_
                               _rest155593_
                               (cons _e155596_ _r155594_))))
                           (_e155599155628_ _hd155591_)
                           (_E155623155632_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155599155628_)))
                           (_E155619155644_
                            (lambda ()
                              (if (gx#stx-pair? _e155599155628_)
                                  (let ((_e155624155636_
                                         (gx#syntax-e _e155599155628_)))
                                    (let ((_hd155625155639_
                                           (##car _e155624155636_))
                                          (_tl155626155641_
                                           (##cdr _e155624155636_)))
                                      (if (and (gx#identifier?
                                                _hd155625155639_)
                                               (gx#core-identifier=?
                                                _hd155625155639_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K155598_
                                               (gx#core-expand-define-runtime%
                                                _hd155591_))
                                              (_E155623155632_))
                                          (_E155623155632_))))
                                  (_E155623155632_))))
                           (_E155615155656_
                            (lambda ()
                              (if (gx#stx-pair? _e155599155628_)
                                  (let ((_e155620155648_
                                         (gx#syntax-e _e155599155628_)))
                                    (let ((_hd155621155651_
                                           (##car _e155620155648_))
                                          (_tl155622155653_
                                           (##cdr _e155620155648_)))
                                      (if (and (gx#identifier?
                                                _hd155621155651_)
                                               (gx#core-identifier=?
                                                _hd155621155651_
                                                '%#define-alias))
                                          (if '#t
                                              (_K155598_
                                               (gx#core-expand-define-alias%
                                                _hd155591_))
                                              (_E155619155644_))
                                          (_E155619155644_))))
                                  (_E155619155644_))))
                           (_E155605155668_
                            (lambda ()
                              (if (gx#stx-pair? _e155599155628_)
                                  (let ((_e155616155660_
                                         (gx#syntax-e _e155599155628_)))
                                    (let ((_hd155617155663_
                                           (##car _e155616155660_))
                                          (_tl155618155665_
                                           (##cdr _e155616155660_)))
                                      (if (and (gx#identifier?
                                                _hd155617155663_)
                                               (gx#core-identifier=?
                                                _hd155617155663_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K155598_
                                               (gx#core-expand-define-syntax%
                                                _hd155591_))
                                              (_E155615155656_))
                                          (_E155615155656_))))
                                  (_E155615155656_))))
                           (_E155601155700_
                            (lambda ()
                              (if (gx#stx-pair? _e155599155628_)
                                  (let ((_e155606155672_
                                         (gx#syntax-e _e155599155628_)))
                                    (let ((_hd155607155675_
                                           (##car _e155606155672_))
                                          (_tl155608155677_
                                           (##cdr _e155606155672_)))
                                      (if (and (gx#identifier?
                                                _hd155607155675_)
                                               (gx#core-identifier=?
                                                _hd155607155675_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155608155677_)
                                              (let ((_e155609155680_
                                                     (gx#syntax-e
                                                      _tl155608155677_)))
                                                (let ((_hd155610155683_
                                                       (##car _e155609155680_))
                                                      (_tl155611155685_
                                                       (##cdr _e155609155680_)))
                                                  (let ((_hd-bind155688_
                                                         _hd155610155683_))
                                                    (if (gx#stx-pair?
                                                         _tl155611155685_)
                                                        (let ((_e155612155690_
                                                               (gx#syntax-e
                                                                _tl155611155685_)))
                                                          (let ((_hd155613155693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155612155690_))
                        (_tl155614155695_ (##cdr _e155612155690_)))
                    (let ((_expr155698_ _hd155613155693_))
                      (if (gx#stx-null? _tl155614155695_)
                          (if (gx#core-bind-values? _hd-bind155688_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155688_)
                                (_K155598_ _hd155591_))
                              (_E155605155668_))
                          (_E155605155668_)))))
                (_E155605155668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155605155668_))
                                          (_E155605155668_))))
                                  (_E155605155668_))))
                           (_E155600155712_
                            (lambda ()
                              (if (gx#stx-pair? _e155599155628_)
                                  (let ((_e155602155704_
                                         (gx#syntax-e _e155599155628_)))
                                    (let ((_hd155603155707_
                                           (##car _e155602155704_))
                                          (_tl155604155709_
                                           (##cdr _e155602155704_)))
                                      (if (and (gx#identifier?
                                                _hd155603155707_)
                                               (gx#core-identifier=?
                                                _hd155603155707_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K155598_
                                               (gx#core-expand-begin-syntax%
                                                _hd155591_))
                                              (_E155601155700_))
                                          (_E155601155700_))))
                                  (_E155601155700_)))))
                      (_E155600155712_))))
                 (_eval-body155472_
                  (lambda (_rbody155480_)
                    (let _lp155482_ ((_rest155484_ _rbody155480_)
                                     (_body155485_ '())
                                     (_ebody155486_ '()))
                      (let* ((_rest155487155495_ _rest155484_)
                             (_else155489155503_
                              (lambda ()
                                (values _body155485_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody155486_)
                                          (gx#stx-source _stx155469_))))))
                             (_K155491155579_
                              (lambda (_rest155506_ _hd155507_)
                                (let* ((_e155508155525_ _hd155507_)
                                       (_E155520155529_
                                        (lambda ()
                                          (_lp155482_
                                           _rest155506_
                                           (cons _hd155507_ _body155485_)
                                           (cons _hd155507_ _ebody155486_))))
                                       (_E155510155541_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155508155525_)
                                              (let ((_e155521155533_
                                                     (gx#syntax-e
                                                      _e155508155525_)))
                                                (let ((_hd155522155536_
                                                       (##car _e155521155533_))
                                                      (_tl155523155538_
                                                       (##cdr _e155521155533_)))
                                                  (if (and (gx#identifier?
                                                            _hd155522155536_)
                                                           (gx#core-identifier=?
                                                            _hd155522155536_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp155482_
                                                           _rest155506_
                                                           (cons _hd155507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body155485_)
                   _ebody155486_)
                  (_E155520155529_))
              (_E155520155529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155520155529_))))
                                       (_E155509155575_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155508155525_)
                                              (let ((_e155511155545_
                                                     (gx#syntax-e
                                                      _e155508155525_)))
                                                (let ((_hd155512155548_
                                                       (##car _e155511155545_))
                                                      (_tl155513155550_
                                                       (##cdr _e155511155545_)))
                                                  (if (and (gx#identifier?
                                                            _hd155512155548_)
                                                           (gx#core-identifier=?
                                                            _hd155512155548_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl155513155550_)
                                                          (let ((_e155514155553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl155513155550_)))
                    (let ((_hd155515155556_ (##car _e155514155553_))
                          (_tl155516155558_ (##cdr _e155514155553_)))
                      (let ((_hd-bind155561_ _hd155515155556_))
                        (if (gx#stx-pair? _tl155516155558_)
                            (let ((_e155517155563_
                                   (gx#syntax-e _tl155516155558_)))
                              (let ((_hd155518155566_ (##car _e155517155563_))
                                    (_tl155519155568_ (##cdr _e155517155563_)))
                                (let ((_expr155571_ _hd155518155566_))
                                  (if (gx#stx-null? _tl155519155568_)
                                      (if '#t
                                          (let ((_ehd155573_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind155561_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr155571_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd155507_))))
                                            (_lp155482_
                                             _rest155506_
                                             (cons _ehd155573_ _body155485_)
                                             (cons _ehd155573_ _ebody155486_)))
                                          (_E155510155541_))
                                      (_E155510155541_)))))
                            (_E155510155541_)))))
                  (_E155510155541_))
              (_E155510155541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155510155541_)))))
                                  (_E155509155575_)))))
                        (if (##pair? _rest155487155495_)
                            (let ((_hd155492155582_ (##car _rest155487155495_))
                                  (_tl155493155584_
                                   (##cdr _rest155487155495_)))
                              (let* ((_hd155587_ _hd155492155582_)
                                     (_rest155589_ _tl155493155584_))
                                (_K155491155579_ _rest155589_ _hd155587_)))
                            (_else155489155503_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody155475_
                     (gx#core-expand-block__1
                      _stx155469_
                      _expand-special155471_
                      '#f))
                    (_g160307_ (_eval-body155472_ _rbody155475_)))
               (begin
                 (let ((_g160308_
                        (if (##values? _g160307_)
                            (##vector-length _g160307_)
                            1)))
                   (if (not (##fx= _g160308_ 2))
                       (error "Context expects 2 values" _g160308_)))
                 (let ((_expanded-body155477_ (##vector-ref _g160307_ 0))
                       (_value155478_ (##vector-ref _g160307_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body155477_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value155478_ '())))
                    (gx#stx-source _stx155469_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx155439_)
        (let* ((_e155440155447_ _stx155439_)
               (_E155442155451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155440155447_)))
               (_E155441155465_
                (lambda ()
                  (if (gx#stx-pair? _e155440155447_)
                      (let ((_e155443155455_ (gx#syntax-e _e155440155447_)))
                        (let ((_hd155444155458_ (##car _e155443155455_))
                              (_tl155445155460_ (##cdr _e155443155455_)))
                          (let ((_body155463_ _tl155445155460_))
                            (if (gx#stx-list? _body155463_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body155463_)
                                 (gx#stx-source _stx155439_))
                                (_E155442155451_)))))
                      (_E155442155451_)))))
          (_E155441155465_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx155437_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx155437_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx155383_)
        (let* ((_e155384155397_ _stx155383_)
               (_E155386155401_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155384155397_)))
               (_E155385155433_
                (lambda ()
                  (if (gx#stx-pair? _e155384155397_)
                      (let ((_e155387155405_ (gx#syntax-e _e155384155397_)))
                        (let ((_hd155388155408_ (##car _e155387155405_))
                              (_tl155389155410_ (##cdr _e155387155405_)))
                          (if (gx#stx-pair? _tl155389155410_)
                              (let ((_e155390155413_
                                     (gx#syntax-e _tl155389155410_)))
                                (let ((_hd155391155416_
                                       (##car _e155390155413_))
                                      (_tl155392155418_
                                       (##cdr _e155390155413_)))
                                  (let ((_ann155421_ _hd155391155416_))
                                    (if (gx#stx-pair? _tl155392155418_)
                                        (let ((_e155393155423_
                                               (gx#syntax-e _tl155392155418_)))
                                          (let ((_hd155394155426_
                                                 (##car _e155393155423_))
                                                (_tl155395155428_
                                                 (##cdr _e155393155423_)))
                                            (let ((_expr155431_
                                                   _hd155394155426_))
                                              (if (gx#stx-null?
                                                   _tl155395155428_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann155421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr155431_)
                                 '())))
               (gx#stx-source _stx155383_))
              (_E155386155401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E155386155401_)))))
                                        (_E155386155401_)))))
                              (_E155386155401_))))
                      (_E155386155401_)))))
          (_E155385155433_))))
    (define gx#core-expand-local-block
      (lambda (_stx155107_ _body155108_)
        (letrec ((_expand-special155110_
                  (lambda (_hd155378_ _K155379_ _rest155380_ _r155381_)
                    (_K155379_
                     '()
                     (cons (_expand-internal155111_ _hd155378_ _rest155380_)
                           _r155381_))))
                 (_expand-internal155111_
                  (lambda (_hd155374_ _rest155375_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal155113_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd155374_ _rest155375_))
                          (gx#stx-source _stx155107_))
                         _expand-internal-special155112_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj160301
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj160301)
                       __obj160301))))
                 (_expand-internal-special155112_
                  (lambda (_hd155269_ _K155270_ _rest155271_ _r155272_)
                    (let* ((_e155273155298_ _hd155269_)
                           (_E155293155302_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155273155298_)))
                           (_E155289155314_
                            (lambda ()
                              (if (gx#stx-pair? _e155273155298_)
                                  (let ((_e155294155306_
                                         (gx#syntax-e _e155273155298_)))
                                    (let ((_hd155295155309_
                                           (##car _e155294155306_))
                                          (_tl155296155311_
                                           (##cdr _e155294155306_)))
                                      (if (and (gx#identifier?
                                                _hd155295155309_)
                                               (gx#core-identifier=?
                                                _hd155295155309_
                                                '%#declare))
                                          (if '#t
                                              (_K155270_
                                               _rest155271_
                                               (cons (gx#core-expand-declare%
                                                      _hd155269_)
                                                     _r155272_))
                                              (_E155293155302_))
                                          (_E155293155302_))))
                                  (_E155293155302_))))
                           (_E155285155326_
                            (lambda ()
                              (if (gx#stx-pair? _e155273155298_)
                                  (let ((_e155290155318_
                                         (gx#syntax-e _e155273155298_)))
                                    (let ((_hd155291155321_
                                           (##car _e155290155318_))
                                          (_tl155292155323_
                                           (##cdr _e155290155318_)))
                                      (if (and (gx#identifier?
                                                _hd155291155321_)
                                               (gx#core-identifier=?
                                                _hd155291155321_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd155269_)
                                                (_K155270_
                                                 _rest155271_
                                                 _r155272_))
                                              (_E155289155314_))
                                          (_E155289155314_))))
                                  (_E155289155314_))))
                           (_E155275155338_
                            (lambda ()
                              (if (gx#stx-pair? _e155273155298_)
                                  (let ((_e155286155330_
                                         (gx#syntax-e _e155273155298_)))
                                    (let ((_hd155287155333_
                                           (##car _e155286155330_))
                                          (_tl155288155335_
                                           (##cdr _e155286155330_)))
                                      (if (and (gx#identifier?
                                                _hd155287155333_)
                                               (gx#core-identifier=?
                                                _hd155287155333_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd155269_)
                                                (_K155270_
                                                 _rest155271_
                                                 _r155272_))
                                              (_E155285155326_))
                                          (_E155285155326_))))
                                  (_E155285155326_))))
                           (_E155274155370_
                            (lambda ()
                              (if (gx#stx-pair? _e155273155298_)
                                  (let ((_e155276155342_
                                         (gx#syntax-e _e155273155298_)))
                                    (let ((_hd155277155345_
                                           (##car _e155276155342_))
                                          (_tl155278155347_
                                           (##cdr _e155276155342_)))
                                      (if (and (gx#identifier?
                                                _hd155277155345_)
                                               (gx#core-identifier=?
                                                _hd155277155345_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155278155347_)
                                              (let ((_e155279155350_
                                                     (gx#syntax-e
                                                      _tl155278155347_)))
                                                (let ((_hd155280155353_
                                                       (##car _e155279155350_))
                                                      (_tl155281155355_
                                                       (##cdr _e155279155350_)))
                                                  (let ((_hd-bind155358_
                                                         _hd155280155353_))
                                                    (if (gx#stx-pair?
                                                         _tl155281155355_)
                                                        (let ((_e155282155360_
                                                               (gx#syntax-e
                                                                _tl155281155355_)))
                                                          (let ((_hd155283155363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155282155360_))
                        (_tl155284155365_ (##cdr _e155282155360_)))
                    (let ((_expr155368_ _hd155283155363_))
                      (if (gx#stx-null? _tl155284155365_)
                          (if (gx#core-bind-values? _hd-bind155358_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155358_)
                                (_K155270_
                                 _rest155271_
                                 (cons _hd155269_ _r155272_)))
                              (_E155275155338_))
                          (_E155275155338_)))))
                (_E155275155338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155275155338_))
                                          (_E155275155338_))))
                                  (_E155275155338_)))))
                      (_E155274155370_))))
                 (_wrap-internal155113_
                  (lambda (_rbody155115_)
                    (let _lp155117_ ((_rest155119_ _rbody155115_)
                                     (_decls155120_ '())
                                     (_bind155121_ '())
                                     (_body155122_ '()))
                      (let* ((_e155123155130_ _rest155119_)
                             (_E155125155179_
                              (lambda ()
                                (let* ((_body155174_
                                        (let* ((_body155133155143_
                                                _body155122_)
                                               (_else155136155151_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body155122_)
                                                   (gx#stx-source
                                                    _stx155107_)))))
                                          (let ((_K155141155171_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx155107_)))
                                                (_K155138155157_
                                                 (lambda (_expr155155_)
                                                   _expr155155_)))
                                            (let ((_try-match155135155167_
                                                   (lambda ()
                                                     (if (##pair? _body155133155143_)
                                                         (let ((_tl155140155162_
                                                                (##cdr _body155133155143_))
                                                               (_hd155139155160_
                                                                (##car _body155133155143_)))
                                                           (if (##null? _tl155140155162_)
                                                               (let ((_expr155165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd155139155160_))
                         (_K155138155157_ _expr155165_))
                       (_else155136155151_)))
                 (_else155136155151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body155133155143_)
                                                  (_K155141155171_)
                                                  (_try-match155135155167_))))))
                                       (_body155176_
                                        (if (null? _bind155121_)
                                            _body155174_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind155121_
                                                         (cons _body155174_
                                                               '())))
                                             (gx#stx-source _stx155107_)))))
                                  (if (null? _decls155120_)
                                      _body155176_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls155120_
                                                   (cons _body155176_ '())))
                                       (gx#stx-source _stx155107_))))))
                             (_E155124155265_
                              (lambda ()
                                (if (gx#stx-pair? _e155123155130_)
                                    (let ((_e155126155183_
                                           (gx#syntax-e _e155123155130_)))
                                      (let ((_hd155127155186_
                                             (##car _e155126155183_))
                                            (_tl155128155188_
                                             (##cdr _e155126155183_)))
                                        (let* ((_hd155191_ _hd155127155186_)
                                               (_rest155193_ _tl155128155188_))
                                          (if '#t
                                              (let* ((_e155194155211_
                                                      _hd155191_)
                                                     (_E155206155215_
                                                      (lambda ()
                                                        (if (null? _bind155121_)
                                                            (_lp155117_
                                                             _rest155193_
                                                             _decls155120_
                                                             _bind155121_
                                                             (cons _hd155191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body155122_))
                    (_lp155117_
                     _rest155193_
                     _decls155120_
                     (cons (cons '#f (cons _hd155191_ '())) _bind155121_)
                     _body155122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155196155229_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155194155211_)
                                                            (let ((_e155207155219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155194155211_)))
                      (let ((_hd155208155222_ (##car _e155207155219_))
                            (_tl155209155224_ (##cdr _e155207155219_)))
                        (if (and (gx#identifier? _hd155208155222_)
                                 (gx#core-identifier=?
                                  _hd155208155222_
                                  '%#declare))
                            (let ((_xdecls155227_ _tl155209155224_))
                              (if '#t
                                  (_lp155117_
                                   _rest155193_
                                   (gx#stx-foldr
                                    cons
                                    _decls155120_
                                    _xdecls155227_)
                                   _bind155121_
                                   _body155122_)
                                  (_E155206155215_)))
                            (_E155206155215_))))
                    (_E155206155215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155195155261_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155194155211_)
                                                            (let ((_e155197155233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155194155211_)))
                      (let ((_hd155198155236_ (##car _e155197155233_))
                            (_tl155199155238_ (##cdr _e155197155233_)))
                        (if (and (gx#identifier? _hd155198155236_)
                                 (gx#core-identifier=?
                                  _hd155198155236_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl155199155238_)
                                (let ((_e155200155241_
                                       (gx#syntax-e _tl155199155238_)))
                                  (let ((_hd155201155244_
                                         (##car _e155200155241_))
                                        (_tl155202155246_
                                         (##cdr _e155200155241_)))
                                    (let ((_hd-bind155249_ _hd155201155244_))
                                      (if (gx#stx-pair? _tl155202155246_)
                                          (let ((_e155203155251_
                                                 (gx#syntax-e
                                                  _tl155202155246_)))
                                            (let ((_hd155204155254_
                                                   (##car _e155203155251_))
                                                  (_tl155205155256_
                                                   (##cdr _e155203155251_)))
                                              (let ((_expr155259_
                                                     _hd155204155254_))
                                                (if (gx#stx-null?
                                                     _tl155205155256_)
                                                    (if '#t
                                                        (_lp155117_
                                                         _rest155193_
                                                         _decls155120_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind155249_)
                             (cons (gx#core-expand-expression _expr155259_)
                                   '()))
                       _bind155121_)
                 _body155122_)
                (_E155196155229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E155196155229_)))))
                                          (_E155196155229_)))))
                                (_E155196155229_))
                            (_E155196155229_))))
                    (_E155196155229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E155195155261_))
                                              (_E155125155179_)))))
                                    (_E155125155179_)))))
                        (_E155124155265_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body155108_)
            (gx#stx-source _stx155107_))
           _expand-special155110_))))
    (define gx#core-expand-declare%
      (lambda (_stx155045_)
        (let* ((_e155046155053_ _stx155045_)
               (_E155048155057_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155046155053_)))
               (_E155047155103_
                (lambda ()
                  (if (gx#stx-pair? _e155046155053_)
                      (let ((_e155049155061_ (gx#syntax-e _e155046155053_)))
                        (let ((_hd155050155064_ (##car _e155049155061_))
                              (_tl155051155066_ (##cdr _e155049155061_)))
                          (let ((_body155069_ _tl155051155066_))
                            (if (gx#stx-list? _body155069_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl155071_)
                                     (let* ((_e155072155079_ _decl155071_)
                                            (_E155074155083_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e155072155079_)))
                                            (_E155073155099_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e155072155079_)
                                                   (let ((_e155075155087_
                                                          (gx#syntax-e
                                                           _e155072155079_)))
                                                     (let ((_hd155076155090_
                                                            (##car _e155075155087_))
                                                           (_tl155077155092_
                                                            (##cdr _e155075155087_)))
                                                       (let* ((_head155095_
                                                               _hd155076155090_)
                                                              (_args155097_
                                                               _tl155077155092_))
                                                         (if (gx#stx-list?
                                                              _args155097_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl155071_)
                                                             (_E155074155083_)))))
                                                   (_E155074155083_)))))
                                       (_E155073155099_)))
                                   _body155069_))
                                 (gx#stx-source _stx155045_))
                                (_E155048155057_)))))
                      (_E155048155057_)))))
          (_E155047155103_))))
    (define gx#core-expand-extern%
      (lambda (_stx154949_)
        (let* ((_e154950154957_ _stx154949_)
               (_E154952154961_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154950154957_)))
               (_E154951155041_
                (lambda ()
                  (if (gx#stx-pair? _e154950154957_)
                      (let ((_e154953154965_ (gx#syntax-e _e154950154957_)))
                        (let ((_hd154954154968_ (##car _e154953154965_))
                              (_tl154955154970_ (##cdr _e154953154965_)))
                          (let ((_body154973_ _tl154955154970_))
                            (if '#t
                                (let _lp154975_ ((_rest154977_ _body154973_)
                                                 (_r154978_ '()))
                                  (let* ((_e154979154993_ _rest154977_)
                                         (_E154991154997_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx154949_)))
                                         (_E154981155001_
                                          (lambda ()
                                            (if (gx#stx-null? _e154979154993_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r154978_))
                                                     (gx#stx-source
                                                      _stx154949_))
                                                    (_E154991154997_))
                                                (_E154991154997_))))
                                         (_E154980155037_
                                          (lambda ()
                                            (if (gx#stx-pair? _e154979154993_)
                                                (let ((_e154982155005_
                                                       (gx#syntax-e
                                                        _e154979154993_)))
                                                  (let ((_hd154983155008_
                                                         (##car _e154982155005_))
                                                        (_tl154984155010_
                                                         (##cdr _e154982155005_)))
                                                    (if (gx#stx-pair?
                                                         _hd154983155008_)
                                                        (let ((_e154985155013_
                                                               (gx#syntax-e
                                                                _hd154983155008_)))
                                                          (let ((_hd154986155016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154985155013_))
                        (_tl154987155018_ (##cdr _e154985155013_)))
                    (let ((_id155021_ _hd154986155016_))
                      (if (gx#stx-pair? _tl154987155018_)
                          (let ((_e154988155023_
                                 (gx#syntax-e _tl154987155018_)))
                            (let ((_hd154989155026_ (##car _e154988155023_))
                                  (_tl154990155028_ (##cdr _e154988155023_)))
                              (let ((_eid155031_ _hd154989155026_))
                                (if (gx#stx-null? _tl154990155028_)
                                    (let ((_rest155033_ _tl154984155010_))
                                      (if (and (gx#identifier? _id155021_)
                                               (gx#identifier? _eid155031_))
                                          (let ((_eid155035_
                                                 (gx#stx-e _eid155031_)))
                                            (gx#core-bind-extern!__0
                                             _id155021_
                                             _eid155035_)
                                            (_lp154975_
                                             _rest155033_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id155021_)
                                                         (cons _eid155035_
                                                               '()))
                                                   _r154978_)))
                                          (_E154981155001_)))
                                    (_E154981155001_)))))
                          (_E154981155001_)))))
                (_E154981155001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154981155001_)))))
                                    (_E154980155037_)))
                                (_E154952154961_)))))
                      (_E154952154961_)))))
          (_E154951155041_))))
    (define gx#core-expand-define-values%
      (lambda (_stx154895_)
        (let* ((_e154896154909_ _stx154895_)
               (_E154898154913_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154896154909_)))
               (_E154897154945_
                (lambda ()
                  (if (gx#stx-pair? _e154896154909_)
                      (let ((_e154899154917_ (gx#syntax-e _e154896154909_)))
                        (let ((_hd154900154920_ (##car _e154899154917_))
                              (_tl154901154922_ (##cdr _e154899154917_)))
                          (if (gx#stx-pair? _tl154901154922_)
                              (let ((_e154902154925_
                                     (gx#syntax-e _tl154901154922_)))
                                (let ((_hd154903154928_
                                       (##car _e154902154925_))
                                      (_tl154904154930_
                                       (##cdr _e154902154925_)))
                                  (let ((_hd154933_ _hd154903154928_))
                                    (if (gx#stx-pair? _tl154904154930_)
                                        (let ((_e154905154935_
                                               (gx#syntax-e _tl154904154930_)))
                                          (let ((_hd154906154938_
                                                 (##car _e154905154935_))
                                                (_tl154907154940_
                                                 (##cdr _e154905154935_)))
                                            (let ((_expr154943_
                                                   _hd154906154938_))
                                              (if (gx#stx-null?
                                                   _tl154907154940_)
                                                  (if (gx#core-bind-values?
                                                       _hd154933_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd154933_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd154933_)
                             (cons (gx#core-expand-expression _expr154943_)
                                   '())))
                 (gx#stx-source _stx154895_)))
              (_E154898154913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154898154913_)))))
                                        (_E154898154913_)))))
                              (_E154898154913_))))
                      (_E154898154913_)))))
          (_E154897154945_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx154839_)
        (let* ((_e154840154853_ _stx154839_)
               (_E154842154857_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154840154853_)))
               (_E154841154891_
                (lambda ()
                  (if (gx#stx-pair? _e154840154853_)
                      (let ((_e154843154861_ (gx#syntax-e _e154840154853_)))
                        (let ((_hd154844154864_ (##car _e154843154861_))
                              (_tl154845154866_ (##cdr _e154843154861_)))
                          (if (gx#stx-pair? _tl154845154866_)
                              (let ((_e154846154869_
                                     (gx#syntax-e _tl154845154866_)))
                                (let ((_hd154847154872_
                                       (##car _e154846154869_))
                                      (_tl154848154874_
                                       (##cdr _e154846154869_)))
                                  (let ((_id154877_ _hd154847154872_))
                                    (if (gx#stx-pair? _tl154848154874_)
                                        (let ((_e154849154879_
                                               (gx#syntax-e _tl154848154874_)))
                                          (let ((_hd154850154882_
                                                 (##car _e154849154879_))
                                                (_tl154851154884_
                                                 (##cdr _e154849154879_)))
                                            (let ((_binding-id154887_
                                                   _hd154850154882_))
                                              (if (gx#stx-null?
                                                   _tl154851154884_)
                                                  (if (and (gx#identifier?
                                                            _id154877_)
                                                           (gx#identifier?
                                                            _binding-id154887_))
                                                      (let ((_eid154889_
                                                             (gx#stx-e
                                                              _binding-id154887_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id154877_
                                                         _eid154889_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154877_)
                             (cons _eid154889_ '())))))
              (_E154842154857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154842154857_)))))
                                        (_E154842154857_)))))
                              (_E154842154857_))))
                      (_E154842154857_)))))
          (_E154841154891_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx154782_)
        (let* ((_e154783154796_ _stx154782_)
               (_E154785154800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154783154796_)))
               (_E154784154835_
                (lambda ()
                  (if (gx#stx-pair? _e154783154796_)
                      (let ((_e154786154804_ (gx#syntax-e _e154783154796_)))
                        (let ((_hd154787154807_ (##car _e154786154804_))
                              (_tl154788154809_ (##cdr _e154786154804_)))
                          (if (gx#stx-pair? _tl154788154809_)
                              (let ((_e154789154812_
                                     (gx#syntax-e _tl154788154809_)))
                                (let ((_hd154790154815_
                                       (##car _e154789154812_))
                                      (_tl154791154817_
                                       (##cdr _e154789154812_)))
                                  (let ((_id154820_ _hd154790154815_))
                                    (if (gx#stx-pair? _tl154791154817_)
                                        (let ((_e154792154822_
                                               (gx#syntax-e _tl154791154817_)))
                                          (let ((_hd154793154825_
                                                 (##car _e154792154822_))
                                                (_tl154794154827_
                                                 (##cdr _e154792154822_)))
                                            (let ((_expr154830_
                                                   _hd154793154825_))
                                              (if (gx#stx-null?
                                                   _tl154794154827_)
                                                  (if (gx#identifier?
                                                       _id154820_)
                                                      (let ((_g160309_
                                                             (gx#core-expand-expression+1
                                                              _expr154830_)))
                                                        (begin
                                                          (let ((_g160310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g160309_)
                             (##vector-length _g160309_)
                             1)))
                    (if (not (##fx= _g160310_ 2))
                        (error "Context expects 2 values" _g160310_)))
                  (let ((_e-stx154832_ (##vector-ref _g160309_ 0))
                        (_e154833_ (##vector-ref _g160309_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id154820_ _e154833_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id154820_)
                                   (cons _e-stx154832_ '())))
                       (gx#stx-source _stx154782_))))))
              (_E154785154800_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154785154800_)))))
                                        (_E154785154800_)))))
                              (_E154785154800_))))
                      (_E154785154800_)))))
          (_E154784154835_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx154726_)
        (let* ((_e154727154740_ _stx154726_)
               (_E154729154744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154727154740_)))
               (_E154728154778_
                (lambda ()
                  (if (gx#stx-pair? _e154727154740_)
                      (let ((_e154730154748_ (gx#syntax-e _e154727154740_)))
                        (let ((_hd154731154751_ (##car _e154730154748_))
                              (_tl154732154753_ (##cdr _e154730154748_)))
                          (if (gx#stx-pair? _tl154732154753_)
                              (let ((_e154733154756_
                                     (gx#syntax-e _tl154732154753_)))
                                (let ((_hd154734154759_
                                       (##car _e154733154756_))
                                      (_tl154735154761_
                                       (##cdr _e154733154756_)))
                                  (let ((_id154764_ _hd154734154759_))
                                    (if (gx#stx-pair? _tl154735154761_)
                                        (let ((_e154736154766_
                                               (gx#syntax-e _tl154735154761_)))
                                          (let ((_hd154737154769_
                                                 (##car _e154736154766_))
                                                (_tl154738154771_
                                                 (##cdr _e154736154766_)))
                                            (let ((_alias-id154774_
                                                   _hd154737154769_))
                                              (if (gx#stx-null?
                                                   _tl154738154771_)
                                                  (if (and (gx#identifier?
                                                            _id154764_)
                                                           (gx#identifier?
                                                            _alias-id154774_))
                                                      (let ((_alias-id154776_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id154774_)))
                                                        (gx#core-bind-alias!__0
                                                         _id154764_
                                                         _alias-id154776_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154764_)
                             (cons _alias-id154776_ '())))))
              (_E154729154744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154729154744_)))))
                                        (_E154729154744_)))))
                              (_E154729154744_))))
                      (_E154729154744_)))))
          (_E154728154778_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx154669_ _wrap?154670_)
        (let* ((_e154671154681_ _stx154669_)
               (_E154673154685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154671154681_)))
               (_E154672154712_
                (lambda ()
                  (if (gx#stx-pair? _e154671154681_)
                      (let ((_e154674154689_ (gx#syntax-e _e154671154681_)))
                        (let ((_hd154675154692_ (##car _e154674154689_))
                              (_tl154676154694_ (##cdr _e154674154689_)))
                          (if (gx#stx-pair? _tl154676154694_)
                              (let ((_e154677154697_
                                     (gx#syntax-e _tl154676154694_)))
                                (let ((_hd154678154700_
                                       (##car _e154677154697_))
                                      (_tl154679154702_
                                       (##cdr _e154677154697_)))
                                  (let* ((_hd154705_ _hd154678154700_)
                                         (_body154707_ _tl154679154702_))
                                    (if (gx#core-bind-values? _hd154705_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd154705_)
                                           (let ((_body154710_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd154705_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx154669_
                                                               _body154707_)
                                                              '()))))
                                             (if _wrap?154670_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body154710_)
                                                  (gx#stx-source _stx154669_))
                                                 _body154710_)))
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
                                           __obj160302))
                                        (_E154673154685_)))))
                              (_E154673154685_))))
                      (_E154673154685_)))))
          (_E154672154712_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx154719_)
        (let ((_wrap?154721_ '#t))
          (gx#core-expand-lambda%__% _stx154719_ _wrap?154721_))))
    (define gx#core-expand-lambda%
      (lambda _g160312_
        (let ((_g160311_ (##length _g160312_)))
          (cond ((##fx= _g160311_ 1)
                 (apply (lambda (_stx154719_)
                          (gx#core-expand-lambda%__0 _stx154719_))
                        _g160312_))
                ((##fx= _g160311_ 2)
                 (apply (lambda (_stx154723_ _wrap?154724_)
                          (gx#core-expand-lambda%__%
                           _stx154723_
                           _wrap?154724_))
                        _g160312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g160312_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx154633_)
        (let* ((_e154634154641_ _stx154633_)
               (_E154636154645_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154634154641_)))
               (_E154635154664_
                (lambda ()
                  (if (gx#stx-pair? _e154634154641_)
                      (let ((_e154637154649_ (gx#syntax-e _e154634154641_)))
                        (let ((_hd154638154652_ (##car _e154637154649_))
                              (_tl154639154654_ (##cdr _e154637154649_)))
                          (let ((_clauses154657_ _tl154639154654_))
                            (if (gx#stx-list? _clauses154657_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause154659_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause154659_)
                                       (let ((_$e154661_
                                              (gx#stx-source _clause154659_)))
                                         (if _$e154661_
                                             _$e154661_
                                             (gx#stx-source _stx154633_))))
                                      '#f))
                                   _clauses154657_))
                                 (gx#stx-source _stx154633_))
                                (_E154636154645_)))))
                      (_E154636154645_)))))
          (_E154635154664_))))
    (define gx#core-expand-let-values%
      (lambda (_stx154587_)
        (let* ((_e154588154598_ _stx154587_)
               (_E154590154602_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154588154598_)))
               (_E154589154629_
                (lambda ()
                  (if (gx#stx-pair? _e154588154598_)
                      (let ((_e154591154606_ (gx#syntax-e _e154588154598_)))
                        (let ((_hd154592154609_ (##car _e154591154606_))
                              (_tl154593154611_ (##cdr _e154591154606_)))
                          (if (gx#stx-pair? _tl154593154611_)
                              (let ((_e154594154614_
                                     (gx#syntax-e _tl154593154611_)))
                                (let ((_hd154595154617_
                                       (##car _e154594154614_))
                                      (_tl154596154619_
                                       (##cdr _e154594154614_)))
                                  (let* ((_hd154622_ _hd154595154617_)
                                         (_body154624_ _tl154596154619_))
                                    (if (gx#core-expand-let-bind? _hd154622_)
                                        (let ((_expressions154626_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd154622_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd154622_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd154622_
                                                           _expressions154626_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx154587_
                         _body154624_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx154587_)))
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
                                             __obj160303)))
                                        (_E154590154602_)))))
                              (_E154590154602_))))
                      (_E154590154602_)))))
          (_E154589154629_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx154532_ _form154533_)
        (let* ((_e154534154544_ _stx154532_)
               (_E154536154548_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154534154544_)))
               (_E154535154573_
                (lambda ()
                  (if (gx#stx-pair? _e154534154544_)
                      (let ((_e154537154552_ (gx#syntax-e _e154534154544_)))
                        (let ((_hd154538154555_ (##car _e154537154552_))
                              (_tl154539154557_ (##cdr _e154537154552_)))
                          (if (gx#stx-pair? _tl154539154557_)
                              (let ((_e154540154560_
                                     (gx#syntax-e _tl154539154557_)))
                                (let ((_hd154541154563_
                                       (##car _e154540154560_))
                                      (_tl154542154565_
                                       (##cdr _e154540154560_)))
                                  (let* ((_hd154568_ _hd154541154563_)
                                         (_body154570_ _tl154542154565_))
                                    (if (gx#core-expand-let-bind? _hd154568_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd154568_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form154533_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd154568_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd154568_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx154532_
                                                               _body154570_)
                                                              '())))
                                            (gx#stx-source _stx154532_)))
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
                                           __obj160304))
                                        (_E154536154548_)))))
                              (_E154536154548_))))
                      (_E154536154548_)))))
          (_E154535154573_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx154580_)
        (let ((_form154582_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx154580_ _form154582_))))
    (define gx#core-expand-letrec-values%
      (lambda _g160314_
        (let ((_g160313_ (##length _g160314_)))
          (cond ((##fx= _g160313_ 1)
                 (apply (lambda (_stx154580_)
                          (gx#core-expand-letrec-values%__0 _stx154580_))
                        _g160314_))
                ((##fx= _g160313_ 2)
                 (apply (lambda (_stx154584_ _form154585_)
                          (gx#core-expand-letrec-values%__%
                           _stx154584_
                           _form154585_))
                        _g160314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g160314_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx154529_)
        (gx#core-expand-letrec-values%__% _stx154529_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx154486_)
        (if (gx#stx-list? _stx154486_)
            (gx#stx-andmap
             (lambda (_bind154488_)
               (let* ((_e154489154499_ _bind154488_)
                      (_E154491154503_ (lambda () '#f))
                      (_E154490154525_
                       (lambda ()
                         (if (gx#stx-pair? _e154489154499_)
                             (let ((_e154492154507_
                                    (gx#syntax-e _e154489154499_)))
                               (let ((_hd154493154510_ (##car _e154492154507_))
                                     (_tl154494154512_
                                      (##cdr _e154492154507_)))
                                 (let ((_hd154515_ _hd154493154510_))
                                   (if (gx#stx-pair? _tl154494154512_)
                                       (let ((_e154495154517_
                                              (gx#syntax-e _tl154494154512_)))
                                         (let ((_hd154496154520_
                                                (##car _e154495154517_))
                                               (_tl154497154522_
                                                (##cdr _e154495154517_)))
                                           (if (gx#stx-null? _tl154497154522_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd154515_)
                                                   (_E154491154503_))
                                               (_E154491154503_))))
                                       (_E154491154503_)))))
                             (_E154491154503_)))))
                 (_E154490154525_)))
             _stx154486_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind154445_)
        (let* ((_e154446154456_ _bind154445_)
               (_E154448154460_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154446154456_)))
               (_E154447154482_
                (lambda ()
                  (if (gx#stx-pair? _e154446154456_)
                      (let ((_e154449154464_ (gx#syntax-e _e154446154456_)))
                        (let ((_hd154450154467_ (##car _e154449154464_))
                              (_tl154451154469_ (##cdr _e154449154464_)))
                          (if (gx#stx-pair? _tl154451154469_)
                              (let ((_e154452154472_
                                     (gx#syntax-e _tl154451154469_)))
                                (let ((_hd154453154475_
                                       (##car _e154452154472_))
                                      (_tl154454154477_
                                       (##cdr _e154452154472_)))
                                  (let ((_expr154480_ _hd154453154475_))
                                    (if (gx#stx-null? _tl154454154477_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154480_)
                                            (_E154448154460_))
                                        (_E154448154460_)))))
                              (_E154448154460_))))
                      (_E154448154460_)))))
          (_E154447154482_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind154404_)
        (let* ((_e154405154415_ _bind154404_)
               (_E154407154419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154405154415_)))
               (_E154406154441_
                (lambda ()
                  (if (gx#stx-pair? _e154405154415_)
                      (let ((_e154408154423_ (gx#syntax-e _e154405154415_)))
                        (let ((_hd154409154426_ (##car _e154408154423_))
                              (_tl154410154428_ (##cdr _e154408154423_)))
                          (let ((_hd154431_ _hd154409154426_))
                            (if (gx#stx-pair? _tl154410154428_)
                                (let ((_e154411154433_
                                       (gx#syntax-e _tl154410154428_)))
                                  (let ((_hd154412154436_
                                         (##car _e154411154433_))
                                        (_tl154413154438_
                                         (##cdr _e154411154433_)))
                                    (if (gx#stx-null? _tl154413154438_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd154431_)
                                            (_E154407154419_))
                                        (_E154407154419_))))
                                (_E154407154419_)))))
                      (_E154407154419_)))))
          (_E154406154441_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind154362_ _expr154363_)
        (let* ((_e154364154374_ _bind154362_)
               (_E154366154378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154364154374_)))
               (_E154365154400_
                (lambda ()
                  (if (gx#stx-pair? _e154364154374_)
                      (let ((_e154367154382_ (gx#syntax-e _e154364154374_)))
                        (let ((_hd154368154385_ (##car _e154367154382_))
                              (_tl154369154387_ (##cdr _e154367154382_)))
                          (let ((_hd154390_ _hd154368154385_))
                            (if (gx#stx-pair? _tl154369154387_)
                                (let ((_e154370154392_
                                       (gx#syntax-e _tl154369154387_)))
                                  (let ((_hd154371154395_
                                         (##car _e154370154392_))
                                        (_tl154372154397_
                                         (##cdr _e154370154392_)))
                                    (if (gx#stx-null? _tl154372154397_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd154390_)
                                                  (cons _expr154363_ '()))
                                            (_E154366154378_))
                                        (_E154366154378_))))
                                (_E154366154378_)))))
                      (_E154366154378_)))))
          (_E154365154400_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx154316_)
        (let* ((_e154317154327_ _stx154316_)
               (_E154319154331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154317154327_)))
               (_E154318154358_
                (lambda ()
                  (if (gx#stx-pair? _e154317154327_)
                      (let ((_e154320154335_ (gx#syntax-e _e154317154327_)))
                        (let ((_hd154321154338_ (##car _e154320154335_))
                              (_tl154322154340_ (##cdr _e154320154335_)))
                          (if (gx#stx-pair? _tl154322154340_)
                              (let ((_e154323154343_
                                     (gx#syntax-e _tl154322154340_)))
                                (let ((_hd154324154346_
                                       (##car _e154323154343_))
                                      (_tl154325154348_
                                       (##cdr _e154323154343_)))
                                  (let* ((_hd154351_ _hd154324154346_)
                                         (_body154353_ _tl154325154348_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154351_)
                                        (let ((_expanders154355_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd154351_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd154351_
                                              _expanders154355_)
                                             (gx#core-expand-local-block
                                              _stx154316_
                                              _body154353_))
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
                                             __obj160305)))
                                        (_E154319154331_)))))
                              (_E154319154331_))))
                      (_E154319154331_)))))
          (_E154318154358_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx154265_)
        (let* ((_e154266154276_ _stx154265_)
               (_E154268154280_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154266154276_)))
               (_E154267154312_
                (lambda ()
                  (if (gx#stx-pair? _e154266154276_)
                      (let ((_e154269154284_ (gx#syntax-e _e154266154276_)))
                        (let ((_hd154270154287_ (##car _e154269154284_))
                              (_tl154271154289_ (##cdr _e154269154284_)))
                          (if (gx#stx-pair? _tl154271154289_)
                              (let ((_e154272154292_
                                     (gx#syntax-e _tl154271154289_)))
                                (let ((_hd154273154295_
                                       (##car _e154272154292_))
                                      (_tl154274154297_
                                       (##cdr _e154272154292_)))
                                  (let* ((_hd154300_ _hd154273154295_)
                                         (_body154302_ _tl154274154297_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154300_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd154300_
                                            (make-list
                                             (gx#stx-length _hd154300_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g154304154307_
                                                     _g154305154309_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g154304154307_
                                               _g154305154309_
                                               '#t))
                                            _hd154300_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd154300_))
                                           (gx#core-expand-local-block
                                            _stx154265_
                                            _body154302_))
                                         gx#current-expander-context
                                         (let ((__obj160306
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160306)
                                           __obj160306))
                                        (_E154268154280_)))))
                              (_E154268154280_))))
                      (_E154268154280_)))))
          (_E154267154312_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx154222_)
        (if (gx#stx-list? _stx154222_)
            (gx#stx-andmap
             (lambda (_bind154224_)
               (let* ((_e154225154235_ _bind154224_)
                      (_E154227154239_ (lambda () '#f))
                      (_E154226154261_
                       (lambda ()
                         (if (gx#stx-pair? _e154225154235_)
                             (let ((_e154228154243_
                                    (gx#syntax-e _e154225154235_)))
                               (let ((_hd154229154246_ (##car _e154228154243_))
                                     (_tl154230154248_
                                      (##cdr _e154228154243_)))
                                 (let ((_hd154251_ _hd154229154246_))
                                   (if (gx#stx-pair? _tl154230154248_)
                                       (let ((_e154231154253_
                                              (gx#syntax-e _tl154230154248_)))
                                         (let ((_hd154232154256_
                                                (##car _e154231154253_))
                                               (_tl154233154258_
                                                (##cdr _e154231154253_)))
                                           (if (gx#stx-null? _tl154233154258_)
                                               (if '#t
                                                   (gx#identifier? _hd154251_)
                                                   (_E154227154239_))
                                               (_E154227154239_))))
                                       (_E154227154239_)))))
                             (_E154227154239_)))))
                 (_E154226154261_)))
             _stx154222_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind154179_)
        (let* ((_e154180154190_ _bind154179_)
               (_E154182154194_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154180154190_)))
               (_E154181154218_
                (lambda ()
                  (if (gx#stx-pair? _e154180154190_)
                      (let ((_e154183154198_ (gx#syntax-e _e154180154190_)))
                        (let ((_hd154184154201_ (##car _e154183154198_))
                              (_tl154185154203_ (##cdr _e154183154198_)))
                          (if (gx#stx-pair? _tl154185154203_)
                              (let ((_e154186154206_
                                     (gx#syntax-e _tl154185154203_)))
                                (let ((_hd154187154209_
                                       (##car _e154186154206_))
                                      (_tl154188154211_
                                       (##cdr _e154186154206_)))
                                  (let ((_expr154214_ _hd154187154209_))
                                    (if (gx#stx-null? _tl154188154211_)
                                        (if '#t
                                            (let ((_g160315_
                                                   (gx#core-expand-expression+1
                                                    _expr154214_)))
                                              (begin
                                                (let ((_g160316_
                                                       (if (##values?
                                                            _g160315_)
                                                           (##vector-length
                                                            _g160315_)
                                                           1)))
                                                  (if (not (##fx= _g160316_ 2))
                                                      (error "Context expects 2 values"
                                                             _g160316_)))
                                                (let ((_e154216_
                                                       (##vector-ref
                                                        _g160315_
                                                        1)))
                                                  _e154216_)))
                                            (_E154182154194_))
                                        (_E154182154194_)))))
                              (_E154182154194_))))
                      (_E154182154194_)))))
          (_E154181154218_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind154124_ _e154125_ _rebind?154126_)
        (let* ((_e154127154137_ _bind154124_)
               (_E154129154141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154127154137_)))
               (_E154128154163_
                (lambda ()
                  (if (gx#stx-pair? _e154127154137_)
                      (let ((_e154130154145_ (gx#syntax-e _e154127154137_)))
                        (let ((_hd154131154148_ (##car _e154130154145_))
                              (_tl154132154150_ (##cdr _e154130154145_)))
                          (let ((_id154153_ _hd154131154148_))
                            (if (gx#stx-pair? _tl154132154150_)
                                (let ((_e154133154155_
                                       (gx#syntax-e _tl154132154150_)))
                                  (let ((_hd154134154158_
                                         (##car _e154133154155_))
                                        (_tl154135154160_
                                         (##cdr _e154133154155_)))
                                    (if (gx#stx-null? _tl154135154160_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id154153_
                                             _e154125_
                                             _rebind?154126_)
                                            (_E154129154141_))
                                        (_E154129154141_))))
                                (_E154129154141_)))))
                      (_E154129154141_)))))
          (_E154128154163_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind154170_ _e154171_)
        (let ((_rebind?154173_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind154170_
           _e154171_
           _rebind?154173_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g160318_
        (let ((_g160317_ (##length _g160318_)))
          (cond ((##fx= _g160317_ 2)
                 (apply (lambda (_bind154170_ _e154171_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind154170_
                           _e154171_))
                        _g160318_))
                ((##fx= _g160317_ 3)
                 (apply (lambda (_bind154175_ _e154176_ _rebind?154177_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind154175_
                           _e154176_
                           _rebind?154177_))
                        _g160318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g160318_))))))
    (define gx#core-expand-expression%
      (lambda (_stx154082_)
        (let* ((_e154083154093_ _stx154082_)
               (_E154085154097_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154083154093_)))
               (_E154084154119_
                (lambda ()
                  (if (gx#stx-pair? _e154083154093_)
                      (let ((_e154086154101_ (gx#syntax-e _e154083154093_)))
                        (let ((_hd154087154104_ (##car _e154086154101_))
                              (_tl154088154106_ (##cdr _e154086154101_)))
                          (if (gx#stx-pair? _tl154088154106_)
                              (let ((_e154089154109_
                                     (gx#syntax-e _tl154088154106_)))
                                (let ((_hd154090154112_
                                       (##car _e154089154109_))
                                      (_tl154091154114_
                                       (##cdr _e154089154109_)))
                                  (let ((_expr154117_ _hd154090154112_))
                                    (if (gx#stx-null? _tl154091154114_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154117_)
                                            (_E154085154097_))
                                        (_E154085154097_)))))
                              (_E154085154097_))))
                      (_E154085154097_)))))
          (_E154084154119_))))
    (define gx#core-expand-quote%
      (lambda (_stx154041_)
        (let* ((_e154042154052_ _stx154041_)
               (_E154044154056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154042154052_)))
               (_E154043154078_
                (lambda ()
                  (if (gx#stx-pair? _e154042154052_)
                      (let ((_e154045154060_ (gx#syntax-e _e154042154052_)))
                        (let ((_hd154046154063_ (##car _e154045154060_))
                              (_tl154047154065_ (##cdr _e154045154060_)))
                          (if (gx#stx-pair? _tl154047154065_)
                              (let ((_e154048154068_
                                     (gx#syntax-e _tl154047154065_)))
                                (let ((_hd154049154071_
                                       (##car _e154048154068_))
                                      (_tl154050154073_
                                       (##cdr _e154048154068_)))
                                  (let ((_e154076_ _hd154049154071_))
                                    (if (gx#stx-null? _tl154050154073_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e154076_)
                                                         '()))
                                             (gx#stx-source _stx154041_))
                                            (_E154044154056_))
                                        (_E154044154056_)))))
                              (_E154044154056_))))
                      (_E154044154056_)))))
          (_E154043154078_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx154000_)
        (let* ((_e154001154011_ _stx154000_)
               (_E154003154015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154001154011_)))
               (_E154002154037_
                (lambda ()
                  (if (gx#stx-pair? _e154001154011_)
                      (let ((_e154004154019_ (gx#syntax-e _e154001154011_)))
                        (let ((_hd154005154022_ (##car _e154004154019_))
                              (_tl154006154024_ (##cdr _e154004154019_)))
                          (if (gx#stx-pair? _tl154006154024_)
                              (let ((_e154007154027_
                                     (gx#syntax-e _tl154006154024_)))
                                (let ((_hd154008154030_
                                       (##car _e154007154027_))
                                      (_tl154009154032_
                                       (##cdr _e154007154027_)))
                                  (let ((_e154035_ _hd154008154030_))
                                    (if (gx#stx-null? _tl154009154032_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e154035_)
                                                         '()))
                                             (gx#stx-source _stx154000_))
                                            (_E154003154015_))
                                        (_E154003154015_)))))
                              (_E154003154015_))))
                      (_E154003154015_)))))
          (_E154002154037_))))
    (define gx#core-expand-call%
      (lambda (_stx153957_)
        (let* ((_e153958153968_ _stx153957_)
               (_E153960153972_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153958153968_)))
               (_E153959153996_
                (lambda ()
                  (if (gx#stx-pair? _e153958153968_)
                      (let ((_e153961153976_ (gx#syntax-e _e153958153968_)))
                        (let ((_hd153962153979_ (##car _e153961153976_))
                              (_tl153963153981_ (##cdr _e153961153976_)))
                          (if (gx#stx-pair? _tl153963153981_)
                              (let ((_e153964153984_
                                     (gx#syntax-e _tl153963153981_)))
                                (let ((_hd153965153987_
                                       (##car _e153964153984_))
                                      (_tl153966153989_
                                       (##cdr _e153964153984_)))
                                  (let* ((_rator153992_ _hd153965153987_)
                                         (_args153994_ _tl153966153989_))
                                    (if (gx#stx-list? _args153994_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator153992_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args153994_))
                                         (gx#stx-source _stx153957_))
                                        (_E153960153972_)))))
                              (_E153960153972_))))
                      (_E153960153972_)))))
          (_E153959153996_))))
    (define gx#core-expand-if%
      (lambda (_stx153890_)
        (let* ((_e153891153907_ _stx153890_)
               (_E153893153911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153891153907_)))
               (_E153892153953_
                (lambda ()
                  (if (gx#stx-pair? _e153891153907_)
                      (let ((_e153894153915_ (gx#syntax-e _e153891153907_)))
                        (let ((_hd153895153918_ (##car _e153894153915_))
                              (_tl153896153920_ (##cdr _e153894153915_)))
                          (if (gx#stx-pair? _tl153896153920_)
                              (let ((_e153897153923_
                                     (gx#syntax-e _tl153896153920_)))
                                (let ((_hd153898153926_
                                       (##car _e153897153923_))
                                      (_tl153899153928_
                                       (##cdr _e153897153923_)))
                                  (let ((_test153931_ _hd153898153926_))
                                    (if (gx#stx-pair? _tl153899153928_)
                                        (let ((_e153900153933_
                                               (gx#syntax-e _tl153899153928_)))
                                          (let ((_hd153901153936_
                                                 (##car _e153900153933_))
                                                (_tl153902153938_
                                                 (##cdr _e153900153933_)))
                                            (let ((_K153941_ _hd153901153936_))
                                              (if (gx#stx-pair?
                                                   _tl153902153938_)
                                                  (let ((_e153903153943_
                                                         (gx#syntax-e
                                                          _tl153902153938_)))
                                                    (let ((_hd153904153946_
                                                           (##car _e153903153943_))
                                                          (_tl153905153948_
                                                           (##cdr _e153903153943_)))
                                                      (let ((_E153951_
                                                             _hd153904153946_))
                                                        (if (gx#stx-null?
                                                             _tl153905153948_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test153931_)
                                     (cons (gx#core-expand-expression
                                            _K153941_)
                                           (cons (gx#core-expand-expression
                                                  _E153951_)
                                                 '()))))
                         (gx#stx-source _stx153890_))
                        (_E153893153911_))
                    (_E153893153911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153893153911_)))))
                                        (_E153893153911_)))))
                              (_E153893153911_))))
                      (_E153893153911_)))))
          (_E153892153953_))))
    (define gx#core-expand-ref%
      (lambda (_stx153849_)
        (let* ((_e153850153860_ _stx153849_)
               (_E153852153864_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153850153860_)))
               (_E153851153886_
                (lambda ()
                  (if (gx#stx-pair? _e153850153860_)
                      (let ((_e153853153868_ (gx#syntax-e _e153850153860_)))
                        (let ((_hd153854153871_ (##car _e153853153868_))
                              (_tl153855153873_ (##cdr _e153853153868_)))
                          (if (gx#stx-pair? _tl153855153873_)
                              (let ((_e153856153876_
                                     (gx#syntax-e _tl153855153873_)))
                                (let ((_hd153857153879_
                                       (##car _e153856153876_))
                                      (_tl153858153881_
                                       (##cdr _e153856153876_)))
                                  (let ((_id153884_ _hd153857153879_))
                                    (if (gx#stx-null? _tl153858153881_)
                                        (if (gx#identifier? _id153884_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id153884_
                                                          _stx153849_)
                                                         '()))
                                             (gx#stx-source _stx153849_))
                                            (_E153852153864_))
                                        (_E153852153864_)))))
                              (_E153852153864_))))
                      (_E153852153864_)))))
          (_E153851153886_))))
    (define gx#core-expand-setq%
      (lambda (_stx153795_)
        (let* ((_e153796153809_ _stx153795_)
               (_E153798153813_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153796153809_)))
               (_E153797153845_
                (lambda ()
                  (if (gx#stx-pair? _e153796153809_)
                      (let ((_e153799153817_ (gx#syntax-e _e153796153809_)))
                        (let ((_hd153800153820_ (##car _e153799153817_))
                              (_tl153801153822_ (##cdr _e153799153817_)))
                          (if (gx#stx-pair? _tl153801153822_)
                              (let ((_e153802153825_
                                     (gx#syntax-e _tl153801153822_)))
                                (let ((_hd153803153828_
                                       (##car _e153802153825_))
                                      (_tl153804153830_
                                       (##cdr _e153802153825_)))
                                  (let ((_id153833_ _hd153803153828_))
                                    (if (gx#stx-pair? _tl153804153830_)
                                        (let ((_e153805153835_
                                               (gx#syntax-e _tl153804153830_)))
                                          (let ((_hd153806153838_
                                                 (##car _e153805153835_))
                                                (_tl153807153840_
                                                 (##cdr _e153805153835_)))
                                            (let ((_expr153843_
                                                   _hd153806153838_))
                                              (if (gx#stx-null?
                                                   _tl153807153840_)
                                                  (if (gx#identifier?
                                                       _id153833_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id153833_
                            _stx153795_)
                           (cons (gx#core-expand-expression _expr153843_)
                                 '())))
               (gx#stx-source _stx153795_))
              (_E153798153813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153798153813_)))))
                                        (_E153798153813_)))))
                              (_E153798153813_))))
                      (_E153798153813_)))))
          (_E153797153845_))))
    (define gx#macro-expand-extern
      (lambda (_stx153643_)
        (letrec ((_generate153645_
                  (lambda (_body153675_)
                    (let _lp153677_ ((_rest153679_ _body153675_)
                                     (_ns153680_
                                      (gx#core-context-namespace__0))
                                     (_r153681_ '()))
                      (let* ((_e153682153697_ _rest153679_)
                             (_E153695153701_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e153682153697_)))
                             (_E153691153705_
                              (lambda ()
                                (if (gx#stx-null? _e153682153697_)
                                    (if '#t
                                        (reverse _r153681_)
                                        (_E153695153701_))
                                    (_E153695153701_))))
                             (_E153684153762_
                              (lambda ()
                                (if (gx#stx-pair? _e153682153697_)
                                    (let ((_e153692153709_
                                           (gx#syntax-e _e153682153697_)))
                                      (let ((_hd153693153712_
                                             (##car _e153692153709_))
                                            (_tl153694153714_
                                             (##cdr _e153692153709_)))
                                        (let* ((_hd153717_ _hd153693153712_)
                                               (_rest153719_ _tl153694153714_))
                                          (if '#t
                                              (if (gx#identifier? _hd153717_)
                                                  (_lp153677_
                                                   _rest153719_
                                                   _ns153680_
                                                   (cons (cons _hd153717_
                                                               (cons (if _ns153680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd153717_
                                  _ns153680_
                                  '"#"
                                  _hd153717_)
                                 _hd153717_)
                             '()))
                 _r153681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e153720153730_
                                                          _hd153717_)
                                                         (_E153722153734_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e153720153730_)))
                                                         (_E153721153758_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e153720153730_)
                        (let ((_e153723153738_ (gx#syntax-e _e153720153730_)))
                          (let ((_hd153724153741_ (##car _e153723153738_))
                                (_tl153725153743_ (##cdr _e153723153738_)))
                            (let ((_id153746_ _hd153724153741_))
                              (if (gx#stx-pair? _tl153725153743_)
                                  (let ((_e153726153748_
                                         (gx#syntax-e _tl153725153743_)))
                                    (let ((_hd153727153751_
                                           (##car _e153726153748_))
                                          (_tl153728153753_
                                           (##cdr _e153726153748_)))
                                      (let ((_eid153756_ _hd153727153751_))
                                        (if (gx#stx-null? _tl153728153753_)
                                            (if (and (gx#identifier?
                                                      _id153746_)
                                                     (gx#identifier?
                                                      _eid153756_))
                                                (_lp153677_
                                                 _rest153719_
                                                 _ns153680_
                                                 (cons (cons _id153746_
                                                             (cons _eid153756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r153681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153722153734_))
                                            (_E153722153734_)))))
                                  (_E153722153734_)))))
                        (_E153722153734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153721153758_)))
                                              (_E153691153705_)))))
                                    (_E153691153705_))))
                             (_E153683153791_
                              (lambda ()
                                (if (gx#stx-pair? _e153682153697_)
                                    (let ((_e153685153766_
                                           (gx#syntax-e _e153682153697_)))
                                      (let ((_hd153686153769_
                                             (##car _e153685153766_))
                                            (_tl153687153771_
                                             (##cdr _e153685153766_)))
                                        (if (eq? (gx#stx-e _hd153686153769_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl153687153771_)
                                                (let ((_e153688153774_
                                                       (gx#syntax-e
                                                        _tl153687153771_)))
                                                  (let ((_hd153689153777_
                                                         (##car _e153688153774_))
                                                        (_tl153690153779_
                                                         (##cdr _e153688153774_)))
                                                    (let* ((_ns153782_
                                                            _hd153689153777_)
                                                           (_rest153784_
                                                            _tl153690153779_))
                                                      (if '#t
                                                          (let ((_ns153789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns153782_)
                             (symbol->string (gx#stx-e _ns153782_))
                             (if (or (gx#stx-string? _ns153782_)
                                     (gx#stx-false? _ns153782_))
                                 (gx#stx-e _ns153782_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx153643_
                                  _ns153782_)))))
                    (_lp153677_ _rest153784_ _ns153789_ _r153681_))
                  (_E153684153762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153684153762_))
                                            (_E153684153762_))))
                                    (_E153684153762_)))))
                        (_E153683153791_))))))
          (let* ((_e153646153653_ _stx153643_)
                 (_E153648153657_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153646153653_)))
                 (_E153647153671_
                  (lambda ()
                    (if (gx#stx-pair? _e153646153653_)
                        (let ((_e153649153661_ (gx#syntax-e _e153646153653_)))
                          (let ((_hd153650153664_ (##car _e153649153661_))
                                (_tl153651153666_ (##cdr _e153649153661_)))
                            (let ((_body153669_ _tl153651153666_))
                              (if (gx#stx-list? _body153669_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate153645_ _body153669_))
                                  (_E153648153657_)))))
                        (_E153648153657_)))))
            (_E153647153671_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx153589_)
        (let* ((_e153590153603_ _stx153589_)
               (_E153592153607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153590153603_)))
               (_E153591153639_
                (lambda ()
                  (if (gx#stx-pair? _e153590153603_)
                      (let ((_e153593153611_ (gx#syntax-e _e153590153603_)))
                        (let ((_hd153594153614_ (##car _e153593153611_))
                              (_tl153595153616_ (##cdr _e153593153611_)))
                          (if (gx#stx-pair? _tl153595153616_)
                              (let ((_e153596153619_
                                     (gx#syntax-e _tl153595153616_)))
                                (let ((_hd153597153622_
                                       (##car _e153596153619_))
                                      (_tl153598153624_
                                       (##cdr _e153596153619_)))
                                  (let ((_hd153627_ _hd153597153622_))
                                    (if (gx#stx-pair? _tl153598153624_)
                                        (let ((_e153599153629_
                                               (gx#syntax-e _tl153598153624_)))
                                          (let ((_hd153600153632_
                                                 (##car _e153599153629_))
                                                (_tl153601153634_
                                                 (##cdr _e153599153629_)))
                                            (let ((_expr153637_
                                                   _hd153600153632_))
                                              (if (gx#stx-null?
                                                   _tl153601153634_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd153627_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd153627_)
                          (cons _expr153637_ '())))
              (_E153592153607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153592153607_)))))
                                        (_E153592153607_)))))
                              (_E153592153607_))))
                      (_E153592153607_)))))
          (_E153591153639_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx153535_)
        (let* ((_e153536153549_ _stx153535_)
               (_E153538153553_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153536153549_)))
               (_E153537153585_
                (lambda ()
                  (if (gx#stx-pair? _e153536153549_)
                      (let ((_e153539153557_ (gx#syntax-e _e153536153549_)))
                        (let ((_hd153540153560_ (##car _e153539153557_))
                              (_tl153541153562_ (##cdr _e153539153557_)))
                          (if (gx#stx-pair? _tl153541153562_)
                              (let ((_e153542153565_
                                     (gx#syntax-e _tl153541153562_)))
                                (let ((_hd153543153568_
                                       (##car _e153542153565_))
                                      (_tl153544153570_
                                       (##cdr _e153542153565_)))
                                  (let ((_hd153573_ _hd153543153568_))
                                    (if (gx#stx-pair? _tl153544153570_)
                                        (let ((_e153545153575_
                                               (gx#syntax-e _tl153544153570_)))
                                          (let ((_hd153546153578_
                                                 (##car _e153545153575_))
                                                (_tl153547153580_
                                                 (##cdr _e153545153575_)))
                                            (let ((_expr153583_
                                                   _hd153546153578_))
                                              (if (gx#stx-null?
                                                   _tl153547153580_)
                                                  (if (gx#identifier?
                                                       _hd153573_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd153573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr153583_ '())))
              (_E153538153553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153538153553_)))))
                                        (_E153538153553_)))))
                              (_E153538153553_))))
                      (_E153538153553_)))))
          (_E153537153585_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx153481_)
        (let* ((_e153482153495_ _stx153481_)
               (_E153484153499_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153482153495_)))
               (_E153483153531_
                (lambda ()
                  (if (gx#stx-pair? _e153482153495_)
                      (let ((_e153485153503_ (gx#syntax-e _e153482153495_)))
                        (let ((_hd153486153506_ (##car _e153485153503_))
                              (_tl153487153508_ (##cdr _e153485153503_)))
                          (if (gx#stx-pair? _tl153487153508_)
                              (let ((_e153488153511_
                                     (gx#syntax-e _tl153487153508_)))
                                (let ((_hd153489153514_
                                       (##car _e153488153511_))
                                      (_tl153490153516_
                                       (##cdr _e153488153511_)))
                                  (let ((_id153519_ _hd153489153514_))
                                    (if (gx#stx-pair? _tl153490153516_)
                                        (let ((_e153491153521_
                                               (gx#syntax-e _tl153490153516_)))
                                          (let ((_hd153492153524_
                                                 (##car _e153491153521_))
                                                (_tl153493153526_
                                                 (##cdr _e153491153521_)))
                                            (let ((_alias-id153529_
                                                   _hd153492153524_))
                                              (if (gx#stx-null?
                                                   _tl153493153526_)
                                                  (if (and (gx#identifier?
                                                            _id153519_)
                                                           (gx#identifier?
                                                            _alias-id153529_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id153519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id153529_ '())))
              (_E153484153499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153484153499_)))))
                                        (_E153484153499_)))))
                              (_E153484153499_))))
                      (_E153484153499_)))))
          (_E153483153531_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx153438_)
        (let* ((_e153439153449_ _stx153438_)
               (_E153441153453_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153439153449_)))
               (_E153440153477_
                (lambda ()
                  (if (gx#stx-pair? _e153439153449_)
                      (let ((_e153442153457_ (gx#syntax-e _e153439153449_)))
                        (let ((_hd153443153460_ (##car _e153442153457_))
                              (_tl153444153462_ (##cdr _e153442153457_)))
                          (if (gx#stx-pair? _tl153444153462_)
                              (let ((_e153445153465_
                                     (gx#syntax-e _tl153444153462_)))
                                (let ((_hd153446153468_
                                       (##car _e153445153465_))
                                      (_tl153447153470_
                                       (##cdr _e153445153465_)))
                                  (let* ((_hd153473_ _hd153446153468_)
                                         (_body153475_ _tl153447153470_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd153473_)
                                             (gx#stx-list? _body153475_)
                                             (not (gx#stx-null? _body153475_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd153473_)
                                         _body153475_)
                                        (_E153441153453_)))))
                              (_E153441153453_))))
                      (_E153441153453_)))))
          (_E153440153477_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx153374_)
        (letrec ((_generate153376_
                  (lambda (_clause153406_)
                    (let* ((_e153407153414_ _clause153406_)
                           (_E153409153418_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx153374_
                               _clause153406_)))
                           (_E153408153434_
                            (lambda ()
                              (if (gx#stx-pair? _e153407153414_)
                                  (let ((_e153410153422_
                                         (gx#syntax-e _e153407153414_)))
                                    (let ((_hd153411153425_
                                           (##car _e153410153422_))
                                          (_tl153412153427_
                                           (##cdr _e153410153422_)))
                                      (let* ((_hd153430_ _hd153411153425_)
                                             (_body153432_ _tl153412153427_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd153430_)
                                                 (gx#stx-list? _body153432_)
                                                 (not (gx#stx-null?
                                                       _body153432_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd153430_)
                                                   _body153432_)
                                             (gx#stx-source _clause153406_))
                                            (_E153409153418_)))))
                                  (_E153409153418_)))))
                      (_E153408153434_)))))
          (let* ((_e153377153384_ _stx153374_)
                 (_E153379153388_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153377153384_)))
                 (_E153378153402_
                  (lambda ()
                    (if (gx#stx-pair? _e153377153384_)
                        (let ((_e153380153392_ (gx#syntax-e _e153377153384_)))
                          (let ((_hd153381153395_ (##car _e153380153392_))
                                (_tl153382153397_ (##cdr _e153380153392_)))
                            (let ((_clauses153400_ _tl153382153397_))
                              (if (gx#stx-list? _clauses153400_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate153376_
                                    _clauses153400_))
                                  (_E153379153388_)))))
                        (_E153379153388_)))))
            (_E153378153402_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx153275_ _form153276_)
        (letrec ((_generate153278_
                  (lambda (_bind153321_)
                    (let* ((_e153322153332_ _bind153321_)
                           (_E153324153336_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx153275_
                               _bind153321_)))
                           (_E153323153360_
                            (lambda ()
                              (if (gx#stx-pair? _e153322153332_)
                                  (let ((_e153325153340_
                                         (gx#syntax-e _e153322153332_)))
                                    (let ((_hd153326153343_
                                           (##car _e153325153340_))
                                          (_tl153327153345_
                                           (##cdr _e153325153340_)))
                                      (let ((_ids153348_ _hd153326153343_))
                                        (if (gx#stx-pair? _tl153327153345_)
                                            (let ((_e153328153350_
                                                   (gx#syntax-e
                                                    _tl153327153345_)))
                                              (let ((_hd153329153353_
                                                     (##car _e153328153350_))
                                                    (_tl153330153355_
                                                     (##cdr _e153328153350_)))
                                                (let ((_expr153358_
                                                       _hd153329153353_))
                                                  (if (gx#stx-null?
                                                       _tl153330153355_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids153348_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids153348_)
                        (cons _expr153358_ '()))
                  (_E153324153336_))
              (_E153324153336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E153324153336_)))))
                                  (_E153324153336_)))))
                      (_E153323153360_)))))
          (let* ((_e153279153289_ _stx153275_)
                 (_E153281153293_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153279153289_)))
                 (_E153280153317_
                  (lambda ()
                    (if (gx#stx-pair? _e153279153289_)
                        (let ((_e153282153297_ (gx#syntax-e _e153279153289_)))
                          (let ((_hd153283153300_ (##car _e153282153297_))
                                (_tl153284153302_ (##cdr _e153282153297_)))
                            (if (gx#stx-pair? _tl153284153302_)
                                (let ((_e153285153305_
                                       (gx#syntax-e _tl153284153302_)))
                                  (let ((_hd153286153308_
                                         (##car _e153285153305_))
                                        (_tl153287153310_
                                         (##cdr _e153285153305_)))
                                    (let* ((_hd153313_ _hd153286153308_)
                                           (_body153315_ _tl153287153310_))
                                      (if (and (gx#stx-list? _hd153313_)
                                               (gx#stx-list? _body153315_)
                                               (not (gx#stx-null?
                                                     _body153315_)))
                                          (gx#core-cons*
                                           _form153276_
                                           (gx#stx-map1
                                            _generate153278_
                                            _hd153313_)
                                           _body153315_)
                                          (_E153281153293_)))))
                                (_E153281153293_))))
                        (_E153281153293_)))))
            (_E153280153317_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx153367_)
        (let ((_form153369_ '%#let-values))
          (gx#macro-expand-let-values__% _stx153367_ _form153369_))))
    (define gx#macro-expand-let-values
      (lambda _g160320_
        (let ((_g160319_ (##length _g160320_)))
          (cond ((##fx= _g160319_ 1)
                 (apply (lambda (_stx153367_)
                          (gx#macro-expand-let-values__0 _stx153367_))
                        _g160320_))
                ((##fx= _g160319_ 2)
                 (apply (lambda (_stx153371_ _form153372_)
                          (gx#macro-expand-let-values__%
                           _stx153371_
                           _form153372_))
                        _g160320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g160320_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx153272_)
        (gx#macro-expand-let-values__% _stx153272_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx153270_)
        (gx#macro-expand-let-values__% _stx153270_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx153161_)
        (let* ((_e153162153188_ _stx153161_)
               (_E153174153192_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153162153188_)))
               (_E153164153234_
                (lambda ()
                  (if (gx#stx-pair? _e153162153188_)
                      (let ((_e153175153196_ (gx#syntax-e _e153162153188_)))
                        (let ((_hd153176153199_ (##car _e153175153196_))
                              (_tl153177153201_ (##cdr _e153175153196_)))
                          (if (gx#stx-pair? _tl153177153201_)
                              (let ((_e153178153204_
                                     (gx#syntax-e _tl153177153201_)))
                                (let ((_hd153179153207_
                                       (##car _e153178153204_))
                                      (_tl153180153209_
                                       (##cdr _e153178153204_)))
                                  (let ((_test153212_ _hd153179153207_))
                                    (if (gx#stx-pair? _tl153180153209_)
                                        (let ((_e153181153214_
                                               (gx#syntax-e _tl153180153209_)))
                                          (let ((_hd153182153217_
                                                 (##car _e153181153214_))
                                                (_tl153183153219_
                                                 (##cdr _e153181153214_)))
                                            (let ((_K153222_ _hd153182153217_))
                                              (if (gx#stx-pair?
                                                   _tl153183153219_)
                                                  (let ((_e153184153224_
                                                         (gx#syntax-e
                                                          _tl153183153219_)))
                                                    (let ((_hd153185153227_
                                                           (##car _e153184153224_))
                                                          (_tl153186153229_
                                                           (##cdr _e153184153224_)))
                                                      (let ((_E153232_
                                                             _hd153185153227_))
                                                        (if (gx#stx-null?
                                                             _tl153186153229_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test153212_
                         _K153222_
                         _E153232_)
                        (_E153174153192_))
                    (_E153174153192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153174153192_)))))
                                        (_E153174153192_)))))
                              (_E153174153192_))))
                      (_E153174153192_))))
               (_E153163153266_
                (lambda ()
                  (if (gx#stx-pair? _e153162153188_)
                      (let ((_e153165153238_ (gx#syntax-e _e153162153188_)))
                        (let ((_hd153166153241_ (##car _e153165153238_))
                              (_tl153167153243_ (##cdr _e153165153238_)))
                          (if (gx#stx-pair? _tl153167153243_)
                              (let ((_e153168153246_
                                     (gx#syntax-e _tl153167153243_)))
                                (let ((_hd153169153249_
                                       (##car _e153168153246_))
                                      (_tl153170153251_
                                       (##cdr _e153168153246_)))
                                  (let ((_test153254_ _hd153169153249_))
                                    (if (gx#stx-pair? _tl153170153251_)
                                        (let ((_e153171153256_
                                               (gx#syntax-e _tl153170153251_)))
                                          (let ((_hd153172153259_
                                                 (##car _e153171153256_))
                                                (_tl153173153261_
                                                 (##cdr _e153171153256_)))
                                            (let ((_K153264_ _hd153172153259_))
                                              (if (gx#stx-null?
                                                   _tl153173153261_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test153254_
                                                       _K153264_
                                                       '#!void)
                                                      (_E153164153234_))
                                                  (_E153164153234_)))))
                                        (_E153164153234_)))))
                              (_E153164153234_))))
                      (_E153164153234_)))))
          (_E153163153266_))))
    (define gx#free-identifier=?
      (lambda (_xid153149_ _yid153150_)
        (let ((_xe153152_ (gx#resolve-identifier__0 _xid153149_))
              (_ye153153_ (gx#resolve-identifier__0 _yid153150_)))
          (if (and _xe153152_ _ye153153_)
              (let ((_$e153155_ (eq? _xe153152_ _ye153153_)))
                (if _$e153155_
                    _$e153155_
                    (if (##structure-instance-of? _xe153152_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye153153_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe153152_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye153153_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe153152_ _ye153153_)
                  '#f
                  (gx#stx-eq? _xid153149_ _yid153150_))))))
    (define gx#bound-identifier=?
      (lambda (_xid153133_ _yid153134_)
        (letrec ((_context153136_
                  (lambda (_e153147_)
                    (if (##structure-direct-instance-of?
                         _e153147_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e153147_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks153137_
                  (lambda (_e153145_)
                    (if (symbol? _e153145_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e153145_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e153145_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e153145_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap153138_
                  (lambda (_e153143_)
                    (if (symbol? _e153143_)
                        _e153143_
                        (gx#syntax-local-unwrap _e153143_)))))
          (let ((_x153140_ (_unwrap153138_ _xid153133_))
                (_y153141_ (_unwrap153138_ _yid153134_)))
            (if (gx#stx-eq? _x153140_ _y153141_)
                (if (eq? (_context153136_ _x153140_)
                         (_context153136_ _y153141_))
                    (equal? (_marks153137_ _x153140_)
                            (_marks153137_ _y153141_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx153131_)
        (if (gx#identifier? _stx153131_)
            (gx#core-identifier=? _stx153131_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx153129_)
        (if (gx#identifier? _stx153129_)
            (gx#core-identifier=? _stx153129_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x153127_)
        (if (gx#identifier? _x153127_)
            (if (not (gx#underscore? _x153127_)) _x153127_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx153073_ _where153074_)
        (let _lp153076_ ((_rest153078_ (gx#syntax->list _stx153073_)))
          (let* ((_rest153079153087_ _rest153078_)
                 (_else153081153095_ (lambda () '#t))
                 (_K153083153105_
                  (lambda (_rest153098_ _hd153099_)
                    (if (not (gx#identifier? _hd153099_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where153074_
                         _hd153099_)
                        (if (find (lambda (_g153100153102_)
                                    (gx#bound-identifier=?
                                     _g153100153102_
                                     _hd153099_))
                                  _rest153098_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where153074_
                             _hd153099_)
                            (_lp153076_ _rest153098_))))))
            (if (##pair? _rest153079153087_)
                (let ((_hd153084153108_ (##car _rest153079153087_))
                      (_tl153085153110_ (##cdr _rest153079153087_)))
                  (let* ((_hd153113_ _hd153084153108_)
                         (_rest153115_ _tl153085153110_))
                    (_K153083153105_ _rest153115_ _hd153113_)))
                (_else153081153095_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx153120_)
        (let ((_where153122_ _stx153120_))
          (gx#check-duplicate-identifiers__% _stx153120_ _where153122_))))
    (define gx#check-duplicate-identifiers
      (lambda _g160322_
        (let ((_g160321_ (##length _g160322_)))
          (cond ((##fx= _g160321_ 1)
                 (apply (lambda (_stx153120_)
                          (gx#check-duplicate-identifiers__0 _stx153120_))
                        _g160322_))
                ((##fx= _g160321_ 2)
                 (apply (lambda (_stx153124_ _where153125_)
                          (gx#check-duplicate-identifiers__%
                           _stx153124_
                           _where153125_))
                        _g160322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g160322_))))))
    (define gx#core-bind-values?
      (lambda (_stx153065_)
        (gx#stx-andmap
         (lambda (_x153067_)
           (let ((_$e153069_ (gx#identifier? _x153067_)))
             (if _$e153069_ _$e153069_ (gx#stx-false? _x153067_))))
         _stx153065_)))
    (define gx#core-bind-values!__%
      (lambda (_stx153029_ _rebind?153030_ _phi153031_ _ctx153032_)
        (gx#stx-for-each1
         (lambda (_id153034_)
           (if (gx#identifier? _id153034_)
               (gx#core-bind-runtime!__%
                _id153034_
                _rebind?153030_
                _phi153031_
                _ctx153032_)
               '#!void))
         _stx153029_)))
    (define gx#core-bind-values!__0
      (lambda (_stx153039_)
        (let* ((_rebind?153041_ '#f)
               (_phi153043_ (gx#current-expander-phi))
               (_ctx153045_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153039_
           _rebind?153041_
           _phi153043_
           _ctx153045_))))
    (define gx#core-bind-values!__1
      (lambda (_stx153047_ _rebind?153048_)
        (let* ((_phi153050_ (gx#current-expander-phi))
               (_ctx153052_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153047_
           _rebind?153048_
           _phi153050_
           _ctx153052_))))
    (define gx#core-bind-values!__2
      (lambda (_stx153054_ _rebind?153055_ _phi153056_)
        (let ((_ctx153058_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153054_
           _rebind?153055_
           _phi153056_
           _ctx153058_))))
    (define gx#core-bind-values!
      (lambda _g160324_
        (let ((_g160323_ (##length _g160324_)))
          (cond ((##fx= _g160323_ 1)
                 (apply (lambda (_stx153039_)
                          (gx#core-bind-values!__0 _stx153039_))
                        _g160324_))
                ((##fx= _g160323_ 2)
                 (apply (lambda (_stx153047_ _rebind?153048_)
                          (gx#core-bind-values!__1
                           _stx153047_
                           _rebind?153048_))
                        _g160324_))
                ((##fx= _g160323_ 3)
                 (apply (lambda (_stx153054_ _rebind?153055_ _phi153056_)
                          (gx#core-bind-values!__2
                           _stx153054_
                           _rebind?153055_
                           _phi153056_))
                        _g160324_))
                ((##fx= _g160323_ 4)
                 (apply (lambda (_stx153060_
                                 _rebind?153061_
                                 _phi153062_
                                 _ctx153063_)
                          (gx#core-bind-values!__%
                           _stx153060_
                           _rebind?153061_
                           _phi153062_
                           _ctx153063_))
                        _g160324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g160324_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx153024_)
        (gx#stx-map1
         (lambda (_x153026_)
           (if (gx#identifier? _x153026_)
               (gx#core-quote-syntax__0 _x153026_)
               '#f))
         _stx153024_)))
    (define gx#core-runtime-ref?
      (lambda (_stx153017_)
        (if (gx#identifier? _stx153017_)
            (let* ((_bind153019_ (gx#resolve-identifier__0 _stx153017_))
                   (_$e153021_ (not _bind153019_)))
              (if _$e153021_
                  _$e153021_
                  (##structure-instance-of?
                   _bind153019_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id153009_ _form153010_)
        (let ((_bind153012_ (gx#resolve-identifier__0 _id153009_)))
          (if (##structure-instance-of? _bind153012_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id153009_)
              (if (not _bind153012_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id153009_)))
                      (gx#core-quote-syntax__0 _id153009_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form153010_
                       _id153009_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form153010_
                   _id153009_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id152968_ _rebind?152969_ _phi152970_ _ctx152971_)
        (let* ((_key152973_ (gx#core-identifier-key _id152968_))
               (_eid152975_
                (gx#make-binding-id__%
                 _key152973_
                 '#f
                 _phi152970_
                 _ctx152971_))
               (_bind152977_
                (if (##structure-instance-of?
                     _ctx152971_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152975_
                     _key152973_
                     _phi152970_
                     _ctx152971_)
                    (if (##structure-instance-of?
                         _ctx152971_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152975_
                         _key152973_
                         _phi152970_)
                        (if (##structure-instance-of?
                             _ctx152971_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid152975_
                             _key152973_
                             _phi152970_)
                            (##structure
                             gx#runtime-binding::t
                             _eid152975_
                             _key152973_
                             _phi152970_))))))
          (gx#bind-identifier!__%
           _id152968_
           _bind152977_
           _rebind?152969_
           _phi152970_
           _ctx152971_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id152983_)
        (let* ((_rebind?152985_ '#f)
               (_phi152987_ (gx#current-expander-phi))
               (_ctx152989_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152983_
           _rebind?152985_
           _phi152987_
           _ctx152989_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id152991_ _rebind?152992_)
        (let* ((_phi152994_ (gx#current-expander-phi))
               (_ctx152996_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152991_
           _rebind?152992_
           _phi152994_
           _ctx152996_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id152998_ _rebind?152999_ _phi153000_)
        (let ((_ctx153002_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152998_
           _rebind?152999_
           _phi153000_
           _ctx153002_))))
    (define gx#core-bind-runtime!
      (lambda _g160326_
        (let ((_g160325_ (##length _g160326_)))
          (cond ((##fx= _g160325_ 1)
                 (apply (lambda (_id152983_)
                          (gx#core-bind-runtime!__0 _id152983_))
                        _g160326_))
                ((##fx= _g160325_ 2)
                 (apply (lambda (_id152991_ _rebind?152992_)
                          (gx#core-bind-runtime!__1
                           _id152991_
                           _rebind?152992_))
                        _g160326_))
                ((##fx= _g160325_ 3)
                 (apply (lambda (_id152998_ _rebind?152999_ _phi153000_)
                          (gx#core-bind-runtime!__2
                           _id152998_
                           _rebind?152999_
                           _phi153000_))
                        _g160326_))
                ((##fx= _g160325_ 4)
                 (apply (lambda (_id153004_
                                 _rebind?153005_
                                 _phi153006_
                                 _ctx153007_)
                          (gx#core-bind-runtime!__%
                           _id153004_
                           _rebind?153005_
                           _phi153006_
                           _ctx153007_))
                        _g160326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g160326_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id152923_ _eid152924_ _rebind?152925_ _phi152926_ _ctx152927_)
        (let* ((_key152929_ (gx#core-identifier-key _id152923_))
               (_bind152931_
                (if (##structure-instance-of?
                     _ctx152927_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152924_
                     _key152929_
                     _phi152926_
                     _ctx152927_)
                    (if (##structure-instance-of?
                         _ctx152927_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152924_
                         _key152929_
                         _phi152926_)
                        (##structure
                         gx#runtime-binding::t
                         _eid152924_
                         _key152929_
                         _phi152926_)))))
          (gx#bind-identifier!__%
           _id152923_
           _bind152931_
           _rebind?152925_
           _phi152926_
           _ctx152927_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id152937_ _eid152938_)
        (let* ((_rebind?152940_ '#f)
               (_phi152942_ (gx#current-expander-phi))
               (_ctx152944_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152937_
           _eid152938_
           _rebind?152940_
           _phi152942_
           _ctx152944_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id152946_ _eid152947_ _rebind?152948_)
        (let* ((_phi152950_ (gx#current-expander-phi))
               (_ctx152952_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152946_
           _eid152947_
           _rebind?152948_
           _phi152950_
           _ctx152952_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id152954_ _eid152955_ _rebind?152956_ _phi152957_)
        (let ((_ctx152959_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152954_
           _eid152955_
           _rebind?152956_
           _phi152957_
           _ctx152959_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g160328_
        (let ((_g160327_ (##length _g160328_)))
          (cond ((##fx= _g160327_ 2)
                 (apply (lambda (_id152937_ _eid152938_)
                          (gx#core-bind-runtime-reference!__0
                           _id152937_
                           _eid152938_))
                        _g160328_))
                ((##fx= _g160327_ 3)
                 (apply (lambda (_id152946_ _eid152947_ _rebind?152948_)
                          (gx#core-bind-runtime-reference!__1
                           _id152946_
                           _eid152947_
                           _rebind?152948_))
                        _g160328_))
                ((##fx= _g160327_ 4)
                 (apply (lambda (_id152954_
                                 _eid152955_
                                 _rebind?152956_
                                 _phi152957_)
                          (gx#core-bind-runtime-reference!__2
                           _id152954_
                           _eid152955_
                           _rebind?152956_
                           _phi152957_))
                        _g160328_))
                ((##fx= _g160327_ 5)
                 (apply (lambda (_id152961_
                                 _eid152962_
                                 _rebind?152963_
                                 _phi152964_
                                 _ctx152965_)
                          (gx#core-bind-runtime-reference!__%
                           _id152961_
                           _eid152962_
                           _rebind?152963_
                           _phi152964_
                           _ctx152965_))
                        _g160328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g160328_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id152883_ _eid152884_ _rebind?152885_ _phi152886_ _ctx152887_)
        (gx#bind-identifier!__%
         _id152883_
         (##structure
          gx#extern-binding::t
          _eid152884_
          (gx#core-identifier-key _id152883_)
          _phi152886_)
         _rebind?152885_
         _phi152886_
         _ctx152887_)))
    (define gx#core-bind-extern!__0
      (lambda (_id152892_ _eid152893_)
        (let* ((_rebind?152895_ '#f)
               (_phi152897_ (gx#current-expander-phi))
               (_ctx152899_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152892_
           _eid152893_
           _rebind?152895_
           _phi152897_
           _ctx152899_))))
    (define gx#core-bind-extern!__1
      (lambda (_id152901_ _eid152902_ _rebind?152903_)
        (let* ((_phi152905_ (gx#current-expander-phi))
               (_ctx152907_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152901_
           _eid152902_
           _rebind?152903_
           _phi152905_
           _ctx152907_))))
    (define gx#core-bind-extern!__2
      (lambda (_id152909_ _eid152910_ _rebind?152911_ _phi152912_)
        (let ((_ctx152914_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152909_
           _eid152910_
           _rebind?152911_
           _phi152912_
           _ctx152914_))))
    (define gx#core-bind-extern!
      (lambda _g160330_
        (let ((_g160329_ (##length _g160330_)))
          (cond ((##fx= _g160329_ 2)
                 (apply (lambda (_id152892_ _eid152893_)
                          (gx#core-bind-extern!__0 _id152892_ _eid152893_))
                        _g160330_))
                ((##fx= _g160329_ 3)
                 (apply (lambda (_id152901_ _eid152902_ _rebind?152903_)
                          (gx#core-bind-extern!__1
                           _id152901_
                           _eid152902_
                           _rebind?152903_))
                        _g160330_))
                ((##fx= _g160329_ 4)
                 (apply (lambda (_id152909_
                                 _eid152910_
                                 _rebind?152911_
                                 _phi152912_)
                          (gx#core-bind-extern!__2
                           _id152909_
                           _eid152910_
                           _rebind?152911_
                           _phi152912_))
                        _g160330_))
                ((##fx= _g160329_ 5)
                 (apply (lambda (_id152916_
                                 _eid152917_
                                 _rebind?152918_
                                 _phi152919_
                                 _ctx152920_)
                          (gx#core-bind-extern!__%
                           _id152916_
                           _eid152917_
                           _rebind?152918_
                           _phi152919_
                           _ctx152920_))
                        _g160330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g160330_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id152837_ _e152838_ _rebind?152839_ _phi152840_ _ctx152841_)
        (gx#bind-identifier!__%
         _id152837_
         (let ((_key152846_ (gx#core-identifier-key _id152837_))
               (_e152847_
                (if (or (##structure-instance-of? _e152838_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e152838_
                         'gx#expander-context::t))
                    _e152838_
                    (##structure
                     gx#user-expander::t
                     _e152838_
                     _ctx152841_
                     _phi152840_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key152846_ '#t _phi152840_ _ctx152841_)
            _key152846_
            _phi152840_
            _e152847_))
         _rebind?152839_
         _phi152840_
         _ctx152841_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id152852_ _e152853_)
        (let* ((_rebind?152855_ '#f)
               (_phi152857_ (gx#current-expander-phi))
               (_ctx152859_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152852_
           _e152853_
           _rebind?152855_
           _phi152857_
           _ctx152859_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id152861_ _e152862_ _rebind?152863_)
        (let* ((_phi152865_ (gx#current-expander-phi))
               (_ctx152867_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152861_
           _e152862_
           _rebind?152863_
           _phi152865_
           _ctx152867_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id152869_ _e152870_ _rebind?152871_ _phi152872_)
        (let ((_ctx152874_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152869_
           _e152870_
           _rebind?152871_
           _phi152872_
           _ctx152874_))))
    (define gx#core-bind-syntax!
      (lambda _g160332_
        (let ((_g160331_ (##length _g160332_)))
          (cond ((##fx= _g160331_ 2)
                 (apply (lambda (_id152852_ _e152853_)
                          (gx#core-bind-syntax!__0 _id152852_ _e152853_))
                        _g160332_))
                ((##fx= _g160331_ 3)
                 (apply (lambda (_id152861_ _e152862_ _rebind?152863_)
                          (gx#core-bind-syntax!__1
                           _id152861_
                           _e152862_
                           _rebind?152863_))
                        _g160332_))
                ((##fx= _g160331_ 4)
                 (apply (lambda (_id152869_
                                 _e152870_
                                 _rebind?152871_
                                 _phi152872_)
                          (gx#core-bind-syntax!__2
                           _id152869_
                           _e152870_
                           _rebind?152871_
                           _phi152872_))
                        _g160332_))
                ((##fx= _g160331_ 5)
                 (apply (lambda (_id152876_
                                 _e152877_
                                 _rebind?152878_
                                 _phi152879_
                                 _ctx152880_)
                          (gx#core-bind-syntax!__%
                           _id152876_
                           _e152877_
                           _rebind?152878_
                           _phi152879_
                           _ctx152880_))
                        _g160332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g160332_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id152820_ _e152821_ _rebind?152822_)
        (gx#core-bind-syntax!__%
         _id152820_
         _e152821_
         _rebind?152822_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id152827_ _e152828_)
        (let ((_rebind?152830_ '#f))
          (gx#core-bind-root-syntax!__%
           _id152827_
           _e152828_
           _rebind?152830_))))
    (define gx#core-bind-root-syntax!
      (lambda _g160334_
        (let ((_g160333_ (##length _g160334_)))
          (cond ((##fx= _g160333_ 2)
                 (apply (lambda (_id152827_ _e152828_)
                          (gx#core-bind-root-syntax!__0 _id152827_ _e152828_))
                        _g160334_))
                ((##fx= _g160333_ 3)
                 (apply (lambda (_id152832_ _e152833_ _rebind?152834_)
                          (gx#core-bind-root-syntax!__%
                           _id152832_
                           _e152833_
                           _rebind?152834_))
                        _g160334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g160334_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id152778_
               _alias-id152779_
               _rebind?152780_
               _phi152781_
               _ctx152782_)
        (gx#bind-identifier!__%
         _id152778_
         (let ((_key152784_ (gx#core-identifier-key _id152778_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key152784_ '#t _phi152781_ _ctx152782_)
            _key152784_
            _phi152781_
            _alias-id152779_))
         _rebind?152780_
         _phi152781_
         _ctx152782_)))
    (define gx#core-bind-alias!__0
      (lambda (_id152789_ _alias-id152790_)
        (let* ((_rebind?152792_ '#f)
               (_phi152794_ (gx#current-expander-phi))
               (_ctx152796_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152789_
           _alias-id152790_
           _rebind?152792_
           _phi152794_
           _ctx152796_))))
    (define gx#core-bind-alias!__1
      (lambda (_id152798_ _alias-id152799_ _rebind?152800_)
        (let* ((_phi152802_ (gx#current-expander-phi))
               (_ctx152804_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152798_
           _alias-id152799_
           _rebind?152800_
           _phi152802_
           _ctx152804_))))
    (define gx#core-bind-alias!__2
      (lambda (_id152806_ _alias-id152807_ _rebind?152808_ _phi152809_)
        (let ((_ctx152811_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152806_
           _alias-id152807_
           _rebind?152808_
           _phi152809_
           _ctx152811_))))
    (define gx#core-bind-alias!
      (lambda _g160336_
        (let ((_g160335_ (##length _g160336_)))
          (cond ((##fx= _g160335_ 2)
                 (apply (lambda (_id152789_ _alias-id152790_)
                          (gx#core-bind-alias!__0 _id152789_ _alias-id152790_))
                        _g160336_))
                ((##fx= _g160335_ 3)
                 (apply (lambda (_id152798_ _alias-id152799_ _rebind?152800_)
                          (gx#core-bind-alias!__1
                           _id152798_
                           _alias-id152799_
                           _rebind?152800_))
                        _g160336_))
                ((##fx= _g160335_ 4)
                 (apply (lambda (_id152806_
                                 _alias-id152807_
                                 _rebind?152808_
                                 _phi152809_)
                          (gx#core-bind-alias!__2
                           _id152806_
                           _alias-id152807_
                           _rebind?152808_
                           _phi152809_))
                        _g160336_))
                ((##fx= _g160335_ 5)
                 (apply (lambda (_id152813_
                                 _alias-id152814_
                                 _rebind?152815_
                                 _phi152816_
                                 _ctx152817_)
                          (gx#core-bind-alias!__%
                           _id152813_
                           _alias-id152814_
                           _rebind?152815_
                           _phi152816_
                           _ctx152817_))
                        _g160336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g160336_))))))
    (define gx#make-binding-id__%
      (lambda (_key152735_ _syntax?152736_ _phi152737_ _ctx152738_)
        (if (uninterned-symbol? _key152735_)
            (gensym 'L)
            (if (pair? _key152735_)
                (gensym (car _key152735_))
                (if (##structure-instance-of? _ctx152738_ 'gx#top-context::t)
                    (let ((_ns152740_
                           (gx#core-context-namespace__% _ctx152738_)))
                      (if (and (fxzero? _phi152737_) (not _syntax?152736_))
                          (if _ns152740_
                              (make-symbol__1 _ns152740_ '"#" _key152735_)
                              _key152735_)
                          (if _syntax?152736_
                              (make-symbol__1
                               (let ((_$e152742_ _ns152740_))
                                 (if _$e152742_ _$e152742_ '""))
                               '"[:"
                               (number->string _phi152737_)
                               '":]#"
                               _key152735_)
                              (make-symbol__1
                               (let ((_$e152745_ _ns152740_))
                                 (if _$e152745_ _$e152745_ '""))
                               '"["
                               (number->string _phi152737_)
                               '"]#"
                               _key152735_))))
                    (gensym _key152735_))))))
    (define gx#make-binding-id__0
      (lambda (_key152751_)
        (let* ((_syntax?152753_ '#f)
               (_phi152755_ (gx#current-expander-phi))
               (_ctx152757_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152751_
           _syntax?152753_
           _phi152755_
           _ctx152757_))))
    (define gx#make-binding-id__1
      (lambda (_key152759_ _syntax?152760_)
        (let* ((_phi152762_ (gx#current-expander-phi))
               (_ctx152764_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152759_
           _syntax?152760_
           _phi152762_
           _ctx152764_))))
    (define gx#make-binding-id__2
      (lambda (_key152766_ _syntax?152767_ _phi152768_)
        (let ((_ctx152770_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152766_
           _syntax?152767_
           _phi152768_
           _ctx152770_))))
    (define gx#make-binding-id
      (lambda _g160338_
        (let ((_g160337_ (##length _g160338_)))
          (cond ((##fx= _g160337_ 1)
                 (apply (lambda (_key152751_)
                          (gx#make-binding-id__0 _key152751_))
                        _g160338_))
                ((##fx= _g160337_ 2)
                 (apply (lambda (_key152759_ _syntax?152760_)
                          (gx#make-binding-id__1 _key152759_ _syntax?152760_))
                        _g160338_))
                ((##fx= _g160337_ 3)
                 (apply (lambda (_key152766_ _syntax?152767_ _phi152768_)
                          (gx#make-binding-id__2
                           _key152766_
                           _syntax?152767_
                           _phi152768_))
                        _g160338_))
                ((##fx= _g160337_ 4)
                 (apply (lambda (_key152772_
                                 _syntax?152773_
                                 _phi152774_
                                 _ctx152775_)
                          (gx#make-binding-id__%
                           _key152772_
                           _syntax?152773_
                           _phi152774_
                           _ctx152775_))
                        _g160338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g160338_))))))))
