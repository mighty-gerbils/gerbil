(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707647933)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152709_)
        (letrec ((_expand-special152711_
                  (lambda (_hd152713_ _K152714_ _rest152715_ _r152716_)
                    (_K152714_
                     _rest152715_
                     (cons (gx#core-expand-top _hd152713_) _r152716_)))))
          (gx#core-expand-block__0 _stx152709_ _expand-special152711_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152462_)
        (letrec ((_expand-special152464_
                  (lambda (_hd152584_ _K152585_ _rest152586_ _r152587_)
                    (let* ((_K152591_
                            (lambda (_e152589_)
                              (_K152585_
                               _rest152586_
                               (cons _e152589_ _r152587_))))
                           (_e152592152621_ _hd152584_)
                           (_E152616152625_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152592152621_)))
                           (_E152612152637_
                            (lambda ()
                              (if (gx#stx-pair? _e152592152621_)
                                  (let ((_e152617152629_
                                         (gx#syntax-e _e152592152621_)))
                                    (let ((_hd152618152632_
                                           (##car _e152617152629_))
                                          (_tl152619152634_
                                           (##cdr _e152617152629_)))
                                      (if (and (gx#identifier?
                                                _hd152618152632_)
                                               (gx#core-identifier=?
                                                _hd152618152632_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152591_
                                               (gx#core-expand-define-runtime%
                                                _hd152584_))
                                              (_E152616152625_))
                                          (_E152616152625_))))
                                  (_E152616152625_))))
                           (_E152608152649_
                            (lambda ()
                              (if (gx#stx-pair? _e152592152621_)
                                  (let ((_e152613152641_
                                         (gx#syntax-e _e152592152621_)))
                                    (let ((_hd152614152644_
                                           (##car _e152613152641_))
                                          (_tl152615152646_
                                           (##cdr _e152613152641_)))
                                      (if (and (gx#identifier?
                                                _hd152614152644_)
                                               (gx#core-identifier=?
                                                _hd152614152644_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152591_
                                               (gx#core-expand-define-alias%
                                                _hd152584_))
                                              (_E152612152637_))
                                          (_E152612152637_))))
                                  (_E152612152637_))))
                           (_E152598152661_
                            (lambda ()
                              (if (gx#stx-pair? _e152592152621_)
                                  (let ((_e152609152653_
                                         (gx#syntax-e _e152592152621_)))
                                    (let ((_hd152610152656_
                                           (##car _e152609152653_))
                                          (_tl152611152658_
                                           (##cdr _e152609152653_)))
                                      (if (and (gx#identifier?
                                                _hd152610152656_)
                                               (gx#core-identifier=?
                                                _hd152610152656_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152591_
                                               (gx#core-expand-define-syntax%
                                                _hd152584_))
                                              (_E152608152649_))
                                          (_E152608152649_))))
                                  (_E152608152649_))))
                           (_E152594152693_
                            (lambda ()
                              (if (gx#stx-pair? _e152592152621_)
                                  (let ((_e152599152665_
                                         (gx#syntax-e _e152592152621_)))
                                    (let ((_hd152600152668_
                                           (##car _e152599152665_))
                                          (_tl152601152670_
                                           (##cdr _e152599152665_)))
                                      (if (and (gx#identifier?
                                                _hd152600152668_)
                                               (gx#core-identifier=?
                                                _hd152600152668_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152601152670_)
                                              (let ((_e152602152673_
                                                     (gx#syntax-e
                                                      _tl152601152670_)))
                                                (let ((_hd152603152676_
                                                       (##car _e152602152673_))
                                                      (_tl152604152678_
                                                       (##cdr _e152602152673_)))
                                                  (let ((_hd-bind152681_
                                                         _hd152603152676_))
                                                    (if (gx#stx-pair?
                                                         _tl152604152678_)
                                                        (let ((_e152605152683_
                                                               (gx#syntax-e
                                                                _tl152604152678_)))
                                                          (let ((_hd152606152686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152605152683_))
                        (_tl152607152688_ (##cdr _e152605152683_)))
                    (let ((_expr152691_ _hd152606152686_))
                      (if (gx#stx-null? _tl152607152688_)
                          (if (gx#core-bind-values? _hd-bind152681_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152681_)
                                (_K152591_ _hd152584_))
                              (_E152598152661_))
                          (_E152598152661_)))))
                (_E152598152661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152598152661_))
                                          (_E152598152661_))))
                                  (_E152598152661_))))
                           (_E152593152705_
                            (lambda ()
                              (if (gx#stx-pair? _e152592152621_)
                                  (let ((_e152595152697_
                                         (gx#syntax-e _e152592152621_)))
                                    (let ((_hd152596152700_
                                           (##car _e152595152697_))
                                          (_tl152597152702_
                                           (##cdr _e152595152697_)))
                                      (if (and (gx#identifier?
                                                _hd152596152700_)
                                               (gx#core-identifier=?
                                                _hd152596152700_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152591_
                                               (gx#core-expand-begin-syntax%
                                                _hd152584_))
                                              (_E152594152693_))
                                          (_E152594152693_))))
                                  (_E152594152693_)))))
                      (_E152593152705_))))
                 (_eval-body152465_
                  (lambda (_rbody152473_)
                    (let _lp152475_ ((_rest152477_ _rbody152473_)
                                     (_body152478_ '())
                                     (_ebody152479_ '()))
                      (let* ((_rest152480152488_ _rest152477_)
                             (_else152482152496_
                              (lambda ()
                                (values _body152478_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152479_)
                                          (gx#stx-source _stx152462_))))))
                             (_K152484152572_
                              (lambda (_rest152499_ _hd152500_)
                                (let* ((_e152501152518_ _hd152500_)
                                       (_E152513152522_
                                        (lambda ()
                                          (_lp152475_
                                           _rest152499_
                                           (cons _hd152500_ _body152478_)
                                           (cons _hd152500_ _ebody152479_))))
                                       (_E152503152534_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152501152518_)
                                              (let ((_e152514152526_
                                                     (gx#syntax-e
                                                      _e152501152518_)))
                                                (let ((_hd152515152529_
                                                       (##car _e152514152526_))
                                                      (_tl152516152531_
                                                       (##cdr _e152514152526_)))
                                                  (if (and (gx#identifier?
                                                            _hd152515152529_)
                                                           (gx#core-identifier=?
                                                            _hd152515152529_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152475_
                                                           _rest152499_
                                                           (cons _hd152500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152478_)
                   _ebody152479_)
                  (_E152513152522_))
              (_E152513152522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152513152522_))))
                                       (_E152502152568_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152501152518_)
                                              (let ((_e152504152538_
                                                     (gx#syntax-e
                                                      _e152501152518_)))
                                                (let ((_hd152505152541_
                                                       (##car _e152504152538_))
                                                      (_tl152506152543_
                                                       (##cdr _e152504152538_)))
                                                  (if (and (gx#identifier?
                                                            _hd152505152541_)
                                                           (gx#core-identifier=?
                                                            _hd152505152541_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152506152543_)
                                                          (let ((_e152507152546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152506152543_)))
                    (let ((_hd152508152549_ (##car _e152507152546_))
                          (_tl152509152551_ (##cdr _e152507152546_)))
                      (let ((_hd-bind152554_ _hd152508152549_))
                        (if (gx#stx-pair? _tl152509152551_)
                            (let ((_e152510152556_
                                   (gx#syntax-e _tl152509152551_)))
                              (let ((_hd152511152559_ (##car _e152510152556_))
                                    (_tl152512152561_ (##cdr _e152510152556_)))
                                (let ((_expr152564_ _hd152511152559_))
                                  (if (gx#stx-null? _tl152512152561_)
                                      (if '#t
                                          (let ((_ehd152566_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152554_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152564_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152500_))))
                                            (_lp152475_
                                             _rest152499_
                                             (cons _ehd152566_ _body152478_)
                                             (cons _ehd152566_ _ebody152479_)))
                                          (_E152503152534_))
                                      (_E152503152534_)))))
                            (_E152503152534_)))))
                  (_E152503152534_))
              (_E152503152534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152503152534_)))))
                                  (_E152502152568_)))))
                        (if (##pair? _rest152480152488_)
                            (let ((_hd152485152575_ (##car _rest152480152488_))
                                  (_tl152486152577_
                                   (##cdr _rest152480152488_)))
                              (let* ((_hd152580_ _hd152485152575_)
                                     (_rest152582_ _tl152486152577_))
                                (_K152484152572_ _rest152582_ _hd152580_)))
                            (_else152482152496_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152468_
                     (gx#core-expand-block__1
                      _stx152462_
                      _expand-special152464_
                      '#f))
                    (_g157211_ (_eval-body152465_ _rbody152468_)))
               (begin
                 (let ((_g157212_
                        (if (##values? _g157211_)
                            (##vector-length _g157211_)
                            1)))
                   (if (not (##fx= _g157212_ 2))
                       (error "Context expects 2 values" _g157212_)))
                 (let ((_expanded-body152470_ (##vector-ref _g157211_ 0))
                       (_value152471_ (##vector-ref _g157211_ 1)))
                   (gx#core-quote-syntax__1
                    (if (class-instance?
                         gx#module-context::t
                         (gx#current-expander-context))
                        (gx#core-cons '%#begin-syntax _expanded-body152470_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152471_ '())))
                    (gx#stx-source _stx152462_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152432_)
        (let* ((_e152433152440_ _stx152432_)
               (_E152435152444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152433152440_)))
               (_E152434152458_
                (lambda ()
                  (if (gx#stx-pair? _e152433152440_)
                      (let ((_e152436152448_ (gx#syntax-e _e152433152440_)))
                        (let ((_hd152437152451_ (##car _e152436152448_))
                              (_tl152438152453_ (##cdr _e152436152448_)))
                          (let ((_body152456_ _tl152438152453_))
                            (if (gx#stx-list? _body152456_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152456_)
                                 (gx#stx-source _stx152432_))
                                (_E152435152444_)))))
                      (_E152435152444_)))))
          (_E152434152458_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152430_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152430_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152376_)
        (let* ((_e152377152390_ _stx152376_)
               (_E152379152394_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152377152390_)))
               (_E152378152426_
                (lambda ()
                  (if (gx#stx-pair? _e152377152390_)
                      (let ((_e152380152398_ (gx#syntax-e _e152377152390_)))
                        (let ((_hd152381152401_ (##car _e152380152398_))
                              (_tl152382152403_ (##cdr _e152380152398_)))
                          (if (gx#stx-pair? _tl152382152403_)
                              (let ((_e152383152406_
                                     (gx#syntax-e _tl152382152403_)))
                                (let ((_hd152384152409_
                                       (##car _e152383152406_))
                                      (_tl152385152411_
                                       (##cdr _e152383152406_)))
                                  (let ((_ann152414_ _hd152384152409_))
                                    (if (gx#stx-pair? _tl152385152411_)
                                        (let ((_e152386152416_
                                               (gx#syntax-e _tl152385152411_)))
                                          (let ((_hd152387152419_
                                                 (##car _e152386152416_))
                                                (_tl152388152421_
                                                 (##cdr _e152386152416_)))
                                            (let ((_expr152424_
                                                   _hd152387152419_))
                                              (if (gx#stx-null?
                                                   _tl152388152421_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152424_)
                                 '())))
               (gx#stx-source _stx152376_))
              (_E152379152394_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152379152394_)))))
                                        (_E152379152394_)))))
                              (_E152379152394_))))
                      (_E152379152394_)))))
          (_E152378152426_))))
    (define gx#core-expand-local-block
      (lambda (_stx152100_ _body152101_)
        (letrec ((_expand-special152103_
                  (lambda (_hd152371_ _K152372_ _rest152373_ _r152374_)
                    (_K152372_
                     '()
                     (cons (_expand-internal152104_ _hd152371_ _rest152373_)
                           _r152374_))))
                 (_expand-internal152104_
                  (lambda (_hd152367_ _rest152368_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152106_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152367_ _rest152368_))
                          (gx#stx-source _stx152100_))
                         _expand-internal-special152105_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157194
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157194)
                       __obj157194))))
                 (_expand-internal-special152105_
                  (lambda (_hd152262_ _K152263_ _rest152264_ _r152265_)
                    (let* ((_e152266152291_ _hd152262_)
                           (_E152286152295_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152266152291_)))
                           (_E152282152307_
                            (lambda ()
                              (if (gx#stx-pair? _e152266152291_)
                                  (let ((_e152287152299_
                                         (gx#syntax-e _e152266152291_)))
                                    (let ((_hd152288152302_
                                           (##car _e152287152299_))
                                          (_tl152289152304_
                                           (##cdr _e152287152299_)))
                                      (if (and (gx#identifier?
                                                _hd152288152302_)
                                               (gx#core-identifier=?
                                                _hd152288152302_
                                                '%#declare))
                                          (if '#t
                                              (_K152263_
                                               _rest152264_
                                               (cons (gx#core-expand-declare%
                                                      _hd152262_)
                                                     _r152265_))
                                              (_E152286152295_))
                                          (_E152286152295_))))
                                  (_E152286152295_))))
                           (_E152278152319_
                            (lambda ()
                              (if (gx#stx-pair? _e152266152291_)
                                  (let ((_e152283152311_
                                         (gx#syntax-e _e152266152291_)))
                                    (let ((_hd152284152314_
                                           (##car _e152283152311_))
                                          (_tl152285152316_
                                           (##cdr _e152283152311_)))
                                      (if (and (gx#identifier?
                                                _hd152284152314_)
                                               (gx#core-identifier=?
                                                _hd152284152314_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152262_)
                                                (_K152263_
                                                 _rest152264_
                                                 _r152265_))
                                              (_E152282152307_))
                                          (_E152282152307_))))
                                  (_E152282152307_))))
                           (_E152268152331_
                            (lambda ()
                              (if (gx#stx-pair? _e152266152291_)
                                  (let ((_e152279152323_
                                         (gx#syntax-e _e152266152291_)))
                                    (let ((_hd152280152326_
                                           (##car _e152279152323_))
                                          (_tl152281152328_
                                           (##cdr _e152279152323_)))
                                      (if (and (gx#identifier?
                                                _hd152280152326_)
                                               (gx#core-identifier=?
                                                _hd152280152326_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152262_)
                                                (_K152263_
                                                 _rest152264_
                                                 _r152265_))
                                              (_E152278152319_))
                                          (_E152278152319_))))
                                  (_E152278152319_))))
                           (_E152267152363_
                            (lambda ()
                              (if (gx#stx-pair? _e152266152291_)
                                  (let ((_e152269152335_
                                         (gx#syntax-e _e152266152291_)))
                                    (let ((_hd152270152338_
                                           (##car _e152269152335_))
                                          (_tl152271152340_
                                           (##cdr _e152269152335_)))
                                      (if (and (gx#identifier?
                                                _hd152270152338_)
                                               (gx#core-identifier=?
                                                _hd152270152338_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152271152340_)
                                              (let ((_e152272152343_
                                                     (gx#syntax-e
                                                      _tl152271152340_)))
                                                (let ((_hd152273152346_
                                                       (##car _e152272152343_))
                                                      (_tl152274152348_
                                                       (##cdr _e152272152343_)))
                                                  (let ((_hd-bind152351_
                                                         _hd152273152346_))
                                                    (if (gx#stx-pair?
                                                         _tl152274152348_)
                                                        (let ((_e152275152353_
                                                               (gx#syntax-e
                                                                _tl152274152348_)))
                                                          (let ((_hd152276152356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152275152353_))
                        (_tl152277152358_ (##cdr _e152275152353_)))
                    (let ((_expr152361_ _hd152276152356_))
                      (if (gx#stx-null? _tl152277152358_)
                          (if (gx#core-bind-values? _hd-bind152351_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152351_)
                                (_K152263_
                                 _rest152264_
                                 (cons _hd152262_ _r152265_)))
                              (_E152268152331_))
                          (_E152268152331_)))))
                (_E152268152331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152268152331_))
                                          (_E152268152331_))))
                                  (_E152268152331_)))))
                      (_E152267152363_))))
                 (_wrap-internal152106_
                  (lambda (_rbody152108_)
                    (let _lp152110_ ((_rest152112_ _rbody152108_)
                                     (_decls152113_ '())
                                     (_bind152114_ '())
                                     (_body152115_ '()))
                      (let* ((_e152116152123_ _rest152112_)
                             (_E152118152172_
                              (lambda ()
                                (let* ((_body152167_
                                        (let* ((_body152126152136_
                                                _body152115_)
                                               (_else152129152144_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152115_)
                                                   (gx#stx-source
                                                    _stx152100_)))))
                                          (let ((_K152134152164_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152100_)))
                                                (_K152131152150_
                                                 (lambda (_expr152148_)
                                                   _expr152148_)))
                                            (let ((_try-match152128152160_
                                                   (lambda ()
                                                     (if (##pair? _body152126152136_)
                                                         (let ((_tl152133152155_
                                                                (##cdr _body152126152136_))
                                                               (_hd152132152153_
                                                                (##car _body152126152136_)))
                                                           (if (##null? _tl152133152155_)
                                                               (let ((_expr152158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152132152153_))
                         (_K152131152150_ _expr152158_))
                       (_else152129152144_)))
                 (_else152129152144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152126152136_)
                                                  (_K152134152164_)
                                                  (_try-match152128152160_))))))
                                       (_body152169_
                                        (if (null? _bind152114_)
                                            _body152167_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152114_
                                                         (cons _body152167_
                                                               '())))
                                             (gx#stx-source _stx152100_)))))
                                  (if (null? _decls152113_)
                                      _body152169_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152113_
                                                   (cons _body152169_ '())))
                                       (gx#stx-source _stx152100_))))))
                             (_E152117152258_
                              (lambda ()
                                (if (gx#stx-pair? _e152116152123_)
                                    (let ((_e152119152176_
                                           (gx#syntax-e _e152116152123_)))
                                      (let ((_hd152120152179_
                                             (##car _e152119152176_))
                                            (_tl152121152181_
                                             (##cdr _e152119152176_)))
                                        (let* ((_hd152184_ _hd152120152179_)
                                               (_rest152186_ _tl152121152181_))
                                          (if '#t
                                              (let* ((_e152187152204_
                                                      _hd152184_)
                                                     (_E152199152208_
                                                      (lambda ()
                                                        (if (null? _bind152114_)
                                                            (_lp152110_
                                                             _rest152186_
                                                             _decls152113_
                                                             _bind152114_
                                                             (cons _hd152184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152115_))
                    (_lp152110_
                     _rest152186_
                     _decls152113_
                     (cons (cons '#f (cons _hd152184_ '())) _bind152114_)
                     _body152115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152189152222_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152187152204_)
                                                            (let ((_e152200152212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152187152204_)))
                      (let ((_hd152201152215_ (##car _e152200152212_))
                            (_tl152202152217_ (##cdr _e152200152212_)))
                        (if (and (gx#identifier? _hd152201152215_)
                                 (gx#core-identifier=?
                                  _hd152201152215_
                                  '%#declare))
                            (let ((_xdecls152220_ _tl152202152217_))
                              (if '#t
                                  (_lp152110_
                                   _rest152186_
                                   (gx#stx-foldr
                                    cons
                                    _decls152113_
                                    _xdecls152220_)
                                   _bind152114_
                                   _body152115_)
                                  (_E152199152208_)))
                            (_E152199152208_))))
                    (_E152199152208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152188152254_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152187152204_)
                                                            (let ((_e152190152226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152187152204_)))
                      (let ((_hd152191152229_ (##car _e152190152226_))
                            (_tl152192152231_ (##cdr _e152190152226_)))
                        (if (and (gx#identifier? _hd152191152229_)
                                 (gx#core-identifier=?
                                  _hd152191152229_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152192152231_)
                                (let ((_e152193152234_
                                       (gx#syntax-e _tl152192152231_)))
                                  (let ((_hd152194152237_
                                         (##car _e152193152234_))
                                        (_tl152195152239_
                                         (##cdr _e152193152234_)))
                                    (let ((_hd-bind152242_ _hd152194152237_))
                                      (if (gx#stx-pair? _tl152195152239_)
                                          (let ((_e152196152244_
                                                 (gx#syntax-e
                                                  _tl152195152239_)))
                                            (let ((_hd152197152247_
                                                   (##car _e152196152244_))
                                                  (_tl152198152249_
                                                   (##cdr _e152196152244_)))
                                              (let ((_expr152252_
                                                     _hd152197152247_))
                                                (if (gx#stx-null?
                                                     _tl152198152249_)
                                                    (if '#t
                                                        (_lp152110_
                                                         _rest152186_
                                                         _decls152113_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152242_)
                             (cons (gx#core-expand-expression _expr152252_)
                                   '()))
                       _bind152114_)
                 _body152115_)
                (_E152189152222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152189152222_)))))
                                          (_E152189152222_)))))
                                (_E152189152222_))
                            (_E152189152222_))))
                    (_E152189152222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152188152254_))
                                              (_E152118152172_)))))
                                    (_E152118152172_)))))
                        (_E152117152258_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152101_)
            (gx#stx-source _stx152100_))
           _expand-special152103_))))
    (define gx#core-expand-declare%
      (lambda (_stx152038_)
        (let* ((_e152039152046_ _stx152038_)
               (_E152041152050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152039152046_)))
               (_E152040152096_
                (lambda ()
                  (if (gx#stx-pair? _e152039152046_)
                      (let ((_e152042152054_ (gx#syntax-e _e152039152046_)))
                        (let ((_hd152043152057_ (##car _e152042152054_))
                              (_tl152044152059_ (##cdr _e152042152054_)))
                          (let ((_body152062_ _tl152044152059_))
                            (if (gx#stx-list? _body152062_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152064_)
                                     (let* ((_e152065152072_ _decl152064_)
                                            (_E152067152076_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152065152072_)))
                                            (_E152066152092_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152065152072_)
                                                   (let ((_e152068152080_
                                                          (gx#syntax-e
                                                           _e152065152072_)))
                                                     (let ((_hd152069152083_
                                                            (##car _e152068152080_))
                                                           (_tl152070152085_
                                                            (##cdr _e152068152080_)))
                                                       (let* ((_head152088_
                                                               _hd152069152083_)
                                                              (_args152090_
                                                               _tl152070152085_))
                                                         (if (gx#stx-list?
                                                              _args152090_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152064_)
                                                             (_E152067152076_)))))
                                                   (_E152067152076_)))))
                                       (_E152066152092_)))
                                   _body152062_))
                                 (gx#stx-source _stx152038_))
                                (_E152041152050_)))))
                      (_E152041152050_)))))
          (_E152040152096_))))
    (define gx#core-expand-extern%
      (lambda (_stx151942_)
        (let* ((_e151943151950_ _stx151942_)
               (_E151945151954_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151943151950_)))
               (_E151944152034_
                (lambda ()
                  (if (gx#stx-pair? _e151943151950_)
                      (let ((_e151946151958_ (gx#syntax-e _e151943151950_)))
                        (let ((_hd151947151961_ (##car _e151946151958_))
                              (_tl151948151963_ (##cdr _e151946151958_)))
                          (let ((_body151966_ _tl151948151963_))
                            (if '#t
                                (let _lp151968_ ((_rest151970_ _body151966_)
                                                 (_r151971_ '()))
                                  (let* ((_e151972151986_ _rest151970_)
                                         (_E151984151990_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx151942_)))
                                         (_E151974151994_
                                          (lambda ()
                                            (if (gx#stx-null? _e151972151986_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r151971_))
                                                     (gx#stx-source
                                                      _stx151942_))
                                                    (_E151984151990_))
                                                (_E151984151990_))))
                                         (_E151973152030_
                                          (lambda ()
                                            (if (gx#stx-pair? _e151972151986_)
                                                (let ((_e151975151998_
                                                       (gx#syntax-e
                                                        _e151972151986_)))
                                                  (let ((_hd151976152001_
                                                         (##car _e151975151998_))
                                                        (_tl151977152003_
                                                         (##cdr _e151975151998_)))
                                                    (if (gx#stx-pair?
                                                         _hd151976152001_)
                                                        (let ((_e151978152006_
                                                               (gx#syntax-e
                                                                _hd151976152001_)))
                                                          (let ((_hd151979152009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e151978152006_))
                        (_tl151980152011_ (##cdr _e151978152006_)))
                    (let ((_id152014_ _hd151979152009_))
                      (if (gx#stx-pair? _tl151980152011_)
                          (let ((_e151981152016_
                                 (gx#syntax-e _tl151980152011_)))
                            (let ((_hd151982152019_ (##car _e151981152016_))
                                  (_tl151983152021_ (##cdr _e151981152016_)))
                              (let ((_eid152024_ _hd151982152019_))
                                (if (gx#stx-null? _tl151983152021_)
                                    (let ((_rest152026_ _tl151977152003_))
                                      (if (and (gx#identifier? _id152014_)
                                               (gx#identifier? _eid152024_))
                                          (let ((_eid152028_
                                                 (gx#stx-e _eid152024_)))
                                            (gx#core-bind-extern!__0
                                             _id152014_
                                             _eid152028_)
                                            (_lp151968_
                                             _rest152026_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152014_)
                                                         (cons _eid152028_
                                                               '()))
                                                   _r151971_)))
                                          (_E151974151994_)))
                                    (_E151974151994_)))))
                          (_E151974151994_)))))
                (_E151974151994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151974151994_)))))
                                    (_E151973152030_)))
                                (_E151945151954_)))))
                      (_E151945151954_)))))
          (_E151944152034_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151888_)
        (let* ((_e151889151902_ _stx151888_)
               (_E151891151906_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151889151902_)))
               (_E151890151938_
                (lambda ()
                  (if (gx#stx-pair? _e151889151902_)
                      (let ((_e151892151910_ (gx#syntax-e _e151889151902_)))
                        (let ((_hd151893151913_ (##car _e151892151910_))
                              (_tl151894151915_ (##cdr _e151892151910_)))
                          (if (gx#stx-pair? _tl151894151915_)
                              (let ((_e151895151918_
                                     (gx#syntax-e _tl151894151915_)))
                                (let ((_hd151896151921_
                                       (##car _e151895151918_))
                                      (_tl151897151923_
                                       (##cdr _e151895151918_)))
                                  (let ((_hd151926_ _hd151896151921_))
                                    (if (gx#stx-pair? _tl151897151923_)
                                        (let ((_e151898151928_
                                               (gx#syntax-e _tl151897151923_)))
                                          (let ((_hd151899151931_
                                                 (##car _e151898151928_))
                                                (_tl151900151933_
                                                 (##cdr _e151898151928_)))
                                            (let ((_expr151936_
                                                   _hd151899151931_))
                                              (if (gx#stx-null?
                                                   _tl151900151933_)
                                                  (if (gx#core-bind-values?
                                                       _hd151926_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd151926_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151926_)
                             (cons (gx#core-expand-expression _expr151936_)
                                   '())))
                 (gx#stx-source _stx151888_)))
              (_E151891151906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151891151906_)))))
                                        (_E151891151906_)))))
                              (_E151891151906_))))
                      (_E151891151906_)))))
          (_E151890151938_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151832_)
        (let* ((_e151833151846_ _stx151832_)
               (_E151835151850_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151833151846_)))
               (_E151834151884_
                (lambda ()
                  (if (gx#stx-pair? _e151833151846_)
                      (let ((_e151836151854_ (gx#syntax-e _e151833151846_)))
                        (let ((_hd151837151857_ (##car _e151836151854_))
                              (_tl151838151859_ (##cdr _e151836151854_)))
                          (if (gx#stx-pair? _tl151838151859_)
                              (let ((_e151839151862_
                                     (gx#syntax-e _tl151838151859_)))
                                (let ((_hd151840151865_
                                       (##car _e151839151862_))
                                      (_tl151841151867_
                                       (##cdr _e151839151862_)))
                                  (let ((_id151870_ _hd151840151865_))
                                    (if (gx#stx-pair? _tl151841151867_)
                                        (let ((_e151842151872_
                                               (gx#syntax-e _tl151841151867_)))
                                          (let ((_hd151843151875_
                                                 (##car _e151842151872_))
                                                (_tl151844151877_
                                                 (##cdr _e151842151872_)))
                                            (let ((_binding-id151880_
                                                   _hd151843151875_))
                                              (if (gx#stx-null?
                                                   _tl151844151877_)
                                                  (if (and (gx#identifier?
                                                            _id151870_)
                                                           (gx#identifier?
                                                            _binding-id151880_))
                                                      (let ((_eid151882_
                                                             (gx#stx-e
                                                              _binding-id151880_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151870_
                                                         _eid151882_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151870_)
                             (cons _eid151882_ '())))))
              (_E151835151850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151835151850_)))))
                                        (_E151835151850_)))))
                              (_E151835151850_))))
                      (_E151835151850_)))))
          (_E151834151884_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151775_)
        (let* ((_e151776151789_ _stx151775_)
               (_E151778151793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151776151789_)))
               (_E151777151828_
                (lambda ()
                  (if (gx#stx-pair? _e151776151789_)
                      (let ((_e151779151797_ (gx#syntax-e _e151776151789_)))
                        (let ((_hd151780151800_ (##car _e151779151797_))
                              (_tl151781151802_ (##cdr _e151779151797_)))
                          (if (gx#stx-pair? _tl151781151802_)
                              (let ((_e151782151805_
                                     (gx#syntax-e _tl151781151802_)))
                                (let ((_hd151783151808_
                                       (##car _e151782151805_))
                                      (_tl151784151810_
                                       (##cdr _e151782151805_)))
                                  (let ((_id151813_ _hd151783151808_))
                                    (if (gx#stx-pair? _tl151784151810_)
                                        (let ((_e151785151815_
                                               (gx#syntax-e _tl151784151810_)))
                                          (let ((_hd151786151818_
                                                 (##car _e151785151815_))
                                                (_tl151787151820_
                                                 (##cdr _e151785151815_)))
                                            (let ((_expr151823_
                                                   _hd151786151818_))
                                              (if (gx#stx-null?
                                                   _tl151787151820_)
                                                  (if (gx#identifier?
                                                       _id151813_)
                                                      (let ((_g157213_
                                                             (gx#core-expand-expression+1
                                                              _expr151823_)))
                                                        (begin
                                                          (let ((_g157214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157213_)
                             (##vector-length _g157213_)
                             1)))
                    (if (not (##fx= _g157214_ 2))
                        (error "Context expects 2 values" _g157214_)))
                  (let ((_e-stx151825_ (##vector-ref _g157213_ 0))
                        (_e151826_ (##vector-ref _g157213_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151813_ _e151826_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151813_)
                                   (cons _e-stx151825_ '())))
                       (gx#stx-source _stx151775_))))))
              (_E151778151793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151778151793_)))))
                                        (_E151778151793_)))))
                              (_E151778151793_))))
                      (_E151778151793_)))))
          (_E151777151828_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151719_)
        (let* ((_e151720151733_ _stx151719_)
               (_E151722151737_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151720151733_)))
               (_E151721151771_
                (lambda ()
                  (if (gx#stx-pair? _e151720151733_)
                      (let ((_e151723151741_ (gx#syntax-e _e151720151733_)))
                        (let ((_hd151724151744_ (##car _e151723151741_))
                              (_tl151725151746_ (##cdr _e151723151741_)))
                          (if (gx#stx-pair? _tl151725151746_)
                              (let ((_e151726151749_
                                     (gx#syntax-e _tl151725151746_)))
                                (let ((_hd151727151752_
                                       (##car _e151726151749_))
                                      (_tl151728151754_
                                       (##cdr _e151726151749_)))
                                  (let ((_id151757_ _hd151727151752_))
                                    (if (gx#stx-pair? _tl151728151754_)
                                        (let ((_e151729151759_
                                               (gx#syntax-e _tl151728151754_)))
                                          (let ((_hd151730151762_
                                                 (##car _e151729151759_))
                                                (_tl151731151764_
                                                 (##cdr _e151729151759_)))
                                            (let ((_alias-id151767_
                                                   _hd151730151762_))
                                              (if (gx#stx-null?
                                                   _tl151731151764_)
                                                  (if (and (gx#identifier?
                                                            _id151757_)
                                                           (gx#identifier?
                                                            _alias-id151767_))
                                                      (let ((_alias-id151769_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151767_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151757_
                                                         _alias-id151769_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151757_)
                             (cons _alias-id151769_ '())))))
              (_E151722151737_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151722151737_)))))
                                        (_E151722151737_)))))
                              (_E151722151737_))))
                      (_E151722151737_)))))
          (_E151721151771_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151662_ _wrap?151663_)
        (let* ((_e151664151674_ _stx151662_)
               (_E151666151678_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151664151674_)))
               (_E151665151705_
                (lambda ()
                  (if (gx#stx-pair? _e151664151674_)
                      (let ((_e151667151682_ (gx#syntax-e _e151664151674_)))
                        (let ((_hd151668151685_ (##car _e151667151682_))
                              (_tl151669151687_ (##cdr _e151667151682_)))
                          (if (gx#stx-pair? _tl151669151687_)
                              (let ((_e151670151690_
                                     (gx#syntax-e _tl151669151687_)))
                                (let ((_hd151671151693_
                                       (##car _e151670151690_))
                                      (_tl151672151695_
                                       (##cdr _e151670151690_)))
                                  (let* ((_hd151698_ _hd151671151693_)
                                         (_body151700_ _tl151672151695_))
                                    (if (gx#core-bind-values? _hd151698_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151698_)
                                           (let ((_body151703_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151698_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151662_
                                                               _body151700_)
                                                              '()))))
                                             (if _wrap?151663_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151703_)
                                                  (gx#stx-source _stx151662_))
                                                 _body151703_)))
                                         gx#current-expander-context
                                         (let ((__obj157195
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157195)
                                           __obj157195))
                                        (_E151666151678_)))))
                              (_E151666151678_))))
                      (_E151666151678_)))))
          (_E151665151705_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151712_)
        (let ((_wrap?151714_ '#t))
          (gx#core-expand-lambda%__% _stx151712_ _wrap?151714_))))
    (define gx#core-expand-lambda%
      (lambda _g157216_
        (let ((_g157215_ (##length _g157216_)))
          (cond ((##fx= _g157215_ 1)
                 (apply (lambda (_stx151712_)
                          (gx#core-expand-lambda%__0 _stx151712_))
                        _g157216_))
                ((##fx= _g157215_ 2)
                 (apply (lambda (_stx151716_ _wrap?151717_)
                          (gx#core-expand-lambda%__%
                           _stx151716_
                           _wrap?151717_))
                        _g157216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157216_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151626_)
        (let* ((_e151627151634_ _stx151626_)
               (_E151629151638_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151627151634_)))
               (_E151628151657_
                (lambda ()
                  (if (gx#stx-pair? _e151627151634_)
                      (let ((_e151630151642_ (gx#syntax-e _e151627151634_)))
                        (let ((_hd151631151645_ (##car _e151630151642_))
                              (_tl151632151647_ (##cdr _e151630151642_)))
                          (let ((_clauses151650_ _tl151632151647_))
                            (if (gx#stx-list? _clauses151650_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151652_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151652_)
                                       (let ((_$e151654_
                                              (gx#stx-source _clause151652_)))
                                         (if _$e151654_
                                             _$e151654_
                                             (gx#stx-source _stx151626_))))
                                      '#f))
                                   _clauses151650_))
                                 (gx#stx-source _stx151626_))
                                (_E151629151638_)))))
                      (_E151629151638_)))))
          (_E151628151657_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151580_)
        (let* ((_e151581151591_ _stx151580_)
               (_E151583151595_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151581151591_)))
               (_E151582151622_
                (lambda ()
                  (if (gx#stx-pair? _e151581151591_)
                      (let ((_e151584151599_ (gx#syntax-e _e151581151591_)))
                        (let ((_hd151585151602_ (##car _e151584151599_))
                              (_tl151586151604_ (##cdr _e151584151599_)))
                          (if (gx#stx-pair? _tl151586151604_)
                              (let ((_e151587151607_
                                     (gx#syntax-e _tl151586151604_)))
                                (let ((_hd151588151610_
                                       (##car _e151587151607_))
                                      (_tl151589151612_
                                       (##cdr _e151587151607_)))
                                  (let* ((_hd151615_ _hd151588151610_)
                                         (_body151617_ _tl151589151612_))
                                    (if (gx#core-expand-let-bind? _hd151615_)
                                        (let ((_expressions151619_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151615_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151615_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151615_
                                                           _expressions151619_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151580_
                         _body151617_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151580_)))
                                           gx#current-expander-context
                                           (let ((__obj157196
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157196)
                                             __obj157196)))
                                        (_E151583151595_)))))
                              (_E151583151595_))))
                      (_E151583151595_)))))
          (_E151582151622_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151525_ _form151526_)
        (let* ((_e151527151537_ _stx151525_)
               (_E151529151541_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151527151537_)))
               (_E151528151566_
                (lambda ()
                  (if (gx#stx-pair? _e151527151537_)
                      (let ((_e151530151545_ (gx#syntax-e _e151527151537_)))
                        (let ((_hd151531151548_ (##car _e151530151545_))
                              (_tl151532151550_ (##cdr _e151530151545_)))
                          (if (gx#stx-pair? _tl151532151550_)
                              (let ((_e151533151553_
                                     (gx#syntax-e _tl151532151550_)))
                                (let ((_hd151534151556_
                                       (##car _e151533151553_))
                                      (_tl151535151558_
                                       (##cdr _e151533151553_)))
                                  (let* ((_hd151561_ _hd151534151556_)
                                         (_body151563_ _tl151535151558_))
                                    (if (gx#core-expand-let-bind? _hd151561_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151561_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151526_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151561_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151561_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151525_
                                                               _body151563_)
                                                              '())))
                                            (gx#stx-source _stx151525_)))
                                         gx#current-expander-context
                                         (let ((__obj157197
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157197)
                                           __obj157197))
                                        (_E151529151541_)))))
                              (_E151529151541_))))
                      (_E151529151541_)))))
          (_E151528151566_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151573_)
        (let ((_form151575_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151573_ _form151575_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157218_
        (let ((_g157217_ (##length _g157218_)))
          (cond ((##fx= _g157217_ 1)
                 (apply (lambda (_stx151573_)
                          (gx#core-expand-letrec-values%__0 _stx151573_))
                        _g157218_))
                ((##fx= _g157217_ 2)
                 (apply (lambda (_stx151577_ _form151578_)
                          (gx#core-expand-letrec-values%__%
                           _stx151577_
                           _form151578_))
                        _g157218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157218_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151522_)
        (gx#core-expand-letrec-values%__% _stx151522_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151479_)
        (if (gx#stx-list? _stx151479_)
            (gx#stx-andmap
             (lambda (_bind151481_)
               (let* ((_e151482151492_ _bind151481_)
                      (_E151484151496_ (lambda () '#f))
                      (_E151483151518_
                       (lambda ()
                         (if (gx#stx-pair? _e151482151492_)
                             (let ((_e151485151500_
                                    (gx#syntax-e _e151482151492_)))
                               (let ((_hd151486151503_ (##car _e151485151500_))
                                     (_tl151487151505_
                                      (##cdr _e151485151500_)))
                                 (let ((_hd151508_ _hd151486151503_))
                                   (if (gx#stx-pair? _tl151487151505_)
                                       (let ((_e151488151510_
                                              (gx#syntax-e _tl151487151505_)))
                                         (let ((_hd151489151513_
                                                (##car _e151488151510_))
                                               (_tl151490151515_
                                                (##cdr _e151488151510_)))
                                           (if (gx#stx-null? _tl151490151515_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151508_)
                                                   (_E151484151496_))
                                               (_E151484151496_))))
                                       (_E151484151496_)))))
                             (_E151484151496_)))))
                 (_E151483151518_)))
             _stx151479_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151438_)
        (let* ((_e151439151449_ _bind151438_)
               (_E151441151453_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151439151449_)))
               (_E151440151475_
                (lambda ()
                  (if (gx#stx-pair? _e151439151449_)
                      (let ((_e151442151457_ (gx#syntax-e _e151439151449_)))
                        (let ((_hd151443151460_ (##car _e151442151457_))
                              (_tl151444151462_ (##cdr _e151442151457_)))
                          (if (gx#stx-pair? _tl151444151462_)
                              (let ((_e151445151465_
                                     (gx#syntax-e _tl151444151462_)))
                                (let ((_hd151446151468_
                                       (##car _e151445151465_))
                                      (_tl151447151470_
                                       (##cdr _e151445151465_)))
                                  (let ((_expr151473_ _hd151446151468_))
                                    (if (gx#stx-null? _tl151447151470_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151473_)
                                            (_E151441151453_))
                                        (_E151441151453_)))))
                              (_E151441151453_))))
                      (_E151441151453_)))))
          (_E151440151475_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151397_)
        (let* ((_e151398151408_ _bind151397_)
               (_E151400151412_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151398151408_)))
               (_E151399151434_
                (lambda ()
                  (if (gx#stx-pair? _e151398151408_)
                      (let ((_e151401151416_ (gx#syntax-e _e151398151408_)))
                        (let ((_hd151402151419_ (##car _e151401151416_))
                              (_tl151403151421_ (##cdr _e151401151416_)))
                          (let ((_hd151424_ _hd151402151419_))
                            (if (gx#stx-pair? _tl151403151421_)
                                (let ((_e151404151426_
                                       (gx#syntax-e _tl151403151421_)))
                                  (let ((_hd151405151429_
                                         (##car _e151404151426_))
                                        (_tl151406151431_
                                         (##cdr _e151404151426_)))
                                    (if (gx#stx-null? _tl151406151431_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151424_)
                                            (_E151400151412_))
                                        (_E151400151412_))))
                                (_E151400151412_)))))
                      (_E151400151412_)))))
          (_E151399151434_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151355_ _expr151356_)
        (let* ((_e151357151367_ _bind151355_)
               (_E151359151371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151357151367_)))
               (_E151358151393_
                (lambda ()
                  (if (gx#stx-pair? _e151357151367_)
                      (let ((_e151360151375_ (gx#syntax-e _e151357151367_)))
                        (let ((_hd151361151378_ (##car _e151360151375_))
                              (_tl151362151380_ (##cdr _e151360151375_)))
                          (let ((_hd151383_ _hd151361151378_))
                            (if (gx#stx-pair? _tl151362151380_)
                                (let ((_e151363151385_
                                       (gx#syntax-e _tl151362151380_)))
                                  (let ((_hd151364151388_
                                         (##car _e151363151385_))
                                        (_tl151365151390_
                                         (##cdr _e151363151385_)))
                                    (if (gx#stx-null? _tl151365151390_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151383_)
                                                  (cons _expr151356_ '()))
                                            (_E151359151371_))
                                        (_E151359151371_))))
                                (_E151359151371_)))))
                      (_E151359151371_)))))
          (_E151358151393_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151309_)
        (let* ((_e151310151320_ _stx151309_)
               (_E151312151324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151310151320_)))
               (_E151311151351_
                (lambda ()
                  (if (gx#stx-pair? _e151310151320_)
                      (let ((_e151313151328_ (gx#syntax-e _e151310151320_)))
                        (let ((_hd151314151331_ (##car _e151313151328_))
                              (_tl151315151333_ (##cdr _e151313151328_)))
                          (if (gx#stx-pair? _tl151315151333_)
                              (let ((_e151316151336_
                                     (gx#syntax-e _tl151315151333_)))
                                (let ((_hd151317151339_
                                       (##car _e151316151336_))
                                      (_tl151318151341_
                                       (##cdr _e151316151336_)))
                                  (let* ((_hd151344_ _hd151317151339_)
                                         (_body151346_ _tl151318151341_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151344_)
                                        (let ((_expanders151348_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151344_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151344_
                                              _expanders151348_)
                                             (gx#core-expand-local-block
                                              _stx151309_
                                              _body151346_))
                                           gx#current-expander-context
                                           (let ((__obj157198
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157198)
                                             __obj157198)))
                                        (_E151312151324_)))))
                              (_E151312151324_))))
                      (_E151312151324_)))))
          (_E151311151351_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151258_)
        (let* ((_e151259151269_ _stx151258_)
               (_E151261151273_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151259151269_)))
               (_E151260151305_
                (lambda ()
                  (if (gx#stx-pair? _e151259151269_)
                      (let ((_e151262151277_ (gx#syntax-e _e151259151269_)))
                        (let ((_hd151263151280_ (##car _e151262151277_))
                              (_tl151264151282_ (##cdr _e151262151277_)))
                          (if (gx#stx-pair? _tl151264151282_)
                              (let ((_e151265151285_
                                     (gx#syntax-e _tl151264151282_)))
                                (let ((_hd151266151288_
                                       (##car _e151265151285_))
                                      (_tl151267151290_
                                       (##cdr _e151265151285_)))
                                  (let* ((_hd151293_ _hd151266151288_)
                                         (_body151295_ _tl151267151290_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151293_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151293_
                                            (make-list
                                             (gx#stx-length _hd151293_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151297151300_
                                                     _g151298151302_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151297151300_
                                               _g151298151302_
                                               '#t))
                                            _hd151293_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151293_))
                                           (gx#core-expand-local-block
                                            _stx151258_
                                            _body151295_))
                                         gx#current-expander-context
                                         (let ((__obj157199
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157199)
                                           __obj157199))
                                        (_E151261151273_)))))
                              (_E151261151273_))))
                      (_E151261151273_)))))
          (_E151260151305_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151215_)
        (if (gx#stx-list? _stx151215_)
            (gx#stx-andmap
             (lambda (_bind151217_)
               (let* ((_e151218151228_ _bind151217_)
                      (_E151220151232_ (lambda () '#f))
                      (_E151219151254_
                       (lambda ()
                         (if (gx#stx-pair? _e151218151228_)
                             (let ((_e151221151236_
                                    (gx#syntax-e _e151218151228_)))
                               (let ((_hd151222151239_ (##car _e151221151236_))
                                     (_tl151223151241_
                                      (##cdr _e151221151236_)))
                                 (let ((_hd151244_ _hd151222151239_))
                                   (if (gx#stx-pair? _tl151223151241_)
                                       (let ((_e151224151246_
                                              (gx#syntax-e _tl151223151241_)))
                                         (let ((_hd151225151249_
                                                (##car _e151224151246_))
                                               (_tl151226151251_
                                                (##cdr _e151224151246_)))
                                           (if (gx#stx-null? _tl151226151251_)
                                               (if '#t
                                                   (gx#identifier? _hd151244_)
                                                   (_E151220151232_))
                                               (_E151220151232_))))
                                       (_E151220151232_)))))
                             (_E151220151232_)))))
                 (_E151219151254_)))
             _stx151215_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151172_)
        (let* ((_e151173151183_ _bind151172_)
               (_E151175151187_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151173151183_)))
               (_E151174151211_
                (lambda ()
                  (if (gx#stx-pair? _e151173151183_)
                      (let ((_e151176151191_ (gx#syntax-e _e151173151183_)))
                        (let ((_hd151177151194_ (##car _e151176151191_))
                              (_tl151178151196_ (##cdr _e151176151191_)))
                          (if (gx#stx-pair? _tl151178151196_)
                              (let ((_e151179151199_
                                     (gx#syntax-e _tl151178151196_)))
                                (let ((_hd151180151202_
                                       (##car _e151179151199_))
                                      (_tl151181151204_
                                       (##cdr _e151179151199_)))
                                  (let ((_expr151207_ _hd151180151202_))
                                    (if (gx#stx-null? _tl151181151204_)
                                        (if '#t
                                            (let ((_g157219_
                                                   (gx#core-expand-expression+1
                                                    _expr151207_)))
                                              (begin
                                                (let ((_g157220_
                                                       (if (##values?
                                                            _g157219_)
                                                           (##vector-length
                                                            _g157219_)
                                                           1)))
                                                  (if (not (##fx= _g157220_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157220_)))
                                                (let ((_e151209_
                                                       (##vector-ref
                                                        _g157219_
                                                        1)))
                                                  _e151209_)))
                                            (_E151175151187_))
                                        (_E151175151187_)))))
                              (_E151175151187_))))
                      (_E151175151187_)))))
          (_E151174151211_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151117_ _e151118_ _rebind?151119_)
        (let* ((_e151120151130_ _bind151117_)
               (_E151122151134_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151120151130_)))
               (_E151121151156_
                (lambda ()
                  (if (gx#stx-pair? _e151120151130_)
                      (let ((_e151123151138_ (gx#syntax-e _e151120151130_)))
                        (let ((_hd151124151141_ (##car _e151123151138_))
                              (_tl151125151143_ (##cdr _e151123151138_)))
                          (let ((_id151146_ _hd151124151141_))
                            (if (gx#stx-pair? _tl151125151143_)
                                (let ((_e151126151148_
                                       (gx#syntax-e _tl151125151143_)))
                                  (let ((_hd151127151151_
                                         (##car _e151126151148_))
                                        (_tl151128151153_
                                         (##cdr _e151126151148_)))
                                    (if (gx#stx-null? _tl151128151153_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151146_
                                             _e151118_
                                             _rebind?151119_)
                                            (_E151122151134_))
                                        (_E151122151134_))))
                                (_E151122151134_)))))
                      (_E151122151134_)))))
          (_E151121151156_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151163_ _e151164_)
        (let ((_rebind?151166_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151163_
           _e151164_
           _rebind?151166_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157222_
        (let ((_g157221_ (##length _g157222_)))
          (cond ((##fx= _g157221_ 2)
                 (apply (lambda (_bind151163_ _e151164_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151163_
                           _e151164_))
                        _g157222_))
                ((##fx= _g157221_ 3)
                 (apply (lambda (_bind151168_ _e151169_ _rebind?151170_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151168_
                           _e151169_
                           _rebind?151170_))
                        _g157222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157222_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151075_)
        (let* ((_e151076151086_ _stx151075_)
               (_E151078151090_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151076151086_)))
               (_E151077151112_
                (lambda ()
                  (if (gx#stx-pair? _e151076151086_)
                      (let ((_e151079151094_ (gx#syntax-e _e151076151086_)))
                        (let ((_hd151080151097_ (##car _e151079151094_))
                              (_tl151081151099_ (##cdr _e151079151094_)))
                          (if (gx#stx-pair? _tl151081151099_)
                              (let ((_e151082151102_
                                     (gx#syntax-e _tl151081151099_)))
                                (let ((_hd151083151105_
                                       (##car _e151082151102_))
                                      (_tl151084151107_
                                       (##cdr _e151082151102_)))
                                  (let ((_expr151110_ _hd151083151105_))
                                    (if (gx#stx-null? _tl151084151107_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151110_)
                                            (_E151078151090_))
                                        (_E151078151090_)))))
                              (_E151078151090_))))
                      (_E151078151090_)))))
          (_E151077151112_))))
    (define gx#core-expand-quote%
      (lambda (_stx151034_)
        (let* ((_e151035151045_ _stx151034_)
               (_E151037151049_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151035151045_)))
               (_E151036151071_
                (lambda ()
                  (if (gx#stx-pair? _e151035151045_)
                      (let ((_e151038151053_ (gx#syntax-e _e151035151045_)))
                        (let ((_hd151039151056_ (##car _e151038151053_))
                              (_tl151040151058_ (##cdr _e151038151053_)))
                          (if (gx#stx-pair? _tl151040151058_)
                              (let ((_e151041151061_
                                     (gx#syntax-e _tl151040151058_)))
                                (let ((_hd151042151064_
                                       (##car _e151041151061_))
                                      (_tl151043151066_
                                       (##cdr _e151041151061_)))
                                  (let ((_e151069_ _hd151042151064_))
                                    (if (gx#stx-null? _tl151043151066_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151069_)
                                                         '()))
                                             (gx#stx-source _stx151034_))
                                            (_E151037151049_))
                                        (_E151037151049_)))))
                              (_E151037151049_))))
                      (_E151037151049_)))))
          (_E151036151071_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx150993_)
        (let* ((_e150994151004_ _stx150993_)
               (_E150996151008_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150994151004_)))
               (_E150995151030_
                (lambda ()
                  (if (gx#stx-pair? _e150994151004_)
                      (let ((_e150997151012_ (gx#syntax-e _e150994151004_)))
                        (let ((_hd150998151015_ (##car _e150997151012_))
                              (_tl150999151017_ (##cdr _e150997151012_)))
                          (if (gx#stx-pair? _tl150999151017_)
                              (let ((_e151000151020_
                                     (gx#syntax-e _tl150999151017_)))
                                (let ((_hd151001151023_
                                       (##car _e151000151020_))
                                      (_tl151002151025_
                                       (##cdr _e151000151020_)))
                                  (let ((_e151028_ _hd151001151023_))
                                    (if (gx#stx-null? _tl151002151025_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151028_)
                                                         '()))
                                             (gx#stx-source _stx150993_))
                                            (_E150996151008_))
                                        (_E150996151008_)))))
                              (_E150996151008_))))
                      (_E150996151008_)))))
          (_E150995151030_))))
    (define gx#core-expand-call%
      (lambda (_stx150950_)
        (let* ((_e150951150961_ _stx150950_)
               (_E150953150965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150951150961_)))
               (_E150952150989_
                (lambda ()
                  (if (gx#stx-pair? _e150951150961_)
                      (let ((_e150954150969_ (gx#syntax-e _e150951150961_)))
                        (let ((_hd150955150972_ (##car _e150954150969_))
                              (_tl150956150974_ (##cdr _e150954150969_)))
                          (if (gx#stx-pair? _tl150956150974_)
                              (let ((_e150957150977_
                                     (gx#syntax-e _tl150956150974_)))
                                (let ((_hd150958150980_
                                       (##car _e150957150977_))
                                      (_tl150959150982_
                                       (##cdr _e150957150977_)))
                                  (let* ((_rator150985_ _hd150958150980_)
                                         (_args150987_ _tl150959150982_))
                                    (if (gx#stx-list? _args150987_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator150985_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args150987_))
                                         (gx#stx-source _stx150950_))
                                        (_E150953150965_)))))
                              (_E150953150965_))))
                      (_E150953150965_)))))
          (_E150952150989_))))
    (define gx#core-expand-if%
      (lambda (_stx150883_)
        (let* ((_e150884150900_ _stx150883_)
               (_E150886150904_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150884150900_)))
               (_E150885150946_
                (lambda ()
                  (if (gx#stx-pair? _e150884150900_)
                      (let ((_e150887150908_ (gx#syntax-e _e150884150900_)))
                        (let ((_hd150888150911_ (##car _e150887150908_))
                              (_tl150889150913_ (##cdr _e150887150908_)))
                          (if (gx#stx-pair? _tl150889150913_)
                              (let ((_e150890150916_
                                     (gx#syntax-e _tl150889150913_)))
                                (let ((_hd150891150919_
                                       (##car _e150890150916_))
                                      (_tl150892150921_
                                       (##cdr _e150890150916_)))
                                  (let ((_test150924_ _hd150891150919_))
                                    (if (gx#stx-pair? _tl150892150921_)
                                        (let ((_e150893150926_
                                               (gx#syntax-e _tl150892150921_)))
                                          (let ((_hd150894150929_
                                                 (##car _e150893150926_))
                                                (_tl150895150931_
                                                 (##cdr _e150893150926_)))
                                            (let ((_K150934_ _hd150894150929_))
                                              (if (gx#stx-pair?
                                                   _tl150895150931_)
                                                  (let ((_e150896150936_
                                                         (gx#syntax-e
                                                          _tl150895150931_)))
                                                    (let ((_hd150897150939_
                                                           (##car _e150896150936_))
                                                          (_tl150898150941_
                                                           (##cdr _e150896150936_)))
                                                      (let ((_E150944_
                                                             _hd150897150939_))
                                                        (if (gx#stx-null?
                                                             _tl150898150941_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test150924_)
                                     (cons (gx#core-expand-expression
                                            _K150934_)
                                           (cons (gx#core-expand-expression
                                                  _E150944_)
                                                 '()))))
                         (gx#stx-source _stx150883_))
                        (_E150886150904_))
                    (_E150886150904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150886150904_)))))
                                        (_E150886150904_)))))
                              (_E150886150904_))))
                      (_E150886150904_)))))
          (_E150885150946_))))
    (define gx#core-expand-ref%
      (lambda (_stx150842_)
        (let* ((_e150843150853_ _stx150842_)
               (_E150845150857_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150843150853_)))
               (_E150844150879_
                (lambda ()
                  (if (gx#stx-pair? _e150843150853_)
                      (let ((_e150846150861_ (gx#syntax-e _e150843150853_)))
                        (let ((_hd150847150864_ (##car _e150846150861_))
                              (_tl150848150866_ (##cdr _e150846150861_)))
                          (if (gx#stx-pair? _tl150848150866_)
                              (let ((_e150849150869_
                                     (gx#syntax-e _tl150848150866_)))
                                (let ((_hd150850150872_
                                       (##car _e150849150869_))
                                      (_tl150851150874_
                                       (##cdr _e150849150869_)))
                                  (let ((_id150877_ _hd150850150872_))
                                    (if (gx#stx-null? _tl150851150874_)
                                        (if (gx#identifier? _id150877_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150877_
                                                          _stx150842_)
                                                         '()))
                                             (gx#stx-source _stx150842_))
                                            (_E150845150857_))
                                        (_E150845150857_)))))
                              (_E150845150857_))))
                      (_E150845150857_)))))
          (_E150844150879_))))
    (define gx#core-expand-setq%
      (lambda (_stx150788_)
        (let* ((_e150789150802_ _stx150788_)
               (_E150791150806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150789150802_)))
               (_E150790150838_
                (lambda ()
                  (if (gx#stx-pair? _e150789150802_)
                      (let ((_e150792150810_ (gx#syntax-e _e150789150802_)))
                        (let ((_hd150793150813_ (##car _e150792150810_))
                              (_tl150794150815_ (##cdr _e150792150810_)))
                          (if (gx#stx-pair? _tl150794150815_)
                              (let ((_e150795150818_
                                     (gx#syntax-e _tl150794150815_)))
                                (let ((_hd150796150821_
                                       (##car _e150795150818_))
                                      (_tl150797150823_
                                       (##cdr _e150795150818_)))
                                  (let ((_id150826_ _hd150796150821_))
                                    (if (gx#stx-pair? _tl150797150823_)
                                        (let ((_e150798150828_
                                               (gx#syntax-e _tl150797150823_)))
                                          (let ((_hd150799150831_
                                                 (##car _e150798150828_))
                                                (_tl150800150833_
                                                 (##cdr _e150798150828_)))
                                            (let ((_expr150836_
                                                   _hd150799150831_))
                                              (if (gx#stx-null?
                                                   _tl150800150833_)
                                                  (if (gx#identifier?
                                                       _id150826_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150826_
                            _stx150788_)
                           (cons (gx#core-expand-expression _expr150836_)
                                 '())))
               (gx#stx-source _stx150788_))
              (_E150791150806_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150791150806_)))))
                                        (_E150791150806_)))))
                              (_E150791150806_))))
                      (_E150791150806_)))))
          (_E150790150838_))))
    (define gx#macro-expand-extern
      (lambda (_stx150636_)
        (letrec ((_generate150638_
                  (lambda (_body150668_)
                    (let _lp150670_ ((_rest150672_ _body150668_)
                                     (_ns150673_
                                      (gx#core-context-namespace__0))
                                     (_r150674_ '()))
                      (let* ((_e150675150690_ _rest150672_)
                             (_E150688150694_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150675150690_)))
                             (_E150684150698_
                              (lambda ()
                                (if (gx#stx-null? _e150675150690_)
                                    (if '#t
                                        (reverse _r150674_)
                                        (_E150688150694_))
                                    (_E150688150694_))))
                             (_E150677150755_
                              (lambda ()
                                (if (gx#stx-pair? _e150675150690_)
                                    (let ((_e150685150702_
                                           (gx#syntax-e _e150675150690_)))
                                      (let ((_hd150686150705_
                                             (##car _e150685150702_))
                                            (_tl150687150707_
                                             (##cdr _e150685150702_)))
                                        (let* ((_hd150710_ _hd150686150705_)
                                               (_rest150712_ _tl150687150707_))
                                          (if '#t
                                              (if (gx#identifier? _hd150710_)
                                                  (_lp150670_
                                                   _rest150712_
                                                   _ns150673_
                                                   (cons (cons _hd150710_
                                                               (cons (if _ns150673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150710_
                                  _ns150673_
                                  '"#"
                                  _hd150710_)
                                 _hd150710_)
                             '()))
                 _r150674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150713150723_
                                                          _hd150710_)
                                                         (_E150715150727_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150713150723_)))
                                                         (_E150714150751_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150713150723_)
                        (let ((_e150716150731_ (gx#syntax-e _e150713150723_)))
                          (let ((_hd150717150734_ (##car _e150716150731_))
                                (_tl150718150736_ (##cdr _e150716150731_)))
                            (let ((_id150739_ _hd150717150734_))
                              (if (gx#stx-pair? _tl150718150736_)
                                  (let ((_e150719150741_
                                         (gx#syntax-e _tl150718150736_)))
                                    (let ((_hd150720150744_
                                           (##car _e150719150741_))
                                          (_tl150721150746_
                                           (##cdr _e150719150741_)))
                                      (let ((_eid150749_ _hd150720150744_))
                                        (if (gx#stx-null? _tl150721150746_)
                                            (if (and (gx#identifier?
                                                      _id150739_)
                                                     (gx#identifier?
                                                      _eid150749_))
                                                (_lp150670_
                                                 _rest150712_
                                                 _ns150673_
                                                 (cons (cons _id150739_
                                                             (cons _eid150749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150715150727_))
                                            (_E150715150727_)))))
                                  (_E150715150727_)))))
                        (_E150715150727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150714150751_)))
                                              (_E150684150698_)))))
                                    (_E150684150698_))))
                             (_E150676150784_
                              (lambda ()
                                (if (gx#stx-pair? _e150675150690_)
                                    (let ((_e150678150759_
                                           (gx#syntax-e _e150675150690_)))
                                      (let ((_hd150679150762_
                                             (##car _e150678150759_))
                                            (_tl150680150764_
                                             (##cdr _e150678150759_)))
                                        (if (eq? (gx#stx-e _hd150679150762_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150680150764_)
                                                (let ((_e150681150767_
                                                       (gx#syntax-e
                                                        _tl150680150764_)))
                                                  (let ((_hd150682150770_
                                                         (##car _e150681150767_))
                                                        (_tl150683150772_
                                                         (##cdr _e150681150767_)))
                                                    (let* ((_ns150775_
                                                            _hd150682150770_)
                                                           (_rest150777_
                                                            _tl150683150772_))
                                                      (if '#t
                                                          (let ((_ns150782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150775_)
                             (symbol->string (gx#stx-e _ns150775_))
                             (if (or (gx#stx-string? _ns150775_)
                                     (gx#stx-false? _ns150775_))
                                 (gx#stx-e _ns150775_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150636_
                                  _ns150775_)))))
                    (_lp150670_ _rest150777_ _ns150782_ _r150674_))
                  (_E150677150755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150677150755_))
                                            (_E150677150755_))))
                                    (_E150677150755_)))))
                        (_E150676150784_))))))
          (let* ((_e150639150646_ _stx150636_)
                 (_E150641150650_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150639150646_)))
                 (_E150640150664_
                  (lambda ()
                    (if (gx#stx-pair? _e150639150646_)
                        (let ((_e150642150654_ (gx#syntax-e _e150639150646_)))
                          (let ((_hd150643150657_ (##car _e150642150654_))
                                (_tl150644150659_ (##cdr _e150642150654_)))
                            (let ((_body150662_ _tl150644150659_))
                              (if (gx#stx-list? _body150662_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150638_ _body150662_))
                                  (_E150641150650_)))))
                        (_E150641150650_)))))
            (_E150640150664_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150582_)
        (let* ((_e150583150596_ _stx150582_)
               (_E150585150600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150583150596_)))
               (_E150584150632_
                (lambda ()
                  (if (gx#stx-pair? _e150583150596_)
                      (let ((_e150586150604_ (gx#syntax-e _e150583150596_)))
                        (let ((_hd150587150607_ (##car _e150586150604_))
                              (_tl150588150609_ (##cdr _e150586150604_)))
                          (if (gx#stx-pair? _tl150588150609_)
                              (let ((_e150589150612_
                                     (gx#syntax-e _tl150588150609_)))
                                (let ((_hd150590150615_
                                       (##car _e150589150612_))
                                      (_tl150591150617_
                                       (##cdr _e150589150612_)))
                                  (let ((_hd150620_ _hd150590150615_))
                                    (if (gx#stx-pair? _tl150591150617_)
                                        (let ((_e150592150622_
                                               (gx#syntax-e _tl150591150617_)))
                                          (let ((_hd150593150625_
                                                 (##car _e150592150622_))
                                                (_tl150594150627_
                                                 (##cdr _e150592150622_)))
                                            (let ((_expr150630_
                                                   _hd150593150625_))
                                              (if (gx#stx-null?
                                                   _tl150594150627_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150620_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150620_)
                          (cons _expr150630_ '())))
              (_E150585150600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150585150600_)))))
                                        (_E150585150600_)))))
                              (_E150585150600_))))
                      (_E150585150600_)))))
          (_E150584150632_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150528_)
        (let* ((_e150529150542_ _stx150528_)
               (_E150531150546_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150529150542_)))
               (_E150530150578_
                (lambda ()
                  (if (gx#stx-pair? _e150529150542_)
                      (let ((_e150532150550_ (gx#syntax-e _e150529150542_)))
                        (let ((_hd150533150553_ (##car _e150532150550_))
                              (_tl150534150555_ (##cdr _e150532150550_)))
                          (if (gx#stx-pair? _tl150534150555_)
                              (let ((_e150535150558_
                                     (gx#syntax-e _tl150534150555_)))
                                (let ((_hd150536150561_
                                       (##car _e150535150558_))
                                      (_tl150537150563_
                                       (##cdr _e150535150558_)))
                                  (let ((_hd150566_ _hd150536150561_))
                                    (if (gx#stx-pair? _tl150537150563_)
                                        (let ((_e150538150568_
                                               (gx#syntax-e _tl150537150563_)))
                                          (let ((_hd150539150571_
                                                 (##car _e150538150568_))
                                                (_tl150540150573_
                                                 (##cdr _e150538150568_)))
                                            (let ((_expr150576_
                                                   _hd150539150571_))
                                              (if (gx#stx-null?
                                                   _tl150540150573_)
                                                  (if (gx#identifier?
                                                       _hd150566_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150576_ '())))
              (_E150531150546_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150531150546_)))))
                                        (_E150531150546_)))))
                              (_E150531150546_))))
                      (_E150531150546_)))))
          (_E150530150578_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150474_)
        (let* ((_e150475150488_ _stx150474_)
               (_E150477150492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150475150488_)))
               (_E150476150524_
                (lambda ()
                  (if (gx#stx-pair? _e150475150488_)
                      (let ((_e150478150496_ (gx#syntax-e _e150475150488_)))
                        (let ((_hd150479150499_ (##car _e150478150496_))
                              (_tl150480150501_ (##cdr _e150478150496_)))
                          (if (gx#stx-pair? _tl150480150501_)
                              (let ((_e150481150504_
                                     (gx#syntax-e _tl150480150501_)))
                                (let ((_hd150482150507_
                                       (##car _e150481150504_))
                                      (_tl150483150509_
                                       (##cdr _e150481150504_)))
                                  (let ((_id150512_ _hd150482150507_))
                                    (if (gx#stx-pair? _tl150483150509_)
                                        (let ((_e150484150514_
                                               (gx#syntax-e _tl150483150509_)))
                                          (let ((_hd150485150517_
                                                 (##car _e150484150514_))
                                                (_tl150486150519_
                                                 (##cdr _e150484150514_)))
                                            (let ((_alias-id150522_
                                                   _hd150485150517_))
                                              (if (gx#stx-null?
                                                   _tl150486150519_)
                                                  (if (and (gx#identifier?
                                                            _id150512_)
                                                           (gx#identifier?
                                                            _alias-id150522_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150522_ '())))
              (_E150477150492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150477150492_)))))
                                        (_E150477150492_)))))
                              (_E150477150492_))))
                      (_E150477150492_)))))
          (_E150476150524_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150431_)
        (let* ((_e150432150442_ _stx150431_)
               (_E150434150446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150432150442_)))
               (_E150433150470_
                (lambda ()
                  (if (gx#stx-pair? _e150432150442_)
                      (let ((_e150435150450_ (gx#syntax-e _e150432150442_)))
                        (let ((_hd150436150453_ (##car _e150435150450_))
                              (_tl150437150455_ (##cdr _e150435150450_)))
                          (if (gx#stx-pair? _tl150437150455_)
                              (let ((_e150438150458_
                                     (gx#syntax-e _tl150437150455_)))
                                (let ((_hd150439150461_
                                       (##car _e150438150458_))
                                      (_tl150440150463_
                                       (##cdr _e150438150458_)))
                                  (let* ((_hd150466_ _hd150439150461_)
                                         (_body150468_ _tl150440150463_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150466_)
                                             (gx#stx-list? _body150468_)
                                             (not (gx#stx-null? _body150468_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150466_)
                                         _body150468_)
                                        (_E150434150446_)))))
                              (_E150434150446_))))
                      (_E150434150446_)))))
          (_E150433150470_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150367_)
        (letrec ((_generate150369_
                  (lambda (_clause150399_)
                    (let* ((_e150400150407_ _clause150399_)
                           (_E150402150411_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150367_
                               _clause150399_)))
                           (_E150401150427_
                            (lambda ()
                              (if (gx#stx-pair? _e150400150407_)
                                  (let ((_e150403150415_
                                         (gx#syntax-e _e150400150407_)))
                                    (let ((_hd150404150418_
                                           (##car _e150403150415_))
                                          (_tl150405150420_
                                           (##cdr _e150403150415_)))
                                      (let* ((_hd150423_ _hd150404150418_)
                                             (_body150425_ _tl150405150420_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150423_)
                                                 (gx#stx-list? _body150425_)
                                                 (not (gx#stx-null?
                                                       _body150425_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150423_)
                                                   _body150425_)
                                             (gx#stx-source _clause150399_))
                                            (_E150402150411_)))))
                                  (_E150402150411_)))))
                      (_E150401150427_)))))
          (let* ((_e150370150377_ _stx150367_)
                 (_E150372150381_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150370150377_)))
                 (_E150371150395_
                  (lambda ()
                    (if (gx#stx-pair? _e150370150377_)
                        (let ((_e150373150385_ (gx#syntax-e _e150370150377_)))
                          (let ((_hd150374150388_ (##car _e150373150385_))
                                (_tl150375150390_ (##cdr _e150373150385_)))
                            (let ((_clauses150393_ _tl150375150390_))
                              (if (gx#stx-list? _clauses150393_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150369_
                                    _clauses150393_))
                                  (_E150372150381_)))))
                        (_E150372150381_)))))
            (_E150371150395_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150268_ _form150269_)
        (letrec ((_generate150271_
                  (lambda (_bind150314_)
                    (let* ((_e150315150325_ _bind150314_)
                           (_E150317150329_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150268_
                               _bind150314_)))
                           (_E150316150353_
                            (lambda ()
                              (if (gx#stx-pair? _e150315150325_)
                                  (let ((_e150318150333_
                                         (gx#syntax-e _e150315150325_)))
                                    (let ((_hd150319150336_
                                           (##car _e150318150333_))
                                          (_tl150320150338_
                                           (##cdr _e150318150333_)))
                                      (let ((_ids150341_ _hd150319150336_))
                                        (if (gx#stx-pair? _tl150320150338_)
                                            (let ((_e150321150343_
                                                   (gx#syntax-e
                                                    _tl150320150338_)))
                                              (let ((_hd150322150346_
                                                     (##car _e150321150343_))
                                                    (_tl150323150348_
                                                     (##cdr _e150321150343_)))
                                                (let ((_expr150351_
                                                       _hd150322150346_))
                                                  (if (gx#stx-null?
                                                       _tl150323150348_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150341_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150341_)
                        (cons _expr150351_ '()))
                  (_E150317150329_))
              (_E150317150329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150317150329_)))))
                                  (_E150317150329_)))))
                      (_E150316150353_)))))
          (let* ((_e150272150282_ _stx150268_)
                 (_E150274150286_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150272150282_)))
                 (_E150273150310_
                  (lambda ()
                    (if (gx#stx-pair? _e150272150282_)
                        (let ((_e150275150290_ (gx#syntax-e _e150272150282_)))
                          (let ((_hd150276150293_ (##car _e150275150290_))
                                (_tl150277150295_ (##cdr _e150275150290_)))
                            (if (gx#stx-pair? _tl150277150295_)
                                (let ((_e150278150298_
                                       (gx#syntax-e _tl150277150295_)))
                                  (let ((_hd150279150301_
                                         (##car _e150278150298_))
                                        (_tl150280150303_
                                         (##cdr _e150278150298_)))
                                    (let* ((_hd150306_ _hd150279150301_)
                                           (_body150308_ _tl150280150303_))
                                      (if (and (gx#stx-list? _hd150306_)
                                               (gx#stx-list? _body150308_)
                                               (not (gx#stx-null?
                                                     _body150308_)))
                                          (gx#core-cons*
                                           _form150269_
                                           (gx#stx-map1
                                            _generate150271_
                                            _hd150306_)
                                           _body150308_)
                                          (_E150274150286_)))))
                                (_E150274150286_))))
                        (_E150274150286_)))))
            (_E150273150310_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150360_)
        (let ((_form150362_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150360_ _form150362_))))
    (define gx#macro-expand-let-values
      (lambda _g157224_
        (let ((_g157223_ (##length _g157224_)))
          (cond ((##fx= _g157223_ 1)
                 (apply (lambda (_stx150360_)
                          (gx#macro-expand-let-values__0 _stx150360_))
                        _g157224_))
                ((##fx= _g157223_ 2)
                 (apply (lambda (_stx150364_ _form150365_)
                          (gx#macro-expand-let-values__%
                           _stx150364_
                           _form150365_))
                        _g157224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157224_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150265_)
        (gx#macro-expand-let-values__% _stx150265_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150263_)
        (gx#macro-expand-let-values__% _stx150263_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150154_)
        (let* ((_e150155150181_ _stx150154_)
               (_E150167150185_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150155150181_)))
               (_E150157150227_
                (lambda ()
                  (if (gx#stx-pair? _e150155150181_)
                      (let ((_e150168150189_ (gx#syntax-e _e150155150181_)))
                        (let ((_hd150169150192_ (##car _e150168150189_))
                              (_tl150170150194_ (##cdr _e150168150189_)))
                          (if (gx#stx-pair? _tl150170150194_)
                              (let ((_e150171150197_
                                     (gx#syntax-e _tl150170150194_)))
                                (let ((_hd150172150200_
                                       (##car _e150171150197_))
                                      (_tl150173150202_
                                       (##cdr _e150171150197_)))
                                  (let ((_test150205_ _hd150172150200_))
                                    (if (gx#stx-pair? _tl150173150202_)
                                        (let ((_e150174150207_
                                               (gx#syntax-e _tl150173150202_)))
                                          (let ((_hd150175150210_
                                                 (##car _e150174150207_))
                                                (_tl150176150212_
                                                 (##cdr _e150174150207_)))
                                            (let ((_K150215_ _hd150175150210_))
                                              (if (gx#stx-pair?
                                                   _tl150176150212_)
                                                  (let ((_e150177150217_
                                                         (gx#syntax-e
                                                          _tl150176150212_)))
                                                    (let ((_hd150178150220_
                                                           (##car _e150177150217_))
                                                          (_tl150179150222_
                                                           (##cdr _e150177150217_)))
                                                      (let ((_E150225_
                                                             _hd150178150220_))
                                                        (if (gx#stx-null?
                                                             _tl150179150222_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150205_
                         _K150215_
                         _E150225_)
                        (_E150167150185_))
                    (_E150167150185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150167150185_)))))
                                        (_E150167150185_)))))
                              (_E150167150185_))))
                      (_E150167150185_))))
               (_E150156150259_
                (lambda ()
                  (if (gx#stx-pair? _e150155150181_)
                      (let ((_e150158150231_ (gx#syntax-e _e150155150181_)))
                        (let ((_hd150159150234_ (##car _e150158150231_))
                              (_tl150160150236_ (##cdr _e150158150231_)))
                          (if (gx#stx-pair? _tl150160150236_)
                              (let ((_e150161150239_
                                     (gx#syntax-e _tl150160150236_)))
                                (let ((_hd150162150242_
                                       (##car _e150161150239_))
                                      (_tl150163150244_
                                       (##cdr _e150161150239_)))
                                  (let ((_test150247_ _hd150162150242_))
                                    (if (gx#stx-pair? _tl150163150244_)
                                        (let ((_e150164150249_
                                               (gx#syntax-e _tl150163150244_)))
                                          (let ((_hd150165150252_
                                                 (##car _e150164150249_))
                                                (_tl150166150254_
                                                 (##cdr _e150164150249_)))
                                            (let ((_K150257_ _hd150165150252_))
                                              (if (gx#stx-null?
                                                   _tl150166150254_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150247_
                                                       _K150257_
                                                       '#!void)
                                                      (_E150157150227_))
                                                  (_E150157150227_)))))
                                        (_E150157150227_)))))
                              (_E150157150227_))))
                      (_E150157150227_)))))
          (_E150156150259_))))
    (define gx#free-identifier=?
      (lambda (_xid150142_ _yid150143_)
        (let ((_xe150145_ (gx#resolve-identifier__0 _xid150142_))
              (_ye150146_ (gx#resolve-identifier__0 _yid150143_)))
          (if (and _xe150145_ _ye150146_)
              (let ((_$e150148_ (eq? _xe150145_ _ye150146_)))
                (if _$e150148_
                    _$e150148_
                    (if (class-instance? gx#binding::t _xe150145_)
                        (if (class-instance? gx#binding::t _ye150146_)
                            (eq? (unchecked-slot-ref _xe150145_ 'id)
                                 (unchecked-slot-ref _ye150146_ 'id))
                            '#f)
                        '#f)))
              (if (or _xe150145_ _ye150146_)
                  '#f
                  (gx#stx-eq? _xid150142_ _yid150143_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150126_ _yid150127_)
        (letrec ((_context150129_
                  (lambda (_e150140_)
                    (if (##structure-direct-instance-of?
                         _e150140_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150140_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150130_
                  (lambda (_e150138_)
                    (if (symbol? _e150138_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150138_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150138_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150138_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150131_
                  (lambda (_e150136_)
                    (if (symbol? _e150136_)
                        _e150136_
                        (gx#syntax-local-unwrap _e150136_)))))
          (let ((_x150133_ (_unwrap150131_ _xid150126_))
                (_y150134_ (_unwrap150131_ _yid150127_)))
            (if (gx#stx-eq? _x150133_ _y150134_)
                (if (eq? (_context150129_ _x150133_)
                         (_context150129_ _y150134_))
                    (equal? (_marks150130_ _x150133_)
                            (_marks150130_ _y150134_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150124_)
        (if (gx#identifier? _stx150124_)
            (gx#core-identifier=? _stx150124_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150122_)
        (if (gx#identifier? _stx150122_)
            (gx#core-identifier=? _stx150122_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150120_)
        (if (gx#identifier? _x150120_)
            (if (not (gx#underscore? _x150120_)) _x150120_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150066_ _where150067_)
        (let _lp150069_ ((_rest150071_ (gx#syntax->list _stx150066_)))
          (let* ((_rest150072150080_ _rest150071_)
                 (_else150074150088_ (lambda () '#t))
                 (_K150076150098_
                  (lambda (_rest150091_ _hd150092_)
                    (if (not (gx#identifier? _hd150092_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150067_
                         _hd150092_)
                        (if (find (lambda (_g150093150095_)
                                    (gx#bound-identifier=?
                                     _g150093150095_
                                     _hd150092_))
                                  _rest150091_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150067_
                             _hd150092_)
                            (_lp150069_ _rest150091_))))))
            (if (##pair? _rest150072150080_)
                (let ((_hd150077150101_ (##car _rest150072150080_))
                      (_tl150078150103_ (##cdr _rest150072150080_)))
                  (let* ((_hd150106_ _hd150077150101_)
                         (_rest150108_ _tl150078150103_))
                    (_K150076150098_ _rest150108_ _hd150106_)))
                (_else150074150088_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150113_)
        (let ((_where150115_ _stx150113_))
          (gx#check-duplicate-identifiers__% _stx150113_ _where150115_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157226_
        (let ((_g157225_ (##length _g157226_)))
          (cond ((##fx= _g157225_ 1)
                 (apply (lambda (_stx150113_)
                          (gx#check-duplicate-identifiers__0 _stx150113_))
                        _g157226_))
                ((##fx= _g157225_ 2)
                 (apply (lambda (_stx150117_ _where150118_)
                          (gx#check-duplicate-identifiers__%
                           _stx150117_
                           _where150118_))
                        _g157226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157226_))))))
    (define gx#core-bind-values?
      (lambda (_stx150058_)
        (gx#stx-andmap
         (lambda (_x150060_)
           (let ((_$e150062_ (gx#identifier? _x150060_)))
             (if _$e150062_ _$e150062_ (gx#stx-false? _x150060_))))
         _stx150058_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150022_ _rebind?150023_ _phi150024_ _ctx150025_)
        (gx#stx-for-each1
         (lambda (_id150027_)
           (if (gx#identifier? _id150027_)
               (gx#core-bind-runtime!__%
                _id150027_
                _rebind?150023_
                _phi150024_
                _ctx150025_)
               '#!void))
         _stx150022_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150032_)
        (let* ((_rebind?150034_ '#f)
               (_phi150036_ (gx#current-expander-phi))
               (_ctx150038_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150032_
           _rebind?150034_
           _phi150036_
           _ctx150038_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150040_ _rebind?150041_)
        (let* ((_phi150043_ (gx#current-expander-phi))
               (_ctx150045_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150040_
           _rebind?150041_
           _phi150043_
           _ctx150045_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150047_ _rebind?150048_ _phi150049_)
        (let ((_ctx150051_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150047_
           _rebind?150048_
           _phi150049_
           _ctx150051_))))
    (define gx#core-bind-values!
      (lambda _g157228_
        (let ((_g157227_ (##length _g157228_)))
          (cond ((##fx= _g157227_ 1)
                 (apply (lambda (_stx150032_)
                          (gx#core-bind-values!__0 _stx150032_))
                        _g157228_))
                ((##fx= _g157227_ 2)
                 (apply (lambda (_stx150040_ _rebind?150041_)
                          (gx#core-bind-values!__1
                           _stx150040_
                           _rebind?150041_))
                        _g157228_))
                ((##fx= _g157227_ 3)
                 (apply (lambda (_stx150047_ _rebind?150048_ _phi150049_)
                          (gx#core-bind-values!__2
                           _stx150047_
                           _rebind?150048_
                           _phi150049_))
                        _g157228_))
                ((##fx= _g157227_ 4)
                 (apply (lambda (_stx150053_
                                 _rebind?150054_
                                 _phi150055_
                                 _ctx150056_)
                          (gx#core-bind-values!__%
                           _stx150053_
                           _rebind?150054_
                           _phi150055_
                           _ctx150056_))
                        _g157228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157228_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150017_)
        (gx#stx-map1
         (lambda (_x150019_)
           (if (gx#identifier? _x150019_)
               (gx#core-quote-syntax__0 _x150019_)
               '#f))
         _stx150017_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150010_)
        (if (gx#identifier? _stx150010_)
            (let* ((_bind150012_ (gx#resolve-identifier__0 _stx150010_))
                   (_$e150014_ (not _bind150012_)))
              (if _$e150014_
                  _$e150014_
                  (class-instance? gx#runtime-binding::t _bind150012_)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150002_ _form150003_)
        (let ((_bind150005_ (gx#resolve-identifier__0 _id150002_)))
          (if (class-instance? gx#runtime-binding::t _bind150005_)
              (gx#core-quote-syntax__0 _id150002_)
              (if (not _bind150005_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150002_)))
                      (gx#core-quote-syntax__0 _id150002_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150003_
                       _id150002_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150003_
                   _id150002_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id149961_ _rebind?149962_ _phi149963_ _ctx149964_)
        (let* ((_key149966_ (gx#core-identifier-key _id149961_))
               (_eid149968_
                (gx#make-binding-id__%
                 _key149966_
                 '#f
                 _phi149963_
                 _ctx149964_))
               (_bind149970_
                (if (class-instance? gx#module-context::t _ctx149964_)
                    (let ((__obj157200
                           (##structure gx#module-binding::t '#f '#f '#f '#f)))
                      (class-instance-init!
                       __obj157200
                       _eid149968_
                       _key149966_
                       _phi149963_
                       _ctx149964_)
                      __obj157200)
                    (if (class-instance? gx#top-context::t _ctx149964_)
                        (let ((__obj157201
                               (##structure gx#top-binding::t '#f '#f '#f)))
                          (class-instance-init!
                           __obj157201
                           _eid149968_
                           _key149966_
                           _phi149963_)
                          __obj157201)
                        (if (class-instance? gx#local-context::t _ctx149964_)
                            (let ((__obj157202
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f)))
                              (class-instance-init!
                               __obj157202
                               _eid149968_
                               _key149966_
                               _phi149963_)
                              __obj157202)
                            (let ((__obj157203
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f)))
                              (class-instance-init!
                               __obj157203
                               _eid149968_
                               _key149966_
                               _phi149963_)
                              __obj157203))))))
          (gx#bind-identifier!__%
           _id149961_
           _bind149970_
           _rebind?149962_
           _phi149963_
           _ctx149964_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id149976_)
        (let* ((_rebind?149978_ '#f)
               (_phi149980_ (gx#current-expander-phi))
               (_ctx149982_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149976_
           _rebind?149978_
           _phi149980_
           _ctx149982_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id149984_ _rebind?149985_)
        (let* ((_phi149987_ (gx#current-expander-phi))
               (_ctx149989_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149984_
           _rebind?149985_
           _phi149987_
           _ctx149989_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id149991_ _rebind?149992_ _phi149993_)
        (let ((_ctx149995_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149991_
           _rebind?149992_
           _phi149993_
           _ctx149995_))))
    (define gx#core-bind-runtime!
      (lambda _g157230_
        (let ((_g157229_ (##length _g157230_)))
          (cond ((##fx= _g157229_ 1)
                 (apply (lambda (_id149976_)
                          (gx#core-bind-runtime!__0 _id149976_))
                        _g157230_))
                ((##fx= _g157229_ 2)
                 (apply (lambda (_id149984_ _rebind?149985_)
                          (gx#core-bind-runtime!__1
                           _id149984_
                           _rebind?149985_))
                        _g157230_))
                ((##fx= _g157229_ 3)
                 (apply (lambda (_id149991_ _rebind?149992_ _phi149993_)
                          (gx#core-bind-runtime!__2
                           _id149991_
                           _rebind?149992_
                           _phi149993_))
                        _g157230_))
                ((##fx= _g157229_ 4)
                 (apply (lambda (_id149997_
                                 _rebind?149998_
                                 _phi149999_
                                 _ctx150000_)
                          (gx#core-bind-runtime!__%
                           _id149997_
                           _rebind?149998_
                           _phi149999_
                           _ctx150000_))
                        _g157230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157230_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id149916_ _eid149917_ _rebind?149918_ _phi149919_ _ctx149920_)
        (let* ((_key149922_ (gx#core-identifier-key _id149916_))
               (_bind149924_
                (if (class-instance? gx#module-context::t _ctx149920_)
                    (let ((__obj157204
                           (##structure gx#module-binding::t '#f '#f '#f '#f)))
                      (class-instance-init!
                       __obj157204
                       _eid149917_
                       _key149922_
                       _phi149919_
                       _ctx149920_)
                      __obj157204)
                    (if (class-instance? gx#top-context::t _ctx149920_)
                        (let ((__obj157205
                               (##structure gx#top-binding::t '#f '#f '#f)))
                          (class-instance-init!
                           __obj157205
                           _eid149917_
                           _key149922_
                           _phi149919_)
                          __obj157205)
                        (let ((__obj157206
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f)))
                          (class-instance-init!
                           __obj157206
                           _eid149917_
                           _key149922_
                           _phi149919_)
                          __obj157206)))))
          (gx#bind-identifier!__%
           _id149916_
           _bind149924_
           _rebind?149918_
           _phi149919_
           _ctx149920_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id149930_ _eid149931_)
        (let* ((_rebind?149933_ '#f)
               (_phi149935_ (gx#current-expander-phi))
               (_ctx149937_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149930_
           _eid149931_
           _rebind?149933_
           _phi149935_
           _ctx149937_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id149939_ _eid149940_ _rebind?149941_)
        (let* ((_phi149943_ (gx#current-expander-phi))
               (_ctx149945_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149939_
           _eid149940_
           _rebind?149941_
           _phi149943_
           _ctx149945_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id149947_ _eid149948_ _rebind?149949_ _phi149950_)
        (let ((_ctx149952_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149947_
           _eid149948_
           _rebind?149949_
           _phi149950_
           _ctx149952_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157232_
        (let ((_g157231_ (##length _g157232_)))
          (cond ((##fx= _g157231_ 2)
                 (apply (lambda (_id149930_ _eid149931_)
                          (gx#core-bind-runtime-reference!__0
                           _id149930_
                           _eid149931_))
                        _g157232_))
                ((##fx= _g157231_ 3)
                 (apply (lambda (_id149939_ _eid149940_ _rebind?149941_)
                          (gx#core-bind-runtime-reference!__1
                           _id149939_
                           _eid149940_
                           _rebind?149941_))
                        _g157232_))
                ((##fx= _g157231_ 4)
                 (apply (lambda (_id149947_
                                 _eid149948_
                                 _rebind?149949_
                                 _phi149950_)
                          (gx#core-bind-runtime-reference!__2
                           _id149947_
                           _eid149948_
                           _rebind?149949_
                           _phi149950_))
                        _g157232_))
                ((##fx= _g157231_ 5)
                 (apply (lambda (_id149954_
                                 _eid149955_
                                 _rebind?149956_
                                 _phi149957_
                                 _ctx149958_)
                          (gx#core-bind-runtime-reference!__%
                           _id149954_
                           _eid149955_
                           _rebind?149956_
                           _phi149957_
                           _ctx149958_))
                        _g157232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157232_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149876_ _eid149877_ _rebind?149878_ _phi149879_ _ctx149880_)
        (gx#bind-identifier!__%
         _id149876_
         (let ((__obj157207 (##structure gx#extern-binding::t '#f '#f '#f)))
           (class-instance-init!
            __obj157207
            _eid149877_
            (gx#core-identifier-key _id149876_)
            _phi149879_)
           __obj157207)
         _rebind?149878_
         _phi149879_
         _ctx149880_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149885_ _eid149886_)
        (let* ((_rebind?149888_ '#f)
               (_phi149890_ (gx#current-expander-phi))
               (_ctx149892_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149885_
           _eid149886_
           _rebind?149888_
           _phi149890_
           _ctx149892_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149894_ _eid149895_ _rebind?149896_)
        (let* ((_phi149898_ (gx#current-expander-phi))
               (_ctx149900_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149894_
           _eid149895_
           _rebind?149896_
           _phi149898_
           _ctx149900_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149902_ _eid149903_ _rebind?149904_ _phi149905_)
        (let ((_ctx149907_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149902_
           _eid149903_
           _rebind?149904_
           _phi149905_
           _ctx149907_))))
    (define gx#core-bind-extern!
      (lambda _g157234_
        (let ((_g157233_ (##length _g157234_)))
          (cond ((##fx= _g157233_ 2)
                 (apply (lambda (_id149885_ _eid149886_)
                          (gx#core-bind-extern!__0 _id149885_ _eid149886_))
                        _g157234_))
                ((##fx= _g157233_ 3)
                 (apply (lambda (_id149894_ _eid149895_ _rebind?149896_)
                          (gx#core-bind-extern!__1
                           _id149894_
                           _eid149895_
                           _rebind?149896_))
                        _g157234_))
                ((##fx= _g157233_ 4)
                 (apply (lambda (_id149902_
                                 _eid149903_
                                 _rebind?149904_
                                 _phi149905_)
                          (gx#core-bind-extern!__2
                           _id149902_
                           _eid149903_
                           _rebind?149904_
                           _phi149905_))
                        _g157234_))
                ((##fx= _g157233_ 5)
                 (apply (lambda (_id149909_
                                 _eid149910_
                                 _rebind?149911_
                                 _phi149912_
                                 _ctx149913_)
                          (gx#core-bind-extern!__%
                           _id149909_
                           _eid149910_
                           _rebind?149911_
                           _phi149912_
                           _ctx149913_))
                        _g157234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157234_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149830_ _e149831_ _rebind?149832_ _phi149833_ _ctx149834_)
        (gx#bind-identifier!__%
         _id149830_
         (let ((_key149839_ (gx#core-identifier-key _id149830_))
               (_e149840_
                (if (or (class-instance? gx#expander::t _e149831_)
                        (class-instance? gx#expander-context::t _e149831_))
                    _e149831_
                    (let ((__obj157208
                           (##structure gx#user-expander::t '#f '#f '#f)))
                      (class-instance-init!
                       __obj157208
                       _e149831_
                       _ctx149834_
                       _phi149833_)
                      __obj157208))))
           (let ((__obj157209
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f)))
             (class-instance-init!
              __obj157209
              (gx#make-binding-id__% _key149839_ '#t _phi149833_ _ctx149834_)
              _key149839_
              _phi149833_
              _e149840_)
             __obj157209))
         _rebind?149832_
         _phi149833_
         _ctx149834_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149845_ _e149846_)
        (let* ((_rebind?149848_ '#f)
               (_phi149850_ (gx#current-expander-phi))
               (_ctx149852_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149845_
           _e149846_
           _rebind?149848_
           _phi149850_
           _ctx149852_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149854_ _e149855_ _rebind?149856_)
        (let* ((_phi149858_ (gx#current-expander-phi))
               (_ctx149860_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149854_
           _e149855_
           _rebind?149856_
           _phi149858_
           _ctx149860_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149862_ _e149863_ _rebind?149864_ _phi149865_)
        (let ((_ctx149867_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149862_
           _e149863_
           _rebind?149864_
           _phi149865_
           _ctx149867_))))
    (define gx#core-bind-syntax!
      (lambda _g157236_
        (let ((_g157235_ (##length _g157236_)))
          (cond ((##fx= _g157235_ 2)
                 (apply (lambda (_id149845_ _e149846_)
                          (gx#core-bind-syntax!__0 _id149845_ _e149846_))
                        _g157236_))
                ((##fx= _g157235_ 3)
                 (apply (lambda (_id149854_ _e149855_ _rebind?149856_)
                          (gx#core-bind-syntax!__1
                           _id149854_
                           _e149855_
                           _rebind?149856_))
                        _g157236_))
                ((##fx= _g157235_ 4)
                 (apply (lambda (_id149862_
                                 _e149863_
                                 _rebind?149864_
                                 _phi149865_)
                          (gx#core-bind-syntax!__2
                           _id149862_
                           _e149863_
                           _rebind?149864_
                           _phi149865_))
                        _g157236_))
                ((##fx= _g157235_ 5)
                 (apply (lambda (_id149869_
                                 _e149870_
                                 _rebind?149871_
                                 _phi149872_
                                 _ctx149873_)
                          (gx#core-bind-syntax!__%
                           _id149869_
                           _e149870_
                           _rebind?149871_
                           _phi149872_
                           _ctx149873_))
                        _g157236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157236_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149813_ _e149814_ _rebind?149815_)
        (gx#core-bind-syntax!__%
         _id149813_
         _e149814_
         _rebind?149815_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149820_ _e149821_)
        (let ((_rebind?149823_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149820_
           _e149821_
           _rebind?149823_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157238_
        (let ((_g157237_ (##length _g157238_)))
          (cond ((##fx= _g157237_ 2)
                 (apply (lambda (_id149820_ _e149821_)
                          (gx#core-bind-root-syntax!__0 _id149820_ _e149821_))
                        _g157238_))
                ((##fx= _g157237_ 3)
                 (apply (lambda (_id149825_ _e149826_ _rebind?149827_)
                          (gx#core-bind-root-syntax!__%
                           _id149825_
                           _e149826_
                           _rebind?149827_))
                        _g157238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157238_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149771_
               _alias-id149772_
               _rebind?149773_
               _phi149774_
               _ctx149775_)
        (gx#bind-identifier!__%
         _id149771_
         (let* ((_key149777_ (gx#core-identifier-key _id149771_))
                (__obj157210
                 (##structure gx#alias-binding::t '#f '#f '#f '#f)))
           (class-instance-init!
            __obj157210
            (gx#make-binding-id__% _key149777_ '#t _phi149774_ _ctx149775_)
            _key149777_
            _phi149774_
            _alias-id149772_)
           __obj157210)
         _rebind?149773_
         _phi149774_
         _ctx149775_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149782_ _alias-id149783_)
        (let* ((_rebind?149785_ '#f)
               (_phi149787_ (gx#current-expander-phi))
               (_ctx149789_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149782_
           _alias-id149783_
           _rebind?149785_
           _phi149787_
           _ctx149789_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149791_ _alias-id149792_ _rebind?149793_)
        (let* ((_phi149795_ (gx#current-expander-phi))
               (_ctx149797_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149791_
           _alias-id149792_
           _rebind?149793_
           _phi149795_
           _ctx149797_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149799_ _alias-id149800_ _rebind?149801_ _phi149802_)
        (let ((_ctx149804_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149799_
           _alias-id149800_
           _rebind?149801_
           _phi149802_
           _ctx149804_))))
    (define gx#core-bind-alias!
      (lambda _g157240_
        (let ((_g157239_ (##length _g157240_)))
          (cond ((##fx= _g157239_ 2)
                 (apply (lambda (_id149782_ _alias-id149783_)
                          (gx#core-bind-alias!__0 _id149782_ _alias-id149783_))
                        _g157240_))
                ((##fx= _g157239_ 3)
                 (apply (lambda (_id149791_ _alias-id149792_ _rebind?149793_)
                          (gx#core-bind-alias!__1
                           _id149791_
                           _alias-id149792_
                           _rebind?149793_))
                        _g157240_))
                ((##fx= _g157239_ 4)
                 (apply (lambda (_id149799_
                                 _alias-id149800_
                                 _rebind?149801_
                                 _phi149802_)
                          (gx#core-bind-alias!__2
                           _id149799_
                           _alias-id149800_
                           _rebind?149801_
                           _phi149802_))
                        _g157240_))
                ((##fx= _g157239_ 5)
                 (apply (lambda (_id149806_
                                 _alias-id149807_
                                 _rebind?149808_
                                 _phi149809_
                                 _ctx149810_)
                          (gx#core-bind-alias!__%
                           _id149806_
                           _alias-id149807_
                           _rebind?149808_
                           _phi149809_
                           _ctx149810_))
                        _g157240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157240_))))))
    (define gx#make-binding-id__%
      (lambda (_key149728_ _syntax?149729_ _phi149730_ _ctx149731_)
        (if (uninterned-symbol? _key149728_)
            (gensym 'L)
            (if (pair? _key149728_)
                (gensym (car _key149728_))
                (if (class-instance? gx#top-context::t _ctx149731_)
                    (let ((_ns149733_
                           (gx#core-context-namespace__% _ctx149731_)))
                      (if (and (fxzero? _phi149730_) (not _syntax?149729_))
                          (if _ns149733_
                              (make-symbol__1 _ns149733_ '"#" _key149728_)
                              _key149728_)
                          (if _syntax?149729_
                              (make-symbol__1
                               (let ((_$e149735_ _ns149733_))
                                 (if _$e149735_ _$e149735_ '""))
                               '"[:"
                               (number->string _phi149730_)
                               '":]#"
                               _key149728_)
                              (make-symbol__1
                               (let ((_$e149738_ _ns149733_))
                                 (if _$e149738_ _$e149738_ '""))
                               '"["
                               (number->string _phi149730_)
                               '"]#"
                               _key149728_))))
                    (gensym _key149728_))))))
    (define gx#make-binding-id__0
      (lambda (_key149744_)
        (let* ((_syntax?149746_ '#f)
               (_phi149748_ (gx#current-expander-phi))
               (_ctx149750_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149744_
           _syntax?149746_
           _phi149748_
           _ctx149750_))))
    (define gx#make-binding-id__1
      (lambda (_key149752_ _syntax?149753_)
        (let* ((_phi149755_ (gx#current-expander-phi))
               (_ctx149757_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149752_
           _syntax?149753_
           _phi149755_
           _ctx149757_))))
    (define gx#make-binding-id__2
      (lambda (_key149759_ _syntax?149760_ _phi149761_)
        (let ((_ctx149763_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149759_
           _syntax?149760_
           _phi149761_
           _ctx149763_))))
    (define gx#make-binding-id
      (lambda _g157242_
        (let ((_g157241_ (##length _g157242_)))
          (cond ((##fx= _g157241_ 1)
                 (apply (lambda (_key149744_)
                          (gx#make-binding-id__0 _key149744_))
                        _g157242_))
                ((##fx= _g157241_ 2)
                 (apply (lambda (_key149752_ _syntax?149753_)
                          (gx#make-binding-id__1 _key149752_ _syntax?149753_))
                        _g157242_))
                ((##fx= _g157241_ 3)
                 (apply (lambda (_key149759_ _syntax?149760_ _phi149761_)
                          (gx#make-binding-id__2
                           _key149759_
                           _syntax?149760_
                           _phi149761_))
                        _g157242_))
                ((##fx= _g157241_ 4)
                 (apply (lambda (_key149765_
                                 _syntax?149766_
                                 _phi149767_
                                 _ctx149768_)
                          (gx#make-binding-id__%
                           _key149765_
                           _syntax?149766_
                           _phi149767_
                           _ctx149768_))
                        _g157242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157242_))))))))
