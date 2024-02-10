(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707573212)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152775_)
        (letrec ((_expand-special152777_
                  (lambda (_hd152779_ _K152780_ _rest152781_ _r152782_)
                    (_K152780_
                     _rest152781_
                     (cons (gx#core-expand-top _hd152779_) _r152782_)))))
          (gx#core-expand-block__0 _stx152775_ _expand-special152777_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152528_)
        (letrec ((_expand-special152530_
                  (lambda (_hd152650_ _K152651_ _rest152652_ _r152653_)
                    (let* ((_K152657_
                            (lambda (_e152655_)
                              (_K152651_
                               _rest152652_
                               (cons _e152655_ _r152653_))))
                           (_e152658152687_ _hd152650_)
                           (_E152682152691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152658152687_)))
                           (_E152678152703_
                            (lambda ()
                              (if (gx#stx-pair? _e152658152687_)
                                  (let ((_e152683152695_
                                         (gx#syntax-e _e152658152687_)))
                                    (let ((_hd152684152698_
                                           (##car _e152683152695_))
                                          (_tl152685152700_
                                           (##cdr _e152683152695_)))
                                      (if (and (gx#identifier?
                                                _hd152684152698_)
                                               (gx#core-identifier=?
                                                _hd152684152698_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152657_
                                               (gx#core-expand-define-runtime%
                                                _hd152650_))
                                              (_E152682152691_))
                                          (_E152682152691_))))
                                  (_E152682152691_))))
                           (_E152674152715_
                            (lambda ()
                              (if (gx#stx-pair? _e152658152687_)
                                  (let ((_e152679152707_
                                         (gx#syntax-e _e152658152687_)))
                                    (let ((_hd152680152710_
                                           (##car _e152679152707_))
                                          (_tl152681152712_
                                           (##cdr _e152679152707_)))
                                      (if (and (gx#identifier?
                                                _hd152680152710_)
                                               (gx#core-identifier=?
                                                _hd152680152710_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152657_
                                               (gx#core-expand-define-alias%
                                                _hd152650_))
                                              (_E152678152703_))
                                          (_E152678152703_))))
                                  (_E152678152703_))))
                           (_E152664152727_
                            (lambda ()
                              (if (gx#stx-pair? _e152658152687_)
                                  (let ((_e152675152719_
                                         (gx#syntax-e _e152658152687_)))
                                    (let ((_hd152676152722_
                                           (##car _e152675152719_))
                                          (_tl152677152724_
                                           (##cdr _e152675152719_)))
                                      (if (and (gx#identifier?
                                                _hd152676152722_)
                                               (gx#core-identifier=?
                                                _hd152676152722_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152657_
                                               (gx#core-expand-define-syntax%
                                                _hd152650_))
                                              (_E152674152715_))
                                          (_E152674152715_))))
                                  (_E152674152715_))))
                           (_E152660152759_
                            (lambda ()
                              (if (gx#stx-pair? _e152658152687_)
                                  (let ((_e152665152731_
                                         (gx#syntax-e _e152658152687_)))
                                    (let ((_hd152666152734_
                                           (##car _e152665152731_))
                                          (_tl152667152736_
                                           (##cdr _e152665152731_)))
                                      (if (and (gx#identifier?
                                                _hd152666152734_)
                                               (gx#core-identifier=?
                                                _hd152666152734_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152667152736_)
                                              (let ((_e152668152739_
                                                     (gx#syntax-e
                                                      _tl152667152736_)))
                                                (let ((_hd152669152742_
                                                       (##car _e152668152739_))
                                                      (_tl152670152744_
                                                       (##cdr _e152668152739_)))
                                                  (let ((_hd-bind152747_
                                                         _hd152669152742_))
                                                    (if (gx#stx-pair?
                                                         _tl152670152744_)
                                                        (let ((_e152671152749_
                                                               (gx#syntax-e
                                                                _tl152670152744_)))
                                                          (let ((_hd152672152752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152671152749_))
                        (_tl152673152754_ (##cdr _e152671152749_)))
                    (let ((_expr152757_ _hd152672152752_))
                      (if (gx#stx-null? _tl152673152754_)
                          (if (gx#core-bind-values? _hd-bind152747_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152747_)
                                (_K152657_ _hd152650_))
                              (_E152664152727_))
                          (_E152664152727_)))))
                (_E152664152727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152664152727_))
                                          (_E152664152727_))))
                                  (_E152664152727_))))
                           (_E152659152771_
                            (lambda ()
                              (if (gx#stx-pair? _e152658152687_)
                                  (let ((_e152661152763_
                                         (gx#syntax-e _e152658152687_)))
                                    (let ((_hd152662152766_
                                           (##car _e152661152763_))
                                          (_tl152663152768_
                                           (##cdr _e152661152763_)))
                                      (if (and (gx#identifier?
                                                _hd152662152766_)
                                               (gx#core-identifier=?
                                                _hd152662152766_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152657_
                                               (gx#core-expand-begin-syntax%
                                                _hd152650_))
                                              (_E152660152759_))
                                          (_E152660152759_))))
                                  (_E152660152759_)))))
                      (_E152659152771_))))
                 (_eval-body152531_
                  (lambda (_rbody152539_)
                    (let _lp152541_ ((_rest152543_ _rbody152539_)
                                     (_body152544_ '())
                                     (_ebody152545_ '()))
                      (let* ((_rest152546152554_ _rest152543_)
                             (_else152548152562_
                              (lambda ()
                                (values _body152544_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152545_)
                                          (gx#stx-source _stx152528_))))))
                             (_K152550152638_
                              (lambda (_rest152565_ _hd152566_)
                                (let* ((_e152567152584_ _hd152566_)
                                       (_E152579152588_
                                        (lambda ()
                                          (_lp152541_
                                           _rest152565_
                                           (cons _hd152566_ _body152544_)
                                           (cons _hd152566_ _ebody152545_))))
                                       (_E152569152600_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152567152584_)
                                              (let ((_e152580152592_
                                                     (gx#syntax-e
                                                      _e152567152584_)))
                                                (let ((_hd152581152595_
                                                       (##car _e152580152592_))
                                                      (_tl152582152597_
                                                       (##cdr _e152580152592_)))
                                                  (if (and (gx#identifier?
                                                            _hd152581152595_)
                                                           (gx#core-identifier=?
                                                            _hd152581152595_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152541_
                                                           _rest152565_
                                                           (cons _hd152566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152544_)
                   _ebody152545_)
                  (_E152579152588_))
              (_E152579152588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152579152588_))))
                                       (_E152568152634_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152567152584_)
                                              (let ((_e152570152604_
                                                     (gx#syntax-e
                                                      _e152567152584_)))
                                                (let ((_hd152571152607_
                                                       (##car _e152570152604_))
                                                      (_tl152572152609_
                                                       (##cdr _e152570152604_)))
                                                  (if (and (gx#identifier?
                                                            _hd152571152607_)
                                                           (gx#core-identifier=?
                                                            _hd152571152607_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152572152609_)
                                                          (let ((_e152573152612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152572152609_)))
                    (let ((_hd152574152615_ (##car _e152573152612_))
                          (_tl152575152617_ (##cdr _e152573152612_)))
                      (let ((_hd-bind152620_ _hd152574152615_))
                        (if (gx#stx-pair? _tl152575152617_)
                            (let ((_e152576152622_
                                   (gx#syntax-e _tl152575152617_)))
                              (let ((_hd152577152625_ (##car _e152576152622_))
                                    (_tl152578152627_ (##cdr _e152576152622_)))
                                (let ((_expr152630_ _hd152577152625_))
                                  (if (gx#stx-null? _tl152578152627_)
                                      (if '#t
                                          (let ((_ehd152632_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152620_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152630_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152566_))))
                                            (_lp152541_
                                             _rest152565_
                                             (cons _ehd152632_ _body152544_)
                                             (cons _ehd152632_ _ebody152545_)))
                                          (_E152569152600_))
                                      (_E152569152600_)))))
                            (_E152569152600_)))))
                  (_E152569152600_))
              (_E152569152600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152569152600_)))))
                                  (_E152568152634_)))))
                        (if (##pair? _rest152546152554_)
                            (let ((_hd152551152641_ (##car _rest152546152554_))
                                  (_tl152552152643_
                                   (##cdr _rest152546152554_)))
                              (let* ((_hd152646_ _hd152551152641_)
                                     (_rest152648_ _tl152552152643_))
                                (_K152550152638_ _rest152648_ _hd152646_)))
                            (_else152548152562_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152534_
                     (gx#core-expand-block__1
                      _stx152528_
                      _expand-special152530_
                      '#f))
                    (_g157266_ (_eval-body152531_ _rbody152534_)))
               (begin
                 (let ((_g157267_
                        (if (##values? _g157266_)
                            (##vector-length _g157266_)
                            1)))
                   (if (not (##fx= _g157267_ 2))
                       (error "Context expects 2 values" _g157267_)))
                 (let ((_expanded-body152536_ (##vector-ref _g157266_ 0))
                       (_value152537_ (##vector-ref _g157266_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152536_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152537_ '())))
                    (gx#stx-source _stx152528_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152498_)
        (let* ((_e152499152506_ _stx152498_)
               (_E152501152510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152499152506_)))
               (_E152500152524_
                (lambda ()
                  (if (gx#stx-pair? _e152499152506_)
                      (let ((_e152502152514_ (gx#syntax-e _e152499152506_)))
                        (let ((_hd152503152517_ (##car _e152502152514_))
                              (_tl152504152519_ (##cdr _e152502152514_)))
                          (let ((_body152522_ _tl152504152519_))
                            (if (gx#stx-list? _body152522_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152522_)
                                 (gx#stx-source _stx152498_))
                                (_E152501152510_)))))
                      (_E152501152510_)))))
          (_E152500152524_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152496_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152496_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152442_)
        (let* ((_e152443152456_ _stx152442_)
               (_E152445152460_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152443152456_)))
               (_E152444152492_
                (lambda ()
                  (if (gx#stx-pair? _e152443152456_)
                      (let ((_e152446152464_ (gx#syntax-e _e152443152456_)))
                        (let ((_hd152447152467_ (##car _e152446152464_))
                              (_tl152448152469_ (##cdr _e152446152464_)))
                          (if (gx#stx-pair? _tl152448152469_)
                              (let ((_e152449152472_
                                     (gx#syntax-e _tl152448152469_)))
                                (let ((_hd152450152475_
                                       (##car _e152449152472_))
                                      (_tl152451152477_
                                       (##cdr _e152449152472_)))
                                  (let ((_ann152480_ _hd152450152475_))
                                    (if (gx#stx-pair? _tl152451152477_)
                                        (let ((_e152452152482_
                                               (gx#syntax-e _tl152451152477_)))
                                          (let ((_hd152453152485_
                                                 (##car _e152452152482_))
                                                (_tl152454152487_
                                                 (##cdr _e152452152482_)))
                                            (let ((_expr152490_
                                                   _hd152453152485_))
                                              (if (gx#stx-null?
                                                   _tl152454152487_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152490_)
                                 '())))
               (gx#stx-source _stx152442_))
              (_E152445152460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152445152460_)))))
                                        (_E152445152460_)))))
                              (_E152445152460_))))
                      (_E152445152460_)))))
          (_E152444152492_))))
    (define gx#core-expand-local-block
      (lambda (_stx152166_ _body152167_)
        (letrec ((_expand-special152169_
                  (lambda (_hd152437_ _K152438_ _rest152439_ _r152440_)
                    (_K152438_
                     '()
                     (cons (_expand-internal152170_ _hd152437_ _rest152439_)
                           _r152440_))))
                 (_expand-internal152170_
                  (lambda (_hd152433_ _rest152434_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152172_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152433_ _rest152434_))
                          (gx#stx-source _stx152166_))
                         _expand-internal-special152171_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157260
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157260)
                       __obj157260))))
                 (_expand-internal-special152171_
                  (lambda (_hd152328_ _K152329_ _rest152330_ _r152331_)
                    (let* ((_e152332152357_ _hd152328_)
                           (_E152352152361_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152332152357_)))
                           (_E152348152373_
                            (lambda ()
                              (if (gx#stx-pair? _e152332152357_)
                                  (let ((_e152353152365_
                                         (gx#syntax-e _e152332152357_)))
                                    (let ((_hd152354152368_
                                           (##car _e152353152365_))
                                          (_tl152355152370_
                                           (##cdr _e152353152365_)))
                                      (if (and (gx#identifier?
                                                _hd152354152368_)
                                               (gx#core-identifier=?
                                                _hd152354152368_
                                                '%#declare))
                                          (if '#t
                                              (_K152329_
                                               _rest152330_
                                               (cons (gx#core-expand-declare%
                                                      _hd152328_)
                                                     _r152331_))
                                              (_E152352152361_))
                                          (_E152352152361_))))
                                  (_E152352152361_))))
                           (_E152344152385_
                            (lambda ()
                              (if (gx#stx-pair? _e152332152357_)
                                  (let ((_e152349152377_
                                         (gx#syntax-e _e152332152357_)))
                                    (let ((_hd152350152380_
                                           (##car _e152349152377_))
                                          (_tl152351152382_
                                           (##cdr _e152349152377_)))
                                      (if (and (gx#identifier?
                                                _hd152350152380_)
                                               (gx#core-identifier=?
                                                _hd152350152380_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152328_)
                                                (_K152329_
                                                 _rest152330_
                                                 _r152331_))
                                              (_E152348152373_))
                                          (_E152348152373_))))
                                  (_E152348152373_))))
                           (_E152334152397_
                            (lambda ()
                              (if (gx#stx-pair? _e152332152357_)
                                  (let ((_e152345152389_
                                         (gx#syntax-e _e152332152357_)))
                                    (let ((_hd152346152392_
                                           (##car _e152345152389_))
                                          (_tl152347152394_
                                           (##cdr _e152345152389_)))
                                      (if (and (gx#identifier?
                                                _hd152346152392_)
                                               (gx#core-identifier=?
                                                _hd152346152392_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152328_)
                                                (_K152329_
                                                 _rest152330_
                                                 _r152331_))
                                              (_E152344152385_))
                                          (_E152344152385_))))
                                  (_E152344152385_))))
                           (_E152333152429_
                            (lambda ()
                              (if (gx#stx-pair? _e152332152357_)
                                  (let ((_e152335152401_
                                         (gx#syntax-e _e152332152357_)))
                                    (let ((_hd152336152404_
                                           (##car _e152335152401_))
                                          (_tl152337152406_
                                           (##cdr _e152335152401_)))
                                      (if (and (gx#identifier?
                                                _hd152336152404_)
                                               (gx#core-identifier=?
                                                _hd152336152404_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152337152406_)
                                              (let ((_e152338152409_
                                                     (gx#syntax-e
                                                      _tl152337152406_)))
                                                (let ((_hd152339152412_
                                                       (##car _e152338152409_))
                                                      (_tl152340152414_
                                                       (##cdr _e152338152409_)))
                                                  (let ((_hd-bind152417_
                                                         _hd152339152412_))
                                                    (if (gx#stx-pair?
                                                         _tl152340152414_)
                                                        (let ((_e152341152419_
                                                               (gx#syntax-e
                                                                _tl152340152414_)))
                                                          (let ((_hd152342152422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152341152419_))
                        (_tl152343152424_ (##cdr _e152341152419_)))
                    (let ((_expr152427_ _hd152342152422_))
                      (if (gx#stx-null? _tl152343152424_)
                          (if (gx#core-bind-values? _hd-bind152417_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152417_)
                                (_K152329_
                                 _rest152330_
                                 (cons _hd152328_ _r152331_)))
                              (_E152334152397_))
                          (_E152334152397_)))))
                (_E152334152397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152334152397_))
                                          (_E152334152397_))))
                                  (_E152334152397_)))))
                      (_E152333152429_))))
                 (_wrap-internal152172_
                  (lambda (_rbody152174_)
                    (let _lp152176_ ((_rest152178_ _rbody152174_)
                                     (_decls152179_ '())
                                     (_bind152180_ '())
                                     (_body152181_ '()))
                      (let* ((_e152182152189_ _rest152178_)
                             (_E152184152238_
                              (lambda ()
                                (let* ((_body152233_
                                        (let* ((_body152192152202_
                                                _body152181_)
                                               (_else152195152210_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152181_)
                                                   (gx#stx-source
                                                    _stx152166_)))))
                                          (let ((_K152200152230_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152166_)))
                                                (_K152197152216_
                                                 (lambda (_expr152214_)
                                                   _expr152214_)))
                                            (let ((_try-match152194152226_
                                                   (lambda ()
                                                     (if (##pair? _body152192152202_)
                                                         (let ((_tl152199152221_
                                                                (##cdr _body152192152202_))
                                                               (_hd152198152219_
                                                                (##car _body152192152202_)))
                                                           (if (##null? _tl152199152221_)
                                                               (let ((_expr152224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152198152219_))
                         (_K152197152216_ _expr152224_))
                       (_else152195152210_)))
                 (_else152195152210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152192152202_)
                                                  (_K152200152230_)
                                                  (_try-match152194152226_))))))
                                       (_body152235_
                                        (if (null? _bind152180_)
                                            _body152233_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152180_
                                                         (cons _body152233_
                                                               '())))
                                             (gx#stx-source _stx152166_)))))
                                  (if (null? _decls152179_)
                                      _body152235_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152179_
                                                   (cons _body152235_ '())))
                                       (gx#stx-source _stx152166_))))))
                             (_E152183152324_
                              (lambda ()
                                (if (gx#stx-pair? _e152182152189_)
                                    (let ((_e152185152242_
                                           (gx#syntax-e _e152182152189_)))
                                      (let ((_hd152186152245_
                                             (##car _e152185152242_))
                                            (_tl152187152247_
                                             (##cdr _e152185152242_)))
                                        (let* ((_hd152250_ _hd152186152245_)
                                               (_rest152252_ _tl152187152247_))
                                          (if '#t
                                              (let* ((_e152253152270_
                                                      _hd152250_)
                                                     (_E152265152274_
                                                      (lambda ()
                                                        (if (null? _bind152180_)
                                                            (_lp152176_
                                                             _rest152252_
                                                             _decls152179_
                                                             _bind152180_
                                                             (cons _hd152250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152181_))
                    (_lp152176_
                     _rest152252_
                     _decls152179_
                     (cons (cons '#f (cons _hd152250_ '())) _bind152180_)
                     _body152181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152255152288_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152253152270_)
                                                            (let ((_e152266152278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152253152270_)))
                      (let ((_hd152267152281_ (##car _e152266152278_))
                            (_tl152268152283_ (##cdr _e152266152278_)))
                        (if (and (gx#identifier? _hd152267152281_)
                                 (gx#core-identifier=?
                                  _hd152267152281_
                                  '%#declare))
                            (let ((_xdecls152286_ _tl152268152283_))
                              (if '#t
                                  (_lp152176_
                                   _rest152252_
                                   (gx#stx-foldr
                                    cons
                                    _decls152179_
                                    _xdecls152286_)
                                   _bind152180_
                                   _body152181_)
                                  (_E152265152274_)))
                            (_E152265152274_))))
                    (_E152265152274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152254152320_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152253152270_)
                                                            (let ((_e152256152292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152253152270_)))
                      (let ((_hd152257152295_ (##car _e152256152292_))
                            (_tl152258152297_ (##cdr _e152256152292_)))
                        (if (and (gx#identifier? _hd152257152295_)
                                 (gx#core-identifier=?
                                  _hd152257152295_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152258152297_)
                                (let ((_e152259152300_
                                       (gx#syntax-e _tl152258152297_)))
                                  (let ((_hd152260152303_
                                         (##car _e152259152300_))
                                        (_tl152261152305_
                                         (##cdr _e152259152300_)))
                                    (let ((_hd-bind152308_ _hd152260152303_))
                                      (if (gx#stx-pair? _tl152261152305_)
                                          (let ((_e152262152310_
                                                 (gx#syntax-e
                                                  _tl152261152305_)))
                                            (let ((_hd152263152313_
                                                   (##car _e152262152310_))
                                                  (_tl152264152315_
                                                   (##cdr _e152262152310_)))
                                              (let ((_expr152318_
                                                     _hd152263152313_))
                                                (if (gx#stx-null?
                                                     _tl152264152315_)
                                                    (if '#t
                                                        (_lp152176_
                                                         _rest152252_
                                                         _decls152179_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152308_)
                             (cons (gx#core-expand-expression _expr152318_)
                                   '()))
                       _bind152180_)
                 _body152181_)
                (_E152255152288_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152255152288_)))))
                                          (_E152255152288_)))))
                                (_E152255152288_))
                            (_E152255152288_))))
                    (_E152255152288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152254152320_))
                                              (_E152184152238_)))))
                                    (_E152184152238_)))))
                        (_E152183152324_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152167_)
            (gx#stx-source _stx152166_))
           _expand-special152169_))))
    (define gx#core-expand-declare%
      (lambda (_stx152104_)
        (let* ((_e152105152112_ _stx152104_)
               (_E152107152116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152105152112_)))
               (_E152106152162_
                (lambda ()
                  (if (gx#stx-pair? _e152105152112_)
                      (let ((_e152108152120_ (gx#syntax-e _e152105152112_)))
                        (let ((_hd152109152123_ (##car _e152108152120_))
                              (_tl152110152125_ (##cdr _e152108152120_)))
                          (let ((_body152128_ _tl152110152125_))
                            (if (gx#stx-list? _body152128_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152130_)
                                     (let* ((_e152131152138_ _decl152130_)
                                            (_E152133152142_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152131152138_)))
                                            (_E152132152158_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152131152138_)
                                                   (let ((_e152134152146_
                                                          (gx#syntax-e
                                                           _e152131152138_)))
                                                     (let ((_hd152135152149_
                                                            (##car _e152134152146_))
                                                           (_tl152136152151_
                                                            (##cdr _e152134152146_)))
                                                       (let* ((_head152154_
                                                               _hd152135152149_)
                                                              (_args152156_
                                                               _tl152136152151_))
                                                         (if (gx#stx-list?
                                                              _args152156_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152130_)
                                                             (_E152133152142_)))))
                                                   (_E152133152142_)))))
                                       (_E152132152158_)))
                                   _body152128_))
                                 (gx#stx-source _stx152104_))
                                (_E152107152116_)))))
                      (_E152107152116_)))))
          (_E152106152162_))))
    (define gx#core-expand-extern%
      (lambda (_stx152008_)
        (let* ((_e152009152016_ _stx152008_)
               (_E152011152020_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152009152016_)))
               (_E152010152100_
                (lambda ()
                  (if (gx#stx-pair? _e152009152016_)
                      (let ((_e152012152024_ (gx#syntax-e _e152009152016_)))
                        (let ((_hd152013152027_ (##car _e152012152024_))
                              (_tl152014152029_ (##cdr _e152012152024_)))
                          (let ((_body152032_ _tl152014152029_))
                            (if '#t
                                (let _lp152034_ ((_rest152036_ _body152032_)
                                                 (_r152037_ '()))
                                  (let* ((_e152038152052_ _rest152036_)
                                         (_E152050152056_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152008_)))
                                         (_E152040152060_
                                          (lambda ()
                                            (if (gx#stx-null? _e152038152052_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152037_))
                                                     (gx#stx-source
                                                      _stx152008_))
                                                    (_E152050152056_))
                                                (_E152050152056_))))
                                         (_E152039152096_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152038152052_)
                                                (let ((_e152041152064_
                                                       (gx#syntax-e
                                                        _e152038152052_)))
                                                  (let ((_hd152042152067_
                                                         (##car _e152041152064_))
                                                        (_tl152043152069_
                                                         (##cdr _e152041152064_)))
                                                    (if (gx#stx-pair?
                                                         _hd152042152067_)
                                                        (let ((_e152044152072_
                                                               (gx#syntax-e
                                                                _hd152042152067_)))
                                                          (let ((_hd152045152075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152044152072_))
                        (_tl152046152077_ (##cdr _e152044152072_)))
                    (let ((_id152080_ _hd152045152075_))
                      (if (gx#stx-pair? _tl152046152077_)
                          (let ((_e152047152082_
                                 (gx#syntax-e _tl152046152077_)))
                            (let ((_hd152048152085_ (##car _e152047152082_))
                                  (_tl152049152087_ (##cdr _e152047152082_)))
                              (let ((_eid152090_ _hd152048152085_))
                                (if (gx#stx-null? _tl152049152087_)
                                    (let ((_rest152092_ _tl152043152069_))
                                      (if (and (gx#identifier? _id152080_)
                                               (gx#identifier? _eid152090_))
                                          (let ((_eid152094_
                                                 (gx#stx-e _eid152090_)))
                                            (gx#core-bind-extern!__0
                                             _id152080_
                                             _eid152094_)
                                            (_lp152034_
                                             _rest152092_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152080_)
                                                         (cons _eid152094_
                                                               '()))
                                                   _r152037_)))
                                          (_E152040152060_)))
                                    (_E152040152060_)))))
                          (_E152040152060_)))))
                (_E152040152060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152040152060_)))))
                                    (_E152039152096_)))
                                (_E152011152020_)))))
                      (_E152011152020_)))))
          (_E152010152100_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151954_)
        (let* ((_e151955151968_ _stx151954_)
               (_E151957151972_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151955151968_)))
               (_E151956152004_
                (lambda ()
                  (if (gx#stx-pair? _e151955151968_)
                      (let ((_e151958151976_ (gx#syntax-e _e151955151968_)))
                        (let ((_hd151959151979_ (##car _e151958151976_))
                              (_tl151960151981_ (##cdr _e151958151976_)))
                          (if (gx#stx-pair? _tl151960151981_)
                              (let ((_e151961151984_
                                     (gx#syntax-e _tl151960151981_)))
                                (let ((_hd151962151987_
                                       (##car _e151961151984_))
                                      (_tl151963151989_
                                       (##cdr _e151961151984_)))
                                  (let ((_hd151992_ _hd151962151987_))
                                    (if (gx#stx-pair? _tl151963151989_)
                                        (let ((_e151964151994_
                                               (gx#syntax-e _tl151963151989_)))
                                          (let ((_hd151965151997_
                                                 (##car _e151964151994_))
                                                (_tl151966151999_
                                                 (##cdr _e151964151994_)))
                                            (let ((_expr152002_
                                                   _hd151965151997_))
                                              (if (gx#stx-null?
                                                   _tl151966151999_)
                                                  (if (gx#core-bind-values?
                                                       _hd151992_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd151992_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151992_)
                             (cons (gx#core-expand-expression _expr152002_)
                                   '())))
                 (gx#stx-source _stx151954_)))
              (_E151957151972_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151957151972_)))))
                                        (_E151957151972_)))))
                              (_E151957151972_))))
                      (_E151957151972_)))))
          (_E151956152004_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151898_)
        (let* ((_e151899151912_ _stx151898_)
               (_E151901151916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151899151912_)))
               (_E151900151950_
                (lambda ()
                  (if (gx#stx-pair? _e151899151912_)
                      (let ((_e151902151920_ (gx#syntax-e _e151899151912_)))
                        (let ((_hd151903151923_ (##car _e151902151920_))
                              (_tl151904151925_ (##cdr _e151902151920_)))
                          (if (gx#stx-pair? _tl151904151925_)
                              (let ((_e151905151928_
                                     (gx#syntax-e _tl151904151925_)))
                                (let ((_hd151906151931_
                                       (##car _e151905151928_))
                                      (_tl151907151933_
                                       (##cdr _e151905151928_)))
                                  (let ((_id151936_ _hd151906151931_))
                                    (if (gx#stx-pair? _tl151907151933_)
                                        (let ((_e151908151938_
                                               (gx#syntax-e _tl151907151933_)))
                                          (let ((_hd151909151941_
                                                 (##car _e151908151938_))
                                                (_tl151910151943_
                                                 (##cdr _e151908151938_)))
                                            (let ((_binding-id151946_
                                                   _hd151909151941_))
                                              (if (gx#stx-null?
                                                   _tl151910151943_)
                                                  (if (and (gx#identifier?
                                                            _id151936_)
                                                           (gx#identifier?
                                                            _binding-id151946_))
                                                      (let ((_eid151948_
                                                             (gx#stx-e
                                                              _binding-id151946_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151936_
                                                         _eid151948_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151936_)
                             (cons _eid151948_ '())))))
              (_E151901151916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151901151916_)))))
                                        (_E151901151916_)))))
                              (_E151901151916_))))
                      (_E151901151916_)))))
          (_E151900151950_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151841_)
        (let* ((_e151842151855_ _stx151841_)
               (_E151844151859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151842151855_)))
               (_E151843151894_
                (lambda ()
                  (if (gx#stx-pair? _e151842151855_)
                      (let ((_e151845151863_ (gx#syntax-e _e151842151855_)))
                        (let ((_hd151846151866_ (##car _e151845151863_))
                              (_tl151847151868_ (##cdr _e151845151863_)))
                          (if (gx#stx-pair? _tl151847151868_)
                              (let ((_e151848151871_
                                     (gx#syntax-e _tl151847151868_)))
                                (let ((_hd151849151874_
                                       (##car _e151848151871_))
                                      (_tl151850151876_
                                       (##cdr _e151848151871_)))
                                  (let ((_id151879_ _hd151849151874_))
                                    (if (gx#stx-pair? _tl151850151876_)
                                        (let ((_e151851151881_
                                               (gx#syntax-e _tl151850151876_)))
                                          (let ((_hd151852151884_
                                                 (##car _e151851151881_))
                                                (_tl151853151886_
                                                 (##cdr _e151851151881_)))
                                            (let ((_expr151889_
                                                   _hd151852151884_))
                                              (if (gx#stx-null?
                                                   _tl151853151886_)
                                                  (if (gx#identifier?
                                                       _id151879_)
                                                      (let ((_g157268_
                                                             (gx#core-expand-expression+1
                                                              _expr151889_)))
                                                        (begin
                                                          (let ((_g157269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157268_)
                             (##vector-length _g157268_)
                             1)))
                    (if (not (##fx= _g157269_ 2))
                        (error "Context expects 2 values" _g157269_)))
                  (let ((_e-stx151891_ (##vector-ref _g157268_ 0))
                        (_e151892_ (##vector-ref _g157268_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151879_ _e151892_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151879_)
                                   (cons _e-stx151891_ '())))
                       (gx#stx-source _stx151841_))))))
              (_E151844151859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151844151859_)))))
                                        (_E151844151859_)))))
                              (_E151844151859_))))
                      (_E151844151859_)))))
          (_E151843151894_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151785_)
        (let* ((_e151786151799_ _stx151785_)
               (_E151788151803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151786151799_)))
               (_E151787151837_
                (lambda ()
                  (if (gx#stx-pair? _e151786151799_)
                      (let ((_e151789151807_ (gx#syntax-e _e151786151799_)))
                        (let ((_hd151790151810_ (##car _e151789151807_))
                              (_tl151791151812_ (##cdr _e151789151807_)))
                          (if (gx#stx-pair? _tl151791151812_)
                              (let ((_e151792151815_
                                     (gx#syntax-e _tl151791151812_)))
                                (let ((_hd151793151818_
                                       (##car _e151792151815_))
                                      (_tl151794151820_
                                       (##cdr _e151792151815_)))
                                  (let ((_id151823_ _hd151793151818_))
                                    (if (gx#stx-pair? _tl151794151820_)
                                        (let ((_e151795151825_
                                               (gx#syntax-e _tl151794151820_)))
                                          (let ((_hd151796151828_
                                                 (##car _e151795151825_))
                                                (_tl151797151830_
                                                 (##cdr _e151795151825_)))
                                            (let ((_alias-id151833_
                                                   _hd151796151828_))
                                              (if (gx#stx-null?
                                                   _tl151797151830_)
                                                  (if (and (gx#identifier?
                                                            _id151823_)
                                                           (gx#identifier?
                                                            _alias-id151833_))
                                                      (let ((_alias-id151835_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151833_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151823_
                                                         _alias-id151835_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151823_)
                             (cons _alias-id151835_ '())))))
              (_E151788151803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151788151803_)))))
                                        (_E151788151803_)))))
                              (_E151788151803_))))
                      (_E151788151803_)))))
          (_E151787151837_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151728_ _wrap?151729_)
        (let* ((_e151730151740_ _stx151728_)
               (_E151732151744_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151730151740_)))
               (_E151731151771_
                (lambda ()
                  (if (gx#stx-pair? _e151730151740_)
                      (let ((_e151733151748_ (gx#syntax-e _e151730151740_)))
                        (let ((_hd151734151751_ (##car _e151733151748_))
                              (_tl151735151753_ (##cdr _e151733151748_)))
                          (if (gx#stx-pair? _tl151735151753_)
                              (let ((_e151736151756_
                                     (gx#syntax-e _tl151735151753_)))
                                (let ((_hd151737151759_
                                       (##car _e151736151756_))
                                      (_tl151738151761_
                                       (##cdr _e151736151756_)))
                                  (let* ((_hd151764_ _hd151737151759_)
                                         (_body151766_ _tl151738151761_))
                                    (if (gx#core-bind-values? _hd151764_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151764_)
                                           (let ((_body151769_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151764_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151728_
                                                               _body151766_)
                                                              '()))))
                                             (if _wrap?151729_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151769_)
                                                  (gx#stx-source _stx151728_))
                                                 _body151769_)))
                                         gx#current-expander-context
                                         (let ((__obj157261
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157261)
                                           __obj157261))
                                        (_E151732151744_)))))
                              (_E151732151744_))))
                      (_E151732151744_)))))
          (_E151731151771_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151778_)
        (let ((_wrap?151780_ '#t))
          (gx#core-expand-lambda%__% _stx151778_ _wrap?151780_))))
    (define gx#core-expand-lambda%
      (lambda _g157271_
        (let ((_g157270_ (##length _g157271_)))
          (cond ((##fx= _g157270_ 1)
                 (apply (lambda (_stx151778_)
                          (gx#core-expand-lambda%__0 _stx151778_))
                        _g157271_))
                ((##fx= _g157270_ 2)
                 (apply (lambda (_stx151782_ _wrap?151783_)
                          (gx#core-expand-lambda%__%
                           _stx151782_
                           _wrap?151783_))
                        _g157271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157271_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151692_)
        (let* ((_e151693151700_ _stx151692_)
               (_E151695151704_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151693151700_)))
               (_E151694151723_
                (lambda ()
                  (if (gx#stx-pair? _e151693151700_)
                      (let ((_e151696151708_ (gx#syntax-e _e151693151700_)))
                        (let ((_hd151697151711_ (##car _e151696151708_))
                              (_tl151698151713_ (##cdr _e151696151708_)))
                          (let ((_clauses151716_ _tl151698151713_))
                            (if (gx#stx-list? _clauses151716_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151718_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151718_)
                                       (let ((_$e151720_
                                              (gx#stx-source _clause151718_)))
                                         (if _$e151720_
                                             _$e151720_
                                             (gx#stx-source _stx151692_))))
                                      '#f))
                                   _clauses151716_))
                                 (gx#stx-source _stx151692_))
                                (_E151695151704_)))))
                      (_E151695151704_)))))
          (_E151694151723_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151646_)
        (let* ((_e151647151657_ _stx151646_)
               (_E151649151661_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151647151657_)))
               (_E151648151688_
                (lambda ()
                  (if (gx#stx-pair? _e151647151657_)
                      (let ((_e151650151665_ (gx#syntax-e _e151647151657_)))
                        (let ((_hd151651151668_ (##car _e151650151665_))
                              (_tl151652151670_ (##cdr _e151650151665_)))
                          (if (gx#stx-pair? _tl151652151670_)
                              (let ((_e151653151673_
                                     (gx#syntax-e _tl151652151670_)))
                                (let ((_hd151654151676_
                                       (##car _e151653151673_))
                                      (_tl151655151678_
                                       (##cdr _e151653151673_)))
                                  (let* ((_hd151681_ _hd151654151676_)
                                         (_body151683_ _tl151655151678_))
                                    (if (gx#core-expand-let-bind? _hd151681_)
                                        (let ((_expressions151685_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151681_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151681_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151681_
                                                           _expressions151685_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151646_
                         _body151683_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151646_)))
                                           gx#current-expander-context
                                           (let ((__obj157262
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157262)
                                             __obj157262)))
                                        (_E151649151661_)))))
                              (_E151649151661_))))
                      (_E151649151661_)))))
          (_E151648151688_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151591_ _form151592_)
        (let* ((_e151593151603_ _stx151591_)
               (_E151595151607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151593151603_)))
               (_E151594151632_
                (lambda ()
                  (if (gx#stx-pair? _e151593151603_)
                      (let ((_e151596151611_ (gx#syntax-e _e151593151603_)))
                        (let ((_hd151597151614_ (##car _e151596151611_))
                              (_tl151598151616_ (##cdr _e151596151611_)))
                          (if (gx#stx-pair? _tl151598151616_)
                              (let ((_e151599151619_
                                     (gx#syntax-e _tl151598151616_)))
                                (let ((_hd151600151622_
                                       (##car _e151599151619_))
                                      (_tl151601151624_
                                       (##cdr _e151599151619_)))
                                  (let* ((_hd151627_ _hd151600151622_)
                                         (_body151629_ _tl151601151624_))
                                    (if (gx#core-expand-let-bind? _hd151627_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151627_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151592_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151627_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151627_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151591_
                                                               _body151629_)
                                                              '())))
                                            (gx#stx-source _stx151591_)))
                                         gx#current-expander-context
                                         (let ((__obj157263
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157263)
                                           __obj157263))
                                        (_E151595151607_)))))
                              (_E151595151607_))))
                      (_E151595151607_)))))
          (_E151594151632_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151639_)
        (let ((_form151641_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151639_ _form151641_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157273_
        (let ((_g157272_ (##length _g157273_)))
          (cond ((##fx= _g157272_ 1)
                 (apply (lambda (_stx151639_)
                          (gx#core-expand-letrec-values%__0 _stx151639_))
                        _g157273_))
                ((##fx= _g157272_ 2)
                 (apply (lambda (_stx151643_ _form151644_)
                          (gx#core-expand-letrec-values%__%
                           _stx151643_
                           _form151644_))
                        _g157273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157273_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151588_)
        (gx#core-expand-letrec-values%__% _stx151588_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151545_)
        (if (gx#stx-list? _stx151545_)
            (gx#stx-andmap
             (lambda (_bind151547_)
               (let* ((_e151548151558_ _bind151547_)
                      (_E151550151562_ (lambda () '#f))
                      (_E151549151584_
                       (lambda ()
                         (if (gx#stx-pair? _e151548151558_)
                             (let ((_e151551151566_
                                    (gx#syntax-e _e151548151558_)))
                               (let ((_hd151552151569_ (##car _e151551151566_))
                                     (_tl151553151571_
                                      (##cdr _e151551151566_)))
                                 (let ((_hd151574_ _hd151552151569_))
                                   (if (gx#stx-pair? _tl151553151571_)
                                       (let ((_e151554151576_
                                              (gx#syntax-e _tl151553151571_)))
                                         (let ((_hd151555151579_
                                                (##car _e151554151576_))
                                               (_tl151556151581_
                                                (##cdr _e151554151576_)))
                                           (if (gx#stx-null? _tl151556151581_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151574_)
                                                   (_E151550151562_))
                                               (_E151550151562_))))
                                       (_E151550151562_)))))
                             (_E151550151562_)))))
                 (_E151549151584_)))
             _stx151545_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151504_)
        (let* ((_e151505151515_ _bind151504_)
               (_E151507151519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151505151515_)))
               (_E151506151541_
                (lambda ()
                  (if (gx#stx-pair? _e151505151515_)
                      (let ((_e151508151523_ (gx#syntax-e _e151505151515_)))
                        (let ((_hd151509151526_ (##car _e151508151523_))
                              (_tl151510151528_ (##cdr _e151508151523_)))
                          (if (gx#stx-pair? _tl151510151528_)
                              (let ((_e151511151531_
                                     (gx#syntax-e _tl151510151528_)))
                                (let ((_hd151512151534_
                                       (##car _e151511151531_))
                                      (_tl151513151536_
                                       (##cdr _e151511151531_)))
                                  (let ((_expr151539_ _hd151512151534_))
                                    (if (gx#stx-null? _tl151513151536_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151539_)
                                            (_E151507151519_))
                                        (_E151507151519_)))))
                              (_E151507151519_))))
                      (_E151507151519_)))))
          (_E151506151541_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151463_)
        (let* ((_e151464151474_ _bind151463_)
               (_E151466151478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151464151474_)))
               (_E151465151500_
                (lambda ()
                  (if (gx#stx-pair? _e151464151474_)
                      (let ((_e151467151482_ (gx#syntax-e _e151464151474_)))
                        (let ((_hd151468151485_ (##car _e151467151482_))
                              (_tl151469151487_ (##cdr _e151467151482_)))
                          (let ((_hd151490_ _hd151468151485_))
                            (if (gx#stx-pair? _tl151469151487_)
                                (let ((_e151470151492_
                                       (gx#syntax-e _tl151469151487_)))
                                  (let ((_hd151471151495_
                                         (##car _e151470151492_))
                                        (_tl151472151497_
                                         (##cdr _e151470151492_)))
                                    (if (gx#stx-null? _tl151472151497_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151490_)
                                            (_E151466151478_))
                                        (_E151466151478_))))
                                (_E151466151478_)))))
                      (_E151466151478_)))))
          (_E151465151500_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151421_ _expr151422_)
        (let* ((_e151423151433_ _bind151421_)
               (_E151425151437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151423151433_)))
               (_E151424151459_
                (lambda ()
                  (if (gx#stx-pair? _e151423151433_)
                      (let ((_e151426151441_ (gx#syntax-e _e151423151433_)))
                        (let ((_hd151427151444_ (##car _e151426151441_))
                              (_tl151428151446_ (##cdr _e151426151441_)))
                          (let ((_hd151449_ _hd151427151444_))
                            (if (gx#stx-pair? _tl151428151446_)
                                (let ((_e151429151451_
                                       (gx#syntax-e _tl151428151446_)))
                                  (let ((_hd151430151454_
                                         (##car _e151429151451_))
                                        (_tl151431151456_
                                         (##cdr _e151429151451_)))
                                    (if (gx#stx-null? _tl151431151456_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151449_)
                                                  (cons _expr151422_ '()))
                                            (_E151425151437_))
                                        (_E151425151437_))))
                                (_E151425151437_)))))
                      (_E151425151437_)))))
          (_E151424151459_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151375_)
        (let* ((_e151376151386_ _stx151375_)
               (_E151378151390_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151376151386_)))
               (_E151377151417_
                (lambda ()
                  (if (gx#stx-pair? _e151376151386_)
                      (let ((_e151379151394_ (gx#syntax-e _e151376151386_)))
                        (let ((_hd151380151397_ (##car _e151379151394_))
                              (_tl151381151399_ (##cdr _e151379151394_)))
                          (if (gx#stx-pair? _tl151381151399_)
                              (let ((_e151382151402_
                                     (gx#syntax-e _tl151381151399_)))
                                (let ((_hd151383151405_
                                       (##car _e151382151402_))
                                      (_tl151384151407_
                                       (##cdr _e151382151402_)))
                                  (let* ((_hd151410_ _hd151383151405_)
                                         (_body151412_ _tl151384151407_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151410_)
                                        (let ((_expanders151414_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151410_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151410_
                                              _expanders151414_)
                                             (gx#core-expand-local-block
                                              _stx151375_
                                              _body151412_))
                                           gx#current-expander-context
                                           (let ((__obj157264
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157264)
                                             __obj157264)))
                                        (_E151378151390_)))))
                              (_E151378151390_))))
                      (_E151378151390_)))))
          (_E151377151417_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151324_)
        (let* ((_e151325151335_ _stx151324_)
               (_E151327151339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151325151335_)))
               (_E151326151371_
                (lambda ()
                  (if (gx#stx-pair? _e151325151335_)
                      (let ((_e151328151343_ (gx#syntax-e _e151325151335_)))
                        (let ((_hd151329151346_ (##car _e151328151343_))
                              (_tl151330151348_ (##cdr _e151328151343_)))
                          (if (gx#stx-pair? _tl151330151348_)
                              (let ((_e151331151351_
                                     (gx#syntax-e _tl151330151348_)))
                                (let ((_hd151332151354_
                                       (##car _e151331151351_))
                                      (_tl151333151356_
                                       (##cdr _e151331151351_)))
                                  (let* ((_hd151359_ _hd151332151354_)
                                         (_body151361_ _tl151333151356_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151359_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151359_
                                            (make-list
                                             (gx#stx-length _hd151359_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151363151366_
                                                     _g151364151368_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151363151366_
                                               _g151364151368_
                                               '#t))
                                            _hd151359_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151359_))
                                           (gx#core-expand-local-block
                                            _stx151324_
                                            _body151361_))
                                         gx#current-expander-context
                                         (let ((__obj157265
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157265)
                                           __obj157265))
                                        (_E151327151339_)))))
                              (_E151327151339_))))
                      (_E151327151339_)))))
          (_E151326151371_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151281_)
        (if (gx#stx-list? _stx151281_)
            (gx#stx-andmap
             (lambda (_bind151283_)
               (let* ((_e151284151294_ _bind151283_)
                      (_E151286151298_ (lambda () '#f))
                      (_E151285151320_
                       (lambda ()
                         (if (gx#stx-pair? _e151284151294_)
                             (let ((_e151287151302_
                                    (gx#syntax-e _e151284151294_)))
                               (let ((_hd151288151305_ (##car _e151287151302_))
                                     (_tl151289151307_
                                      (##cdr _e151287151302_)))
                                 (let ((_hd151310_ _hd151288151305_))
                                   (if (gx#stx-pair? _tl151289151307_)
                                       (let ((_e151290151312_
                                              (gx#syntax-e _tl151289151307_)))
                                         (let ((_hd151291151315_
                                                (##car _e151290151312_))
                                               (_tl151292151317_
                                                (##cdr _e151290151312_)))
                                           (if (gx#stx-null? _tl151292151317_)
                                               (if '#t
                                                   (gx#identifier? _hd151310_)
                                                   (_E151286151298_))
                                               (_E151286151298_))))
                                       (_E151286151298_)))))
                             (_E151286151298_)))))
                 (_E151285151320_)))
             _stx151281_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151238_)
        (let* ((_e151239151249_ _bind151238_)
               (_E151241151253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151239151249_)))
               (_E151240151277_
                (lambda ()
                  (if (gx#stx-pair? _e151239151249_)
                      (let ((_e151242151257_ (gx#syntax-e _e151239151249_)))
                        (let ((_hd151243151260_ (##car _e151242151257_))
                              (_tl151244151262_ (##cdr _e151242151257_)))
                          (if (gx#stx-pair? _tl151244151262_)
                              (let ((_e151245151265_
                                     (gx#syntax-e _tl151244151262_)))
                                (let ((_hd151246151268_
                                       (##car _e151245151265_))
                                      (_tl151247151270_
                                       (##cdr _e151245151265_)))
                                  (let ((_expr151273_ _hd151246151268_))
                                    (if (gx#stx-null? _tl151247151270_)
                                        (if '#t
                                            (let ((_g157274_
                                                   (gx#core-expand-expression+1
                                                    _expr151273_)))
                                              (begin
                                                (let ((_g157275_
                                                       (if (##values?
                                                            _g157274_)
                                                           (##vector-length
                                                            _g157274_)
                                                           1)))
                                                  (if (not (##fx= _g157275_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157275_)))
                                                (let ((_e151275_
                                                       (##vector-ref
                                                        _g157274_
                                                        1)))
                                                  _e151275_)))
                                            (_E151241151253_))
                                        (_E151241151253_)))))
                              (_E151241151253_))))
                      (_E151241151253_)))))
          (_E151240151277_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151183_ _e151184_ _rebind?151185_)
        (let* ((_e151186151196_ _bind151183_)
               (_E151188151200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151186151196_)))
               (_E151187151222_
                (lambda ()
                  (if (gx#stx-pair? _e151186151196_)
                      (let ((_e151189151204_ (gx#syntax-e _e151186151196_)))
                        (let ((_hd151190151207_ (##car _e151189151204_))
                              (_tl151191151209_ (##cdr _e151189151204_)))
                          (let ((_id151212_ _hd151190151207_))
                            (if (gx#stx-pair? _tl151191151209_)
                                (let ((_e151192151214_
                                       (gx#syntax-e _tl151191151209_)))
                                  (let ((_hd151193151217_
                                         (##car _e151192151214_))
                                        (_tl151194151219_
                                         (##cdr _e151192151214_)))
                                    (if (gx#stx-null? _tl151194151219_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151212_
                                             _e151184_
                                             _rebind?151185_)
                                            (_E151188151200_))
                                        (_E151188151200_))))
                                (_E151188151200_)))))
                      (_E151188151200_)))))
          (_E151187151222_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151229_ _e151230_)
        (let ((_rebind?151232_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151229_
           _e151230_
           _rebind?151232_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157277_
        (let ((_g157276_ (##length _g157277_)))
          (cond ((##fx= _g157276_ 2)
                 (apply (lambda (_bind151229_ _e151230_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151229_
                           _e151230_))
                        _g157277_))
                ((##fx= _g157276_ 3)
                 (apply (lambda (_bind151234_ _e151235_ _rebind?151236_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151234_
                           _e151235_
                           _rebind?151236_))
                        _g157277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157277_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151141_)
        (let* ((_e151142151152_ _stx151141_)
               (_E151144151156_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151142151152_)))
               (_E151143151178_
                (lambda ()
                  (if (gx#stx-pair? _e151142151152_)
                      (let ((_e151145151160_ (gx#syntax-e _e151142151152_)))
                        (let ((_hd151146151163_ (##car _e151145151160_))
                              (_tl151147151165_ (##cdr _e151145151160_)))
                          (if (gx#stx-pair? _tl151147151165_)
                              (let ((_e151148151168_
                                     (gx#syntax-e _tl151147151165_)))
                                (let ((_hd151149151171_
                                       (##car _e151148151168_))
                                      (_tl151150151173_
                                       (##cdr _e151148151168_)))
                                  (let ((_expr151176_ _hd151149151171_))
                                    (if (gx#stx-null? _tl151150151173_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151176_)
                                            (_E151144151156_))
                                        (_E151144151156_)))))
                              (_E151144151156_))))
                      (_E151144151156_)))))
          (_E151143151178_))))
    (define gx#core-expand-quote%
      (lambda (_stx151100_)
        (let* ((_e151101151111_ _stx151100_)
               (_E151103151115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151101151111_)))
               (_E151102151137_
                (lambda ()
                  (if (gx#stx-pair? _e151101151111_)
                      (let ((_e151104151119_ (gx#syntax-e _e151101151111_)))
                        (let ((_hd151105151122_ (##car _e151104151119_))
                              (_tl151106151124_ (##cdr _e151104151119_)))
                          (if (gx#stx-pair? _tl151106151124_)
                              (let ((_e151107151127_
                                     (gx#syntax-e _tl151106151124_)))
                                (let ((_hd151108151130_
                                       (##car _e151107151127_))
                                      (_tl151109151132_
                                       (##cdr _e151107151127_)))
                                  (let ((_e151135_ _hd151108151130_))
                                    (if (gx#stx-null? _tl151109151132_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151135_)
                                                         '()))
                                             (gx#stx-source _stx151100_))
                                            (_E151103151115_))
                                        (_E151103151115_)))))
                              (_E151103151115_))))
                      (_E151103151115_)))))
          (_E151102151137_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151059_)
        (let* ((_e151060151070_ _stx151059_)
               (_E151062151074_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151060151070_)))
               (_E151061151096_
                (lambda ()
                  (if (gx#stx-pair? _e151060151070_)
                      (let ((_e151063151078_ (gx#syntax-e _e151060151070_)))
                        (let ((_hd151064151081_ (##car _e151063151078_))
                              (_tl151065151083_ (##cdr _e151063151078_)))
                          (if (gx#stx-pair? _tl151065151083_)
                              (let ((_e151066151086_
                                     (gx#syntax-e _tl151065151083_)))
                                (let ((_hd151067151089_
                                       (##car _e151066151086_))
                                      (_tl151068151091_
                                       (##cdr _e151066151086_)))
                                  (let ((_e151094_ _hd151067151089_))
                                    (if (gx#stx-null? _tl151068151091_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151094_)
                                                         '()))
                                             (gx#stx-source _stx151059_))
                                            (_E151062151074_))
                                        (_E151062151074_)))))
                              (_E151062151074_))))
                      (_E151062151074_)))))
          (_E151061151096_))))
    (define gx#core-expand-call%
      (lambda (_stx151016_)
        (let* ((_e151017151027_ _stx151016_)
               (_E151019151031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151017151027_)))
               (_E151018151055_
                (lambda ()
                  (if (gx#stx-pair? _e151017151027_)
                      (let ((_e151020151035_ (gx#syntax-e _e151017151027_)))
                        (let ((_hd151021151038_ (##car _e151020151035_))
                              (_tl151022151040_ (##cdr _e151020151035_)))
                          (if (gx#stx-pair? _tl151022151040_)
                              (let ((_e151023151043_
                                     (gx#syntax-e _tl151022151040_)))
                                (let ((_hd151024151046_
                                       (##car _e151023151043_))
                                      (_tl151025151048_
                                       (##cdr _e151023151043_)))
                                  (let* ((_rator151051_ _hd151024151046_)
                                         (_args151053_ _tl151025151048_))
                                    (if (gx#stx-list? _args151053_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151051_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151053_))
                                         (gx#stx-source _stx151016_))
                                        (_E151019151031_)))))
                              (_E151019151031_))))
                      (_E151019151031_)))))
          (_E151018151055_))))
    (define gx#core-expand-if%
      (lambda (_stx150949_)
        (let* ((_e150950150966_ _stx150949_)
               (_E150952150970_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150950150966_)))
               (_E150951151012_
                (lambda ()
                  (if (gx#stx-pair? _e150950150966_)
                      (let ((_e150953150974_ (gx#syntax-e _e150950150966_)))
                        (let ((_hd150954150977_ (##car _e150953150974_))
                              (_tl150955150979_ (##cdr _e150953150974_)))
                          (if (gx#stx-pair? _tl150955150979_)
                              (let ((_e150956150982_
                                     (gx#syntax-e _tl150955150979_)))
                                (let ((_hd150957150985_
                                       (##car _e150956150982_))
                                      (_tl150958150987_
                                       (##cdr _e150956150982_)))
                                  (let ((_test150990_ _hd150957150985_))
                                    (if (gx#stx-pair? _tl150958150987_)
                                        (let ((_e150959150992_
                                               (gx#syntax-e _tl150958150987_)))
                                          (let ((_hd150960150995_
                                                 (##car _e150959150992_))
                                                (_tl150961150997_
                                                 (##cdr _e150959150992_)))
                                            (let ((_K151000_ _hd150960150995_))
                                              (if (gx#stx-pair?
                                                   _tl150961150997_)
                                                  (let ((_e150962151002_
                                                         (gx#syntax-e
                                                          _tl150961150997_)))
                                                    (let ((_hd150963151005_
                                                           (##car _e150962151002_))
                                                          (_tl150964151007_
                                                           (##cdr _e150962151002_)))
                                                      (let ((_E151010_
                                                             _hd150963151005_))
                                                        (if (gx#stx-null?
                                                             _tl150964151007_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test150990_)
                                     (cons (gx#core-expand-expression
                                            _K151000_)
                                           (cons (gx#core-expand-expression
                                                  _E151010_)
                                                 '()))))
                         (gx#stx-source _stx150949_))
                        (_E150952150970_))
                    (_E150952150970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150952150970_)))))
                                        (_E150952150970_)))))
                              (_E150952150970_))))
                      (_E150952150970_)))))
          (_E150951151012_))))
    (define gx#core-expand-ref%
      (lambda (_stx150908_)
        (let* ((_e150909150919_ _stx150908_)
               (_E150911150923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150909150919_)))
               (_E150910150945_
                (lambda ()
                  (if (gx#stx-pair? _e150909150919_)
                      (let ((_e150912150927_ (gx#syntax-e _e150909150919_)))
                        (let ((_hd150913150930_ (##car _e150912150927_))
                              (_tl150914150932_ (##cdr _e150912150927_)))
                          (if (gx#stx-pair? _tl150914150932_)
                              (let ((_e150915150935_
                                     (gx#syntax-e _tl150914150932_)))
                                (let ((_hd150916150938_
                                       (##car _e150915150935_))
                                      (_tl150917150940_
                                       (##cdr _e150915150935_)))
                                  (let ((_id150943_ _hd150916150938_))
                                    (if (gx#stx-null? _tl150917150940_)
                                        (if (gx#identifier? _id150943_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150943_
                                                          _stx150908_)
                                                         '()))
                                             (gx#stx-source _stx150908_))
                                            (_E150911150923_))
                                        (_E150911150923_)))))
                              (_E150911150923_))))
                      (_E150911150923_)))))
          (_E150910150945_))))
    (define gx#core-expand-setq%
      (lambda (_stx150854_)
        (let* ((_e150855150868_ _stx150854_)
               (_E150857150872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150855150868_)))
               (_E150856150904_
                (lambda ()
                  (if (gx#stx-pair? _e150855150868_)
                      (let ((_e150858150876_ (gx#syntax-e _e150855150868_)))
                        (let ((_hd150859150879_ (##car _e150858150876_))
                              (_tl150860150881_ (##cdr _e150858150876_)))
                          (if (gx#stx-pair? _tl150860150881_)
                              (let ((_e150861150884_
                                     (gx#syntax-e _tl150860150881_)))
                                (let ((_hd150862150887_
                                       (##car _e150861150884_))
                                      (_tl150863150889_
                                       (##cdr _e150861150884_)))
                                  (let ((_id150892_ _hd150862150887_))
                                    (if (gx#stx-pair? _tl150863150889_)
                                        (let ((_e150864150894_
                                               (gx#syntax-e _tl150863150889_)))
                                          (let ((_hd150865150897_
                                                 (##car _e150864150894_))
                                                (_tl150866150899_
                                                 (##cdr _e150864150894_)))
                                            (let ((_expr150902_
                                                   _hd150865150897_))
                                              (if (gx#stx-null?
                                                   _tl150866150899_)
                                                  (if (gx#identifier?
                                                       _id150892_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150892_
                            _stx150854_)
                           (cons (gx#core-expand-expression _expr150902_)
                                 '())))
               (gx#stx-source _stx150854_))
              (_E150857150872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150857150872_)))))
                                        (_E150857150872_)))))
                              (_E150857150872_))))
                      (_E150857150872_)))))
          (_E150856150904_))))
    (define gx#macro-expand-extern
      (lambda (_stx150702_)
        (letrec ((_generate150704_
                  (lambda (_body150734_)
                    (let _lp150736_ ((_rest150738_ _body150734_)
                                     (_ns150739_
                                      (gx#core-context-namespace__0))
                                     (_r150740_ '()))
                      (let* ((_e150741150756_ _rest150738_)
                             (_E150754150760_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150741150756_)))
                             (_E150750150764_
                              (lambda ()
                                (if (gx#stx-null? _e150741150756_)
                                    (if '#t
                                        (reverse _r150740_)
                                        (_E150754150760_))
                                    (_E150754150760_))))
                             (_E150743150821_
                              (lambda ()
                                (if (gx#stx-pair? _e150741150756_)
                                    (let ((_e150751150768_
                                           (gx#syntax-e _e150741150756_)))
                                      (let ((_hd150752150771_
                                             (##car _e150751150768_))
                                            (_tl150753150773_
                                             (##cdr _e150751150768_)))
                                        (let* ((_hd150776_ _hd150752150771_)
                                               (_rest150778_ _tl150753150773_))
                                          (if '#t
                                              (if (gx#identifier? _hd150776_)
                                                  (_lp150736_
                                                   _rest150778_
                                                   _ns150739_
                                                   (cons (cons _hd150776_
                                                               (cons (if _ns150739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150776_
                                  _ns150739_
                                  '"#"
                                  _hd150776_)
                                 _hd150776_)
                             '()))
                 _r150740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150779150789_
                                                          _hd150776_)
                                                         (_E150781150793_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150779150789_)))
                                                         (_E150780150817_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150779150789_)
                        (let ((_e150782150797_ (gx#syntax-e _e150779150789_)))
                          (let ((_hd150783150800_ (##car _e150782150797_))
                                (_tl150784150802_ (##cdr _e150782150797_)))
                            (let ((_id150805_ _hd150783150800_))
                              (if (gx#stx-pair? _tl150784150802_)
                                  (let ((_e150785150807_
                                         (gx#syntax-e _tl150784150802_)))
                                    (let ((_hd150786150810_
                                           (##car _e150785150807_))
                                          (_tl150787150812_
                                           (##cdr _e150785150807_)))
                                      (let ((_eid150815_ _hd150786150810_))
                                        (if (gx#stx-null? _tl150787150812_)
                                            (if (and (gx#identifier?
                                                      _id150805_)
                                                     (gx#identifier?
                                                      _eid150815_))
                                                (_lp150736_
                                                 _rest150778_
                                                 _ns150739_
                                                 (cons (cons _id150805_
                                                             (cons _eid150815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150781150793_))
                                            (_E150781150793_)))))
                                  (_E150781150793_)))))
                        (_E150781150793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150780150817_)))
                                              (_E150750150764_)))))
                                    (_E150750150764_))))
                             (_E150742150850_
                              (lambda ()
                                (if (gx#stx-pair? _e150741150756_)
                                    (let ((_e150744150825_
                                           (gx#syntax-e _e150741150756_)))
                                      (let ((_hd150745150828_
                                             (##car _e150744150825_))
                                            (_tl150746150830_
                                             (##cdr _e150744150825_)))
                                        (if (eq? (gx#stx-e _hd150745150828_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150746150830_)
                                                (let ((_e150747150833_
                                                       (gx#syntax-e
                                                        _tl150746150830_)))
                                                  (let ((_hd150748150836_
                                                         (##car _e150747150833_))
                                                        (_tl150749150838_
                                                         (##cdr _e150747150833_)))
                                                    (let* ((_ns150841_
                                                            _hd150748150836_)
                                                           (_rest150843_
                                                            _tl150749150838_))
                                                      (if '#t
                                                          (let ((_ns150848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150841_)
                             (symbol->string (gx#stx-e _ns150841_))
                             (if (or (gx#stx-string? _ns150841_)
                                     (gx#stx-false? _ns150841_))
                                 (gx#stx-e _ns150841_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150702_
                                  _ns150841_)))))
                    (_lp150736_ _rest150843_ _ns150848_ _r150740_))
                  (_E150743150821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150743150821_))
                                            (_E150743150821_))))
                                    (_E150743150821_)))))
                        (_E150742150850_))))))
          (let* ((_e150705150712_ _stx150702_)
                 (_E150707150716_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150705150712_)))
                 (_E150706150730_
                  (lambda ()
                    (if (gx#stx-pair? _e150705150712_)
                        (let ((_e150708150720_ (gx#syntax-e _e150705150712_)))
                          (let ((_hd150709150723_ (##car _e150708150720_))
                                (_tl150710150725_ (##cdr _e150708150720_)))
                            (let ((_body150728_ _tl150710150725_))
                              (if (gx#stx-list? _body150728_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150704_ _body150728_))
                                  (_E150707150716_)))))
                        (_E150707150716_)))))
            (_E150706150730_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150648_)
        (let* ((_e150649150662_ _stx150648_)
               (_E150651150666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150649150662_)))
               (_E150650150698_
                (lambda ()
                  (if (gx#stx-pair? _e150649150662_)
                      (let ((_e150652150670_ (gx#syntax-e _e150649150662_)))
                        (let ((_hd150653150673_ (##car _e150652150670_))
                              (_tl150654150675_ (##cdr _e150652150670_)))
                          (if (gx#stx-pair? _tl150654150675_)
                              (let ((_e150655150678_
                                     (gx#syntax-e _tl150654150675_)))
                                (let ((_hd150656150681_
                                       (##car _e150655150678_))
                                      (_tl150657150683_
                                       (##cdr _e150655150678_)))
                                  (let ((_hd150686_ _hd150656150681_))
                                    (if (gx#stx-pair? _tl150657150683_)
                                        (let ((_e150658150688_
                                               (gx#syntax-e _tl150657150683_)))
                                          (let ((_hd150659150691_
                                                 (##car _e150658150688_))
                                                (_tl150660150693_
                                                 (##cdr _e150658150688_)))
                                            (let ((_expr150696_
                                                   _hd150659150691_))
                                              (if (gx#stx-null?
                                                   _tl150660150693_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150686_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150686_)
                          (cons _expr150696_ '())))
              (_E150651150666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150651150666_)))))
                                        (_E150651150666_)))))
                              (_E150651150666_))))
                      (_E150651150666_)))))
          (_E150650150698_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150594_)
        (let* ((_e150595150608_ _stx150594_)
               (_E150597150612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150595150608_)))
               (_E150596150644_
                (lambda ()
                  (if (gx#stx-pair? _e150595150608_)
                      (let ((_e150598150616_ (gx#syntax-e _e150595150608_)))
                        (let ((_hd150599150619_ (##car _e150598150616_))
                              (_tl150600150621_ (##cdr _e150598150616_)))
                          (if (gx#stx-pair? _tl150600150621_)
                              (let ((_e150601150624_
                                     (gx#syntax-e _tl150600150621_)))
                                (let ((_hd150602150627_
                                       (##car _e150601150624_))
                                      (_tl150603150629_
                                       (##cdr _e150601150624_)))
                                  (let ((_hd150632_ _hd150602150627_))
                                    (if (gx#stx-pair? _tl150603150629_)
                                        (let ((_e150604150634_
                                               (gx#syntax-e _tl150603150629_)))
                                          (let ((_hd150605150637_
                                                 (##car _e150604150634_))
                                                (_tl150606150639_
                                                 (##cdr _e150604150634_)))
                                            (let ((_expr150642_
                                                   _hd150605150637_))
                                              (if (gx#stx-null?
                                                   _tl150606150639_)
                                                  (if (gx#identifier?
                                                       _hd150632_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150642_ '())))
              (_E150597150612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150597150612_)))))
                                        (_E150597150612_)))))
                              (_E150597150612_))))
                      (_E150597150612_)))))
          (_E150596150644_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150540_)
        (let* ((_e150541150554_ _stx150540_)
               (_E150543150558_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150541150554_)))
               (_E150542150590_
                (lambda ()
                  (if (gx#stx-pair? _e150541150554_)
                      (let ((_e150544150562_ (gx#syntax-e _e150541150554_)))
                        (let ((_hd150545150565_ (##car _e150544150562_))
                              (_tl150546150567_ (##cdr _e150544150562_)))
                          (if (gx#stx-pair? _tl150546150567_)
                              (let ((_e150547150570_
                                     (gx#syntax-e _tl150546150567_)))
                                (let ((_hd150548150573_
                                       (##car _e150547150570_))
                                      (_tl150549150575_
                                       (##cdr _e150547150570_)))
                                  (let ((_id150578_ _hd150548150573_))
                                    (if (gx#stx-pair? _tl150549150575_)
                                        (let ((_e150550150580_
                                               (gx#syntax-e _tl150549150575_)))
                                          (let ((_hd150551150583_
                                                 (##car _e150550150580_))
                                                (_tl150552150585_
                                                 (##cdr _e150550150580_)))
                                            (let ((_alias-id150588_
                                                   _hd150551150583_))
                                              (if (gx#stx-null?
                                                   _tl150552150585_)
                                                  (if (and (gx#identifier?
                                                            _id150578_)
                                                           (gx#identifier?
                                                            _alias-id150588_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150588_ '())))
              (_E150543150558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150543150558_)))))
                                        (_E150543150558_)))))
                              (_E150543150558_))))
                      (_E150543150558_)))))
          (_E150542150590_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150497_)
        (let* ((_e150498150508_ _stx150497_)
               (_E150500150512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150498150508_)))
               (_E150499150536_
                (lambda ()
                  (if (gx#stx-pair? _e150498150508_)
                      (let ((_e150501150516_ (gx#syntax-e _e150498150508_)))
                        (let ((_hd150502150519_ (##car _e150501150516_))
                              (_tl150503150521_ (##cdr _e150501150516_)))
                          (if (gx#stx-pair? _tl150503150521_)
                              (let ((_e150504150524_
                                     (gx#syntax-e _tl150503150521_)))
                                (let ((_hd150505150527_
                                       (##car _e150504150524_))
                                      (_tl150506150529_
                                       (##cdr _e150504150524_)))
                                  (let* ((_hd150532_ _hd150505150527_)
                                         (_body150534_ _tl150506150529_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150532_)
                                             (gx#stx-list? _body150534_)
                                             (not (gx#stx-null? _body150534_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150532_)
                                         _body150534_)
                                        (_E150500150512_)))))
                              (_E150500150512_))))
                      (_E150500150512_)))))
          (_E150499150536_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150433_)
        (letrec ((_generate150435_
                  (lambda (_clause150465_)
                    (let* ((_e150466150473_ _clause150465_)
                           (_E150468150477_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150433_
                               _clause150465_)))
                           (_E150467150493_
                            (lambda ()
                              (if (gx#stx-pair? _e150466150473_)
                                  (let ((_e150469150481_
                                         (gx#syntax-e _e150466150473_)))
                                    (let ((_hd150470150484_
                                           (##car _e150469150481_))
                                          (_tl150471150486_
                                           (##cdr _e150469150481_)))
                                      (let* ((_hd150489_ _hd150470150484_)
                                             (_body150491_ _tl150471150486_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150489_)
                                                 (gx#stx-list? _body150491_)
                                                 (not (gx#stx-null?
                                                       _body150491_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150489_)
                                                   _body150491_)
                                             (gx#stx-source _clause150465_))
                                            (_E150468150477_)))))
                                  (_E150468150477_)))))
                      (_E150467150493_)))))
          (let* ((_e150436150443_ _stx150433_)
                 (_E150438150447_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150436150443_)))
                 (_E150437150461_
                  (lambda ()
                    (if (gx#stx-pair? _e150436150443_)
                        (let ((_e150439150451_ (gx#syntax-e _e150436150443_)))
                          (let ((_hd150440150454_ (##car _e150439150451_))
                                (_tl150441150456_ (##cdr _e150439150451_)))
                            (let ((_clauses150459_ _tl150441150456_))
                              (if (gx#stx-list? _clauses150459_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150435_
                                    _clauses150459_))
                                  (_E150438150447_)))))
                        (_E150438150447_)))))
            (_E150437150461_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150334_ _form150335_)
        (letrec ((_generate150337_
                  (lambda (_bind150380_)
                    (let* ((_e150381150391_ _bind150380_)
                           (_E150383150395_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150334_
                               _bind150380_)))
                           (_E150382150419_
                            (lambda ()
                              (if (gx#stx-pair? _e150381150391_)
                                  (let ((_e150384150399_
                                         (gx#syntax-e _e150381150391_)))
                                    (let ((_hd150385150402_
                                           (##car _e150384150399_))
                                          (_tl150386150404_
                                           (##cdr _e150384150399_)))
                                      (let ((_ids150407_ _hd150385150402_))
                                        (if (gx#stx-pair? _tl150386150404_)
                                            (let ((_e150387150409_
                                                   (gx#syntax-e
                                                    _tl150386150404_)))
                                              (let ((_hd150388150412_
                                                     (##car _e150387150409_))
                                                    (_tl150389150414_
                                                     (##cdr _e150387150409_)))
                                                (let ((_expr150417_
                                                       _hd150388150412_))
                                                  (if (gx#stx-null?
                                                       _tl150389150414_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150407_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150407_)
                        (cons _expr150417_ '()))
                  (_E150383150395_))
              (_E150383150395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150383150395_)))))
                                  (_E150383150395_)))))
                      (_E150382150419_)))))
          (let* ((_e150338150348_ _stx150334_)
                 (_E150340150352_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150338150348_)))
                 (_E150339150376_
                  (lambda ()
                    (if (gx#stx-pair? _e150338150348_)
                        (let ((_e150341150356_ (gx#syntax-e _e150338150348_)))
                          (let ((_hd150342150359_ (##car _e150341150356_))
                                (_tl150343150361_ (##cdr _e150341150356_)))
                            (if (gx#stx-pair? _tl150343150361_)
                                (let ((_e150344150364_
                                       (gx#syntax-e _tl150343150361_)))
                                  (let ((_hd150345150367_
                                         (##car _e150344150364_))
                                        (_tl150346150369_
                                         (##cdr _e150344150364_)))
                                    (let* ((_hd150372_ _hd150345150367_)
                                           (_body150374_ _tl150346150369_))
                                      (if (and (gx#stx-list? _hd150372_)
                                               (gx#stx-list? _body150374_)
                                               (not (gx#stx-null?
                                                     _body150374_)))
                                          (gx#core-cons*
                                           _form150335_
                                           (gx#stx-map1
                                            _generate150337_
                                            _hd150372_)
                                           _body150374_)
                                          (_E150340150352_)))))
                                (_E150340150352_))))
                        (_E150340150352_)))))
            (_E150339150376_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150426_)
        (let ((_form150428_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150426_ _form150428_))))
    (define gx#macro-expand-let-values
      (lambda _g157279_
        (let ((_g157278_ (##length _g157279_)))
          (cond ((##fx= _g157278_ 1)
                 (apply (lambda (_stx150426_)
                          (gx#macro-expand-let-values__0 _stx150426_))
                        _g157279_))
                ((##fx= _g157278_ 2)
                 (apply (lambda (_stx150430_ _form150431_)
                          (gx#macro-expand-let-values__%
                           _stx150430_
                           _form150431_))
                        _g157279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157279_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150331_)
        (gx#macro-expand-let-values__% _stx150331_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150329_)
        (gx#macro-expand-let-values__% _stx150329_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150220_)
        (let* ((_e150221150247_ _stx150220_)
               (_E150233150251_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150221150247_)))
               (_E150223150293_
                (lambda ()
                  (if (gx#stx-pair? _e150221150247_)
                      (let ((_e150234150255_ (gx#syntax-e _e150221150247_)))
                        (let ((_hd150235150258_ (##car _e150234150255_))
                              (_tl150236150260_ (##cdr _e150234150255_)))
                          (if (gx#stx-pair? _tl150236150260_)
                              (let ((_e150237150263_
                                     (gx#syntax-e _tl150236150260_)))
                                (let ((_hd150238150266_
                                       (##car _e150237150263_))
                                      (_tl150239150268_
                                       (##cdr _e150237150263_)))
                                  (let ((_test150271_ _hd150238150266_))
                                    (if (gx#stx-pair? _tl150239150268_)
                                        (let ((_e150240150273_
                                               (gx#syntax-e _tl150239150268_)))
                                          (let ((_hd150241150276_
                                                 (##car _e150240150273_))
                                                (_tl150242150278_
                                                 (##cdr _e150240150273_)))
                                            (let ((_K150281_ _hd150241150276_))
                                              (if (gx#stx-pair?
                                                   _tl150242150278_)
                                                  (let ((_e150243150283_
                                                         (gx#syntax-e
                                                          _tl150242150278_)))
                                                    (let ((_hd150244150286_
                                                           (##car _e150243150283_))
                                                          (_tl150245150288_
                                                           (##cdr _e150243150283_)))
                                                      (let ((_E150291_
                                                             _hd150244150286_))
                                                        (if (gx#stx-null?
                                                             _tl150245150288_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150271_
                         _K150281_
                         _E150291_)
                        (_E150233150251_))
                    (_E150233150251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150233150251_)))))
                                        (_E150233150251_)))))
                              (_E150233150251_))))
                      (_E150233150251_))))
               (_E150222150325_
                (lambda ()
                  (if (gx#stx-pair? _e150221150247_)
                      (let ((_e150224150297_ (gx#syntax-e _e150221150247_)))
                        (let ((_hd150225150300_ (##car _e150224150297_))
                              (_tl150226150302_ (##cdr _e150224150297_)))
                          (if (gx#stx-pair? _tl150226150302_)
                              (let ((_e150227150305_
                                     (gx#syntax-e _tl150226150302_)))
                                (let ((_hd150228150308_
                                       (##car _e150227150305_))
                                      (_tl150229150310_
                                       (##cdr _e150227150305_)))
                                  (let ((_test150313_ _hd150228150308_))
                                    (if (gx#stx-pair? _tl150229150310_)
                                        (let ((_e150230150315_
                                               (gx#syntax-e _tl150229150310_)))
                                          (let ((_hd150231150318_
                                                 (##car _e150230150315_))
                                                (_tl150232150320_
                                                 (##cdr _e150230150315_)))
                                            (let ((_K150323_ _hd150231150318_))
                                              (if (gx#stx-null?
                                                   _tl150232150320_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150313_
                                                       _K150323_
                                                       '#!void)
                                                      (_E150223150293_))
                                                  (_E150223150293_)))))
                                        (_E150223150293_)))))
                              (_E150223150293_))))
                      (_E150223150293_)))))
          (_E150222150325_))))
    (define gx#free-identifier=?
      (lambda (_xid150208_ _yid150209_)
        (let ((_xe150211_ (gx#resolve-identifier__0 _xid150208_))
              (_ye150212_ (gx#resolve-identifier__0 _yid150209_)))
          (if (and _xe150211_ _ye150212_)
              (let ((_$e150214_ (eq? _xe150211_ _ye150212_)))
                (if _$e150214_
                    _$e150214_
                    (if (##structure-instance-of? _xe150211_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150212_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150211_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150212_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150211_ _ye150212_)
                  '#f
                  (gx#stx-eq? _xid150208_ _yid150209_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150192_ _yid150193_)
        (letrec ((_context150195_
                  (lambda (_e150206_)
                    (if (##structure-direct-instance-of?
                         _e150206_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150206_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150196_
                  (lambda (_e150204_)
                    (if (symbol? _e150204_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150204_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150204_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150204_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150197_
                  (lambda (_e150202_)
                    (if (symbol? _e150202_)
                        _e150202_
                        (gx#syntax-local-unwrap _e150202_)))))
          (let ((_x150199_ (_unwrap150197_ _xid150192_))
                (_y150200_ (_unwrap150197_ _yid150193_)))
            (if (gx#stx-eq? _x150199_ _y150200_)
                (if (eq? (_context150195_ _x150199_)
                         (_context150195_ _y150200_))
                    (equal? (_marks150196_ _x150199_)
                            (_marks150196_ _y150200_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150190_)
        (if (gx#identifier? _stx150190_)
            (gx#core-identifier=? _stx150190_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150188_)
        (if (gx#identifier? _stx150188_)
            (gx#core-identifier=? _stx150188_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150186_)
        (if (gx#identifier? _x150186_)
            (if (not (gx#underscore? _x150186_)) _x150186_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150132_ _where150133_)
        (let _lp150135_ ((_rest150137_ (gx#syntax->list _stx150132_)))
          (let* ((_rest150138150146_ _rest150137_)
                 (_else150140150154_ (lambda () '#t))
                 (_K150142150164_
                  (lambda (_rest150157_ _hd150158_)
                    (if (not (gx#identifier? _hd150158_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150133_
                         _hd150158_)
                        (if (find (lambda (_g150159150161_)
                                    (gx#bound-identifier=?
                                     _g150159150161_
                                     _hd150158_))
                                  _rest150157_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150133_
                             _hd150158_)
                            (_lp150135_ _rest150157_))))))
            (if (##pair? _rest150138150146_)
                (let ((_hd150143150167_ (##car _rest150138150146_))
                      (_tl150144150169_ (##cdr _rest150138150146_)))
                  (let* ((_hd150172_ _hd150143150167_)
                         (_rest150174_ _tl150144150169_))
                    (_K150142150164_ _rest150174_ _hd150172_)))
                (_else150140150154_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150179_)
        (let ((_where150181_ _stx150179_))
          (gx#check-duplicate-identifiers__% _stx150179_ _where150181_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157281_
        (let ((_g157280_ (##length _g157281_)))
          (cond ((##fx= _g157280_ 1)
                 (apply (lambda (_stx150179_)
                          (gx#check-duplicate-identifiers__0 _stx150179_))
                        _g157281_))
                ((##fx= _g157280_ 2)
                 (apply (lambda (_stx150183_ _where150184_)
                          (gx#check-duplicate-identifiers__%
                           _stx150183_
                           _where150184_))
                        _g157281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157281_))))))
    (define gx#core-bind-values?
      (lambda (_stx150124_)
        (gx#stx-andmap
         (lambda (_x150126_)
           (let ((_$e150128_ (gx#identifier? _x150126_)))
             (if _$e150128_ _$e150128_ (gx#stx-false? _x150126_))))
         _stx150124_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150088_ _rebind?150089_ _phi150090_ _ctx150091_)
        (gx#stx-for-each1
         (lambda (_id150093_)
           (if (gx#identifier? _id150093_)
               (gx#core-bind-runtime!__%
                _id150093_
                _rebind?150089_
                _phi150090_
                _ctx150091_)
               '#!void))
         _stx150088_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150098_)
        (let* ((_rebind?150100_ '#f)
               (_phi150102_ (gx#current-expander-phi))
               (_ctx150104_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150098_
           _rebind?150100_
           _phi150102_
           _ctx150104_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150106_ _rebind?150107_)
        (let* ((_phi150109_ (gx#current-expander-phi))
               (_ctx150111_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150106_
           _rebind?150107_
           _phi150109_
           _ctx150111_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150113_ _rebind?150114_ _phi150115_)
        (let ((_ctx150117_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150113_
           _rebind?150114_
           _phi150115_
           _ctx150117_))))
    (define gx#core-bind-values!
      (lambda _g157283_
        (let ((_g157282_ (##length _g157283_)))
          (cond ((##fx= _g157282_ 1)
                 (apply (lambda (_stx150098_)
                          (gx#core-bind-values!__0 _stx150098_))
                        _g157283_))
                ((##fx= _g157282_ 2)
                 (apply (lambda (_stx150106_ _rebind?150107_)
                          (gx#core-bind-values!__1
                           _stx150106_
                           _rebind?150107_))
                        _g157283_))
                ((##fx= _g157282_ 3)
                 (apply (lambda (_stx150113_ _rebind?150114_ _phi150115_)
                          (gx#core-bind-values!__2
                           _stx150113_
                           _rebind?150114_
                           _phi150115_))
                        _g157283_))
                ((##fx= _g157282_ 4)
                 (apply (lambda (_stx150119_
                                 _rebind?150120_
                                 _phi150121_
                                 _ctx150122_)
                          (gx#core-bind-values!__%
                           _stx150119_
                           _rebind?150120_
                           _phi150121_
                           _ctx150122_))
                        _g157283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157283_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150083_)
        (gx#stx-map1
         (lambda (_x150085_)
           (if (gx#identifier? _x150085_)
               (gx#core-quote-syntax__0 _x150085_)
               '#f))
         _stx150083_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150076_)
        (if (gx#identifier? _stx150076_)
            (let* ((_bind150078_ (gx#resolve-identifier__0 _stx150076_))
                   (_$e150080_ (not _bind150078_)))
              (if _$e150080_
                  _$e150080_
                  (##structure-instance-of?
                   _bind150078_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150068_ _form150069_)
        (let ((_bind150071_ (gx#resolve-identifier__0 _id150068_)))
          (if (##structure-instance-of? _bind150071_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150068_)
              (if (not _bind150071_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150068_)))
                      (gx#core-quote-syntax__0 _id150068_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150069_
                       _id150068_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150069_
                   _id150068_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150027_ _rebind?150028_ _phi150029_ _ctx150030_)
        (let* ((_key150032_ (gx#core-identifier-key _id150027_))
               (_eid150034_
                (gx#make-binding-id__%
                 _key150032_
                 '#f
                 _phi150029_
                 _ctx150030_))
               (_bind150036_
                (if (##structure-instance-of?
                     _ctx150030_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150034_
                     _key150032_
                     _phi150029_
                     _ctx150030_)
                    (if (##structure-instance-of?
                         _ctx150030_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150034_
                         _key150032_
                         _phi150029_)
                        (if (##structure-instance-of?
                             _ctx150030_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150034_
                             _key150032_
                             _phi150029_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150034_
                             _key150032_
                             _phi150029_))))))
          (gx#bind-identifier!__%
           _id150027_
           _bind150036_
           _rebind?150028_
           _phi150029_
           _ctx150030_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150042_)
        (let* ((_rebind?150044_ '#f)
               (_phi150046_ (gx#current-expander-phi))
               (_ctx150048_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150042_
           _rebind?150044_
           _phi150046_
           _ctx150048_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150050_ _rebind?150051_)
        (let* ((_phi150053_ (gx#current-expander-phi))
               (_ctx150055_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150050_
           _rebind?150051_
           _phi150053_
           _ctx150055_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150057_ _rebind?150058_ _phi150059_)
        (let ((_ctx150061_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150057_
           _rebind?150058_
           _phi150059_
           _ctx150061_))))
    (define gx#core-bind-runtime!
      (lambda _g157285_
        (let ((_g157284_ (##length _g157285_)))
          (cond ((##fx= _g157284_ 1)
                 (apply (lambda (_id150042_)
                          (gx#core-bind-runtime!__0 _id150042_))
                        _g157285_))
                ((##fx= _g157284_ 2)
                 (apply (lambda (_id150050_ _rebind?150051_)
                          (gx#core-bind-runtime!__1
                           _id150050_
                           _rebind?150051_))
                        _g157285_))
                ((##fx= _g157284_ 3)
                 (apply (lambda (_id150057_ _rebind?150058_ _phi150059_)
                          (gx#core-bind-runtime!__2
                           _id150057_
                           _rebind?150058_
                           _phi150059_))
                        _g157285_))
                ((##fx= _g157284_ 4)
                 (apply (lambda (_id150063_
                                 _rebind?150064_
                                 _phi150065_
                                 _ctx150066_)
                          (gx#core-bind-runtime!__%
                           _id150063_
                           _rebind?150064_
                           _phi150065_
                           _ctx150066_))
                        _g157285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157285_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id149982_ _eid149983_ _rebind?149984_ _phi149985_ _ctx149986_)
        (let* ((_key149988_ (gx#core-identifier-key _id149982_))
               (_bind149990_
                (if (##structure-instance-of?
                     _ctx149986_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid149983_
                     _key149988_
                     _phi149985_
                     _ctx149986_)
                    (if (##structure-instance-of?
                         _ctx149986_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid149983_
                         _key149988_
                         _phi149985_)
                        (##structure
                         gx#runtime-binding::t
                         _eid149983_
                         _key149988_
                         _phi149985_)))))
          (gx#bind-identifier!__%
           _id149982_
           _bind149990_
           _rebind?149984_
           _phi149985_
           _ctx149986_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id149996_ _eid149997_)
        (let* ((_rebind?149999_ '#f)
               (_phi150001_ (gx#current-expander-phi))
               (_ctx150003_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149996_
           _eid149997_
           _rebind?149999_
           _phi150001_
           _ctx150003_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150005_ _eid150006_ _rebind?150007_)
        (let* ((_phi150009_ (gx#current-expander-phi))
               (_ctx150011_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150005_
           _eid150006_
           _rebind?150007_
           _phi150009_
           _ctx150011_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150013_ _eid150014_ _rebind?150015_ _phi150016_)
        (let ((_ctx150018_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150013_
           _eid150014_
           _rebind?150015_
           _phi150016_
           _ctx150018_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157287_
        (let ((_g157286_ (##length _g157287_)))
          (cond ((##fx= _g157286_ 2)
                 (apply (lambda (_id149996_ _eid149997_)
                          (gx#core-bind-runtime-reference!__0
                           _id149996_
                           _eid149997_))
                        _g157287_))
                ((##fx= _g157286_ 3)
                 (apply (lambda (_id150005_ _eid150006_ _rebind?150007_)
                          (gx#core-bind-runtime-reference!__1
                           _id150005_
                           _eid150006_
                           _rebind?150007_))
                        _g157287_))
                ((##fx= _g157286_ 4)
                 (apply (lambda (_id150013_
                                 _eid150014_
                                 _rebind?150015_
                                 _phi150016_)
                          (gx#core-bind-runtime-reference!__2
                           _id150013_
                           _eid150014_
                           _rebind?150015_
                           _phi150016_))
                        _g157287_))
                ((##fx= _g157286_ 5)
                 (apply (lambda (_id150020_
                                 _eid150021_
                                 _rebind?150022_
                                 _phi150023_
                                 _ctx150024_)
                          (gx#core-bind-runtime-reference!__%
                           _id150020_
                           _eid150021_
                           _rebind?150022_
                           _phi150023_
                           _ctx150024_))
                        _g157287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157287_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149942_ _eid149943_ _rebind?149944_ _phi149945_ _ctx149946_)
        (gx#bind-identifier!__%
         _id149942_
         (##structure
          gx#extern-binding::t
          _eid149943_
          (gx#core-identifier-key _id149942_)
          _phi149945_)
         _rebind?149944_
         _phi149945_
         _ctx149946_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149951_ _eid149952_)
        (let* ((_rebind?149954_ '#f)
               (_phi149956_ (gx#current-expander-phi))
               (_ctx149958_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149951_
           _eid149952_
           _rebind?149954_
           _phi149956_
           _ctx149958_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149960_ _eid149961_ _rebind?149962_)
        (let* ((_phi149964_ (gx#current-expander-phi))
               (_ctx149966_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149960_
           _eid149961_
           _rebind?149962_
           _phi149964_
           _ctx149966_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149968_ _eid149969_ _rebind?149970_ _phi149971_)
        (let ((_ctx149973_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149968_
           _eid149969_
           _rebind?149970_
           _phi149971_
           _ctx149973_))))
    (define gx#core-bind-extern!
      (lambda _g157289_
        (let ((_g157288_ (##length _g157289_)))
          (cond ((##fx= _g157288_ 2)
                 (apply (lambda (_id149951_ _eid149952_)
                          (gx#core-bind-extern!__0 _id149951_ _eid149952_))
                        _g157289_))
                ((##fx= _g157288_ 3)
                 (apply (lambda (_id149960_ _eid149961_ _rebind?149962_)
                          (gx#core-bind-extern!__1
                           _id149960_
                           _eid149961_
                           _rebind?149962_))
                        _g157289_))
                ((##fx= _g157288_ 4)
                 (apply (lambda (_id149968_
                                 _eid149969_
                                 _rebind?149970_
                                 _phi149971_)
                          (gx#core-bind-extern!__2
                           _id149968_
                           _eid149969_
                           _rebind?149970_
                           _phi149971_))
                        _g157289_))
                ((##fx= _g157288_ 5)
                 (apply (lambda (_id149975_
                                 _eid149976_
                                 _rebind?149977_
                                 _phi149978_
                                 _ctx149979_)
                          (gx#core-bind-extern!__%
                           _id149975_
                           _eid149976_
                           _rebind?149977_
                           _phi149978_
                           _ctx149979_))
                        _g157289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157289_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149896_ _e149897_ _rebind?149898_ _phi149899_ _ctx149900_)
        (gx#bind-identifier!__%
         _id149896_
         (let ((_key149905_ (gx#core-identifier-key _id149896_))
               (_e149906_
                (if (or (##structure-instance-of? _e149897_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e149897_
                         'gx#expander-context::t))
                    _e149897_
                    (##structure
                     gx#user-expander::t
                     _e149897_
                     _ctx149900_
                     _phi149899_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key149905_ '#t _phi149899_ _ctx149900_)
            _key149905_
            _phi149899_
            _e149906_))
         _rebind?149898_
         _phi149899_
         _ctx149900_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149911_ _e149912_)
        (let* ((_rebind?149914_ '#f)
               (_phi149916_ (gx#current-expander-phi))
               (_ctx149918_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149911_
           _e149912_
           _rebind?149914_
           _phi149916_
           _ctx149918_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149920_ _e149921_ _rebind?149922_)
        (let* ((_phi149924_ (gx#current-expander-phi))
               (_ctx149926_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149920_
           _e149921_
           _rebind?149922_
           _phi149924_
           _ctx149926_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149928_ _e149929_ _rebind?149930_ _phi149931_)
        (let ((_ctx149933_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149928_
           _e149929_
           _rebind?149930_
           _phi149931_
           _ctx149933_))))
    (define gx#core-bind-syntax!
      (lambda _g157291_
        (let ((_g157290_ (##length _g157291_)))
          (cond ((##fx= _g157290_ 2)
                 (apply (lambda (_id149911_ _e149912_)
                          (gx#core-bind-syntax!__0 _id149911_ _e149912_))
                        _g157291_))
                ((##fx= _g157290_ 3)
                 (apply (lambda (_id149920_ _e149921_ _rebind?149922_)
                          (gx#core-bind-syntax!__1
                           _id149920_
                           _e149921_
                           _rebind?149922_))
                        _g157291_))
                ((##fx= _g157290_ 4)
                 (apply (lambda (_id149928_
                                 _e149929_
                                 _rebind?149930_
                                 _phi149931_)
                          (gx#core-bind-syntax!__2
                           _id149928_
                           _e149929_
                           _rebind?149930_
                           _phi149931_))
                        _g157291_))
                ((##fx= _g157290_ 5)
                 (apply (lambda (_id149935_
                                 _e149936_
                                 _rebind?149937_
                                 _phi149938_
                                 _ctx149939_)
                          (gx#core-bind-syntax!__%
                           _id149935_
                           _e149936_
                           _rebind?149937_
                           _phi149938_
                           _ctx149939_))
                        _g157291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157291_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149879_ _e149880_ _rebind?149881_)
        (gx#core-bind-syntax!__%
         _id149879_
         _e149880_
         _rebind?149881_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149886_ _e149887_)
        (let ((_rebind?149889_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149886_
           _e149887_
           _rebind?149889_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157293_
        (let ((_g157292_ (##length _g157293_)))
          (cond ((##fx= _g157292_ 2)
                 (apply (lambda (_id149886_ _e149887_)
                          (gx#core-bind-root-syntax!__0 _id149886_ _e149887_))
                        _g157293_))
                ((##fx= _g157292_ 3)
                 (apply (lambda (_id149891_ _e149892_ _rebind?149893_)
                          (gx#core-bind-root-syntax!__%
                           _id149891_
                           _e149892_
                           _rebind?149893_))
                        _g157293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157293_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149837_
               _alias-id149838_
               _rebind?149839_
               _phi149840_
               _ctx149841_)
        (gx#bind-identifier!__%
         _id149837_
         (let ((_key149843_ (gx#core-identifier-key _id149837_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key149843_ '#t _phi149840_ _ctx149841_)
            _key149843_
            _phi149840_
            _alias-id149838_))
         _rebind?149839_
         _phi149840_
         _ctx149841_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149848_ _alias-id149849_)
        (let* ((_rebind?149851_ '#f)
               (_phi149853_ (gx#current-expander-phi))
               (_ctx149855_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149848_
           _alias-id149849_
           _rebind?149851_
           _phi149853_
           _ctx149855_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149857_ _alias-id149858_ _rebind?149859_)
        (let* ((_phi149861_ (gx#current-expander-phi))
               (_ctx149863_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149857_
           _alias-id149858_
           _rebind?149859_
           _phi149861_
           _ctx149863_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149865_ _alias-id149866_ _rebind?149867_ _phi149868_)
        (let ((_ctx149870_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149865_
           _alias-id149866_
           _rebind?149867_
           _phi149868_
           _ctx149870_))))
    (define gx#core-bind-alias!
      (lambda _g157295_
        (let ((_g157294_ (##length _g157295_)))
          (cond ((##fx= _g157294_ 2)
                 (apply (lambda (_id149848_ _alias-id149849_)
                          (gx#core-bind-alias!__0 _id149848_ _alias-id149849_))
                        _g157295_))
                ((##fx= _g157294_ 3)
                 (apply (lambda (_id149857_ _alias-id149858_ _rebind?149859_)
                          (gx#core-bind-alias!__1
                           _id149857_
                           _alias-id149858_
                           _rebind?149859_))
                        _g157295_))
                ((##fx= _g157294_ 4)
                 (apply (lambda (_id149865_
                                 _alias-id149866_
                                 _rebind?149867_
                                 _phi149868_)
                          (gx#core-bind-alias!__2
                           _id149865_
                           _alias-id149866_
                           _rebind?149867_
                           _phi149868_))
                        _g157295_))
                ((##fx= _g157294_ 5)
                 (apply (lambda (_id149872_
                                 _alias-id149873_
                                 _rebind?149874_
                                 _phi149875_
                                 _ctx149876_)
                          (gx#core-bind-alias!__%
                           _id149872_
                           _alias-id149873_
                           _rebind?149874_
                           _phi149875_
                           _ctx149876_))
                        _g157295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157295_))))))
    (define gx#make-binding-id__%
      (lambda (_key149794_ _syntax?149795_ _phi149796_ _ctx149797_)
        (if (uninterned-symbol? _key149794_)
            (gensym 'L)
            (if (pair? _key149794_)
                (gensym (car _key149794_))
                (if (##structure-instance-of? _ctx149797_ 'gx#top-context::t)
                    (let ((_ns149799_
                           (gx#core-context-namespace__% _ctx149797_)))
                      (if (and (fxzero? _phi149796_) (not _syntax?149795_))
                          (if _ns149799_
                              (make-symbol__1 _ns149799_ '"#" _key149794_)
                              _key149794_)
                          (if _syntax?149795_
                              (make-symbol__1
                               (let ((_$e149801_ _ns149799_))
                                 (if _$e149801_ _$e149801_ '""))
                               '"[:"
                               (number->string _phi149796_)
                               '":]#"
                               _key149794_)
                              (make-symbol__1
                               (let ((_$e149804_ _ns149799_))
                                 (if _$e149804_ _$e149804_ '""))
                               '"["
                               (number->string _phi149796_)
                               '"]#"
                               _key149794_))))
                    (gensym _key149794_))))))
    (define gx#make-binding-id__0
      (lambda (_key149810_)
        (let* ((_syntax?149812_ '#f)
               (_phi149814_ (gx#current-expander-phi))
               (_ctx149816_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149810_
           _syntax?149812_
           _phi149814_
           _ctx149816_))))
    (define gx#make-binding-id__1
      (lambda (_key149818_ _syntax?149819_)
        (let* ((_phi149821_ (gx#current-expander-phi))
               (_ctx149823_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149818_
           _syntax?149819_
           _phi149821_
           _ctx149823_))))
    (define gx#make-binding-id__2
      (lambda (_key149825_ _syntax?149826_ _phi149827_)
        (let ((_ctx149829_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149825_
           _syntax?149826_
           _phi149827_
           _ctx149829_))))
    (define gx#make-binding-id
      (lambda _g157297_
        (let ((_g157296_ (##length _g157297_)))
          (cond ((##fx= _g157296_ 1)
                 (apply (lambda (_key149810_)
                          (gx#make-binding-id__0 _key149810_))
                        _g157297_))
                ((##fx= _g157296_ 2)
                 (apply (lambda (_key149818_ _syntax?149819_)
                          (gx#make-binding-id__1 _key149818_ _syntax?149819_))
                        _g157297_))
                ((##fx= _g157296_ 3)
                 (apply (lambda (_key149825_ _syntax?149826_ _phi149827_)
                          (gx#make-binding-id__2
                           _key149825_
                           _syntax?149826_
                           _phi149827_))
                        _g157297_))
                ((##fx= _g157296_ 4)
                 (apply (lambda (_key149831_
                                 _syntax?149832_
                                 _phi149833_
                                 _ctx149834_)
                          (gx#make-binding-id__%
                           _key149831_
                           _syntax?149832_
                           _phi149833_
                           _ctx149834_))
                        _g157297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157297_))))))))
