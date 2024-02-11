(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707651233)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152588_)
        (letrec ((_expand-special152590_
                  (lambda (_hd152592_ _K152593_ _rest152594_ _r152595_)
                    (_K152593_
                     _rest152594_
                     (cons (gx#core-expand-top _hd152592_) _r152595_)))))
          (gx#core-expand-block__0 _stx152588_ _expand-special152590_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152341_)
        (letrec ((_expand-special152343_
                  (lambda (_hd152463_ _K152464_ _rest152465_ _r152466_)
                    (let* ((_K152470_
                            (lambda (_e152468_)
                              (_K152464_
                               _rest152465_
                               (cons _e152468_ _r152466_))))
                           (_e152471152500_ _hd152463_)
                           (_E152495152504_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152471152500_)))
                           (_E152491152516_
                            (lambda ()
                              (if (gx#stx-pair? _e152471152500_)
                                  (let ((_e152496152508_
                                         (gx#syntax-e _e152471152500_)))
                                    (let ((_hd152497152511_
                                           (##car _e152496152508_))
                                          (_tl152498152513_
                                           (##cdr _e152496152508_)))
                                      (if (and (gx#identifier?
                                                _hd152497152511_)
                                               (gx#core-identifier=?
                                                _hd152497152511_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152470_
                                               (gx#core-expand-define-runtime%
                                                _hd152463_))
                                              (_E152495152504_))
                                          (_E152495152504_))))
                                  (_E152495152504_))))
                           (_E152487152528_
                            (lambda ()
                              (if (gx#stx-pair? _e152471152500_)
                                  (let ((_e152492152520_
                                         (gx#syntax-e _e152471152500_)))
                                    (let ((_hd152493152523_
                                           (##car _e152492152520_))
                                          (_tl152494152525_
                                           (##cdr _e152492152520_)))
                                      (if (and (gx#identifier?
                                                _hd152493152523_)
                                               (gx#core-identifier=?
                                                _hd152493152523_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152470_
                                               (gx#core-expand-define-alias%
                                                _hd152463_))
                                              (_E152491152516_))
                                          (_E152491152516_))))
                                  (_E152491152516_))))
                           (_E152477152540_
                            (lambda ()
                              (if (gx#stx-pair? _e152471152500_)
                                  (let ((_e152488152532_
                                         (gx#syntax-e _e152471152500_)))
                                    (let ((_hd152489152535_
                                           (##car _e152488152532_))
                                          (_tl152490152537_
                                           (##cdr _e152488152532_)))
                                      (if (and (gx#identifier?
                                                _hd152489152535_)
                                               (gx#core-identifier=?
                                                _hd152489152535_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152470_
                                               (gx#core-expand-define-syntax%
                                                _hd152463_))
                                              (_E152487152528_))
                                          (_E152487152528_))))
                                  (_E152487152528_))))
                           (_E152473152572_
                            (lambda ()
                              (if (gx#stx-pair? _e152471152500_)
                                  (let ((_e152478152544_
                                         (gx#syntax-e _e152471152500_)))
                                    (let ((_hd152479152547_
                                           (##car _e152478152544_))
                                          (_tl152480152549_
                                           (##cdr _e152478152544_)))
                                      (if (and (gx#identifier?
                                                _hd152479152547_)
                                               (gx#core-identifier=?
                                                _hd152479152547_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152480152549_)
                                              (let ((_e152481152552_
                                                     (gx#syntax-e
                                                      _tl152480152549_)))
                                                (let ((_hd152482152555_
                                                       (##car _e152481152552_))
                                                      (_tl152483152557_
                                                       (##cdr _e152481152552_)))
                                                  (let ((_hd-bind152560_
                                                         _hd152482152555_))
                                                    (if (gx#stx-pair?
                                                         _tl152483152557_)
                                                        (let ((_e152484152562_
                                                               (gx#syntax-e
                                                                _tl152483152557_)))
                                                          (let ((_hd152485152565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152484152562_))
                        (_tl152486152567_ (##cdr _e152484152562_)))
                    (let ((_expr152570_ _hd152485152565_))
                      (if (gx#stx-null? _tl152486152567_)
                          (if (gx#core-bind-values? _hd-bind152560_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152560_)
                                (_K152470_ _hd152463_))
                              (_E152477152540_))
                          (_E152477152540_)))))
                (_E152477152540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152477152540_))
                                          (_E152477152540_))))
                                  (_E152477152540_))))
                           (_E152472152584_
                            (lambda ()
                              (if (gx#stx-pair? _e152471152500_)
                                  (let ((_e152474152576_
                                         (gx#syntax-e _e152471152500_)))
                                    (let ((_hd152475152579_
                                           (##car _e152474152576_))
                                          (_tl152476152581_
                                           (##cdr _e152474152576_)))
                                      (if (and (gx#identifier?
                                                _hd152475152579_)
                                               (gx#core-identifier=?
                                                _hd152475152579_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152470_
                                               (gx#core-expand-begin-syntax%
                                                _hd152463_))
                                              (_E152473152572_))
                                          (_E152473152572_))))
                                  (_E152473152572_)))))
                      (_E152472152584_))))
                 (_eval-body152344_
                  (lambda (_rbody152352_)
                    (let _lp152354_ ((_rest152356_ _rbody152352_)
                                     (_body152357_ '())
                                     (_ebody152358_ '()))
                      (let* ((_rest152359152367_ _rest152356_)
                             (_else152361152375_
                              (lambda ()
                                (values _body152357_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152358_)
                                          (gx#stx-source _stx152341_))))))
                             (_K152363152451_
                              (lambda (_rest152378_ _hd152379_)
                                (let* ((_e152380152397_ _hd152379_)
                                       (_E152392152401_
                                        (lambda ()
                                          (_lp152354_
                                           _rest152378_
                                           (cons _hd152379_ _body152357_)
                                           (cons _hd152379_ _ebody152358_))))
                                       (_E152382152413_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152380152397_)
                                              (let ((_e152393152405_
                                                     (gx#syntax-e
                                                      _e152380152397_)))
                                                (let ((_hd152394152408_
                                                       (##car _e152393152405_))
                                                      (_tl152395152410_
                                                       (##cdr _e152393152405_)))
                                                  (if (and (gx#identifier?
                                                            _hd152394152408_)
                                                           (gx#core-identifier=?
                                                            _hd152394152408_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152354_
                                                           _rest152378_
                                                           (cons _hd152379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152357_)
                   _ebody152358_)
                  (_E152392152401_))
              (_E152392152401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152392152401_))))
                                       (_E152381152447_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152380152397_)
                                              (let ((_e152383152417_
                                                     (gx#syntax-e
                                                      _e152380152397_)))
                                                (let ((_hd152384152420_
                                                       (##car _e152383152417_))
                                                      (_tl152385152422_
                                                       (##cdr _e152383152417_)))
                                                  (if (and (gx#identifier?
                                                            _hd152384152420_)
                                                           (gx#core-identifier=?
                                                            _hd152384152420_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152385152422_)
                                                          (let ((_e152386152425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152385152422_)))
                    (let ((_hd152387152428_ (##car _e152386152425_))
                          (_tl152388152430_ (##cdr _e152386152425_)))
                      (let ((_hd-bind152433_ _hd152387152428_))
                        (if (gx#stx-pair? _tl152388152430_)
                            (let ((_e152389152435_
                                   (gx#syntax-e _tl152388152430_)))
                              (let ((_hd152390152438_ (##car _e152389152435_))
                                    (_tl152391152440_ (##cdr _e152389152435_)))
                                (let ((_expr152443_ _hd152390152438_))
                                  (if (gx#stx-null? _tl152391152440_)
                                      (if '#t
                                          (let ((_ehd152445_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152433_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152443_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152379_))))
                                            (_lp152354_
                                             _rest152378_
                                             (cons _ehd152445_ _body152357_)
                                             (cons _ehd152445_ _ebody152358_)))
                                          (_E152382152413_))
                                      (_E152382152413_)))))
                            (_E152382152413_)))))
                  (_E152382152413_))
              (_E152382152413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152382152413_)))))
                                  (_E152381152447_)))))
                        (if (##pair? _rest152359152367_)
                            (let ((_hd152364152454_ (##car _rest152359152367_))
                                  (_tl152365152456_
                                   (##cdr _rest152359152367_)))
                              (let* ((_hd152459_ _hd152364152454_)
                                     (_rest152461_ _tl152365152456_))
                                (_K152363152451_ _rest152461_ _hd152459_)))
                            (_else152361152375_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152347_
                     (gx#core-expand-block__1
                      _stx152341_
                      _expand-special152343_
                      '#f))
                    (_g157090_ (_eval-body152344_ _rbody152347_)))
               (begin
                 (let ((_g157091_
                        (if (##values? _g157090_)
                            (##vector-length _g157090_)
                            1)))
                   (if (not (##fx= _g157091_ 2))
                       (error "Context expects 2 values" _g157091_)))
                 (let ((_expanded-body152349_ (##vector-ref _g157090_ 0))
                       (_value152350_ (##vector-ref _g157090_ 1)))
                   (gx#core-quote-syntax__1
                    (if (class-instance?
                         gx#module-context::t
                         (gx#current-expander-context))
                        (gx#core-cons '%#begin-syntax _expanded-body152349_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152350_ '())))
                    (gx#stx-source _stx152341_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152311_)
        (let* ((_e152312152319_ _stx152311_)
               (_E152314152323_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152312152319_)))
               (_E152313152337_
                (lambda ()
                  (if (gx#stx-pair? _e152312152319_)
                      (let ((_e152315152327_ (gx#syntax-e _e152312152319_)))
                        (let ((_hd152316152330_ (##car _e152315152327_))
                              (_tl152317152332_ (##cdr _e152315152327_)))
                          (let ((_body152335_ _tl152317152332_))
                            (if (gx#stx-list? _body152335_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152335_)
                                 (gx#stx-source _stx152311_))
                                (_E152314152323_)))))
                      (_E152314152323_)))))
          (_E152313152337_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152309_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152309_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152255_)
        (let* ((_e152256152269_ _stx152255_)
               (_E152258152273_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152256152269_)))
               (_E152257152305_
                (lambda ()
                  (if (gx#stx-pair? _e152256152269_)
                      (let ((_e152259152277_ (gx#syntax-e _e152256152269_)))
                        (let ((_hd152260152280_ (##car _e152259152277_))
                              (_tl152261152282_ (##cdr _e152259152277_)))
                          (if (gx#stx-pair? _tl152261152282_)
                              (let ((_e152262152285_
                                     (gx#syntax-e _tl152261152282_)))
                                (let ((_hd152263152288_
                                       (##car _e152262152285_))
                                      (_tl152264152290_
                                       (##cdr _e152262152285_)))
                                  (let ((_ann152293_ _hd152263152288_))
                                    (if (gx#stx-pair? _tl152264152290_)
                                        (let ((_e152265152295_
                                               (gx#syntax-e _tl152264152290_)))
                                          (let ((_hd152266152298_
                                                 (##car _e152265152295_))
                                                (_tl152267152300_
                                                 (##cdr _e152265152295_)))
                                            (let ((_expr152303_
                                                   _hd152266152298_))
                                              (if (gx#stx-null?
                                                   _tl152267152300_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152303_)
                                 '())))
               (gx#stx-source _stx152255_))
              (_E152258152273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152258152273_)))))
                                        (_E152258152273_)))))
                              (_E152258152273_))))
                      (_E152258152273_)))))
          (_E152257152305_))))
    (define gx#core-expand-local-block
      (lambda (_stx151979_ _body151980_)
        (letrec ((_expand-special151982_
                  (lambda (_hd152250_ _K152251_ _rest152252_ _r152253_)
                    (_K152251_
                     '()
                     (cons (_expand-internal151983_ _hd152250_ _rest152252_)
                           _r152253_))))
                 (_expand-internal151983_
                  (lambda (_hd152246_ _rest152247_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal151985_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152246_ _rest152247_))
                          (gx#stx-source _stx151979_))
                         _expand-internal-special151984_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157073
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157073)
                       __obj157073))))
                 (_expand-internal-special151984_
                  (lambda (_hd152141_ _K152142_ _rest152143_ _r152144_)
                    (let* ((_e152145152170_ _hd152141_)
                           (_E152165152174_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152145152170_)))
                           (_E152161152186_
                            (lambda ()
                              (if (gx#stx-pair? _e152145152170_)
                                  (let ((_e152166152178_
                                         (gx#syntax-e _e152145152170_)))
                                    (let ((_hd152167152181_
                                           (##car _e152166152178_))
                                          (_tl152168152183_
                                           (##cdr _e152166152178_)))
                                      (if (and (gx#identifier?
                                                _hd152167152181_)
                                               (gx#core-identifier=?
                                                _hd152167152181_
                                                '%#declare))
                                          (if '#t
                                              (_K152142_
                                               _rest152143_
                                               (cons (gx#core-expand-declare%
                                                      _hd152141_)
                                                     _r152144_))
                                              (_E152165152174_))
                                          (_E152165152174_))))
                                  (_E152165152174_))))
                           (_E152157152198_
                            (lambda ()
                              (if (gx#stx-pair? _e152145152170_)
                                  (let ((_e152162152190_
                                         (gx#syntax-e _e152145152170_)))
                                    (let ((_hd152163152193_
                                           (##car _e152162152190_))
                                          (_tl152164152195_
                                           (##cdr _e152162152190_)))
                                      (if (and (gx#identifier?
                                                _hd152163152193_)
                                               (gx#core-identifier=?
                                                _hd152163152193_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152141_)
                                                (_K152142_
                                                 _rest152143_
                                                 _r152144_))
                                              (_E152161152186_))
                                          (_E152161152186_))))
                                  (_E152161152186_))))
                           (_E152147152210_
                            (lambda ()
                              (if (gx#stx-pair? _e152145152170_)
                                  (let ((_e152158152202_
                                         (gx#syntax-e _e152145152170_)))
                                    (let ((_hd152159152205_
                                           (##car _e152158152202_))
                                          (_tl152160152207_
                                           (##cdr _e152158152202_)))
                                      (if (and (gx#identifier?
                                                _hd152159152205_)
                                               (gx#core-identifier=?
                                                _hd152159152205_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152141_)
                                                (_K152142_
                                                 _rest152143_
                                                 _r152144_))
                                              (_E152157152198_))
                                          (_E152157152198_))))
                                  (_E152157152198_))))
                           (_E152146152242_
                            (lambda ()
                              (if (gx#stx-pair? _e152145152170_)
                                  (let ((_e152148152214_
                                         (gx#syntax-e _e152145152170_)))
                                    (let ((_hd152149152217_
                                           (##car _e152148152214_))
                                          (_tl152150152219_
                                           (##cdr _e152148152214_)))
                                      (if (and (gx#identifier?
                                                _hd152149152217_)
                                               (gx#core-identifier=?
                                                _hd152149152217_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152150152219_)
                                              (let ((_e152151152222_
                                                     (gx#syntax-e
                                                      _tl152150152219_)))
                                                (let ((_hd152152152225_
                                                       (##car _e152151152222_))
                                                      (_tl152153152227_
                                                       (##cdr _e152151152222_)))
                                                  (let ((_hd-bind152230_
                                                         _hd152152152225_))
                                                    (if (gx#stx-pair?
                                                         _tl152153152227_)
                                                        (let ((_e152154152232_
                                                               (gx#syntax-e
                                                                _tl152153152227_)))
                                                          (let ((_hd152155152235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152154152232_))
                        (_tl152156152237_ (##cdr _e152154152232_)))
                    (let ((_expr152240_ _hd152155152235_))
                      (if (gx#stx-null? _tl152156152237_)
                          (if (gx#core-bind-values? _hd-bind152230_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152230_)
                                (_K152142_
                                 _rest152143_
                                 (cons _hd152141_ _r152144_)))
                              (_E152147152210_))
                          (_E152147152210_)))))
                (_E152147152210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152147152210_))
                                          (_E152147152210_))))
                                  (_E152147152210_)))))
                      (_E152146152242_))))
                 (_wrap-internal151985_
                  (lambda (_rbody151987_)
                    (let _lp151989_ ((_rest151991_ _rbody151987_)
                                     (_decls151992_ '())
                                     (_bind151993_ '())
                                     (_body151994_ '()))
                      (let* ((_e151995152002_ _rest151991_)
                             (_E151997152051_
                              (lambda ()
                                (let* ((_body152046_
                                        (let* ((_body152005152015_
                                                _body151994_)
                                               (_else152008152023_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body151994_)
                                                   (gx#stx-source
                                                    _stx151979_)))))
                                          (let ((_K152013152043_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx151979_)))
                                                (_K152010152029_
                                                 (lambda (_expr152027_)
                                                   _expr152027_)))
                                            (let ((_try-match152007152039_
                                                   (lambda ()
                                                     (if (##pair? _body152005152015_)
                                                         (let ((_tl152012152034_
                                                                (##cdr _body152005152015_))
                                                               (_hd152011152032_
                                                                (##car _body152005152015_)))
                                                           (if (##null? _tl152012152034_)
                                                               (let ((_expr152037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152011152032_))
                         (_K152010152029_ _expr152037_))
                       (_else152008152023_)))
                 (_else152008152023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152005152015_)
                                                  (_K152013152043_)
                                                  (_try-match152007152039_))))))
                                       (_body152048_
                                        (if (null? _bind151993_)
                                            _body152046_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind151993_
                                                         (cons _body152046_
                                                               '())))
                                             (gx#stx-source _stx151979_)))))
                                  (if (null? _decls151992_)
                                      _body152048_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls151992_
                                                   (cons _body152048_ '())))
                                       (gx#stx-source _stx151979_))))))
                             (_E151996152137_
                              (lambda ()
                                (if (gx#stx-pair? _e151995152002_)
                                    (let ((_e151998152055_
                                           (gx#syntax-e _e151995152002_)))
                                      (let ((_hd151999152058_
                                             (##car _e151998152055_))
                                            (_tl152000152060_
                                             (##cdr _e151998152055_)))
                                        (let* ((_hd152063_ _hd151999152058_)
                                               (_rest152065_ _tl152000152060_))
                                          (if '#t
                                              (let* ((_e152066152083_
                                                      _hd152063_)
                                                     (_E152078152087_
                                                      (lambda ()
                                                        (if (null? _bind151993_)
                                                            (_lp151989_
                                                             _rest152065_
                                                             _decls151992_
                                                             _bind151993_
                                                             (cons _hd152063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body151994_))
                    (_lp151989_
                     _rest152065_
                     _decls151992_
                     (cons (cons '#f (cons _hd152063_ '())) _bind151993_)
                     _body151994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152068152101_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152066152083_)
                                                            (let ((_e152079152091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152066152083_)))
                      (let ((_hd152080152094_ (##car _e152079152091_))
                            (_tl152081152096_ (##cdr _e152079152091_)))
                        (if (and (gx#identifier? _hd152080152094_)
                                 (gx#core-identifier=?
                                  _hd152080152094_
                                  '%#declare))
                            (let ((_xdecls152099_ _tl152081152096_))
                              (if '#t
                                  (_lp151989_
                                   _rest152065_
                                   (gx#stx-foldr
                                    cons
                                    _decls151992_
                                    _xdecls152099_)
                                   _bind151993_
                                   _body151994_)
                                  (_E152078152087_)))
                            (_E152078152087_))))
                    (_E152078152087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152067152133_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152066152083_)
                                                            (let ((_e152069152105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152066152083_)))
                      (let ((_hd152070152108_ (##car _e152069152105_))
                            (_tl152071152110_ (##cdr _e152069152105_)))
                        (if (and (gx#identifier? _hd152070152108_)
                                 (gx#core-identifier=?
                                  _hd152070152108_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152071152110_)
                                (let ((_e152072152113_
                                       (gx#syntax-e _tl152071152110_)))
                                  (let ((_hd152073152116_
                                         (##car _e152072152113_))
                                        (_tl152074152118_
                                         (##cdr _e152072152113_)))
                                    (let ((_hd-bind152121_ _hd152073152116_))
                                      (if (gx#stx-pair? _tl152074152118_)
                                          (let ((_e152075152123_
                                                 (gx#syntax-e
                                                  _tl152074152118_)))
                                            (let ((_hd152076152126_
                                                   (##car _e152075152123_))
                                                  (_tl152077152128_
                                                   (##cdr _e152075152123_)))
                                              (let ((_expr152131_
                                                     _hd152076152126_))
                                                (if (gx#stx-null?
                                                     _tl152077152128_)
                                                    (if '#t
                                                        (_lp151989_
                                                         _rest152065_
                                                         _decls151992_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152121_)
                             (cons (gx#core-expand-expression _expr152131_)
                                   '()))
                       _bind151993_)
                 _body151994_)
                (_E152068152101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152068152101_)))))
                                          (_E152068152101_)))))
                                (_E152068152101_))
                            (_E152068152101_))))
                    (_E152068152101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152067152133_))
                                              (_E151997152051_)))))
                                    (_E151997152051_)))))
                        (_E151996152137_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body151980_)
            (gx#stx-source _stx151979_))
           _expand-special151982_))))
    (define gx#core-expand-declare%
      (lambda (_stx151917_)
        (let* ((_e151918151925_ _stx151917_)
               (_E151920151929_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151918151925_)))
               (_E151919151975_
                (lambda ()
                  (if (gx#stx-pair? _e151918151925_)
                      (let ((_e151921151933_ (gx#syntax-e _e151918151925_)))
                        (let ((_hd151922151936_ (##car _e151921151933_))
                              (_tl151923151938_ (##cdr _e151921151933_)))
                          (let ((_body151941_ _tl151923151938_))
                            (if (gx#stx-list? _body151941_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl151943_)
                                     (let* ((_e151944151951_ _decl151943_)
                                            (_E151946151955_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e151944151951_)))
                                            (_E151945151971_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e151944151951_)
                                                   (let ((_e151947151959_
                                                          (gx#syntax-e
                                                           _e151944151951_)))
                                                     (let ((_hd151948151962_
                                                            (##car _e151947151959_))
                                                           (_tl151949151964_
                                                            (##cdr _e151947151959_)))
                                                       (let* ((_head151967_
                                                               _hd151948151962_)
                                                              (_args151969_
                                                               _tl151949151964_))
                                                         (if (gx#stx-list?
                                                              _args151969_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl151943_)
                                                             (_E151946151955_)))))
                                                   (_E151946151955_)))))
                                       (_E151945151971_)))
                                   _body151941_))
                                 (gx#stx-source _stx151917_))
                                (_E151920151929_)))))
                      (_E151920151929_)))))
          (_E151919151975_))))
    (define gx#core-expand-extern%
      (lambda (_stx151821_)
        (let* ((_e151822151829_ _stx151821_)
               (_E151824151833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151822151829_)))
               (_E151823151913_
                (lambda ()
                  (if (gx#stx-pair? _e151822151829_)
                      (let ((_e151825151837_ (gx#syntax-e _e151822151829_)))
                        (let ((_hd151826151840_ (##car _e151825151837_))
                              (_tl151827151842_ (##cdr _e151825151837_)))
                          (let ((_body151845_ _tl151827151842_))
                            (if '#t
                                (let _lp151847_ ((_rest151849_ _body151845_)
                                                 (_r151850_ '()))
                                  (let* ((_e151851151865_ _rest151849_)
                                         (_E151863151869_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx151821_)))
                                         (_E151853151873_
                                          (lambda ()
                                            (if (gx#stx-null? _e151851151865_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r151850_))
                                                     (gx#stx-source
                                                      _stx151821_))
                                                    (_E151863151869_))
                                                (_E151863151869_))))
                                         (_E151852151909_
                                          (lambda ()
                                            (if (gx#stx-pair? _e151851151865_)
                                                (let ((_e151854151877_
                                                       (gx#syntax-e
                                                        _e151851151865_)))
                                                  (let ((_hd151855151880_
                                                         (##car _e151854151877_))
                                                        (_tl151856151882_
                                                         (##cdr _e151854151877_)))
                                                    (if (gx#stx-pair?
                                                         _hd151855151880_)
                                                        (let ((_e151857151885_
                                                               (gx#syntax-e
                                                                _hd151855151880_)))
                                                          (let ((_hd151858151888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e151857151885_))
                        (_tl151859151890_ (##cdr _e151857151885_)))
                    (let ((_id151893_ _hd151858151888_))
                      (if (gx#stx-pair? _tl151859151890_)
                          (let ((_e151860151895_
                                 (gx#syntax-e _tl151859151890_)))
                            (let ((_hd151861151898_ (##car _e151860151895_))
                                  (_tl151862151900_ (##cdr _e151860151895_)))
                              (let ((_eid151903_ _hd151861151898_))
                                (if (gx#stx-null? _tl151862151900_)
                                    (let ((_rest151905_ _tl151856151882_))
                                      (if (and (gx#identifier? _id151893_)
                                               (gx#identifier? _eid151903_))
                                          (let ((_eid151907_
                                                 (gx#stx-e _eid151903_)))
                                            (gx#core-bind-extern!__0
                                             _id151893_
                                             _eid151907_)
                                            (_lp151847_
                                             _rest151905_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id151893_)
                                                         (cons _eid151907_
                                                               '()))
                                                   _r151850_)))
                                          (_E151853151873_)))
                                    (_E151853151873_)))))
                          (_E151853151873_)))))
                (_E151853151873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151853151873_)))))
                                    (_E151852151909_)))
                                (_E151824151833_)))))
                      (_E151824151833_)))))
          (_E151823151913_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151767_)
        (let* ((_e151768151781_ _stx151767_)
               (_E151770151785_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151768151781_)))
               (_E151769151817_
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
                                  (let ((_hd151805_ _hd151775151800_))
                                    (if (gx#stx-pair? _tl151776151802_)
                                        (let ((_e151777151807_
                                               (gx#syntax-e _tl151776151802_)))
                                          (let ((_hd151778151810_
                                                 (##car _e151777151807_))
                                                (_tl151779151812_
                                                 (##cdr _e151777151807_)))
                                            (let ((_expr151815_
                                                   _hd151778151810_))
                                              (if (gx#stx-null?
                                                   _tl151779151812_)
                                                  (if (gx#core-bind-values?
                                                       _hd151805_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd151805_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151805_)
                             (cons (gx#core-expand-expression _expr151815_)
                                   '())))
                 (gx#stx-source _stx151767_)))
              (_E151770151785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151770151785_)))))
                                        (_E151770151785_)))))
                              (_E151770151785_))))
                      (_E151770151785_)))))
          (_E151769151817_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151711_)
        (let* ((_e151712151725_ _stx151711_)
               (_E151714151729_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151712151725_)))
               (_E151713151763_
                (lambda ()
                  (if (gx#stx-pair? _e151712151725_)
                      (let ((_e151715151733_ (gx#syntax-e _e151712151725_)))
                        (let ((_hd151716151736_ (##car _e151715151733_))
                              (_tl151717151738_ (##cdr _e151715151733_)))
                          (if (gx#stx-pair? _tl151717151738_)
                              (let ((_e151718151741_
                                     (gx#syntax-e _tl151717151738_)))
                                (let ((_hd151719151744_
                                       (##car _e151718151741_))
                                      (_tl151720151746_
                                       (##cdr _e151718151741_)))
                                  (let ((_id151749_ _hd151719151744_))
                                    (if (gx#stx-pair? _tl151720151746_)
                                        (let ((_e151721151751_
                                               (gx#syntax-e _tl151720151746_)))
                                          (let ((_hd151722151754_
                                                 (##car _e151721151751_))
                                                (_tl151723151756_
                                                 (##cdr _e151721151751_)))
                                            (let ((_binding-id151759_
                                                   _hd151722151754_))
                                              (if (gx#stx-null?
                                                   _tl151723151756_)
                                                  (if (and (gx#identifier?
                                                            _id151749_)
                                                           (gx#identifier?
                                                            _binding-id151759_))
                                                      (let ((_eid151761_
                                                             (gx#stx-e
                                                              _binding-id151759_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151749_
                                                         _eid151761_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151749_)
                             (cons _eid151761_ '())))))
              (_E151714151729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151714151729_)))))
                                        (_E151714151729_)))))
                              (_E151714151729_))))
                      (_E151714151729_)))))
          (_E151713151763_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151654_)
        (let* ((_e151655151668_ _stx151654_)
               (_E151657151672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151655151668_)))
               (_E151656151707_
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
                                            (let ((_expr151702_
                                                   _hd151665151697_))
                                              (if (gx#stx-null?
                                                   _tl151666151699_)
                                                  (if (gx#identifier?
                                                       _id151692_)
                                                      (let ((_g157092_
                                                             (gx#core-expand-expression+1
                                                              _expr151702_)))
                                                        (begin
                                                          (let ((_g157093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157092_)
                             (##vector-length _g157092_)
                             1)))
                    (if (not (##fx= _g157093_ 2))
                        (error "Context expects 2 values" _g157093_)))
                  (let ((_e-stx151704_ (##vector-ref _g157092_ 0))
                        (_e151705_ (##vector-ref _g157092_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151692_ _e151705_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151692_)
                                   (cons _e-stx151704_ '())))
                       (gx#stx-source _stx151654_))))))
              (_E151657151672_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151657151672_)))))
                                        (_E151657151672_)))))
                              (_E151657151672_))))
                      (_E151657151672_)))))
          (_E151656151707_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151598_)
        (let* ((_e151599151612_ _stx151598_)
               (_E151601151616_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151599151612_)))
               (_E151600151650_
                (lambda ()
                  (if (gx#stx-pair? _e151599151612_)
                      (let ((_e151602151620_ (gx#syntax-e _e151599151612_)))
                        (let ((_hd151603151623_ (##car _e151602151620_))
                              (_tl151604151625_ (##cdr _e151602151620_)))
                          (if (gx#stx-pair? _tl151604151625_)
                              (let ((_e151605151628_
                                     (gx#syntax-e _tl151604151625_)))
                                (let ((_hd151606151631_
                                       (##car _e151605151628_))
                                      (_tl151607151633_
                                       (##cdr _e151605151628_)))
                                  (let ((_id151636_ _hd151606151631_))
                                    (if (gx#stx-pair? _tl151607151633_)
                                        (let ((_e151608151638_
                                               (gx#syntax-e _tl151607151633_)))
                                          (let ((_hd151609151641_
                                                 (##car _e151608151638_))
                                                (_tl151610151643_
                                                 (##cdr _e151608151638_)))
                                            (let ((_alias-id151646_
                                                   _hd151609151641_))
                                              (if (gx#stx-null?
                                                   _tl151610151643_)
                                                  (if (and (gx#identifier?
                                                            _id151636_)
                                                           (gx#identifier?
                                                            _alias-id151646_))
                                                      (let ((_alias-id151648_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151646_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151636_
                                                         _alias-id151648_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151636_)
                             (cons _alias-id151648_ '())))))
              (_E151601151616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151601151616_)))))
                                        (_E151601151616_)))))
                              (_E151601151616_))))
                      (_E151601151616_)))))
          (_E151600151650_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151541_ _wrap?151542_)
        (let* ((_e151543151553_ _stx151541_)
               (_E151545151557_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151543151553_)))
               (_E151544151584_
                (lambda ()
                  (if (gx#stx-pair? _e151543151553_)
                      (let ((_e151546151561_ (gx#syntax-e _e151543151553_)))
                        (let ((_hd151547151564_ (##car _e151546151561_))
                              (_tl151548151566_ (##cdr _e151546151561_)))
                          (if (gx#stx-pair? _tl151548151566_)
                              (let ((_e151549151569_
                                     (gx#syntax-e _tl151548151566_)))
                                (let ((_hd151550151572_
                                       (##car _e151549151569_))
                                      (_tl151551151574_
                                       (##cdr _e151549151569_)))
                                  (let* ((_hd151577_ _hd151550151572_)
                                         (_body151579_ _tl151551151574_))
                                    (if (gx#core-bind-values? _hd151577_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151577_)
                                           (let ((_body151582_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151577_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151541_
                                                               _body151579_)
                                                              '()))))
                                             (if _wrap?151542_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151582_)
                                                  (gx#stx-source _stx151541_))
                                                 _body151582_)))
                                         gx#current-expander-context
                                         (let ((__obj157074
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157074)
                                           __obj157074))
                                        (_E151545151557_)))))
                              (_E151545151557_))))
                      (_E151545151557_)))))
          (_E151544151584_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151591_)
        (let ((_wrap?151593_ '#t))
          (gx#core-expand-lambda%__% _stx151591_ _wrap?151593_))))
    (define gx#core-expand-lambda%
      (lambda _g157095_
        (let ((_g157094_ (##length _g157095_)))
          (cond ((##fx= _g157094_ 1)
                 (apply (lambda (_stx151591_)
                          (gx#core-expand-lambda%__0 _stx151591_))
                        _g157095_))
                ((##fx= _g157094_ 2)
                 (apply (lambda (_stx151595_ _wrap?151596_)
                          (gx#core-expand-lambda%__%
                           _stx151595_
                           _wrap?151596_))
                        _g157095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157095_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151505_)
        (let* ((_e151506151513_ _stx151505_)
               (_E151508151517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151506151513_)))
               (_E151507151536_
                (lambda ()
                  (if (gx#stx-pair? _e151506151513_)
                      (let ((_e151509151521_ (gx#syntax-e _e151506151513_)))
                        (let ((_hd151510151524_ (##car _e151509151521_))
                              (_tl151511151526_ (##cdr _e151509151521_)))
                          (let ((_clauses151529_ _tl151511151526_))
                            (if (gx#stx-list? _clauses151529_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151531_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151531_)
                                       (let ((_$e151533_
                                              (gx#stx-source _clause151531_)))
                                         (if _$e151533_
                                             _$e151533_
                                             (gx#stx-source _stx151505_))))
                                      '#f))
                                   _clauses151529_))
                                 (gx#stx-source _stx151505_))
                                (_E151508151517_)))))
                      (_E151508151517_)))))
          (_E151507151536_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151459_)
        (let* ((_e151460151470_ _stx151459_)
               (_E151462151474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151460151470_)))
               (_E151461151501_
                (lambda ()
                  (if (gx#stx-pair? _e151460151470_)
                      (let ((_e151463151478_ (gx#syntax-e _e151460151470_)))
                        (let ((_hd151464151481_ (##car _e151463151478_))
                              (_tl151465151483_ (##cdr _e151463151478_)))
                          (if (gx#stx-pair? _tl151465151483_)
                              (let ((_e151466151486_
                                     (gx#syntax-e _tl151465151483_)))
                                (let ((_hd151467151489_
                                       (##car _e151466151486_))
                                      (_tl151468151491_
                                       (##cdr _e151466151486_)))
                                  (let* ((_hd151494_ _hd151467151489_)
                                         (_body151496_ _tl151468151491_))
                                    (if (gx#core-expand-let-bind? _hd151494_)
                                        (let ((_expressions151498_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151494_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151494_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151494_
                                                           _expressions151498_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151459_
                         _body151496_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151459_)))
                                           gx#current-expander-context
                                           (let ((__obj157075
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157075)
                                             __obj157075)))
                                        (_E151462151474_)))))
                              (_E151462151474_))))
                      (_E151462151474_)))))
          (_E151461151501_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151404_ _form151405_)
        (let* ((_e151406151416_ _stx151404_)
               (_E151408151420_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151406151416_)))
               (_E151407151445_
                (lambda ()
                  (if (gx#stx-pair? _e151406151416_)
                      (let ((_e151409151424_ (gx#syntax-e _e151406151416_)))
                        (let ((_hd151410151427_ (##car _e151409151424_))
                              (_tl151411151429_ (##cdr _e151409151424_)))
                          (if (gx#stx-pair? _tl151411151429_)
                              (let ((_e151412151432_
                                     (gx#syntax-e _tl151411151429_)))
                                (let ((_hd151413151435_
                                       (##car _e151412151432_))
                                      (_tl151414151437_
                                       (##cdr _e151412151432_)))
                                  (let* ((_hd151440_ _hd151413151435_)
                                         (_body151442_ _tl151414151437_))
                                    (if (gx#core-expand-let-bind? _hd151440_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151440_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151405_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151440_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151440_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151404_
                                                               _body151442_)
                                                              '())))
                                            (gx#stx-source _stx151404_)))
                                         gx#current-expander-context
                                         (let ((__obj157076
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157076)
                                           __obj157076))
                                        (_E151408151420_)))))
                              (_E151408151420_))))
                      (_E151408151420_)))))
          (_E151407151445_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151452_)
        (let ((_form151454_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151452_ _form151454_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157097_
        (let ((_g157096_ (##length _g157097_)))
          (cond ((##fx= _g157096_ 1)
                 (apply (lambda (_stx151452_)
                          (gx#core-expand-letrec-values%__0 _stx151452_))
                        _g157097_))
                ((##fx= _g157096_ 2)
                 (apply (lambda (_stx151456_ _form151457_)
                          (gx#core-expand-letrec-values%__%
                           _stx151456_
                           _form151457_))
                        _g157097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157097_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151401_)
        (gx#core-expand-letrec-values%__% _stx151401_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151358_)
        (if (gx#stx-list? _stx151358_)
            (gx#stx-andmap
             (lambda (_bind151360_)
               (let* ((_e151361151371_ _bind151360_)
                      (_E151363151375_ (lambda () '#f))
                      (_E151362151397_
                       (lambda ()
                         (if (gx#stx-pair? _e151361151371_)
                             (let ((_e151364151379_
                                    (gx#syntax-e _e151361151371_)))
                               (let ((_hd151365151382_ (##car _e151364151379_))
                                     (_tl151366151384_
                                      (##cdr _e151364151379_)))
                                 (let ((_hd151387_ _hd151365151382_))
                                   (if (gx#stx-pair? _tl151366151384_)
                                       (let ((_e151367151389_
                                              (gx#syntax-e _tl151366151384_)))
                                         (let ((_hd151368151392_
                                                (##car _e151367151389_))
                                               (_tl151369151394_
                                                (##cdr _e151367151389_)))
                                           (if (gx#stx-null? _tl151369151394_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151387_)
                                                   (_E151363151375_))
                                               (_E151363151375_))))
                                       (_E151363151375_)))))
                             (_E151363151375_)))))
                 (_E151362151397_)))
             _stx151358_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151317_)
        (let* ((_e151318151328_ _bind151317_)
               (_E151320151332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151318151328_)))
               (_E151319151354_
                (lambda ()
                  (if (gx#stx-pair? _e151318151328_)
                      (let ((_e151321151336_ (gx#syntax-e _e151318151328_)))
                        (let ((_hd151322151339_ (##car _e151321151336_))
                              (_tl151323151341_ (##cdr _e151321151336_)))
                          (if (gx#stx-pair? _tl151323151341_)
                              (let ((_e151324151344_
                                     (gx#syntax-e _tl151323151341_)))
                                (let ((_hd151325151347_
                                       (##car _e151324151344_))
                                      (_tl151326151349_
                                       (##cdr _e151324151344_)))
                                  (let ((_expr151352_ _hd151325151347_))
                                    (if (gx#stx-null? _tl151326151349_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151352_)
                                            (_E151320151332_))
                                        (_E151320151332_)))))
                              (_E151320151332_))))
                      (_E151320151332_)))))
          (_E151319151354_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151276_)
        (let* ((_e151277151287_ _bind151276_)
               (_E151279151291_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151277151287_)))
               (_E151278151313_
                (lambda ()
                  (if (gx#stx-pair? _e151277151287_)
                      (let ((_e151280151295_ (gx#syntax-e _e151277151287_)))
                        (let ((_hd151281151298_ (##car _e151280151295_))
                              (_tl151282151300_ (##cdr _e151280151295_)))
                          (let ((_hd151303_ _hd151281151298_))
                            (if (gx#stx-pair? _tl151282151300_)
                                (let ((_e151283151305_
                                       (gx#syntax-e _tl151282151300_)))
                                  (let ((_hd151284151308_
                                         (##car _e151283151305_))
                                        (_tl151285151310_
                                         (##cdr _e151283151305_)))
                                    (if (gx#stx-null? _tl151285151310_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151303_)
                                            (_E151279151291_))
                                        (_E151279151291_))))
                                (_E151279151291_)))))
                      (_E151279151291_)))))
          (_E151278151313_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151234_ _expr151235_)
        (let* ((_e151236151246_ _bind151234_)
               (_E151238151250_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151236151246_)))
               (_E151237151272_
                (lambda ()
                  (if (gx#stx-pair? _e151236151246_)
                      (let ((_e151239151254_ (gx#syntax-e _e151236151246_)))
                        (let ((_hd151240151257_ (##car _e151239151254_))
                              (_tl151241151259_ (##cdr _e151239151254_)))
                          (let ((_hd151262_ _hd151240151257_))
                            (if (gx#stx-pair? _tl151241151259_)
                                (let ((_e151242151264_
                                       (gx#syntax-e _tl151241151259_)))
                                  (let ((_hd151243151267_
                                         (##car _e151242151264_))
                                        (_tl151244151269_
                                         (##cdr _e151242151264_)))
                                    (if (gx#stx-null? _tl151244151269_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151262_)
                                                  (cons _expr151235_ '()))
                                            (_E151238151250_))
                                        (_E151238151250_))))
                                (_E151238151250_)))))
                      (_E151238151250_)))))
          (_E151237151272_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151188_)
        (let* ((_e151189151199_ _stx151188_)
               (_E151191151203_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151189151199_)))
               (_E151190151230_
                (lambda ()
                  (if (gx#stx-pair? _e151189151199_)
                      (let ((_e151192151207_ (gx#syntax-e _e151189151199_)))
                        (let ((_hd151193151210_ (##car _e151192151207_))
                              (_tl151194151212_ (##cdr _e151192151207_)))
                          (if (gx#stx-pair? _tl151194151212_)
                              (let ((_e151195151215_
                                     (gx#syntax-e _tl151194151212_)))
                                (let ((_hd151196151218_
                                       (##car _e151195151215_))
                                      (_tl151197151220_
                                       (##cdr _e151195151215_)))
                                  (let* ((_hd151223_ _hd151196151218_)
                                         (_body151225_ _tl151197151220_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151223_)
                                        (let ((_expanders151227_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151223_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151223_
                                              _expanders151227_)
                                             (gx#core-expand-local-block
                                              _stx151188_
                                              _body151225_))
                                           gx#current-expander-context
                                           (let ((__obj157077
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157077)
                                             __obj157077)))
                                        (_E151191151203_)))))
                              (_E151191151203_))))
                      (_E151191151203_)))))
          (_E151190151230_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151137_)
        (let* ((_e151138151148_ _stx151137_)
               (_E151140151152_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151138151148_)))
               (_E151139151184_
                (lambda ()
                  (if (gx#stx-pair? _e151138151148_)
                      (let ((_e151141151156_ (gx#syntax-e _e151138151148_)))
                        (let ((_hd151142151159_ (##car _e151141151156_))
                              (_tl151143151161_ (##cdr _e151141151156_)))
                          (if (gx#stx-pair? _tl151143151161_)
                              (let ((_e151144151164_
                                     (gx#syntax-e _tl151143151161_)))
                                (let ((_hd151145151167_
                                       (##car _e151144151164_))
                                      (_tl151146151169_
                                       (##cdr _e151144151164_)))
                                  (let* ((_hd151172_ _hd151145151167_)
                                         (_body151174_ _tl151146151169_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151172_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151172_
                                            (make-list
                                             (gx#stx-length _hd151172_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151176151179_
                                                     _g151177151181_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151176151179_
                                               _g151177151181_
                                               '#t))
                                            _hd151172_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151172_))
                                           (gx#core-expand-local-block
                                            _stx151137_
                                            _body151174_))
                                         gx#current-expander-context
                                         (let ((__obj157078
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157078)
                                           __obj157078))
                                        (_E151140151152_)))))
                              (_E151140151152_))))
                      (_E151140151152_)))))
          (_E151139151184_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151094_)
        (if (gx#stx-list? _stx151094_)
            (gx#stx-andmap
             (lambda (_bind151096_)
               (let* ((_e151097151107_ _bind151096_)
                      (_E151099151111_ (lambda () '#f))
                      (_E151098151133_
                       (lambda ()
                         (if (gx#stx-pair? _e151097151107_)
                             (let ((_e151100151115_
                                    (gx#syntax-e _e151097151107_)))
                               (let ((_hd151101151118_ (##car _e151100151115_))
                                     (_tl151102151120_
                                      (##cdr _e151100151115_)))
                                 (let ((_hd151123_ _hd151101151118_))
                                   (if (gx#stx-pair? _tl151102151120_)
                                       (let ((_e151103151125_
                                              (gx#syntax-e _tl151102151120_)))
                                         (let ((_hd151104151128_
                                                (##car _e151103151125_))
                                               (_tl151105151130_
                                                (##cdr _e151103151125_)))
                                           (if (gx#stx-null? _tl151105151130_)
                                               (if '#t
                                                   (gx#identifier? _hd151123_)
                                                   (_E151099151111_))
                                               (_E151099151111_))))
                                       (_E151099151111_)))))
                             (_E151099151111_)))))
                 (_E151098151133_)))
             _stx151094_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151051_)
        (let* ((_e151052151062_ _bind151051_)
               (_E151054151066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151052151062_)))
               (_E151053151090_
                (lambda ()
                  (if (gx#stx-pair? _e151052151062_)
                      (let ((_e151055151070_ (gx#syntax-e _e151052151062_)))
                        (let ((_hd151056151073_ (##car _e151055151070_))
                              (_tl151057151075_ (##cdr _e151055151070_)))
                          (if (gx#stx-pair? _tl151057151075_)
                              (let ((_e151058151078_
                                     (gx#syntax-e _tl151057151075_)))
                                (let ((_hd151059151081_
                                       (##car _e151058151078_))
                                      (_tl151060151083_
                                       (##cdr _e151058151078_)))
                                  (let ((_expr151086_ _hd151059151081_))
                                    (if (gx#stx-null? _tl151060151083_)
                                        (if '#t
                                            (let ((_g157098_
                                                   (gx#core-expand-expression+1
                                                    _expr151086_)))
                                              (begin
                                                (let ((_g157099_
                                                       (if (##values?
                                                            _g157098_)
                                                           (##vector-length
                                                            _g157098_)
                                                           1)))
                                                  (if (not (##fx= _g157099_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157099_)))
                                                (let ((_e151088_
                                                       (##vector-ref
                                                        _g157098_
                                                        1)))
                                                  _e151088_)))
                                            (_E151054151066_))
                                        (_E151054151066_)))))
                              (_E151054151066_))))
                      (_E151054151066_)))))
          (_E151053151090_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind150996_ _e150997_ _rebind?150998_)
        (let* ((_e150999151009_ _bind150996_)
               (_E151001151013_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150999151009_)))
               (_E151000151035_
                (lambda ()
                  (if (gx#stx-pair? _e150999151009_)
                      (let ((_e151002151017_ (gx#syntax-e _e150999151009_)))
                        (let ((_hd151003151020_ (##car _e151002151017_))
                              (_tl151004151022_ (##cdr _e151002151017_)))
                          (let ((_id151025_ _hd151003151020_))
                            (if (gx#stx-pair? _tl151004151022_)
                                (let ((_e151005151027_
                                       (gx#syntax-e _tl151004151022_)))
                                  (let ((_hd151006151030_
                                         (##car _e151005151027_))
                                        (_tl151007151032_
                                         (##cdr _e151005151027_)))
                                    (if (gx#stx-null? _tl151007151032_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151025_
                                             _e150997_
                                             _rebind?150998_)
                                            (_E151001151013_))
                                        (_E151001151013_))))
                                (_E151001151013_)))))
                      (_E151001151013_)))))
          (_E151000151035_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151042_ _e151043_)
        (let ((_rebind?151045_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151042_
           _e151043_
           _rebind?151045_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157101_
        (let ((_g157100_ (##length _g157101_)))
          (cond ((##fx= _g157100_ 2)
                 (apply (lambda (_bind151042_ _e151043_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151042_
                           _e151043_))
                        _g157101_))
                ((##fx= _g157100_ 3)
                 (apply (lambda (_bind151047_ _e151048_ _rebind?151049_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151047_
                           _e151048_
                           _rebind?151049_))
                        _g157101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157101_))))))
    (define gx#core-expand-expression%
      (lambda (_stx150954_)
        (let* ((_e150955150965_ _stx150954_)
               (_E150957150969_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150955150965_)))
               (_E150956150991_
                (lambda ()
                  (if (gx#stx-pair? _e150955150965_)
                      (let ((_e150958150973_ (gx#syntax-e _e150955150965_)))
                        (let ((_hd150959150976_ (##car _e150958150973_))
                              (_tl150960150978_ (##cdr _e150958150973_)))
                          (if (gx#stx-pair? _tl150960150978_)
                              (let ((_e150961150981_
                                     (gx#syntax-e _tl150960150978_)))
                                (let ((_hd150962150984_
                                       (##car _e150961150981_))
                                      (_tl150963150986_
                                       (##cdr _e150961150981_)))
                                  (let ((_expr150989_ _hd150962150984_))
                                    (if (gx#stx-null? _tl150963150986_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr150989_)
                                            (_E150957150969_))
                                        (_E150957150969_)))))
                              (_E150957150969_))))
                      (_E150957150969_)))))
          (_E150956150991_))))
    (define gx#core-expand-quote%
      (lambda (_stx150913_)
        (let* ((_e150914150924_ _stx150913_)
               (_E150916150928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150914150924_)))
               (_E150915150950_
                (lambda ()
                  (if (gx#stx-pair? _e150914150924_)
                      (let ((_e150917150932_ (gx#syntax-e _e150914150924_)))
                        (let ((_hd150918150935_ (##car _e150917150932_))
                              (_tl150919150937_ (##cdr _e150917150932_)))
                          (if (gx#stx-pair? _tl150919150937_)
                              (let ((_e150920150940_
                                     (gx#syntax-e _tl150919150937_)))
                                (let ((_hd150921150943_
                                       (##car _e150920150940_))
                                      (_tl150922150945_
                                       (##cdr _e150920150940_)))
                                  (let ((_e150948_ _hd150921150943_))
                                    (if (gx#stx-null? _tl150922150945_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e150948_)
                                                         '()))
                                             (gx#stx-source _stx150913_))
                                            (_E150916150928_))
                                        (_E150916150928_)))))
                              (_E150916150928_))))
                      (_E150916150928_)))))
          (_E150915150950_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx150872_)
        (let* ((_e150873150883_ _stx150872_)
               (_E150875150887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150873150883_)))
               (_E150874150909_
                (lambda ()
                  (if (gx#stx-pair? _e150873150883_)
                      (let ((_e150876150891_ (gx#syntax-e _e150873150883_)))
                        (let ((_hd150877150894_ (##car _e150876150891_))
                              (_tl150878150896_ (##cdr _e150876150891_)))
                          (if (gx#stx-pair? _tl150878150896_)
                              (let ((_e150879150899_
                                     (gx#syntax-e _tl150878150896_)))
                                (let ((_hd150880150902_
                                       (##car _e150879150899_))
                                      (_tl150881150904_
                                       (##cdr _e150879150899_)))
                                  (let ((_e150907_ _hd150880150902_))
                                    (if (gx#stx-null? _tl150881150904_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e150907_)
                                                         '()))
                                             (gx#stx-source _stx150872_))
                                            (_E150875150887_))
                                        (_E150875150887_)))))
                              (_E150875150887_))))
                      (_E150875150887_)))))
          (_E150874150909_))))
    (define gx#core-expand-call%
      (lambda (_stx150829_)
        (let* ((_e150830150840_ _stx150829_)
               (_E150832150844_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150830150840_)))
               (_E150831150868_
                (lambda ()
                  (if (gx#stx-pair? _e150830150840_)
                      (let ((_e150833150848_ (gx#syntax-e _e150830150840_)))
                        (let ((_hd150834150851_ (##car _e150833150848_))
                              (_tl150835150853_ (##cdr _e150833150848_)))
                          (if (gx#stx-pair? _tl150835150853_)
                              (let ((_e150836150856_
                                     (gx#syntax-e _tl150835150853_)))
                                (let ((_hd150837150859_
                                       (##car _e150836150856_))
                                      (_tl150838150861_
                                       (##cdr _e150836150856_)))
                                  (let* ((_rator150864_ _hd150837150859_)
                                         (_args150866_ _tl150838150861_))
                                    (if (gx#stx-list? _args150866_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator150864_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args150866_))
                                         (gx#stx-source _stx150829_))
                                        (_E150832150844_)))))
                              (_E150832150844_))))
                      (_E150832150844_)))))
          (_E150831150868_))))
    (define gx#core-expand-if%
      (lambda (_stx150762_)
        (let* ((_e150763150779_ _stx150762_)
               (_E150765150783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150763150779_)))
               (_E150764150825_
                (lambda ()
                  (if (gx#stx-pair? _e150763150779_)
                      (let ((_e150766150787_ (gx#syntax-e _e150763150779_)))
                        (let ((_hd150767150790_ (##car _e150766150787_))
                              (_tl150768150792_ (##cdr _e150766150787_)))
                          (if (gx#stx-pair? _tl150768150792_)
                              (let ((_e150769150795_
                                     (gx#syntax-e _tl150768150792_)))
                                (let ((_hd150770150798_
                                       (##car _e150769150795_))
                                      (_tl150771150800_
                                       (##cdr _e150769150795_)))
                                  (let ((_test150803_ _hd150770150798_))
                                    (if (gx#stx-pair? _tl150771150800_)
                                        (let ((_e150772150805_
                                               (gx#syntax-e _tl150771150800_)))
                                          (let ((_hd150773150808_
                                                 (##car _e150772150805_))
                                                (_tl150774150810_
                                                 (##cdr _e150772150805_)))
                                            (let ((_K150813_ _hd150773150808_))
                                              (if (gx#stx-pair?
                                                   _tl150774150810_)
                                                  (let ((_e150775150815_
                                                         (gx#syntax-e
                                                          _tl150774150810_)))
                                                    (let ((_hd150776150818_
                                                           (##car _e150775150815_))
                                                          (_tl150777150820_
                                                           (##cdr _e150775150815_)))
                                                      (let ((_E150823_
                                                             _hd150776150818_))
                                                        (if (gx#stx-null?
                                                             _tl150777150820_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test150803_)
                                     (cons (gx#core-expand-expression
                                            _K150813_)
                                           (cons (gx#core-expand-expression
                                                  _E150823_)
                                                 '()))))
                         (gx#stx-source _stx150762_))
                        (_E150765150783_))
                    (_E150765150783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150765150783_)))))
                                        (_E150765150783_)))))
                              (_E150765150783_))))
                      (_E150765150783_)))))
          (_E150764150825_))))
    (define gx#core-expand-ref%
      (lambda (_stx150721_)
        (let* ((_e150722150732_ _stx150721_)
               (_E150724150736_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150722150732_)))
               (_E150723150758_
                (lambda ()
                  (if (gx#stx-pair? _e150722150732_)
                      (let ((_e150725150740_ (gx#syntax-e _e150722150732_)))
                        (let ((_hd150726150743_ (##car _e150725150740_))
                              (_tl150727150745_ (##cdr _e150725150740_)))
                          (if (gx#stx-pair? _tl150727150745_)
                              (let ((_e150728150748_
                                     (gx#syntax-e _tl150727150745_)))
                                (let ((_hd150729150751_
                                       (##car _e150728150748_))
                                      (_tl150730150753_
                                       (##cdr _e150728150748_)))
                                  (let ((_id150756_ _hd150729150751_))
                                    (if (gx#stx-null? _tl150730150753_)
                                        (if (gx#identifier? _id150756_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150756_
                                                          _stx150721_)
                                                         '()))
                                             (gx#stx-source _stx150721_))
                                            (_E150724150736_))
                                        (_E150724150736_)))))
                              (_E150724150736_))))
                      (_E150724150736_)))))
          (_E150723150758_))))
    (define gx#core-expand-setq%
      (lambda (_stx150667_)
        (let* ((_e150668150681_ _stx150667_)
               (_E150670150685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150668150681_)))
               (_E150669150717_
                (lambda ()
                  (if (gx#stx-pair? _e150668150681_)
                      (let ((_e150671150689_ (gx#syntax-e _e150668150681_)))
                        (let ((_hd150672150692_ (##car _e150671150689_))
                              (_tl150673150694_ (##cdr _e150671150689_)))
                          (if (gx#stx-pair? _tl150673150694_)
                              (let ((_e150674150697_
                                     (gx#syntax-e _tl150673150694_)))
                                (let ((_hd150675150700_
                                       (##car _e150674150697_))
                                      (_tl150676150702_
                                       (##cdr _e150674150697_)))
                                  (let ((_id150705_ _hd150675150700_))
                                    (if (gx#stx-pair? _tl150676150702_)
                                        (let ((_e150677150707_
                                               (gx#syntax-e _tl150676150702_)))
                                          (let ((_hd150678150710_
                                                 (##car _e150677150707_))
                                                (_tl150679150712_
                                                 (##cdr _e150677150707_)))
                                            (let ((_expr150715_
                                                   _hd150678150710_))
                                              (if (gx#stx-null?
                                                   _tl150679150712_)
                                                  (if (gx#identifier?
                                                       _id150705_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150705_
                            _stx150667_)
                           (cons (gx#core-expand-expression _expr150715_)
                                 '())))
               (gx#stx-source _stx150667_))
              (_E150670150685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150670150685_)))))
                                        (_E150670150685_)))))
                              (_E150670150685_))))
                      (_E150670150685_)))))
          (_E150669150717_))))
    (define gx#macro-expand-extern
      (lambda (_stx150515_)
        (letrec ((_generate150517_
                  (lambda (_body150547_)
                    (let _lp150549_ ((_rest150551_ _body150547_)
                                     (_ns150552_
                                      (gx#core-context-namespace__0))
                                     (_r150553_ '()))
                      (let* ((_e150554150569_ _rest150551_)
                             (_E150567150573_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150554150569_)))
                             (_E150563150577_
                              (lambda ()
                                (if (gx#stx-null? _e150554150569_)
                                    (if '#t
                                        (reverse _r150553_)
                                        (_E150567150573_))
                                    (_E150567150573_))))
                             (_E150556150634_
                              (lambda ()
                                (if (gx#stx-pair? _e150554150569_)
                                    (let ((_e150564150581_
                                           (gx#syntax-e _e150554150569_)))
                                      (let ((_hd150565150584_
                                             (##car _e150564150581_))
                                            (_tl150566150586_
                                             (##cdr _e150564150581_)))
                                        (let* ((_hd150589_ _hd150565150584_)
                                               (_rest150591_ _tl150566150586_))
                                          (if '#t
                                              (if (gx#identifier? _hd150589_)
                                                  (_lp150549_
                                                   _rest150591_
                                                   _ns150552_
                                                   (cons (cons _hd150589_
                                                               (cons (if _ns150552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150589_
                                  _ns150552_
                                  '"#"
                                  _hd150589_)
                                 _hd150589_)
                             '()))
                 _r150553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150592150602_
                                                          _hd150589_)
                                                         (_E150594150606_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150592150602_)))
                                                         (_E150593150630_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150592150602_)
                        (let ((_e150595150610_ (gx#syntax-e _e150592150602_)))
                          (let ((_hd150596150613_ (##car _e150595150610_))
                                (_tl150597150615_ (##cdr _e150595150610_)))
                            (let ((_id150618_ _hd150596150613_))
                              (if (gx#stx-pair? _tl150597150615_)
                                  (let ((_e150598150620_
                                         (gx#syntax-e _tl150597150615_)))
                                    (let ((_hd150599150623_
                                           (##car _e150598150620_))
                                          (_tl150600150625_
                                           (##cdr _e150598150620_)))
                                      (let ((_eid150628_ _hd150599150623_))
                                        (if (gx#stx-null? _tl150600150625_)
                                            (if (and (gx#identifier?
                                                      _id150618_)
                                                     (gx#identifier?
                                                      _eid150628_))
                                                (_lp150549_
                                                 _rest150591_
                                                 _ns150552_
                                                 (cons (cons _id150618_
                                                             (cons _eid150628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150594150606_))
                                            (_E150594150606_)))))
                                  (_E150594150606_)))))
                        (_E150594150606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150593150630_)))
                                              (_E150563150577_)))))
                                    (_E150563150577_))))
                             (_E150555150663_
                              (lambda ()
                                (if (gx#stx-pair? _e150554150569_)
                                    (let ((_e150557150638_
                                           (gx#syntax-e _e150554150569_)))
                                      (let ((_hd150558150641_
                                             (##car _e150557150638_))
                                            (_tl150559150643_
                                             (##cdr _e150557150638_)))
                                        (if (eq? (gx#stx-e _hd150558150641_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150559150643_)
                                                (let ((_e150560150646_
                                                       (gx#syntax-e
                                                        _tl150559150643_)))
                                                  (let ((_hd150561150649_
                                                         (##car _e150560150646_))
                                                        (_tl150562150651_
                                                         (##cdr _e150560150646_)))
                                                    (let* ((_ns150654_
                                                            _hd150561150649_)
                                                           (_rest150656_
                                                            _tl150562150651_))
                                                      (if '#t
                                                          (let ((_ns150661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150654_)
                             (symbol->string (gx#stx-e _ns150654_))
                             (if (or (gx#stx-string? _ns150654_)
                                     (gx#stx-false? _ns150654_))
                                 (gx#stx-e _ns150654_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150515_
                                  _ns150654_)))))
                    (_lp150549_ _rest150656_ _ns150661_ _r150553_))
                  (_E150556150634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150556150634_))
                                            (_E150556150634_))))
                                    (_E150556150634_)))))
                        (_E150555150663_))))))
          (let* ((_e150518150525_ _stx150515_)
                 (_E150520150529_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150518150525_)))
                 (_E150519150543_
                  (lambda ()
                    (if (gx#stx-pair? _e150518150525_)
                        (let ((_e150521150533_ (gx#syntax-e _e150518150525_)))
                          (let ((_hd150522150536_ (##car _e150521150533_))
                                (_tl150523150538_ (##cdr _e150521150533_)))
                            (let ((_body150541_ _tl150523150538_))
                              (if (gx#stx-list? _body150541_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150517_ _body150541_))
                                  (_E150520150529_)))))
                        (_E150520150529_)))))
            (_E150519150543_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150461_)
        (let* ((_e150462150475_ _stx150461_)
               (_E150464150479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150462150475_)))
               (_E150463150511_
                (lambda ()
                  (if (gx#stx-pair? _e150462150475_)
                      (let ((_e150465150483_ (gx#syntax-e _e150462150475_)))
                        (let ((_hd150466150486_ (##car _e150465150483_))
                              (_tl150467150488_ (##cdr _e150465150483_)))
                          (if (gx#stx-pair? _tl150467150488_)
                              (let ((_e150468150491_
                                     (gx#syntax-e _tl150467150488_)))
                                (let ((_hd150469150494_
                                       (##car _e150468150491_))
                                      (_tl150470150496_
                                       (##cdr _e150468150491_)))
                                  (let ((_hd150499_ _hd150469150494_))
                                    (if (gx#stx-pair? _tl150470150496_)
                                        (let ((_e150471150501_
                                               (gx#syntax-e _tl150470150496_)))
                                          (let ((_hd150472150504_
                                                 (##car _e150471150501_))
                                                (_tl150473150506_
                                                 (##cdr _e150471150501_)))
                                            (let ((_expr150509_
                                                   _hd150472150504_))
                                              (if (gx#stx-null?
                                                   _tl150473150506_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150499_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150499_)
                          (cons _expr150509_ '())))
              (_E150464150479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150464150479_)))))
                                        (_E150464150479_)))))
                              (_E150464150479_))))
                      (_E150464150479_)))))
          (_E150463150511_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150407_)
        (let* ((_e150408150421_ _stx150407_)
               (_E150410150425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150408150421_)))
               (_E150409150457_
                (lambda ()
                  (if (gx#stx-pair? _e150408150421_)
                      (let ((_e150411150429_ (gx#syntax-e _e150408150421_)))
                        (let ((_hd150412150432_ (##car _e150411150429_))
                              (_tl150413150434_ (##cdr _e150411150429_)))
                          (if (gx#stx-pair? _tl150413150434_)
                              (let ((_e150414150437_
                                     (gx#syntax-e _tl150413150434_)))
                                (let ((_hd150415150440_
                                       (##car _e150414150437_))
                                      (_tl150416150442_
                                       (##cdr _e150414150437_)))
                                  (let ((_hd150445_ _hd150415150440_))
                                    (if (gx#stx-pair? _tl150416150442_)
                                        (let ((_e150417150447_
                                               (gx#syntax-e _tl150416150442_)))
                                          (let ((_hd150418150450_
                                                 (##car _e150417150447_))
                                                (_tl150419150452_
                                                 (##cdr _e150417150447_)))
                                            (let ((_expr150455_
                                                   _hd150418150450_))
                                              (if (gx#stx-null?
                                                   _tl150419150452_)
                                                  (if (gx#identifier?
                                                       _hd150445_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150455_ '())))
              (_E150410150425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150410150425_)))))
                                        (_E150410150425_)))))
                              (_E150410150425_))))
                      (_E150410150425_)))))
          (_E150409150457_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150353_)
        (let* ((_e150354150367_ _stx150353_)
               (_E150356150371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150354150367_)))
               (_E150355150403_
                (lambda ()
                  (if (gx#stx-pair? _e150354150367_)
                      (let ((_e150357150375_ (gx#syntax-e _e150354150367_)))
                        (let ((_hd150358150378_ (##car _e150357150375_))
                              (_tl150359150380_ (##cdr _e150357150375_)))
                          (if (gx#stx-pair? _tl150359150380_)
                              (let ((_e150360150383_
                                     (gx#syntax-e _tl150359150380_)))
                                (let ((_hd150361150386_
                                       (##car _e150360150383_))
                                      (_tl150362150388_
                                       (##cdr _e150360150383_)))
                                  (let ((_id150391_ _hd150361150386_))
                                    (if (gx#stx-pair? _tl150362150388_)
                                        (let ((_e150363150393_
                                               (gx#syntax-e _tl150362150388_)))
                                          (let ((_hd150364150396_
                                                 (##car _e150363150393_))
                                                (_tl150365150398_
                                                 (##cdr _e150363150393_)))
                                            (let ((_alias-id150401_
                                                   _hd150364150396_))
                                              (if (gx#stx-null?
                                                   _tl150365150398_)
                                                  (if (and (gx#identifier?
                                                            _id150391_)
                                                           (gx#identifier?
                                                            _alias-id150401_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150401_ '())))
              (_E150356150371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150356150371_)))))
                                        (_E150356150371_)))))
                              (_E150356150371_))))
                      (_E150356150371_)))))
          (_E150355150403_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150310_)
        (let* ((_e150311150321_ _stx150310_)
               (_E150313150325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150311150321_)))
               (_E150312150349_
                (lambda ()
                  (if (gx#stx-pair? _e150311150321_)
                      (let ((_e150314150329_ (gx#syntax-e _e150311150321_)))
                        (let ((_hd150315150332_ (##car _e150314150329_))
                              (_tl150316150334_ (##cdr _e150314150329_)))
                          (if (gx#stx-pair? _tl150316150334_)
                              (let ((_e150317150337_
                                     (gx#syntax-e _tl150316150334_)))
                                (let ((_hd150318150340_
                                       (##car _e150317150337_))
                                      (_tl150319150342_
                                       (##cdr _e150317150337_)))
                                  (let* ((_hd150345_ _hd150318150340_)
                                         (_body150347_ _tl150319150342_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150345_)
                                             (gx#stx-list? _body150347_)
                                             (not (gx#stx-null? _body150347_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150345_)
                                         _body150347_)
                                        (_E150313150325_)))))
                              (_E150313150325_))))
                      (_E150313150325_)))))
          (_E150312150349_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150246_)
        (letrec ((_generate150248_
                  (lambda (_clause150278_)
                    (let* ((_e150279150286_ _clause150278_)
                           (_E150281150290_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150246_
                               _clause150278_)))
                           (_E150280150306_
                            (lambda ()
                              (if (gx#stx-pair? _e150279150286_)
                                  (let ((_e150282150294_
                                         (gx#syntax-e _e150279150286_)))
                                    (let ((_hd150283150297_
                                           (##car _e150282150294_))
                                          (_tl150284150299_
                                           (##cdr _e150282150294_)))
                                      (let* ((_hd150302_ _hd150283150297_)
                                             (_body150304_ _tl150284150299_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150302_)
                                                 (gx#stx-list? _body150304_)
                                                 (not (gx#stx-null?
                                                       _body150304_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150302_)
                                                   _body150304_)
                                             (gx#stx-source _clause150278_))
                                            (_E150281150290_)))))
                                  (_E150281150290_)))))
                      (_E150280150306_)))))
          (let* ((_e150249150256_ _stx150246_)
                 (_E150251150260_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150249150256_)))
                 (_E150250150274_
                  (lambda ()
                    (if (gx#stx-pair? _e150249150256_)
                        (let ((_e150252150264_ (gx#syntax-e _e150249150256_)))
                          (let ((_hd150253150267_ (##car _e150252150264_))
                                (_tl150254150269_ (##cdr _e150252150264_)))
                            (let ((_clauses150272_ _tl150254150269_))
                              (if (gx#stx-list? _clauses150272_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150248_
                                    _clauses150272_))
                                  (_E150251150260_)))))
                        (_E150251150260_)))))
            (_E150250150274_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150147_ _form150148_)
        (letrec ((_generate150150_
                  (lambda (_bind150193_)
                    (let* ((_e150194150204_ _bind150193_)
                           (_E150196150208_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150147_
                               _bind150193_)))
                           (_E150195150232_
                            (lambda ()
                              (if (gx#stx-pair? _e150194150204_)
                                  (let ((_e150197150212_
                                         (gx#syntax-e _e150194150204_)))
                                    (let ((_hd150198150215_
                                           (##car _e150197150212_))
                                          (_tl150199150217_
                                           (##cdr _e150197150212_)))
                                      (let ((_ids150220_ _hd150198150215_))
                                        (if (gx#stx-pair? _tl150199150217_)
                                            (let ((_e150200150222_
                                                   (gx#syntax-e
                                                    _tl150199150217_)))
                                              (let ((_hd150201150225_
                                                     (##car _e150200150222_))
                                                    (_tl150202150227_
                                                     (##cdr _e150200150222_)))
                                                (let ((_expr150230_
                                                       _hd150201150225_))
                                                  (if (gx#stx-null?
                                                       _tl150202150227_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150220_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150220_)
                        (cons _expr150230_ '()))
                  (_E150196150208_))
              (_E150196150208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150196150208_)))))
                                  (_E150196150208_)))))
                      (_E150195150232_)))))
          (let* ((_e150151150161_ _stx150147_)
                 (_E150153150165_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150151150161_)))
                 (_E150152150189_
                  (lambda ()
                    (if (gx#stx-pair? _e150151150161_)
                        (let ((_e150154150169_ (gx#syntax-e _e150151150161_)))
                          (let ((_hd150155150172_ (##car _e150154150169_))
                                (_tl150156150174_ (##cdr _e150154150169_)))
                            (if (gx#stx-pair? _tl150156150174_)
                                (let ((_e150157150177_
                                       (gx#syntax-e _tl150156150174_)))
                                  (let ((_hd150158150180_
                                         (##car _e150157150177_))
                                        (_tl150159150182_
                                         (##cdr _e150157150177_)))
                                    (let* ((_hd150185_ _hd150158150180_)
                                           (_body150187_ _tl150159150182_))
                                      (if (and (gx#stx-list? _hd150185_)
                                               (gx#stx-list? _body150187_)
                                               (not (gx#stx-null?
                                                     _body150187_)))
                                          (gx#core-cons*
                                           _form150148_
                                           (gx#stx-map1
                                            _generate150150_
                                            _hd150185_)
                                           _body150187_)
                                          (_E150153150165_)))))
                                (_E150153150165_))))
                        (_E150153150165_)))))
            (_E150152150189_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150239_)
        (let ((_form150241_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150239_ _form150241_))))
    (define gx#macro-expand-let-values
      (lambda _g157103_
        (let ((_g157102_ (##length _g157103_)))
          (cond ((##fx= _g157102_ 1)
                 (apply (lambda (_stx150239_)
                          (gx#macro-expand-let-values__0 _stx150239_))
                        _g157103_))
                ((##fx= _g157102_ 2)
                 (apply (lambda (_stx150243_ _form150244_)
                          (gx#macro-expand-let-values__%
                           _stx150243_
                           _form150244_))
                        _g157103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157103_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150144_)
        (gx#macro-expand-let-values__% _stx150144_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150142_)
        (gx#macro-expand-let-values__% _stx150142_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150033_)
        (let* ((_e150034150060_ _stx150033_)
               (_E150046150064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150034150060_)))
               (_E150036150106_
                (lambda ()
                  (if (gx#stx-pair? _e150034150060_)
                      (let ((_e150047150068_ (gx#syntax-e _e150034150060_)))
                        (let ((_hd150048150071_ (##car _e150047150068_))
                              (_tl150049150073_ (##cdr _e150047150068_)))
                          (if (gx#stx-pair? _tl150049150073_)
                              (let ((_e150050150076_
                                     (gx#syntax-e _tl150049150073_)))
                                (let ((_hd150051150079_
                                       (##car _e150050150076_))
                                      (_tl150052150081_
                                       (##cdr _e150050150076_)))
                                  (let ((_test150084_ _hd150051150079_))
                                    (if (gx#stx-pair? _tl150052150081_)
                                        (let ((_e150053150086_
                                               (gx#syntax-e _tl150052150081_)))
                                          (let ((_hd150054150089_
                                                 (##car _e150053150086_))
                                                (_tl150055150091_
                                                 (##cdr _e150053150086_)))
                                            (let ((_K150094_ _hd150054150089_))
                                              (if (gx#stx-pair?
                                                   _tl150055150091_)
                                                  (let ((_e150056150096_
                                                         (gx#syntax-e
                                                          _tl150055150091_)))
                                                    (let ((_hd150057150099_
                                                           (##car _e150056150096_))
                                                          (_tl150058150101_
                                                           (##cdr _e150056150096_)))
                                                      (let ((_E150104_
                                                             _hd150057150099_))
                                                        (if (gx#stx-null?
                                                             _tl150058150101_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150084_
                         _K150094_
                         _E150104_)
                        (_E150046150064_))
                    (_E150046150064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150046150064_)))))
                                        (_E150046150064_)))))
                              (_E150046150064_))))
                      (_E150046150064_))))
               (_E150035150138_
                (lambda ()
                  (if (gx#stx-pair? _e150034150060_)
                      (let ((_e150037150110_ (gx#syntax-e _e150034150060_)))
                        (let ((_hd150038150113_ (##car _e150037150110_))
                              (_tl150039150115_ (##cdr _e150037150110_)))
                          (if (gx#stx-pair? _tl150039150115_)
                              (let ((_e150040150118_
                                     (gx#syntax-e _tl150039150115_)))
                                (let ((_hd150041150121_
                                       (##car _e150040150118_))
                                      (_tl150042150123_
                                       (##cdr _e150040150118_)))
                                  (let ((_test150126_ _hd150041150121_))
                                    (if (gx#stx-pair? _tl150042150123_)
                                        (let ((_e150043150128_
                                               (gx#syntax-e _tl150042150123_)))
                                          (let ((_hd150044150131_
                                                 (##car _e150043150128_))
                                                (_tl150045150133_
                                                 (##cdr _e150043150128_)))
                                            (let ((_K150136_ _hd150044150131_))
                                              (if (gx#stx-null?
                                                   _tl150045150133_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150126_
                                                       _K150136_
                                                       '#!void)
                                                      (_E150036150106_))
                                                  (_E150036150106_)))))
                                        (_E150036150106_)))))
                              (_E150036150106_))))
                      (_E150036150106_)))))
          (_E150035150138_))))
    (define gx#free-identifier=?
      (lambda (_xid150021_ _yid150022_)
        (let ((_xe150024_ (gx#resolve-identifier__0 _xid150021_))
              (_ye150025_ (gx#resolve-identifier__0 _yid150022_)))
          (if (and _xe150024_ _ye150025_)
              (let ((_$e150027_ (eq? _xe150024_ _ye150025_)))
                (if _$e150027_
                    _$e150027_
                    (if (class-instance? gx#binding::t _xe150024_)
                        (if (class-instance? gx#binding::t _ye150025_)
                            (eq? (unchecked-slot-ref _xe150024_ 'id)
                                 (unchecked-slot-ref _ye150025_ 'id))
                            '#f)
                        '#f)))
              (if (or _xe150024_ _ye150025_)
                  '#f
                  (gx#stx-eq? _xid150021_ _yid150022_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150005_ _yid150006_)
        (letrec ((_context150008_
                  (lambda (_e150019_)
                    (if (##structure-direct-instance-of?
                         _e150019_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150019_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150009_
                  (lambda (_e150017_)
                    (if (symbol? _e150017_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150017_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150017_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150017_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150010_
                  (lambda (_e150015_)
                    (if (symbol? _e150015_)
                        _e150015_
                        (gx#syntax-local-unwrap _e150015_)))))
          (let ((_x150012_ (_unwrap150010_ _xid150005_))
                (_y150013_ (_unwrap150010_ _yid150006_)))
            (if (gx#stx-eq? _x150012_ _y150013_)
                (if (eq? (_context150008_ _x150012_)
                         (_context150008_ _y150013_))
                    (equal? (_marks150009_ _x150012_)
                            (_marks150009_ _y150013_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150003_)
        (if (gx#identifier? _stx150003_)
            (gx#core-identifier=? _stx150003_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150001_)
        (if (gx#identifier? _stx150001_)
            (gx#core-identifier=? _stx150001_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x149999_)
        (if (gx#identifier? _x149999_)
            (if (not (gx#underscore? _x149999_)) _x149999_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx149945_ _where149946_)
        (let _lp149948_ ((_rest149950_ (gx#syntax->list _stx149945_)))
          (let* ((_rest149951149959_ _rest149950_)
                 (_else149953149967_ (lambda () '#t))
                 (_K149955149977_
                  (lambda (_rest149970_ _hd149971_)
                    (if (not (gx#identifier? _hd149971_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where149946_
                         _hd149971_)
                        (if (find (lambda (_g149972149974_)
                                    (gx#bound-identifier=?
                                     _g149972149974_
                                     _hd149971_))
                                  _rest149970_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where149946_
                             _hd149971_)
                            (_lp149948_ _rest149970_))))))
            (if (##pair? _rest149951149959_)
                (let ((_hd149956149980_ (##car _rest149951149959_))
                      (_tl149957149982_ (##cdr _rest149951149959_)))
                  (let* ((_hd149985_ _hd149956149980_)
                         (_rest149987_ _tl149957149982_))
                    (_K149955149977_ _rest149987_ _hd149985_)))
                (_else149953149967_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx149992_)
        (let ((_where149994_ _stx149992_))
          (gx#check-duplicate-identifiers__% _stx149992_ _where149994_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157105_
        (let ((_g157104_ (##length _g157105_)))
          (cond ((##fx= _g157104_ 1)
                 (apply (lambda (_stx149992_)
                          (gx#check-duplicate-identifiers__0 _stx149992_))
                        _g157105_))
                ((##fx= _g157104_ 2)
                 (apply (lambda (_stx149996_ _where149997_)
                          (gx#check-duplicate-identifiers__%
                           _stx149996_
                           _where149997_))
                        _g157105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157105_))))))
    (define gx#core-bind-values?
      (lambda (_stx149937_)
        (gx#stx-andmap
         (lambda (_x149939_)
           (let ((_$e149941_ (gx#identifier? _x149939_)))
             (if _$e149941_ _$e149941_ (gx#stx-false? _x149939_))))
         _stx149937_)))
    (define gx#core-bind-values!__%
      (lambda (_stx149901_ _rebind?149902_ _phi149903_ _ctx149904_)
        (gx#stx-for-each1
         (lambda (_id149906_)
           (if (gx#identifier? _id149906_)
               (gx#core-bind-runtime!__%
                _id149906_
                _rebind?149902_
                _phi149903_
                _ctx149904_)
               '#!void))
         _stx149901_)))
    (define gx#core-bind-values!__0
      (lambda (_stx149911_)
        (let* ((_rebind?149913_ '#f)
               (_phi149915_ (gx#current-expander-phi))
               (_ctx149917_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149911_
           _rebind?149913_
           _phi149915_
           _ctx149917_))))
    (define gx#core-bind-values!__1
      (lambda (_stx149919_ _rebind?149920_)
        (let* ((_phi149922_ (gx#current-expander-phi))
               (_ctx149924_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149919_
           _rebind?149920_
           _phi149922_
           _ctx149924_))))
    (define gx#core-bind-values!__2
      (lambda (_stx149926_ _rebind?149927_ _phi149928_)
        (let ((_ctx149930_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149926_
           _rebind?149927_
           _phi149928_
           _ctx149930_))))
    (define gx#core-bind-values!
      (lambda _g157107_
        (let ((_g157106_ (##length _g157107_)))
          (cond ((##fx= _g157106_ 1)
                 (apply (lambda (_stx149911_)
                          (gx#core-bind-values!__0 _stx149911_))
                        _g157107_))
                ((##fx= _g157106_ 2)
                 (apply (lambda (_stx149919_ _rebind?149920_)
                          (gx#core-bind-values!__1
                           _stx149919_
                           _rebind?149920_))
                        _g157107_))
                ((##fx= _g157106_ 3)
                 (apply (lambda (_stx149926_ _rebind?149927_ _phi149928_)
                          (gx#core-bind-values!__2
                           _stx149926_
                           _rebind?149927_
                           _phi149928_))
                        _g157107_))
                ((##fx= _g157106_ 4)
                 (apply (lambda (_stx149932_
                                 _rebind?149933_
                                 _phi149934_
                                 _ctx149935_)
                          (gx#core-bind-values!__%
                           _stx149932_
                           _rebind?149933_
                           _phi149934_
                           _ctx149935_))
                        _g157107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157107_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx149896_)
        (gx#stx-map1
         (lambda (_x149898_)
           (if (gx#identifier? _x149898_)
               (gx#core-quote-syntax__0 _x149898_)
               '#f))
         _stx149896_)))
    (define gx#core-runtime-ref?
      (lambda (_stx149889_)
        (if (gx#identifier? _stx149889_)
            (let* ((_bind149891_ (gx#resolve-identifier__0 _stx149889_))
                   (_$e149893_ (not _bind149891_)))
              (if _$e149893_
                  _$e149893_
                  (class-instance? gx#runtime-binding::t _bind149891_)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id149881_ _form149882_)
        (let ((_bind149884_ (gx#resolve-identifier__0 _id149881_)))
          (if (class-instance? gx#runtime-binding::t _bind149884_)
              (gx#core-quote-syntax__0 _id149881_)
              (if (not _bind149884_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id149881_)))
                      (gx#core-quote-syntax__0 _id149881_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form149882_
                       _id149881_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form149882_
                   _id149881_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id149840_ _rebind?149841_ _phi149842_ _ctx149843_)
        (let* ((_key149845_ (gx#core-identifier-key _id149840_))
               (_eid149847_
                (gx#make-binding-id__%
                 _key149845_
                 '#f
                 _phi149842_
                 _ctx149843_))
               (_bind149849_
                (if (class-instance? gx#module-context::t _ctx149843_)
                    (let ((__obj157079
                           (##structure gx#module-binding::t '#f '#f '#f '#f)))
                      (class-instance-init!
                       __obj157079
                       _eid149847_
                       _key149845_
                       _phi149842_
                       _ctx149843_)
                      __obj157079)
                    (if (class-instance? gx#top-context::t _ctx149843_)
                        (let ((__obj157080
                               (##structure gx#top-binding::t '#f '#f '#f)))
                          (class-instance-init!
                           __obj157080
                           _eid149847_
                           _key149845_
                           _phi149842_)
                          __obj157080)
                        (if (class-instance? gx#local-context::t _ctx149843_)
                            (let ((__obj157081
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f)))
                              (class-instance-init!
                               __obj157081
                               _eid149847_
                               _key149845_
                               _phi149842_)
                              __obj157081)
                            (let ((__obj157082
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f)))
                              (class-instance-init!
                               __obj157082
                               _eid149847_
                               _key149845_
                               _phi149842_)
                              __obj157082))))))
          (gx#bind-identifier!__%
           _id149840_
           _bind149849_
           _rebind?149841_
           _phi149842_
           _ctx149843_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id149855_)
        (let* ((_rebind?149857_ '#f)
               (_phi149859_ (gx#current-expander-phi))
               (_ctx149861_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149855_
           _rebind?149857_
           _phi149859_
           _ctx149861_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id149863_ _rebind?149864_)
        (let* ((_phi149866_ (gx#current-expander-phi))
               (_ctx149868_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149863_
           _rebind?149864_
           _phi149866_
           _ctx149868_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id149870_ _rebind?149871_ _phi149872_)
        (let ((_ctx149874_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149870_
           _rebind?149871_
           _phi149872_
           _ctx149874_))))
    (define gx#core-bind-runtime!
      (lambda _g157109_
        (let ((_g157108_ (##length _g157109_)))
          (cond ((##fx= _g157108_ 1)
                 (apply (lambda (_id149855_)
                          (gx#core-bind-runtime!__0 _id149855_))
                        _g157109_))
                ((##fx= _g157108_ 2)
                 (apply (lambda (_id149863_ _rebind?149864_)
                          (gx#core-bind-runtime!__1
                           _id149863_
                           _rebind?149864_))
                        _g157109_))
                ((##fx= _g157108_ 3)
                 (apply (lambda (_id149870_ _rebind?149871_ _phi149872_)
                          (gx#core-bind-runtime!__2
                           _id149870_
                           _rebind?149871_
                           _phi149872_))
                        _g157109_))
                ((##fx= _g157108_ 4)
                 (apply (lambda (_id149876_
                                 _rebind?149877_
                                 _phi149878_
                                 _ctx149879_)
                          (gx#core-bind-runtime!__%
                           _id149876_
                           _rebind?149877_
                           _phi149878_
                           _ctx149879_))
                        _g157109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157109_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id149795_ _eid149796_ _rebind?149797_ _phi149798_ _ctx149799_)
        (let* ((_key149801_ (gx#core-identifier-key _id149795_))
               (_bind149803_
                (if (class-instance? gx#module-context::t _ctx149799_)
                    (let ((__obj157083
                           (##structure gx#module-binding::t '#f '#f '#f '#f)))
                      (class-instance-init!
                       __obj157083
                       _eid149796_
                       _key149801_
                       _phi149798_
                       _ctx149799_)
                      __obj157083)
                    (if (class-instance? gx#top-context::t _ctx149799_)
                        (let ((__obj157084
                               (##structure gx#top-binding::t '#f '#f '#f)))
                          (class-instance-init!
                           __obj157084
                           _eid149796_
                           _key149801_
                           _phi149798_)
                          __obj157084)
                        (let ((__obj157085
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f)))
                          (class-instance-init!
                           __obj157085
                           _eid149796_
                           _key149801_
                           _phi149798_)
                          __obj157085)))))
          (gx#bind-identifier!__%
           _id149795_
           _bind149803_
           _rebind?149797_
           _phi149798_
           _ctx149799_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id149809_ _eid149810_)
        (let* ((_rebind?149812_ '#f)
               (_phi149814_ (gx#current-expander-phi))
               (_ctx149816_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149809_
           _eid149810_
           _rebind?149812_
           _phi149814_
           _ctx149816_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id149818_ _eid149819_ _rebind?149820_)
        (let* ((_phi149822_ (gx#current-expander-phi))
               (_ctx149824_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149818_
           _eid149819_
           _rebind?149820_
           _phi149822_
           _ctx149824_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id149826_ _eid149827_ _rebind?149828_ _phi149829_)
        (let ((_ctx149831_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149826_
           _eid149827_
           _rebind?149828_
           _phi149829_
           _ctx149831_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157111_
        (let ((_g157110_ (##length _g157111_)))
          (cond ((##fx= _g157110_ 2)
                 (apply (lambda (_id149809_ _eid149810_)
                          (gx#core-bind-runtime-reference!__0
                           _id149809_
                           _eid149810_))
                        _g157111_))
                ((##fx= _g157110_ 3)
                 (apply (lambda (_id149818_ _eid149819_ _rebind?149820_)
                          (gx#core-bind-runtime-reference!__1
                           _id149818_
                           _eid149819_
                           _rebind?149820_))
                        _g157111_))
                ((##fx= _g157110_ 4)
                 (apply (lambda (_id149826_
                                 _eid149827_
                                 _rebind?149828_
                                 _phi149829_)
                          (gx#core-bind-runtime-reference!__2
                           _id149826_
                           _eid149827_
                           _rebind?149828_
                           _phi149829_))
                        _g157111_))
                ((##fx= _g157110_ 5)
                 (apply (lambda (_id149833_
                                 _eid149834_
                                 _rebind?149835_
                                 _phi149836_
                                 _ctx149837_)
                          (gx#core-bind-runtime-reference!__%
                           _id149833_
                           _eid149834_
                           _rebind?149835_
                           _phi149836_
                           _ctx149837_))
                        _g157111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157111_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149755_ _eid149756_ _rebind?149757_ _phi149758_ _ctx149759_)
        (gx#bind-identifier!__%
         _id149755_
         (let ((__obj157086 (##structure gx#extern-binding::t '#f '#f '#f)))
           (class-instance-init!
            __obj157086
            _eid149756_
            (gx#core-identifier-key _id149755_)
            _phi149758_)
           __obj157086)
         _rebind?149757_
         _phi149758_
         _ctx149759_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149764_ _eid149765_)
        (let* ((_rebind?149767_ '#f)
               (_phi149769_ (gx#current-expander-phi))
               (_ctx149771_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149764_
           _eid149765_
           _rebind?149767_
           _phi149769_
           _ctx149771_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149773_ _eid149774_ _rebind?149775_)
        (let* ((_phi149777_ (gx#current-expander-phi))
               (_ctx149779_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149773_
           _eid149774_
           _rebind?149775_
           _phi149777_
           _ctx149779_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149781_ _eid149782_ _rebind?149783_ _phi149784_)
        (let ((_ctx149786_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149781_
           _eid149782_
           _rebind?149783_
           _phi149784_
           _ctx149786_))))
    (define gx#core-bind-extern!
      (lambda _g157113_
        (let ((_g157112_ (##length _g157113_)))
          (cond ((##fx= _g157112_ 2)
                 (apply (lambda (_id149764_ _eid149765_)
                          (gx#core-bind-extern!__0 _id149764_ _eid149765_))
                        _g157113_))
                ((##fx= _g157112_ 3)
                 (apply (lambda (_id149773_ _eid149774_ _rebind?149775_)
                          (gx#core-bind-extern!__1
                           _id149773_
                           _eid149774_
                           _rebind?149775_))
                        _g157113_))
                ((##fx= _g157112_ 4)
                 (apply (lambda (_id149781_
                                 _eid149782_
                                 _rebind?149783_
                                 _phi149784_)
                          (gx#core-bind-extern!__2
                           _id149781_
                           _eid149782_
                           _rebind?149783_
                           _phi149784_))
                        _g157113_))
                ((##fx= _g157112_ 5)
                 (apply (lambda (_id149788_
                                 _eid149789_
                                 _rebind?149790_
                                 _phi149791_
                                 _ctx149792_)
                          (gx#core-bind-extern!__%
                           _id149788_
                           _eid149789_
                           _rebind?149790_
                           _phi149791_
                           _ctx149792_))
                        _g157113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157113_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149709_ _e149710_ _rebind?149711_ _phi149712_ _ctx149713_)
        (gx#bind-identifier!__%
         _id149709_
         (let ((_key149718_ (gx#core-identifier-key _id149709_))
               (_e149719_
                (if (or (class-instance? gx#expander::t _e149710_)
                        (class-instance? gx#expander-context::t _e149710_))
                    _e149710_
                    (let ((__obj157087
                           (##structure gx#user-expander::t '#f '#f '#f)))
                      (class-instance-init!
                       __obj157087
                       _e149710_
                       _ctx149713_
                       _phi149712_)
                      __obj157087))))
           (let ((__obj157088
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f)))
             (class-instance-init!
              __obj157088
              (gx#make-binding-id__% _key149718_ '#t _phi149712_ _ctx149713_)
              _key149718_
              _phi149712_
              _e149719_)
             __obj157088))
         _rebind?149711_
         _phi149712_
         _ctx149713_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149724_ _e149725_)
        (let* ((_rebind?149727_ '#f)
               (_phi149729_ (gx#current-expander-phi))
               (_ctx149731_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149724_
           _e149725_
           _rebind?149727_
           _phi149729_
           _ctx149731_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149733_ _e149734_ _rebind?149735_)
        (let* ((_phi149737_ (gx#current-expander-phi))
               (_ctx149739_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149733_
           _e149734_
           _rebind?149735_
           _phi149737_
           _ctx149739_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149741_ _e149742_ _rebind?149743_ _phi149744_)
        (let ((_ctx149746_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149741_
           _e149742_
           _rebind?149743_
           _phi149744_
           _ctx149746_))))
    (define gx#core-bind-syntax!
      (lambda _g157115_
        (let ((_g157114_ (##length _g157115_)))
          (cond ((##fx= _g157114_ 2)
                 (apply (lambda (_id149724_ _e149725_)
                          (gx#core-bind-syntax!__0 _id149724_ _e149725_))
                        _g157115_))
                ((##fx= _g157114_ 3)
                 (apply (lambda (_id149733_ _e149734_ _rebind?149735_)
                          (gx#core-bind-syntax!__1
                           _id149733_
                           _e149734_
                           _rebind?149735_))
                        _g157115_))
                ((##fx= _g157114_ 4)
                 (apply (lambda (_id149741_
                                 _e149742_
                                 _rebind?149743_
                                 _phi149744_)
                          (gx#core-bind-syntax!__2
                           _id149741_
                           _e149742_
                           _rebind?149743_
                           _phi149744_))
                        _g157115_))
                ((##fx= _g157114_ 5)
                 (apply (lambda (_id149748_
                                 _e149749_
                                 _rebind?149750_
                                 _phi149751_
                                 _ctx149752_)
                          (gx#core-bind-syntax!__%
                           _id149748_
                           _e149749_
                           _rebind?149750_
                           _phi149751_
                           _ctx149752_))
                        _g157115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157115_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149692_ _e149693_ _rebind?149694_)
        (gx#core-bind-syntax!__%
         _id149692_
         _e149693_
         _rebind?149694_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149699_ _e149700_)
        (let ((_rebind?149702_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149699_
           _e149700_
           _rebind?149702_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157117_
        (let ((_g157116_ (##length _g157117_)))
          (cond ((##fx= _g157116_ 2)
                 (apply (lambda (_id149699_ _e149700_)
                          (gx#core-bind-root-syntax!__0 _id149699_ _e149700_))
                        _g157117_))
                ((##fx= _g157116_ 3)
                 (apply (lambda (_id149704_ _e149705_ _rebind?149706_)
                          (gx#core-bind-root-syntax!__%
                           _id149704_
                           _e149705_
                           _rebind?149706_))
                        _g157117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157117_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149650_
               _alias-id149651_
               _rebind?149652_
               _phi149653_
               _ctx149654_)
        (gx#bind-identifier!__%
         _id149650_
         (let* ((_key149656_ (gx#core-identifier-key _id149650_))
                (__obj157089
                 (##structure gx#alias-binding::t '#f '#f '#f '#f)))
           (class-instance-init!
            __obj157089
            (gx#make-binding-id__% _key149656_ '#t _phi149653_ _ctx149654_)
            _key149656_
            _phi149653_
            _alias-id149651_)
           __obj157089)
         _rebind?149652_
         _phi149653_
         _ctx149654_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149661_ _alias-id149662_)
        (let* ((_rebind?149664_ '#f)
               (_phi149666_ (gx#current-expander-phi))
               (_ctx149668_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149661_
           _alias-id149662_
           _rebind?149664_
           _phi149666_
           _ctx149668_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149670_ _alias-id149671_ _rebind?149672_)
        (let* ((_phi149674_ (gx#current-expander-phi))
               (_ctx149676_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149670_
           _alias-id149671_
           _rebind?149672_
           _phi149674_
           _ctx149676_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149678_ _alias-id149679_ _rebind?149680_ _phi149681_)
        (let ((_ctx149683_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149678_
           _alias-id149679_
           _rebind?149680_
           _phi149681_
           _ctx149683_))))
    (define gx#core-bind-alias!
      (lambda _g157119_
        (let ((_g157118_ (##length _g157119_)))
          (cond ((##fx= _g157118_ 2)
                 (apply (lambda (_id149661_ _alias-id149662_)
                          (gx#core-bind-alias!__0 _id149661_ _alias-id149662_))
                        _g157119_))
                ((##fx= _g157118_ 3)
                 (apply (lambda (_id149670_ _alias-id149671_ _rebind?149672_)
                          (gx#core-bind-alias!__1
                           _id149670_
                           _alias-id149671_
                           _rebind?149672_))
                        _g157119_))
                ((##fx= _g157118_ 4)
                 (apply (lambda (_id149678_
                                 _alias-id149679_
                                 _rebind?149680_
                                 _phi149681_)
                          (gx#core-bind-alias!__2
                           _id149678_
                           _alias-id149679_
                           _rebind?149680_
                           _phi149681_))
                        _g157119_))
                ((##fx= _g157118_ 5)
                 (apply (lambda (_id149685_
                                 _alias-id149686_
                                 _rebind?149687_
                                 _phi149688_
                                 _ctx149689_)
                          (gx#core-bind-alias!__%
                           _id149685_
                           _alias-id149686_
                           _rebind?149687_
                           _phi149688_
                           _ctx149689_))
                        _g157119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157119_))))))
    (define gx#make-binding-id__%
      (lambda (_key149607_ _syntax?149608_ _phi149609_ _ctx149610_)
        (if (uninterned-symbol? _key149607_)
            (gensym 'L)
            (if (pair? _key149607_)
                (gensym (car _key149607_))
                (if (class-instance? gx#top-context::t _ctx149610_)
                    (let ((_ns149612_
                           (gx#core-context-namespace__% _ctx149610_)))
                      (if (and (fxzero? _phi149609_) (not _syntax?149608_))
                          (if _ns149612_
                              (make-symbol__1 _ns149612_ '"#" _key149607_)
                              _key149607_)
                          (if _syntax?149608_
                              (make-symbol__1
                               (let ((_$e149614_ _ns149612_))
                                 (if _$e149614_ _$e149614_ '""))
                               '"[:"
                               (number->string _phi149609_)
                               '":]#"
                               _key149607_)
                              (make-symbol__1
                               (let ((_$e149617_ _ns149612_))
                                 (if _$e149617_ _$e149617_ '""))
                               '"["
                               (number->string _phi149609_)
                               '"]#"
                               _key149607_))))
                    (gensym _key149607_))))))
    (define gx#make-binding-id__0
      (lambda (_key149623_)
        (let* ((_syntax?149625_ '#f)
               (_phi149627_ (gx#current-expander-phi))
               (_ctx149629_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149623_
           _syntax?149625_
           _phi149627_
           _ctx149629_))))
    (define gx#make-binding-id__1
      (lambda (_key149631_ _syntax?149632_)
        (let* ((_phi149634_ (gx#current-expander-phi))
               (_ctx149636_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149631_
           _syntax?149632_
           _phi149634_
           _ctx149636_))))
    (define gx#make-binding-id__2
      (lambda (_key149638_ _syntax?149639_ _phi149640_)
        (let ((_ctx149642_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149638_
           _syntax?149639_
           _phi149640_
           _ctx149642_))))
    (define gx#make-binding-id
      (lambda _g157121_
        (let ((_g157120_ (##length _g157121_)))
          (cond ((##fx= _g157120_ 1)
                 (apply (lambda (_key149623_)
                          (gx#make-binding-id__0 _key149623_))
                        _g157121_))
                ((##fx= _g157120_ 2)
                 (apply (lambda (_key149631_ _syntax?149632_)
                          (gx#make-binding-id__1 _key149631_ _syntax?149632_))
                        _g157121_))
                ((##fx= _g157120_ 3)
                 (apply (lambda (_key149638_ _syntax?149639_ _phi149640_)
                          (gx#make-binding-id__2
                           _key149638_
                           _syntax?149639_
                           _phi149640_))
                        _g157121_))
                ((##fx= _g157120_ 4)
                 (apply (lambda (_key149644_
                                 _syntax?149645_
                                 _phi149646_
                                 _ctx149647_)
                          (gx#make-binding-id__%
                           _key149644_
                           _syntax?149645_
                           _phi149646_
                           _ctx149647_))
                        _g157121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157121_))))))))
