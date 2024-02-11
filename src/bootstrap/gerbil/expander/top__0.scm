(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707660402)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152517_)
        (letrec ((_expand-special152519_
                  (lambda (_hd152521_ _K152522_ _rest152523_ _r152524_)
                    (_K152522_
                     _rest152523_
                     (cons (gx#core-expand-top _hd152521_) _r152524_)))))
          (gx#core-expand-block__0 _stx152517_ _expand-special152519_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152270_)
        (letrec ((_expand-special152272_
                  (lambda (_hd152392_ _K152393_ _rest152394_ _r152395_)
                    (let* ((_K152399_
                            (lambda (_e152397_)
                              (_K152393_
                               _rest152394_
                               (cons _e152397_ _r152395_))))
                           (_e152400152429_ _hd152392_)
                           (_E152424152433_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152400152429_)))
                           (_E152420152445_
                            (lambda ()
                              (if (gx#stx-pair? _e152400152429_)
                                  (let ((_e152425152437_
                                         (gx#syntax-e _e152400152429_)))
                                    (let ((_hd152426152440_
                                           (##car _e152425152437_))
                                          (_tl152427152442_
                                           (##cdr _e152425152437_)))
                                      (if (and (gx#identifier?
                                                _hd152426152440_)
                                               (gx#core-identifier=?
                                                _hd152426152440_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152399_
                                               (gx#core-expand-define-runtime%
                                                _hd152392_))
                                              (_E152424152433_))
                                          (_E152424152433_))))
                                  (_E152424152433_))))
                           (_E152416152457_
                            (lambda ()
                              (if (gx#stx-pair? _e152400152429_)
                                  (let ((_e152421152449_
                                         (gx#syntax-e _e152400152429_)))
                                    (let ((_hd152422152452_
                                           (##car _e152421152449_))
                                          (_tl152423152454_
                                           (##cdr _e152421152449_)))
                                      (if (and (gx#identifier?
                                                _hd152422152452_)
                                               (gx#core-identifier=?
                                                _hd152422152452_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152399_
                                               (gx#core-expand-define-alias%
                                                _hd152392_))
                                              (_E152420152445_))
                                          (_E152420152445_))))
                                  (_E152420152445_))))
                           (_E152406152469_
                            (lambda ()
                              (if (gx#stx-pair? _e152400152429_)
                                  (let ((_e152417152461_
                                         (gx#syntax-e _e152400152429_)))
                                    (let ((_hd152418152464_
                                           (##car _e152417152461_))
                                          (_tl152419152466_
                                           (##cdr _e152417152461_)))
                                      (if (and (gx#identifier?
                                                _hd152418152464_)
                                               (gx#core-identifier=?
                                                _hd152418152464_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152399_
                                               (gx#core-expand-define-syntax%
                                                _hd152392_))
                                              (_E152416152457_))
                                          (_E152416152457_))))
                                  (_E152416152457_))))
                           (_E152402152501_
                            (lambda ()
                              (if (gx#stx-pair? _e152400152429_)
                                  (let ((_e152407152473_
                                         (gx#syntax-e _e152400152429_)))
                                    (let ((_hd152408152476_
                                           (##car _e152407152473_))
                                          (_tl152409152478_
                                           (##cdr _e152407152473_)))
                                      (if (and (gx#identifier?
                                                _hd152408152476_)
                                               (gx#core-identifier=?
                                                _hd152408152476_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152409152478_)
                                              (let ((_e152410152481_
                                                     (gx#syntax-e
                                                      _tl152409152478_)))
                                                (let ((_hd152411152484_
                                                       (##car _e152410152481_))
                                                      (_tl152412152486_
                                                       (##cdr _e152410152481_)))
                                                  (let ((_hd-bind152489_
                                                         _hd152411152484_))
                                                    (if (gx#stx-pair?
                                                         _tl152412152486_)
                                                        (let ((_e152413152491_
                                                               (gx#syntax-e
                                                                _tl152412152486_)))
                                                          (let ((_hd152414152494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152413152491_))
                        (_tl152415152496_ (##cdr _e152413152491_)))
                    (let ((_expr152499_ _hd152414152494_))
                      (if (gx#stx-null? _tl152415152496_)
                          (if (gx#core-bind-values? _hd-bind152489_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152489_)
                                (_K152399_ _hd152392_))
                              (_E152406152469_))
                          (_E152406152469_)))))
                (_E152406152469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152406152469_))
                                          (_E152406152469_))))
                                  (_E152406152469_))))
                           (_E152401152513_
                            (lambda ()
                              (if (gx#stx-pair? _e152400152429_)
                                  (let ((_e152403152505_
                                         (gx#syntax-e _e152400152429_)))
                                    (let ((_hd152404152508_
                                           (##car _e152403152505_))
                                          (_tl152405152510_
                                           (##cdr _e152403152505_)))
                                      (if (and (gx#identifier?
                                                _hd152404152508_)
                                               (gx#core-identifier=?
                                                _hd152404152508_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152399_
                                               (gx#core-expand-begin-syntax%
                                                _hd152392_))
                                              (_E152402152501_))
                                          (_E152402152501_))))
                                  (_E152402152501_)))))
                      (_E152401152513_))))
                 (_eval-body152273_
                  (lambda (_rbody152281_)
                    (let _lp152283_ ((_rest152285_ _rbody152281_)
                                     (_body152286_ '())
                                     (_ebody152287_ '()))
                      (let* ((_rest152288152296_ _rest152285_)
                             (_else152290152304_
                              (lambda ()
                                (values _body152286_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152287_)
                                          (gx#stx-source _stx152270_))))))
                             (_K152292152380_
                              (lambda (_rest152307_ _hd152308_)
                                (let* ((_e152309152326_ _hd152308_)
                                       (_E152321152330_
                                        (lambda ()
                                          (_lp152283_
                                           _rest152307_
                                           (cons _hd152308_ _body152286_)
                                           (cons _hd152308_ _ebody152287_))))
                                       (_E152311152342_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152309152326_)
                                              (let ((_e152322152334_
                                                     (gx#syntax-e
                                                      _e152309152326_)))
                                                (let ((_hd152323152337_
                                                       (##car _e152322152334_))
                                                      (_tl152324152339_
                                                       (##cdr _e152322152334_)))
                                                  (if (and (gx#identifier?
                                                            _hd152323152337_)
                                                           (gx#core-identifier=?
                                                            _hd152323152337_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152283_
                                                           _rest152307_
                                                           (cons _hd152308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152286_)
                   _ebody152287_)
                  (_E152321152330_))
              (_E152321152330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152321152330_))))
                                       (_E152310152376_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152309152326_)
                                              (let ((_e152312152346_
                                                     (gx#syntax-e
                                                      _e152309152326_)))
                                                (let ((_hd152313152349_
                                                       (##car _e152312152346_))
                                                      (_tl152314152351_
                                                       (##cdr _e152312152346_)))
                                                  (if (and (gx#identifier?
                                                            _hd152313152349_)
                                                           (gx#core-identifier=?
                                                            _hd152313152349_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152314152351_)
                                                          (let ((_e152315152354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152314152351_)))
                    (let ((_hd152316152357_ (##car _e152315152354_))
                          (_tl152317152359_ (##cdr _e152315152354_)))
                      (let ((_hd-bind152362_ _hd152316152357_))
                        (if (gx#stx-pair? _tl152317152359_)
                            (let ((_e152318152364_
                                   (gx#syntax-e _tl152317152359_)))
                              (let ((_hd152319152367_ (##car _e152318152364_))
                                    (_tl152320152369_ (##cdr _e152318152364_)))
                                (let ((_expr152372_ _hd152319152367_))
                                  (if (gx#stx-null? _tl152320152369_)
                                      (if '#t
                                          (let ((_ehd152374_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152362_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152372_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152308_))))
                                            (_lp152283_
                                             _rest152307_
                                             (cons _ehd152374_ _body152286_)
                                             (cons _ehd152374_ _ebody152287_)))
                                          (_E152311152342_))
                                      (_E152311152342_)))))
                            (_E152311152342_)))))
                  (_E152311152342_))
              (_E152311152342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152311152342_)))))
                                  (_E152310152376_)))))
                        (if (##pair? _rest152288152296_)
                            (let ((_hd152293152383_ (##car _rest152288152296_))
                                  (_tl152294152385_
                                   (##cdr _rest152288152296_)))
                              (let* ((_hd152388_ _hd152293152383_)
                                     (_rest152390_ _tl152294152385_))
                                (_K152292152380_ _rest152390_ _hd152388_)))
                            (_else152290152304_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152276_
                     (gx#core-expand-block__1
                      _stx152270_
                      _expand-special152272_
                      '#f))
                    (_g157008_ (_eval-body152273_ _rbody152276_)))
               (begin
                 (let ((_g157009_
                        (if (##values? _g157008_)
                            (##vector-length _g157008_)
                            1)))
                   (if (not (##fx= _g157009_ 2))
                       (error "Context expects 2 values" _g157009_)))
                 (let ((_expanded-body152278_ (##vector-ref _g157008_ 0))
                       (_value152279_ (##vector-ref _g157008_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152278_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152279_ '())))
                    (gx#stx-source _stx152270_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152240_)
        (let* ((_e152241152248_ _stx152240_)
               (_E152243152252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152241152248_)))
               (_E152242152266_
                (lambda ()
                  (if (gx#stx-pair? _e152241152248_)
                      (let ((_e152244152256_ (gx#syntax-e _e152241152248_)))
                        (let ((_hd152245152259_ (##car _e152244152256_))
                              (_tl152246152261_ (##cdr _e152244152256_)))
                          (let ((_body152264_ _tl152246152261_))
                            (if (gx#stx-list? _body152264_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152264_)
                                 (gx#stx-source _stx152240_))
                                (_E152243152252_)))))
                      (_E152243152252_)))))
          (_E152242152266_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152238_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152238_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152184_)
        (let* ((_e152185152198_ _stx152184_)
               (_E152187152202_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152185152198_)))
               (_E152186152234_
                (lambda ()
                  (if (gx#stx-pair? _e152185152198_)
                      (let ((_e152188152206_ (gx#syntax-e _e152185152198_)))
                        (let ((_hd152189152209_ (##car _e152188152206_))
                              (_tl152190152211_ (##cdr _e152188152206_)))
                          (if (gx#stx-pair? _tl152190152211_)
                              (let ((_e152191152214_
                                     (gx#syntax-e _tl152190152211_)))
                                (let ((_hd152192152217_
                                       (##car _e152191152214_))
                                      (_tl152193152219_
                                       (##cdr _e152191152214_)))
                                  (let ((_ann152222_ _hd152192152217_))
                                    (if (gx#stx-pair? _tl152193152219_)
                                        (let ((_e152194152224_
                                               (gx#syntax-e _tl152193152219_)))
                                          (let ((_hd152195152227_
                                                 (##car _e152194152224_))
                                                (_tl152196152229_
                                                 (##cdr _e152194152224_)))
                                            (let ((_expr152232_
                                                   _hd152195152227_))
                                              (if (gx#stx-null?
                                                   _tl152196152229_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152232_)
                                 '())))
               (gx#stx-source _stx152184_))
              (_E152187152202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152187152202_)))))
                                        (_E152187152202_)))))
                              (_E152187152202_))))
                      (_E152187152202_)))))
          (_E152186152234_))))
    (define gx#core-expand-local-block
      (lambda (_stx151908_ _body151909_)
        (letrec ((_expand-special151911_
                  (lambda (_hd152179_ _K152180_ _rest152181_ _r152182_)
                    (_K152180_
                     '()
                     (cons (_expand-internal151912_ _hd152179_ _rest152181_)
                           _r152182_))))
                 (_expand-internal151912_
                  (lambda (_hd152175_ _rest152176_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal151914_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152175_ _rest152176_))
                          (gx#stx-source _stx151908_))
                         _expand-internal-special151913_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157002
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157002)
                       __obj157002))))
                 (_expand-internal-special151913_
                  (lambda (_hd152070_ _K152071_ _rest152072_ _r152073_)
                    (let* ((_e152074152099_ _hd152070_)
                           (_E152094152103_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152074152099_)))
                           (_E152090152115_
                            (lambda ()
                              (if (gx#stx-pair? _e152074152099_)
                                  (let ((_e152095152107_
                                         (gx#syntax-e _e152074152099_)))
                                    (let ((_hd152096152110_
                                           (##car _e152095152107_))
                                          (_tl152097152112_
                                           (##cdr _e152095152107_)))
                                      (if (and (gx#identifier?
                                                _hd152096152110_)
                                               (gx#core-identifier=?
                                                _hd152096152110_
                                                '%#declare))
                                          (if '#t
                                              (_K152071_
                                               _rest152072_
                                               (cons (gx#core-expand-declare%
                                                      _hd152070_)
                                                     _r152073_))
                                              (_E152094152103_))
                                          (_E152094152103_))))
                                  (_E152094152103_))))
                           (_E152086152127_
                            (lambda ()
                              (if (gx#stx-pair? _e152074152099_)
                                  (let ((_e152091152119_
                                         (gx#syntax-e _e152074152099_)))
                                    (let ((_hd152092152122_
                                           (##car _e152091152119_))
                                          (_tl152093152124_
                                           (##cdr _e152091152119_)))
                                      (if (and (gx#identifier?
                                                _hd152092152122_)
                                               (gx#core-identifier=?
                                                _hd152092152122_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152070_)
                                                (_K152071_
                                                 _rest152072_
                                                 _r152073_))
                                              (_E152090152115_))
                                          (_E152090152115_))))
                                  (_E152090152115_))))
                           (_E152076152139_
                            (lambda ()
                              (if (gx#stx-pair? _e152074152099_)
                                  (let ((_e152087152131_
                                         (gx#syntax-e _e152074152099_)))
                                    (let ((_hd152088152134_
                                           (##car _e152087152131_))
                                          (_tl152089152136_
                                           (##cdr _e152087152131_)))
                                      (if (and (gx#identifier?
                                                _hd152088152134_)
                                               (gx#core-identifier=?
                                                _hd152088152134_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152070_)
                                                (_K152071_
                                                 _rest152072_
                                                 _r152073_))
                                              (_E152086152127_))
                                          (_E152086152127_))))
                                  (_E152086152127_))))
                           (_E152075152171_
                            (lambda ()
                              (if (gx#stx-pair? _e152074152099_)
                                  (let ((_e152077152143_
                                         (gx#syntax-e _e152074152099_)))
                                    (let ((_hd152078152146_
                                           (##car _e152077152143_))
                                          (_tl152079152148_
                                           (##cdr _e152077152143_)))
                                      (if (and (gx#identifier?
                                                _hd152078152146_)
                                               (gx#core-identifier=?
                                                _hd152078152146_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152079152148_)
                                              (let ((_e152080152151_
                                                     (gx#syntax-e
                                                      _tl152079152148_)))
                                                (let ((_hd152081152154_
                                                       (##car _e152080152151_))
                                                      (_tl152082152156_
                                                       (##cdr _e152080152151_)))
                                                  (let ((_hd-bind152159_
                                                         _hd152081152154_))
                                                    (if (gx#stx-pair?
                                                         _tl152082152156_)
                                                        (let ((_e152083152161_
                                                               (gx#syntax-e
                                                                _tl152082152156_)))
                                                          (let ((_hd152084152164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152083152161_))
                        (_tl152085152166_ (##cdr _e152083152161_)))
                    (let ((_expr152169_ _hd152084152164_))
                      (if (gx#stx-null? _tl152085152166_)
                          (if (gx#core-bind-values? _hd-bind152159_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152159_)
                                (_K152071_
                                 _rest152072_
                                 (cons _hd152070_ _r152073_)))
                              (_E152076152139_))
                          (_E152076152139_)))))
                (_E152076152139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152076152139_))
                                          (_E152076152139_))))
                                  (_E152076152139_)))))
                      (_E152075152171_))))
                 (_wrap-internal151914_
                  (lambda (_rbody151916_)
                    (let _lp151918_ ((_rest151920_ _rbody151916_)
                                     (_decls151921_ '())
                                     (_bind151922_ '())
                                     (_body151923_ '()))
                      (let* ((_e151924151931_ _rest151920_)
                             (_E151926151980_
                              (lambda ()
                                (let* ((_body151975_
                                        (let* ((_body151934151944_
                                                _body151923_)
                                               (_else151937151952_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body151923_)
                                                   (gx#stx-source
                                                    _stx151908_)))))
                                          (let ((_K151942151972_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx151908_)))
                                                (_K151939151958_
                                                 (lambda (_expr151956_)
                                                   _expr151956_)))
                                            (let ((_try-match151936151968_
                                                   (lambda ()
                                                     (if (##pair? _body151934151944_)
                                                         (let ((_tl151941151963_
                                                                (##cdr _body151934151944_))
                                                               (_hd151940151961_
                                                                (##car _body151934151944_)))
                                                           (if (##null? _tl151941151963_)
                                                               (let ((_expr151966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151940151961_))
                         (_K151939151958_ _expr151966_))
                       (_else151937151952_)))
                 (_else151937151952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body151934151944_)
                                                  (_K151942151972_)
                                                  (_try-match151936151968_))))))
                                       (_body151977_
                                        (if (null? _bind151922_)
                                            _body151975_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind151922_
                                                         (cons _body151975_
                                                               '())))
                                             (gx#stx-source _stx151908_)))))
                                  (if (null? _decls151921_)
                                      _body151977_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls151921_
                                                   (cons _body151977_ '())))
                                       (gx#stx-source _stx151908_))))))
                             (_E151925152066_
                              (lambda ()
                                (if (gx#stx-pair? _e151924151931_)
                                    (let ((_e151927151984_
                                           (gx#syntax-e _e151924151931_)))
                                      (let ((_hd151928151987_
                                             (##car _e151927151984_))
                                            (_tl151929151989_
                                             (##cdr _e151927151984_)))
                                        (let* ((_hd151992_ _hd151928151987_)
                                               (_rest151994_ _tl151929151989_))
                                          (if '#t
                                              (let* ((_e151995152012_
                                                      _hd151992_)
                                                     (_E152007152016_
                                                      (lambda ()
                                                        (if (null? _bind151922_)
                                                            (_lp151918_
                                                             _rest151994_
                                                             _decls151921_
                                                             _bind151922_
                                                             (cons _hd151992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body151923_))
                    (_lp151918_
                     _rest151994_
                     _decls151921_
                     (cons (cons '#f (cons _hd151992_ '())) _bind151922_)
                     _body151923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E151997152030_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e151995152012_)
                                                            (let ((_e152008152020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e151995152012_)))
                      (let ((_hd152009152023_ (##car _e152008152020_))
                            (_tl152010152025_ (##cdr _e152008152020_)))
                        (if (and (gx#identifier? _hd152009152023_)
                                 (gx#core-identifier=?
                                  _hd152009152023_
                                  '%#declare))
                            (let ((_xdecls152028_ _tl152010152025_))
                              (if '#t
                                  (_lp151918_
                                   _rest151994_
                                   (gx#stx-foldr
                                    cons
                                    _decls151921_
                                    _xdecls152028_)
                                   _bind151922_
                                   _body151923_)
                                  (_E152007152016_)))
                            (_E152007152016_))))
                    (_E152007152016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E151996152062_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e151995152012_)
                                                            (let ((_e151998152034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e151995152012_)))
                      (let ((_hd151999152037_ (##car _e151998152034_))
                            (_tl152000152039_ (##cdr _e151998152034_)))
                        (if (and (gx#identifier? _hd151999152037_)
                                 (gx#core-identifier=?
                                  _hd151999152037_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152000152039_)
                                (let ((_e152001152042_
                                       (gx#syntax-e _tl152000152039_)))
                                  (let ((_hd152002152045_
                                         (##car _e152001152042_))
                                        (_tl152003152047_
                                         (##cdr _e152001152042_)))
                                    (let ((_hd-bind152050_ _hd152002152045_))
                                      (if (gx#stx-pair? _tl152003152047_)
                                          (let ((_e152004152052_
                                                 (gx#syntax-e
                                                  _tl152003152047_)))
                                            (let ((_hd152005152055_
                                                   (##car _e152004152052_))
                                                  (_tl152006152057_
                                                   (##cdr _e152004152052_)))
                                              (let ((_expr152060_
                                                     _hd152005152055_))
                                                (if (gx#stx-null?
                                                     _tl152006152057_)
                                                    (if '#t
                                                        (_lp151918_
                                                         _rest151994_
                                                         _decls151921_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152050_)
                             (cons (gx#core-expand-expression _expr152060_)
                                   '()))
                       _bind151922_)
                 _body151923_)
                (_E151997152030_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E151997152030_)))))
                                          (_E151997152030_)))))
                                (_E151997152030_))
                            (_E151997152030_))))
                    (_E151997152030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151996152062_))
                                              (_E151926151980_)))))
                                    (_E151926151980_)))))
                        (_E151925152066_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body151909_)
            (gx#stx-source _stx151908_))
           _expand-special151911_))))
    (define gx#core-expand-declare%
      (lambda (_stx151846_)
        (let* ((_e151847151854_ _stx151846_)
               (_E151849151858_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151847151854_)))
               (_E151848151904_
                (lambda ()
                  (if (gx#stx-pair? _e151847151854_)
                      (let ((_e151850151862_ (gx#syntax-e _e151847151854_)))
                        (let ((_hd151851151865_ (##car _e151850151862_))
                              (_tl151852151867_ (##cdr _e151850151862_)))
                          (let ((_body151870_ _tl151852151867_))
                            (if (gx#stx-list? _body151870_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl151872_)
                                     (let* ((_e151873151880_ _decl151872_)
                                            (_E151875151884_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e151873151880_)))
                                            (_E151874151900_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e151873151880_)
                                                   (let ((_e151876151888_
                                                          (gx#syntax-e
                                                           _e151873151880_)))
                                                     (let ((_hd151877151891_
                                                            (##car _e151876151888_))
                                                           (_tl151878151893_
                                                            (##cdr _e151876151888_)))
                                                       (let* ((_head151896_
                                                               _hd151877151891_)
                                                              (_args151898_
                                                               _tl151878151893_))
                                                         (if (gx#stx-list?
                                                              _args151898_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl151872_)
                                                             (_E151875151884_)))))
                                                   (_E151875151884_)))))
                                       (_E151874151900_)))
                                   _body151870_))
                                 (gx#stx-source _stx151846_))
                                (_E151849151858_)))))
                      (_E151849151858_)))))
          (_E151848151904_))))
    (define gx#core-expand-extern%
      (lambda (_stx151750_)
        (let* ((_e151751151758_ _stx151750_)
               (_E151753151762_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151751151758_)))
               (_E151752151842_
                (lambda ()
                  (if (gx#stx-pair? _e151751151758_)
                      (let ((_e151754151766_ (gx#syntax-e _e151751151758_)))
                        (let ((_hd151755151769_ (##car _e151754151766_))
                              (_tl151756151771_ (##cdr _e151754151766_)))
                          (let ((_body151774_ _tl151756151771_))
                            (if '#t
                                (let _lp151776_ ((_rest151778_ _body151774_)
                                                 (_r151779_ '()))
                                  (let* ((_e151780151794_ _rest151778_)
                                         (_E151792151798_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx151750_)))
                                         (_E151782151802_
                                          (lambda ()
                                            (if (gx#stx-null? _e151780151794_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r151779_))
                                                     (gx#stx-source
                                                      _stx151750_))
                                                    (_E151792151798_))
                                                (_E151792151798_))))
                                         (_E151781151838_
                                          (lambda ()
                                            (if (gx#stx-pair? _e151780151794_)
                                                (let ((_e151783151806_
                                                       (gx#syntax-e
                                                        _e151780151794_)))
                                                  (let ((_hd151784151809_
                                                         (##car _e151783151806_))
                                                        (_tl151785151811_
                                                         (##cdr _e151783151806_)))
                                                    (if (gx#stx-pair?
                                                         _hd151784151809_)
                                                        (let ((_e151786151814_
                                                               (gx#syntax-e
                                                                _hd151784151809_)))
                                                          (let ((_hd151787151817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e151786151814_))
                        (_tl151788151819_ (##cdr _e151786151814_)))
                    (let ((_id151822_ _hd151787151817_))
                      (if (gx#stx-pair? _tl151788151819_)
                          (let ((_e151789151824_
                                 (gx#syntax-e _tl151788151819_)))
                            (let ((_hd151790151827_ (##car _e151789151824_))
                                  (_tl151791151829_ (##cdr _e151789151824_)))
                              (let ((_eid151832_ _hd151790151827_))
                                (if (gx#stx-null? _tl151791151829_)
                                    (let ((_rest151834_ _tl151785151811_))
                                      (if (and (gx#identifier? _id151822_)
                                               (gx#identifier? _eid151832_))
                                          (let ((_eid151836_
                                                 (gx#stx-e _eid151832_)))
                                            (gx#core-bind-extern!__0
                                             _id151822_
                                             _eid151836_)
                                            (_lp151776_
                                             _rest151834_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id151822_)
                                                         (cons _eid151836_
                                                               '()))
                                                   _r151779_)))
                                          (_E151782151802_)))
                                    (_E151782151802_)))))
                          (_E151782151802_)))))
                (_E151782151802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E151782151802_)))))
                                    (_E151781151838_)))
                                (_E151753151762_)))))
                      (_E151753151762_)))))
          (_E151752151842_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151696_)
        (let* ((_e151697151710_ _stx151696_)
               (_E151699151714_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151697151710_)))
               (_E151698151746_
                (lambda ()
                  (if (gx#stx-pair? _e151697151710_)
                      (let ((_e151700151718_ (gx#syntax-e _e151697151710_)))
                        (let ((_hd151701151721_ (##car _e151700151718_))
                              (_tl151702151723_ (##cdr _e151700151718_)))
                          (if (gx#stx-pair? _tl151702151723_)
                              (let ((_e151703151726_
                                     (gx#syntax-e _tl151702151723_)))
                                (let ((_hd151704151729_
                                       (##car _e151703151726_))
                                      (_tl151705151731_
                                       (##cdr _e151703151726_)))
                                  (let ((_hd151734_ _hd151704151729_))
                                    (if (gx#stx-pair? _tl151705151731_)
                                        (let ((_e151706151736_
                                               (gx#syntax-e _tl151705151731_)))
                                          (let ((_hd151707151739_
                                                 (##car _e151706151736_))
                                                (_tl151708151741_
                                                 (##cdr _e151706151736_)))
                                            (let ((_expr151744_
                                                   _hd151707151739_))
                                              (if (gx#stx-null?
                                                   _tl151708151741_)
                                                  (if (gx#core-bind-values?
                                                       _hd151734_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd151734_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd151734_)
                             (cons (gx#core-expand-expression _expr151744_)
                                   '())))
                 (gx#stx-source _stx151696_)))
              (_E151699151714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151699151714_)))))
                                        (_E151699151714_)))))
                              (_E151699151714_))))
                      (_E151699151714_)))))
          (_E151698151746_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151640_)
        (let* ((_e151641151654_ _stx151640_)
               (_E151643151658_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151641151654_)))
               (_E151642151692_
                (lambda ()
                  (if (gx#stx-pair? _e151641151654_)
                      (let ((_e151644151662_ (gx#syntax-e _e151641151654_)))
                        (let ((_hd151645151665_ (##car _e151644151662_))
                              (_tl151646151667_ (##cdr _e151644151662_)))
                          (if (gx#stx-pair? _tl151646151667_)
                              (let ((_e151647151670_
                                     (gx#syntax-e _tl151646151667_)))
                                (let ((_hd151648151673_
                                       (##car _e151647151670_))
                                      (_tl151649151675_
                                       (##cdr _e151647151670_)))
                                  (let ((_id151678_ _hd151648151673_))
                                    (if (gx#stx-pair? _tl151649151675_)
                                        (let ((_e151650151680_
                                               (gx#syntax-e _tl151649151675_)))
                                          (let ((_hd151651151683_
                                                 (##car _e151650151680_))
                                                (_tl151652151685_
                                                 (##cdr _e151650151680_)))
                                            (let ((_binding-id151688_
                                                   _hd151651151683_))
                                              (if (gx#stx-null?
                                                   _tl151652151685_)
                                                  (if (and (gx#identifier?
                                                            _id151678_)
                                                           (gx#identifier?
                                                            _binding-id151688_))
                                                      (let ((_eid151690_
                                                             (gx#stx-e
                                                              _binding-id151688_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151678_
                                                         _eid151690_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151678_)
                             (cons _eid151690_ '())))))
              (_E151643151658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151643151658_)))))
                                        (_E151643151658_)))))
                              (_E151643151658_))))
                      (_E151643151658_)))))
          (_E151642151692_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151583_)
        (let* ((_e151584151597_ _stx151583_)
               (_E151586151601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151584151597_)))
               (_E151585151636_
                (lambda ()
                  (if (gx#stx-pair? _e151584151597_)
                      (let ((_e151587151605_ (gx#syntax-e _e151584151597_)))
                        (let ((_hd151588151608_ (##car _e151587151605_))
                              (_tl151589151610_ (##cdr _e151587151605_)))
                          (if (gx#stx-pair? _tl151589151610_)
                              (let ((_e151590151613_
                                     (gx#syntax-e _tl151589151610_)))
                                (let ((_hd151591151616_
                                       (##car _e151590151613_))
                                      (_tl151592151618_
                                       (##cdr _e151590151613_)))
                                  (let ((_id151621_ _hd151591151616_))
                                    (if (gx#stx-pair? _tl151592151618_)
                                        (let ((_e151593151623_
                                               (gx#syntax-e _tl151592151618_)))
                                          (let ((_hd151594151626_
                                                 (##car _e151593151623_))
                                                (_tl151595151628_
                                                 (##cdr _e151593151623_)))
                                            (let ((_expr151631_
                                                   _hd151594151626_))
                                              (if (gx#stx-null?
                                                   _tl151595151628_)
                                                  (if (gx#identifier?
                                                       _id151621_)
                                                      (let ((_g157010_
                                                             (gx#core-expand-expression+1
                                                              _expr151631_)))
                                                        (begin
                                                          (let ((_g157011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157010_)
                             (##vector-length _g157010_)
                             1)))
                    (if (not (##fx= _g157011_ 2))
                        (error "Context expects 2 values" _g157011_)))
                  (let ((_e-stx151633_ (##vector-ref _g157010_ 0))
                        (_e151634_ (##vector-ref _g157010_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151621_ _e151634_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151621_)
                                   (cons _e-stx151633_ '())))
                       (gx#stx-source _stx151583_))))))
              (_E151586151601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151586151601_)))))
                                        (_E151586151601_)))))
                              (_E151586151601_))))
                      (_E151586151601_)))))
          (_E151585151636_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151527_)
        (let* ((_e151528151541_ _stx151527_)
               (_E151530151545_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151528151541_)))
               (_E151529151579_
                (lambda ()
                  (if (gx#stx-pair? _e151528151541_)
                      (let ((_e151531151549_ (gx#syntax-e _e151528151541_)))
                        (let ((_hd151532151552_ (##car _e151531151549_))
                              (_tl151533151554_ (##cdr _e151531151549_)))
                          (if (gx#stx-pair? _tl151533151554_)
                              (let ((_e151534151557_
                                     (gx#syntax-e _tl151533151554_)))
                                (let ((_hd151535151560_
                                       (##car _e151534151557_))
                                      (_tl151536151562_
                                       (##cdr _e151534151557_)))
                                  (let ((_id151565_ _hd151535151560_))
                                    (if (gx#stx-pair? _tl151536151562_)
                                        (let ((_e151537151567_
                                               (gx#syntax-e _tl151536151562_)))
                                          (let ((_hd151538151570_
                                                 (##car _e151537151567_))
                                                (_tl151539151572_
                                                 (##cdr _e151537151567_)))
                                            (let ((_alias-id151575_
                                                   _hd151538151570_))
                                              (if (gx#stx-null?
                                                   _tl151539151572_)
                                                  (if (and (gx#identifier?
                                                            _id151565_)
                                                           (gx#identifier?
                                                            _alias-id151575_))
                                                      (let ((_alias-id151577_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151575_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151565_
                                                         _alias-id151577_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151565_)
                             (cons _alias-id151577_ '())))))
              (_E151530151545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151530151545_)))))
                                        (_E151530151545_)))))
                              (_E151530151545_))))
                      (_E151530151545_)))))
          (_E151529151579_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151470_ _wrap?151471_)
        (let* ((_e151472151482_ _stx151470_)
               (_E151474151486_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151472151482_)))
               (_E151473151513_
                (lambda ()
                  (if (gx#stx-pair? _e151472151482_)
                      (let ((_e151475151490_ (gx#syntax-e _e151472151482_)))
                        (let ((_hd151476151493_ (##car _e151475151490_))
                              (_tl151477151495_ (##cdr _e151475151490_)))
                          (if (gx#stx-pair? _tl151477151495_)
                              (let ((_e151478151498_
                                     (gx#syntax-e _tl151477151495_)))
                                (let ((_hd151479151501_
                                       (##car _e151478151498_))
                                      (_tl151480151503_
                                       (##cdr _e151478151498_)))
                                  (let* ((_hd151506_ _hd151479151501_)
                                         (_body151508_ _tl151480151503_))
                                    (if (gx#core-bind-values? _hd151506_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151506_)
                                           (let ((_body151511_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151506_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151470_
                                                               _body151508_)
                                                              '()))))
                                             (if _wrap?151471_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151511_)
                                                  (gx#stx-source _stx151470_))
                                                 _body151511_)))
                                         gx#current-expander-context
                                         (let ((__obj157003
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157003)
                                           __obj157003))
                                        (_E151474151486_)))))
                              (_E151474151486_))))
                      (_E151474151486_)))))
          (_E151473151513_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151520_)
        (let ((_wrap?151522_ '#t))
          (gx#core-expand-lambda%__% _stx151520_ _wrap?151522_))))
    (define gx#core-expand-lambda%
      (lambda _g157013_
        (let ((_g157012_ (##length _g157013_)))
          (cond ((##fx= _g157012_ 1)
                 (apply (lambda (_stx151520_)
                          (gx#core-expand-lambda%__0 _stx151520_))
                        _g157013_))
                ((##fx= _g157012_ 2)
                 (apply (lambda (_stx151524_ _wrap?151525_)
                          (gx#core-expand-lambda%__%
                           _stx151524_
                           _wrap?151525_))
                        _g157013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157013_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151434_)
        (let* ((_e151435151442_ _stx151434_)
               (_E151437151446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151435151442_)))
               (_E151436151465_
                (lambda ()
                  (if (gx#stx-pair? _e151435151442_)
                      (let ((_e151438151450_ (gx#syntax-e _e151435151442_)))
                        (let ((_hd151439151453_ (##car _e151438151450_))
                              (_tl151440151455_ (##cdr _e151438151450_)))
                          (let ((_clauses151458_ _tl151440151455_))
                            (if (gx#stx-list? _clauses151458_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151460_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151460_)
                                       (let ((_$e151462_
                                              (gx#stx-source _clause151460_)))
                                         (if _$e151462_
                                             _$e151462_
                                             (gx#stx-source _stx151434_))))
                                      '#f))
                                   _clauses151458_))
                                 (gx#stx-source _stx151434_))
                                (_E151437151446_)))))
                      (_E151437151446_)))))
          (_E151436151465_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151388_)
        (let* ((_e151389151399_ _stx151388_)
               (_E151391151403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151389151399_)))
               (_E151390151430_
                (lambda ()
                  (if (gx#stx-pair? _e151389151399_)
                      (let ((_e151392151407_ (gx#syntax-e _e151389151399_)))
                        (let ((_hd151393151410_ (##car _e151392151407_))
                              (_tl151394151412_ (##cdr _e151392151407_)))
                          (if (gx#stx-pair? _tl151394151412_)
                              (let ((_e151395151415_
                                     (gx#syntax-e _tl151394151412_)))
                                (let ((_hd151396151418_
                                       (##car _e151395151415_))
                                      (_tl151397151420_
                                       (##cdr _e151395151415_)))
                                  (let* ((_hd151423_ _hd151396151418_)
                                         (_body151425_ _tl151397151420_))
                                    (if (gx#core-expand-let-bind? _hd151423_)
                                        (let ((_expressions151427_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151423_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151423_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151423_
                                                           _expressions151427_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151388_
                         _body151425_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151388_)))
                                           gx#current-expander-context
                                           (let ((__obj157004
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157004)
                                             __obj157004)))
                                        (_E151391151403_)))))
                              (_E151391151403_))))
                      (_E151391151403_)))))
          (_E151390151430_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151333_ _form151334_)
        (let* ((_e151335151345_ _stx151333_)
               (_E151337151349_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151335151345_)))
               (_E151336151374_
                (lambda ()
                  (if (gx#stx-pair? _e151335151345_)
                      (let ((_e151338151353_ (gx#syntax-e _e151335151345_)))
                        (let ((_hd151339151356_ (##car _e151338151353_))
                              (_tl151340151358_ (##cdr _e151338151353_)))
                          (if (gx#stx-pair? _tl151340151358_)
                              (let ((_e151341151361_
                                     (gx#syntax-e _tl151340151358_)))
                                (let ((_hd151342151364_
                                       (##car _e151341151361_))
                                      (_tl151343151366_
                                       (##cdr _e151341151361_)))
                                  (let* ((_hd151369_ _hd151342151364_)
                                         (_body151371_ _tl151343151366_))
                                    (if (gx#core-expand-let-bind? _hd151369_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151369_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151334_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151369_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151369_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151333_
                                                               _body151371_)
                                                              '())))
                                            (gx#stx-source _stx151333_)))
                                         gx#current-expander-context
                                         (let ((__obj157005
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157005)
                                           __obj157005))
                                        (_E151337151349_)))))
                              (_E151337151349_))))
                      (_E151337151349_)))))
          (_E151336151374_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151381_)
        (let ((_form151383_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151381_ _form151383_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157015_
        (let ((_g157014_ (##length _g157015_)))
          (cond ((##fx= _g157014_ 1)
                 (apply (lambda (_stx151381_)
                          (gx#core-expand-letrec-values%__0 _stx151381_))
                        _g157015_))
                ((##fx= _g157014_ 2)
                 (apply (lambda (_stx151385_ _form151386_)
                          (gx#core-expand-letrec-values%__%
                           _stx151385_
                           _form151386_))
                        _g157015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157015_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151330_)
        (gx#core-expand-letrec-values%__% _stx151330_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151287_)
        (if (gx#stx-list? _stx151287_)
            (gx#stx-andmap
             (lambda (_bind151289_)
               (let* ((_e151290151300_ _bind151289_)
                      (_E151292151304_ (lambda () '#f))
                      (_E151291151326_
                       (lambda ()
                         (if (gx#stx-pair? _e151290151300_)
                             (let ((_e151293151308_
                                    (gx#syntax-e _e151290151300_)))
                               (let ((_hd151294151311_ (##car _e151293151308_))
                                     (_tl151295151313_
                                      (##cdr _e151293151308_)))
                                 (let ((_hd151316_ _hd151294151311_))
                                   (if (gx#stx-pair? _tl151295151313_)
                                       (let ((_e151296151318_
                                              (gx#syntax-e _tl151295151313_)))
                                         (let ((_hd151297151321_
                                                (##car _e151296151318_))
                                               (_tl151298151323_
                                                (##cdr _e151296151318_)))
                                           (if (gx#stx-null? _tl151298151323_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151316_)
                                                   (_E151292151304_))
                                               (_E151292151304_))))
                                       (_E151292151304_)))))
                             (_E151292151304_)))))
                 (_E151291151326_)))
             _stx151287_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151246_)
        (let* ((_e151247151257_ _bind151246_)
               (_E151249151261_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151247151257_)))
               (_E151248151283_
                (lambda ()
                  (if (gx#stx-pair? _e151247151257_)
                      (let ((_e151250151265_ (gx#syntax-e _e151247151257_)))
                        (let ((_hd151251151268_ (##car _e151250151265_))
                              (_tl151252151270_ (##cdr _e151250151265_)))
                          (if (gx#stx-pair? _tl151252151270_)
                              (let ((_e151253151273_
                                     (gx#syntax-e _tl151252151270_)))
                                (let ((_hd151254151276_
                                       (##car _e151253151273_))
                                      (_tl151255151278_
                                       (##cdr _e151253151273_)))
                                  (let ((_expr151281_ _hd151254151276_))
                                    (if (gx#stx-null? _tl151255151278_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151281_)
                                            (_E151249151261_))
                                        (_E151249151261_)))))
                              (_E151249151261_))))
                      (_E151249151261_)))))
          (_E151248151283_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151205_)
        (let* ((_e151206151216_ _bind151205_)
               (_E151208151220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151206151216_)))
               (_E151207151242_
                (lambda ()
                  (if (gx#stx-pair? _e151206151216_)
                      (let ((_e151209151224_ (gx#syntax-e _e151206151216_)))
                        (let ((_hd151210151227_ (##car _e151209151224_))
                              (_tl151211151229_ (##cdr _e151209151224_)))
                          (let ((_hd151232_ _hd151210151227_))
                            (if (gx#stx-pair? _tl151211151229_)
                                (let ((_e151212151234_
                                       (gx#syntax-e _tl151211151229_)))
                                  (let ((_hd151213151237_
                                         (##car _e151212151234_))
                                        (_tl151214151239_
                                         (##cdr _e151212151234_)))
                                    (if (gx#stx-null? _tl151214151239_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151232_)
                                            (_E151208151220_))
                                        (_E151208151220_))))
                                (_E151208151220_)))))
                      (_E151208151220_)))))
          (_E151207151242_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151163_ _expr151164_)
        (let* ((_e151165151175_ _bind151163_)
               (_E151167151179_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151165151175_)))
               (_E151166151201_
                (lambda ()
                  (if (gx#stx-pair? _e151165151175_)
                      (let ((_e151168151183_ (gx#syntax-e _e151165151175_)))
                        (let ((_hd151169151186_ (##car _e151168151183_))
                              (_tl151170151188_ (##cdr _e151168151183_)))
                          (let ((_hd151191_ _hd151169151186_))
                            (if (gx#stx-pair? _tl151170151188_)
                                (let ((_e151171151193_
                                       (gx#syntax-e _tl151170151188_)))
                                  (let ((_hd151172151196_
                                         (##car _e151171151193_))
                                        (_tl151173151198_
                                         (##cdr _e151171151193_)))
                                    (if (gx#stx-null? _tl151173151198_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151191_)
                                                  (cons _expr151164_ '()))
                                            (_E151167151179_))
                                        (_E151167151179_))))
                                (_E151167151179_)))))
                      (_E151167151179_)))))
          (_E151166151201_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151117_)
        (let* ((_e151118151128_ _stx151117_)
               (_E151120151132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151118151128_)))
               (_E151119151159_
                (lambda ()
                  (if (gx#stx-pair? _e151118151128_)
                      (let ((_e151121151136_ (gx#syntax-e _e151118151128_)))
                        (let ((_hd151122151139_ (##car _e151121151136_))
                              (_tl151123151141_ (##cdr _e151121151136_)))
                          (if (gx#stx-pair? _tl151123151141_)
                              (let ((_e151124151144_
                                     (gx#syntax-e _tl151123151141_)))
                                (let ((_hd151125151147_
                                       (##car _e151124151144_))
                                      (_tl151126151149_
                                       (##cdr _e151124151144_)))
                                  (let* ((_hd151152_ _hd151125151147_)
                                         (_body151154_ _tl151126151149_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151152_)
                                        (let ((_expanders151156_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151152_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151152_
                                              _expanders151156_)
                                             (gx#core-expand-local-block
                                              _stx151117_
                                              _body151154_))
                                           gx#current-expander-context
                                           (let ((__obj157006
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157006)
                                             __obj157006)))
                                        (_E151120151132_)))))
                              (_E151120151132_))))
                      (_E151120151132_)))))
          (_E151119151159_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151066_)
        (let* ((_e151067151077_ _stx151066_)
               (_E151069151081_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151067151077_)))
               (_E151068151113_
                (lambda ()
                  (if (gx#stx-pair? _e151067151077_)
                      (let ((_e151070151085_ (gx#syntax-e _e151067151077_)))
                        (let ((_hd151071151088_ (##car _e151070151085_))
                              (_tl151072151090_ (##cdr _e151070151085_)))
                          (if (gx#stx-pair? _tl151072151090_)
                              (let ((_e151073151093_
                                     (gx#syntax-e _tl151072151090_)))
                                (let ((_hd151074151096_
                                       (##car _e151073151093_))
                                      (_tl151075151098_
                                       (##cdr _e151073151093_)))
                                  (let* ((_hd151101_ _hd151074151096_)
                                         (_body151103_ _tl151075151098_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151101_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151101_
                                            (make-list
                                             (gx#stx-length _hd151101_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151105151108_
                                                     _g151106151110_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151105151108_
                                               _g151106151110_
                                               '#t))
                                            _hd151101_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151101_))
                                           (gx#core-expand-local-block
                                            _stx151066_
                                            _body151103_))
                                         gx#current-expander-context
                                         (let ((__obj157007
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157007)
                                           __obj157007))
                                        (_E151069151081_)))))
                              (_E151069151081_))))
                      (_E151069151081_)))))
          (_E151068151113_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151023_)
        (if (gx#stx-list? _stx151023_)
            (gx#stx-andmap
             (lambda (_bind151025_)
               (let* ((_e151026151036_ _bind151025_)
                      (_E151028151040_ (lambda () '#f))
                      (_E151027151062_
                       (lambda ()
                         (if (gx#stx-pair? _e151026151036_)
                             (let ((_e151029151044_
                                    (gx#syntax-e _e151026151036_)))
                               (let ((_hd151030151047_ (##car _e151029151044_))
                                     (_tl151031151049_
                                      (##cdr _e151029151044_)))
                                 (let ((_hd151052_ _hd151030151047_))
                                   (if (gx#stx-pair? _tl151031151049_)
                                       (let ((_e151032151054_
                                              (gx#syntax-e _tl151031151049_)))
                                         (let ((_hd151033151057_
                                                (##car _e151032151054_))
                                               (_tl151034151059_
                                                (##cdr _e151032151054_)))
                                           (if (gx#stx-null? _tl151034151059_)
                                               (if '#t
                                                   (gx#identifier? _hd151052_)
                                                   (_E151028151040_))
                                               (_E151028151040_))))
                                       (_E151028151040_)))))
                             (_E151028151040_)))))
                 (_E151027151062_)))
             _stx151023_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind150980_)
        (let* ((_e150981150991_ _bind150980_)
               (_E150983150995_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150981150991_)))
               (_E150982151019_
                (lambda ()
                  (if (gx#stx-pair? _e150981150991_)
                      (let ((_e150984150999_ (gx#syntax-e _e150981150991_)))
                        (let ((_hd150985151002_ (##car _e150984150999_))
                              (_tl150986151004_ (##cdr _e150984150999_)))
                          (if (gx#stx-pair? _tl150986151004_)
                              (let ((_e150987151007_
                                     (gx#syntax-e _tl150986151004_)))
                                (let ((_hd150988151010_
                                       (##car _e150987151007_))
                                      (_tl150989151012_
                                       (##cdr _e150987151007_)))
                                  (let ((_expr151015_ _hd150988151010_))
                                    (if (gx#stx-null? _tl150989151012_)
                                        (if '#t
                                            (let ((_g157016_
                                                   (gx#core-expand-expression+1
                                                    _expr151015_)))
                                              (begin
                                                (let ((_g157017_
                                                       (if (##values?
                                                            _g157016_)
                                                           (##vector-length
                                                            _g157016_)
                                                           1)))
                                                  (if (not (##fx= _g157017_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157017_)))
                                                (let ((_e151017_
                                                       (##vector-ref
                                                        _g157016_
                                                        1)))
                                                  _e151017_)))
                                            (_E150983150995_))
                                        (_E150983150995_)))))
                              (_E150983150995_))))
                      (_E150983150995_)))))
          (_E150982151019_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind150925_ _e150926_ _rebind?150927_)
        (let* ((_e150928150938_ _bind150925_)
               (_E150930150942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150928150938_)))
               (_E150929150964_
                (lambda ()
                  (if (gx#stx-pair? _e150928150938_)
                      (let ((_e150931150946_ (gx#syntax-e _e150928150938_)))
                        (let ((_hd150932150949_ (##car _e150931150946_))
                              (_tl150933150951_ (##cdr _e150931150946_)))
                          (let ((_id150954_ _hd150932150949_))
                            (if (gx#stx-pair? _tl150933150951_)
                                (let ((_e150934150956_
                                       (gx#syntax-e _tl150933150951_)))
                                  (let ((_hd150935150959_
                                         (##car _e150934150956_))
                                        (_tl150936150961_
                                         (##cdr _e150934150956_)))
                                    (if (gx#stx-null? _tl150936150961_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id150954_
                                             _e150926_
                                             _rebind?150927_)
                                            (_E150930150942_))
                                        (_E150930150942_))))
                                (_E150930150942_)))))
                      (_E150930150942_)))))
          (_E150929150964_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind150971_ _e150972_)
        (let ((_rebind?150974_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind150971_
           _e150972_
           _rebind?150974_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157019_
        (let ((_g157018_ (##length _g157019_)))
          (cond ((##fx= _g157018_ 2)
                 (apply (lambda (_bind150971_ _e150972_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind150971_
                           _e150972_))
                        _g157019_))
                ((##fx= _g157018_ 3)
                 (apply (lambda (_bind150976_ _e150977_ _rebind?150978_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind150976_
                           _e150977_
                           _rebind?150978_))
                        _g157019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157019_))))))
    (define gx#core-expand-expression%
      (lambda (_stx150883_)
        (let* ((_e150884150894_ _stx150883_)
               (_E150886150898_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150884150894_)))
               (_E150885150920_
                (lambda ()
                  (if (gx#stx-pair? _e150884150894_)
                      (let ((_e150887150902_ (gx#syntax-e _e150884150894_)))
                        (let ((_hd150888150905_ (##car _e150887150902_))
                              (_tl150889150907_ (##cdr _e150887150902_)))
                          (if (gx#stx-pair? _tl150889150907_)
                              (let ((_e150890150910_
                                     (gx#syntax-e _tl150889150907_)))
                                (let ((_hd150891150913_
                                       (##car _e150890150910_))
                                      (_tl150892150915_
                                       (##cdr _e150890150910_)))
                                  (let ((_expr150918_ _hd150891150913_))
                                    (if (gx#stx-null? _tl150892150915_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr150918_)
                                            (_E150886150898_))
                                        (_E150886150898_)))))
                              (_E150886150898_))))
                      (_E150886150898_)))))
          (_E150885150920_))))
    (define gx#core-expand-quote%
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
                                  (let ((_e150877_ _hd150850150872_))
                                    (if (gx#stx-null? _tl150851150874_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e150877_)
                                                         '()))
                                             (gx#stx-source _stx150842_))
                                            (_E150845150857_))
                                        (_E150845150857_)))))
                              (_E150845150857_))))
                      (_E150845150857_)))))
          (_E150844150879_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx150801_)
        (let* ((_e150802150812_ _stx150801_)
               (_E150804150816_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150802150812_)))
               (_E150803150838_
                (lambda ()
                  (if (gx#stx-pair? _e150802150812_)
                      (let ((_e150805150820_ (gx#syntax-e _e150802150812_)))
                        (let ((_hd150806150823_ (##car _e150805150820_))
                              (_tl150807150825_ (##cdr _e150805150820_)))
                          (if (gx#stx-pair? _tl150807150825_)
                              (let ((_e150808150828_
                                     (gx#syntax-e _tl150807150825_)))
                                (let ((_hd150809150831_
                                       (##car _e150808150828_))
                                      (_tl150810150833_
                                       (##cdr _e150808150828_)))
                                  (let ((_e150836_ _hd150809150831_))
                                    (if (gx#stx-null? _tl150810150833_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e150836_)
                                                         '()))
                                             (gx#stx-source _stx150801_))
                                            (_E150804150816_))
                                        (_E150804150816_)))))
                              (_E150804150816_))))
                      (_E150804150816_)))))
          (_E150803150838_))))
    (define gx#core-expand-call%
      (lambda (_stx150758_)
        (let* ((_e150759150769_ _stx150758_)
               (_E150761150773_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150759150769_)))
               (_E150760150797_
                (lambda ()
                  (if (gx#stx-pair? _e150759150769_)
                      (let ((_e150762150777_ (gx#syntax-e _e150759150769_)))
                        (let ((_hd150763150780_ (##car _e150762150777_))
                              (_tl150764150782_ (##cdr _e150762150777_)))
                          (if (gx#stx-pair? _tl150764150782_)
                              (let ((_e150765150785_
                                     (gx#syntax-e _tl150764150782_)))
                                (let ((_hd150766150788_
                                       (##car _e150765150785_))
                                      (_tl150767150790_
                                       (##cdr _e150765150785_)))
                                  (let* ((_rator150793_ _hd150766150788_)
                                         (_args150795_ _tl150767150790_))
                                    (if (gx#stx-list? _args150795_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator150793_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args150795_))
                                         (gx#stx-source _stx150758_))
                                        (_E150761150773_)))))
                              (_E150761150773_))))
                      (_E150761150773_)))))
          (_E150760150797_))))
    (define gx#core-expand-if%
      (lambda (_stx150691_)
        (let* ((_e150692150708_ _stx150691_)
               (_E150694150712_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150692150708_)))
               (_E150693150754_
                (lambda ()
                  (if (gx#stx-pair? _e150692150708_)
                      (let ((_e150695150716_ (gx#syntax-e _e150692150708_)))
                        (let ((_hd150696150719_ (##car _e150695150716_))
                              (_tl150697150721_ (##cdr _e150695150716_)))
                          (if (gx#stx-pair? _tl150697150721_)
                              (let ((_e150698150724_
                                     (gx#syntax-e _tl150697150721_)))
                                (let ((_hd150699150727_
                                       (##car _e150698150724_))
                                      (_tl150700150729_
                                       (##cdr _e150698150724_)))
                                  (let ((_test150732_ _hd150699150727_))
                                    (if (gx#stx-pair? _tl150700150729_)
                                        (let ((_e150701150734_
                                               (gx#syntax-e _tl150700150729_)))
                                          (let ((_hd150702150737_
                                                 (##car _e150701150734_))
                                                (_tl150703150739_
                                                 (##cdr _e150701150734_)))
                                            (let ((_K150742_ _hd150702150737_))
                                              (if (gx#stx-pair?
                                                   _tl150703150739_)
                                                  (let ((_e150704150744_
                                                         (gx#syntax-e
                                                          _tl150703150739_)))
                                                    (let ((_hd150705150747_
                                                           (##car _e150704150744_))
                                                          (_tl150706150749_
                                                           (##cdr _e150704150744_)))
                                                      (let ((_E150752_
                                                             _hd150705150747_))
                                                        (if (gx#stx-null?
                                                             _tl150706150749_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test150732_)
                                     (cons (gx#core-expand-expression
                                            _K150742_)
                                           (cons (gx#core-expand-expression
                                                  _E150752_)
                                                 '()))))
                         (gx#stx-source _stx150691_))
                        (_E150694150712_))
                    (_E150694150712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150694150712_)))))
                                        (_E150694150712_)))))
                              (_E150694150712_))))
                      (_E150694150712_)))))
          (_E150693150754_))))
    (define gx#core-expand-ref%
      (lambda (_stx150650_)
        (let* ((_e150651150661_ _stx150650_)
               (_E150653150665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150651150661_)))
               (_E150652150687_
                (lambda ()
                  (if (gx#stx-pair? _e150651150661_)
                      (let ((_e150654150669_ (gx#syntax-e _e150651150661_)))
                        (let ((_hd150655150672_ (##car _e150654150669_))
                              (_tl150656150674_ (##cdr _e150654150669_)))
                          (if (gx#stx-pair? _tl150656150674_)
                              (let ((_e150657150677_
                                     (gx#syntax-e _tl150656150674_)))
                                (let ((_hd150658150680_
                                       (##car _e150657150677_))
                                      (_tl150659150682_
                                       (##cdr _e150657150677_)))
                                  (let ((_id150685_ _hd150658150680_))
                                    (if (gx#stx-null? _tl150659150682_)
                                        (if (gx#identifier? _id150685_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150685_
                                                          _stx150650_)
                                                         '()))
                                             (gx#stx-source _stx150650_))
                                            (_E150653150665_))
                                        (_E150653150665_)))))
                              (_E150653150665_))))
                      (_E150653150665_)))))
          (_E150652150687_))))
    (define gx#core-expand-setq%
      (lambda (_stx150596_)
        (let* ((_e150597150610_ _stx150596_)
               (_E150599150614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150597150610_)))
               (_E150598150646_
                (lambda ()
                  (if (gx#stx-pair? _e150597150610_)
                      (let ((_e150600150618_ (gx#syntax-e _e150597150610_)))
                        (let ((_hd150601150621_ (##car _e150600150618_))
                              (_tl150602150623_ (##cdr _e150600150618_)))
                          (if (gx#stx-pair? _tl150602150623_)
                              (let ((_e150603150626_
                                     (gx#syntax-e _tl150602150623_)))
                                (let ((_hd150604150629_
                                       (##car _e150603150626_))
                                      (_tl150605150631_
                                       (##cdr _e150603150626_)))
                                  (let ((_id150634_ _hd150604150629_))
                                    (if (gx#stx-pair? _tl150605150631_)
                                        (let ((_e150606150636_
                                               (gx#syntax-e _tl150605150631_)))
                                          (let ((_hd150607150639_
                                                 (##car _e150606150636_))
                                                (_tl150608150641_
                                                 (##cdr _e150606150636_)))
                                            (let ((_expr150644_
                                                   _hd150607150639_))
                                              (if (gx#stx-null?
                                                   _tl150608150641_)
                                                  (if (gx#identifier?
                                                       _id150634_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150634_
                            _stx150596_)
                           (cons (gx#core-expand-expression _expr150644_)
                                 '())))
               (gx#stx-source _stx150596_))
              (_E150599150614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150599150614_)))))
                                        (_E150599150614_)))))
                              (_E150599150614_))))
                      (_E150599150614_)))))
          (_E150598150646_))))
    (define gx#macro-expand-extern
      (lambda (_stx150444_)
        (letrec ((_generate150446_
                  (lambda (_body150476_)
                    (let _lp150478_ ((_rest150480_ _body150476_)
                                     (_ns150481_
                                      (gx#core-context-namespace__0))
                                     (_r150482_ '()))
                      (let* ((_e150483150498_ _rest150480_)
                             (_E150496150502_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150483150498_)))
                             (_E150492150506_
                              (lambda ()
                                (if (gx#stx-null? _e150483150498_)
                                    (if '#t
                                        (reverse _r150482_)
                                        (_E150496150502_))
                                    (_E150496150502_))))
                             (_E150485150563_
                              (lambda ()
                                (if (gx#stx-pair? _e150483150498_)
                                    (let ((_e150493150510_
                                           (gx#syntax-e _e150483150498_)))
                                      (let ((_hd150494150513_
                                             (##car _e150493150510_))
                                            (_tl150495150515_
                                             (##cdr _e150493150510_)))
                                        (let* ((_hd150518_ _hd150494150513_)
                                               (_rest150520_ _tl150495150515_))
                                          (if '#t
                                              (if (gx#identifier? _hd150518_)
                                                  (_lp150478_
                                                   _rest150520_
                                                   _ns150481_
                                                   (cons (cons _hd150518_
                                                               (cons (if _ns150481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150518_
                                  _ns150481_
                                  '"#"
                                  _hd150518_)
                                 _hd150518_)
                             '()))
                 _r150482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150521150531_
                                                          _hd150518_)
                                                         (_E150523150535_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150521150531_)))
                                                         (_E150522150559_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150521150531_)
                        (let ((_e150524150539_ (gx#syntax-e _e150521150531_)))
                          (let ((_hd150525150542_ (##car _e150524150539_))
                                (_tl150526150544_ (##cdr _e150524150539_)))
                            (let ((_id150547_ _hd150525150542_))
                              (if (gx#stx-pair? _tl150526150544_)
                                  (let ((_e150527150549_
                                         (gx#syntax-e _tl150526150544_)))
                                    (let ((_hd150528150552_
                                           (##car _e150527150549_))
                                          (_tl150529150554_
                                           (##cdr _e150527150549_)))
                                      (let ((_eid150557_ _hd150528150552_))
                                        (if (gx#stx-null? _tl150529150554_)
                                            (if (and (gx#identifier?
                                                      _id150547_)
                                                     (gx#identifier?
                                                      _eid150557_))
                                                (_lp150478_
                                                 _rest150520_
                                                 _ns150481_
                                                 (cons (cons _id150547_
                                                             (cons _eid150557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150523150535_))
                                            (_E150523150535_)))))
                                  (_E150523150535_)))))
                        (_E150523150535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150522150559_)))
                                              (_E150492150506_)))))
                                    (_E150492150506_))))
                             (_E150484150592_
                              (lambda ()
                                (if (gx#stx-pair? _e150483150498_)
                                    (let ((_e150486150567_
                                           (gx#syntax-e _e150483150498_)))
                                      (let ((_hd150487150570_
                                             (##car _e150486150567_))
                                            (_tl150488150572_
                                             (##cdr _e150486150567_)))
                                        (if (eq? (gx#stx-e _hd150487150570_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150488150572_)
                                                (let ((_e150489150575_
                                                       (gx#syntax-e
                                                        _tl150488150572_)))
                                                  (let ((_hd150490150578_
                                                         (##car _e150489150575_))
                                                        (_tl150491150580_
                                                         (##cdr _e150489150575_)))
                                                    (let* ((_ns150583_
                                                            _hd150490150578_)
                                                           (_rest150585_
                                                            _tl150491150580_))
                                                      (if '#t
                                                          (let ((_ns150590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150583_)
                             (symbol->string (gx#stx-e _ns150583_))
                             (if (or (gx#stx-string? _ns150583_)
                                     (gx#stx-false? _ns150583_))
                                 (gx#stx-e _ns150583_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150444_
                                  _ns150583_)))))
                    (_lp150478_ _rest150585_ _ns150590_ _r150482_))
                  (_E150485150563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150485150563_))
                                            (_E150485150563_))))
                                    (_E150485150563_)))))
                        (_E150484150592_))))))
          (let* ((_e150447150454_ _stx150444_)
                 (_E150449150458_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150447150454_)))
                 (_E150448150472_
                  (lambda ()
                    (if (gx#stx-pair? _e150447150454_)
                        (let ((_e150450150462_ (gx#syntax-e _e150447150454_)))
                          (let ((_hd150451150465_ (##car _e150450150462_))
                                (_tl150452150467_ (##cdr _e150450150462_)))
                            (let ((_body150470_ _tl150452150467_))
                              (if (gx#stx-list? _body150470_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150446_ _body150470_))
                                  (_E150449150458_)))))
                        (_E150449150458_)))))
            (_E150448150472_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150390_)
        (let* ((_e150391150404_ _stx150390_)
               (_E150393150408_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150391150404_)))
               (_E150392150440_
                (lambda ()
                  (if (gx#stx-pair? _e150391150404_)
                      (let ((_e150394150412_ (gx#syntax-e _e150391150404_)))
                        (let ((_hd150395150415_ (##car _e150394150412_))
                              (_tl150396150417_ (##cdr _e150394150412_)))
                          (if (gx#stx-pair? _tl150396150417_)
                              (let ((_e150397150420_
                                     (gx#syntax-e _tl150396150417_)))
                                (let ((_hd150398150423_
                                       (##car _e150397150420_))
                                      (_tl150399150425_
                                       (##cdr _e150397150420_)))
                                  (let ((_hd150428_ _hd150398150423_))
                                    (if (gx#stx-pair? _tl150399150425_)
                                        (let ((_e150400150430_
                                               (gx#syntax-e _tl150399150425_)))
                                          (let ((_hd150401150433_
                                                 (##car _e150400150430_))
                                                (_tl150402150435_
                                                 (##cdr _e150400150430_)))
                                            (let ((_expr150438_
                                                   _hd150401150433_))
                                              (if (gx#stx-null?
                                                   _tl150402150435_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150428_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150428_)
                          (cons _expr150438_ '())))
              (_E150393150408_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150393150408_)))))
                                        (_E150393150408_)))))
                              (_E150393150408_))))
                      (_E150393150408_)))))
          (_E150392150440_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150336_)
        (let* ((_e150337150350_ _stx150336_)
               (_E150339150354_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150337150350_)))
               (_E150338150386_
                (lambda ()
                  (if (gx#stx-pair? _e150337150350_)
                      (let ((_e150340150358_ (gx#syntax-e _e150337150350_)))
                        (let ((_hd150341150361_ (##car _e150340150358_))
                              (_tl150342150363_ (##cdr _e150340150358_)))
                          (if (gx#stx-pair? _tl150342150363_)
                              (let ((_e150343150366_
                                     (gx#syntax-e _tl150342150363_)))
                                (let ((_hd150344150369_
                                       (##car _e150343150366_))
                                      (_tl150345150371_
                                       (##cdr _e150343150366_)))
                                  (let ((_hd150374_ _hd150344150369_))
                                    (if (gx#stx-pair? _tl150345150371_)
                                        (let ((_e150346150376_
                                               (gx#syntax-e _tl150345150371_)))
                                          (let ((_hd150347150379_
                                                 (##car _e150346150376_))
                                                (_tl150348150381_
                                                 (##cdr _e150346150376_)))
                                            (let ((_expr150384_
                                                   _hd150347150379_))
                                              (if (gx#stx-null?
                                                   _tl150348150381_)
                                                  (if (gx#identifier?
                                                       _hd150374_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150384_ '())))
              (_E150339150354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150339150354_)))))
                                        (_E150339150354_)))))
                              (_E150339150354_))))
                      (_E150339150354_)))))
          (_E150338150386_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150282_)
        (let* ((_e150283150296_ _stx150282_)
               (_E150285150300_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150283150296_)))
               (_E150284150332_
                (lambda ()
                  (if (gx#stx-pair? _e150283150296_)
                      (let ((_e150286150304_ (gx#syntax-e _e150283150296_)))
                        (let ((_hd150287150307_ (##car _e150286150304_))
                              (_tl150288150309_ (##cdr _e150286150304_)))
                          (if (gx#stx-pair? _tl150288150309_)
                              (let ((_e150289150312_
                                     (gx#syntax-e _tl150288150309_)))
                                (let ((_hd150290150315_
                                       (##car _e150289150312_))
                                      (_tl150291150317_
                                       (##cdr _e150289150312_)))
                                  (let ((_id150320_ _hd150290150315_))
                                    (if (gx#stx-pair? _tl150291150317_)
                                        (let ((_e150292150322_
                                               (gx#syntax-e _tl150291150317_)))
                                          (let ((_hd150293150325_
                                                 (##car _e150292150322_))
                                                (_tl150294150327_
                                                 (##cdr _e150292150322_)))
                                            (let ((_alias-id150330_
                                                   _hd150293150325_))
                                              (if (gx#stx-null?
                                                   _tl150294150327_)
                                                  (if (and (gx#identifier?
                                                            _id150320_)
                                                           (gx#identifier?
                                                            _alias-id150330_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150330_ '())))
              (_E150285150300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150285150300_)))))
                                        (_E150285150300_)))))
                              (_E150285150300_))))
                      (_E150285150300_)))))
          (_E150284150332_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150239_)
        (let* ((_e150240150250_ _stx150239_)
               (_E150242150254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150240150250_)))
               (_E150241150278_
                (lambda ()
                  (if (gx#stx-pair? _e150240150250_)
                      (let ((_e150243150258_ (gx#syntax-e _e150240150250_)))
                        (let ((_hd150244150261_ (##car _e150243150258_))
                              (_tl150245150263_ (##cdr _e150243150258_)))
                          (if (gx#stx-pair? _tl150245150263_)
                              (let ((_e150246150266_
                                     (gx#syntax-e _tl150245150263_)))
                                (let ((_hd150247150269_
                                       (##car _e150246150266_))
                                      (_tl150248150271_
                                       (##cdr _e150246150266_)))
                                  (let* ((_hd150274_ _hd150247150269_)
                                         (_body150276_ _tl150248150271_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150274_)
                                             (gx#stx-list? _body150276_)
                                             (not (gx#stx-null? _body150276_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150274_)
                                         _body150276_)
                                        (_E150242150254_)))))
                              (_E150242150254_))))
                      (_E150242150254_)))))
          (_E150241150278_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150175_)
        (letrec ((_generate150177_
                  (lambda (_clause150207_)
                    (let* ((_e150208150215_ _clause150207_)
                           (_E150210150219_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150175_
                               _clause150207_)))
                           (_E150209150235_
                            (lambda ()
                              (if (gx#stx-pair? _e150208150215_)
                                  (let ((_e150211150223_
                                         (gx#syntax-e _e150208150215_)))
                                    (let ((_hd150212150226_
                                           (##car _e150211150223_))
                                          (_tl150213150228_
                                           (##cdr _e150211150223_)))
                                      (let* ((_hd150231_ _hd150212150226_)
                                             (_body150233_ _tl150213150228_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150231_)
                                                 (gx#stx-list? _body150233_)
                                                 (not (gx#stx-null?
                                                       _body150233_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150231_)
                                                   _body150233_)
                                             (gx#stx-source _clause150207_))
                                            (_E150210150219_)))))
                                  (_E150210150219_)))))
                      (_E150209150235_)))))
          (let* ((_e150178150185_ _stx150175_)
                 (_E150180150189_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150178150185_)))
                 (_E150179150203_
                  (lambda ()
                    (if (gx#stx-pair? _e150178150185_)
                        (let ((_e150181150193_ (gx#syntax-e _e150178150185_)))
                          (let ((_hd150182150196_ (##car _e150181150193_))
                                (_tl150183150198_ (##cdr _e150181150193_)))
                            (let ((_clauses150201_ _tl150183150198_))
                              (if (gx#stx-list? _clauses150201_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150177_
                                    _clauses150201_))
                                  (_E150180150189_)))))
                        (_E150180150189_)))))
            (_E150179150203_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150076_ _form150077_)
        (letrec ((_generate150079_
                  (lambda (_bind150122_)
                    (let* ((_e150123150133_ _bind150122_)
                           (_E150125150137_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150076_
                               _bind150122_)))
                           (_E150124150161_
                            (lambda ()
                              (if (gx#stx-pair? _e150123150133_)
                                  (let ((_e150126150141_
                                         (gx#syntax-e _e150123150133_)))
                                    (let ((_hd150127150144_
                                           (##car _e150126150141_))
                                          (_tl150128150146_
                                           (##cdr _e150126150141_)))
                                      (let ((_ids150149_ _hd150127150144_))
                                        (if (gx#stx-pair? _tl150128150146_)
                                            (let ((_e150129150151_
                                                   (gx#syntax-e
                                                    _tl150128150146_)))
                                              (let ((_hd150130150154_
                                                     (##car _e150129150151_))
                                                    (_tl150131150156_
                                                     (##cdr _e150129150151_)))
                                                (let ((_expr150159_
                                                       _hd150130150154_))
                                                  (if (gx#stx-null?
                                                       _tl150131150156_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150149_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150149_)
                        (cons _expr150159_ '()))
                  (_E150125150137_))
              (_E150125150137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150125150137_)))))
                                  (_E150125150137_)))))
                      (_E150124150161_)))))
          (let* ((_e150080150090_ _stx150076_)
                 (_E150082150094_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150080150090_)))
                 (_E150081150118_
                  (lambda ()
                    (if (gx#stx-pair? _e150080150090_)
                        (let ((_e150083150098_ (gx#syntax-e _e150080150090_)))
                          (let ((_hd150084150101_ (##car _e150083150098_))
                                (_tl150085150103_ (##cdr _e150083150098_)))
                            (if (gx#stx-pair? _tl150085150103_)
                                (let ((_e150086150106_
                                       (gx#syntax-e _tl150085150103_)))
                                  (let ((_hd150087150109_
                                         (##car _e150086150106_))
                                        (_tl150088150111_
                                         (##cdr _e150086150106_)))
                                    (let* ((_hd150114_ _hd150087150109_)
                                           (_body150116_ _tl150088150111_))
                                      (if (and (gx#stx-list? _hd150114_)
                                               (gx#stx-list? _body150116_)
                                               (not (gx#stx-null?
                                                     _body150116_)))
                                          (gx#core-cons*
                                           _form150077_
                                           (gx#stx-map1
                                            _generate150079_
                                            _hd150114_)
                                           _body150116_)
                                          (_E150082150094_)))))
                                (_E150082150094_))))
                        (_E150082150094_)))))
            (_E150081150118_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150168_)
        (let ((_form150170_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150168_ _form150170_))))
    (define gx#macro-expand-let-values
      (lambda _g157021_
        (let ((_g157020_ (##length _g157021_)))
          (cond ((##fx= _g157020_ 1)
                 (apply (lambda (_stx150168_)
                          (gx#macro-expand-let-values__0 _stx150168_))
                        _g157021_))
                ((##fx= _g157020_ 2)
                 (apply (lambda (_stx150172_ _form150173_)
                          (gx#macro-expand-let-values__%
                           _stx150172_
                           _form150173_))
                        _g157021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157021_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150073_)
        (gx#macro-expand-let-values__% _stx150073_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150071_)
        (gx#macro-expand-let-values__% _stx150071_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx149962_)
        (let* ((_e149963149989_ _stx149962_)
               (_E149975149993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e149963149989_)))
               (_E149965150035_
                (lambda ()
                  (if (gx#stx-pair? _e149963149989_)
                      (let ((_e149976149997_ (gx#syntax-e _e149963149989_)))
                        (let ((_hd149977150000_ (##car _e149976149997_))
                              (_tl149978150002_ (##cdr _e149976149997_)))
                          (if (gx#stx-pair? _tl149978150002_)
                              (let ((_e149979150005_
                                     (gx#syntax-e _tl149978150002_)))
                                (let ((_hd149980150008_
                                       (##car _e149979150005_))
                                      (_tl149981150010_
                                       (##cdr _e149979150005_)))
                                  (let ((_test150013_ _hd149980150008_))
                                    (if (gx#stx-pair? _tl149981150010_)
                                        (let ((_e149982150015_
                                               (gx#syntax-e _tl149981150010_)))
                                          (let ((_hd149983150018_
                                                 (##car _e149982150015_))
                                                (_tl149984150020_
                                                 (##cdr _e149982150015_)))
                                            (let ((_K150023_ _hd149983150018_))
                                              (if (gx#stx-pair?
                                                   _tl149984150020_)
                                                  (let ((_e149985150025_
                                                         (gx#syntax-e
                                                          _tl149984150020_)))
                                                    (let ((_hd149986150028_
                                                           (##car _e149985150025_))
                                                          (_tl149987150030_
                                                           (##cdr _e149985150025_)))
                                                      (let ((_E150033_
                                                             _hd149986150028_))
                                                        (if (gx#stx-null?
                                                             _tl149987150030_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150013_
                         _K150023_
                         _E150033_)
                        (_E149975149993_))
                    (_E149975149993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E149975149993_)))))
                                        (_E149975149993_)))))
                              (_E149975149993_))))
                      (_E149975149993_))))
               (_E149964150067_
                (lambda ()
                  (if (gx#stx-pair? _e149963149989_)
                      (let ((_e149966150039_ (gx#syntax-e _e149963149989_)))
                        (let ((_hd149967150042_ (##car _e149966150039_))
                              (_tl149968150044_ (##cdr _e149966150039_)))
                          (if (gx#stx-pair? _tl149968150044_)
                              (let ((_e149969150047_
                                     (gx#syntax-e _tl149968150044_)))
                                (let ((_hd149970150050_
                                       (##car _e149969150047_))
                                      (_tl149971150052_
                                       (##cdr _e149969150047_)))
                                  (let ((_test150055_ _hd149970150050_))
                                    (if (gx#stx-pair? _tl149971150052_)
                                        (let ((_e149972150057_
                                               (gx#syntax-e _tl149971150052_)))
                                          (let ((_hd149973150060_
                                                 (##car _e149972150057_))
                                                (_tl149974150062_
                                                 (##cdr _e149972150057_)))
                                            (let ((_K150065_ _hd149973150060_))
                                              (if (gx#stx-null?
                                                   _tl149974150062_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150055_
                                                       _K150065_
                                                       '#!void)
                                                      (_E149965150035_))
                                                  (_E149965150035_)))))
                                        (_E149965150035_)))))
                              (_E149965150035_))))
                      (_E149965150035_)))))
          (_E149964150067_))))
    (define gx#free-identifier=?
      (lambda (_xid149950_ _yid149951_)
        (let ((_xe149953_ (gx#resolve-identifier__0 _xid149950_))
              (_ye149954_ (gx#resolve-identifier__0 _yid149951_)))
          (if (and _xe149953_ _ye149954_)
              (let ((_$e149956_ (eq? _xe149953_ _ye149954_)))
                (if _$e149956_
                    _$e149956_
                    (if (##structure-instance-of? _xe149953_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye149954_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe149953_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye149954_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe149953_ _ye149954_)
                  '#f
                  (gx#stx-eq? _xid149950_ _yid149951_))))))
    (define gx#bound-identifier=?
      (lambda (_xid149934_ _yid149935_)
        (letrec ((_context149937_
                  (lambda (_e149948_)
                    (if (##structure-direct-instance-of?
                         _e149948_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e149948_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks149938_
                  (lambda (_e149946_)
                    (if (symbol? _e149946_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e149946_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e149946_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e149946_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap149939_
                  (lambda (_e149944_)
                    (if (symbol? _e149944_)
                        _e149944_
                        (gx#syntax-local-unwrap _e149944_)))))
          (let ((_x149941_ (_unwrap149939_ _xid149934_))
                (_y149942_ (_unwrap149939_ _yid149935_)))
            (if (gx#stx-eq? _x149941_ _y149942_)
                (if (eq? (_context149937_ _x149941_)
                         (_context149937_ _y149942_))
                    (equal? (_marks149938_ _x149941_)
                            (_marks149938_ _y149942_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx149932_)
        (if (gx#identifier? _stx149932_)
            (gx#core-identifier=? _stx149932_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx149930_)
        (if (gx#identifier? _stx149930_)
            (gx#core-identifier=? _stx149930_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x149928_)
        (if (gx#identifier? _x149928_)
            (if (not (gx#underscore? _x149928_)) _x149928_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx149874_ _where149875_)
        (let _lp149877_ ((_rest149879_ (gx#syntax->list _stx149874_)))
          (let* ((_rest149880149888_ _rest149879_)
                 (_else149882149896_ (lambda () '#t))
                 (_K149884149906_
                  (lambda (_rest149899_ _hd149900_)
                    (if (not (gx#identifier? _hd149900_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where149875_
                         _hd149900_)
                        (if (find (lambda (_g149901149903_)
                                    (gx#bound-identifier=?
                                     _g149901149903_
                                     _hd149900_))
                                  _rest149899_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where149875_
                             _hd149900_)
                            (_lp149877_ _rest149899_))))))
            (if (##pair? _rest149880149888_)
                (let ((_hd149885149909_ (##car _rest149880149888_))
                      (_tl149886149911_ (##cdr _rest149880149888_)))
                  (let* ((_hd149914_ _hd149885149909_)
                         (_rest149916_ _tl149886149911_))
                    (_K149884149906_ _rest149916_ _hd149914_)))
                (_else149882149896_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx149921_)
        (let ((_where149923_ _stx149921_))
          (gx#check-duplicate-identifiers__% _stx149921_ _where149923_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157023_
        (let ((_g157022_ (##length _g157023_)))
          (cond ((##fx= _g157022_ 1)
                 (apply (lambda (_stx149921_)
                          (gx#check-duplicate-identifiers__0 _stx149921_))
                        _g157023_))
                ((##fx= _g157022_ 2)
                 (apply (lambda (_stx149925_ _where149926_)
                          (gx#check-duplicate-identifiers__%
                           _stx149925_
                           _where149926_))
                        _g157023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157023_))))))
    (define gx#core-bind-values?
      (lambda (_stx149866_)
        (gx#stx-andmap
         (lambda (_x149868_)
           (let ((_$e149870_ (gx#identifier? _x149868_)))
             (if _$e149870_ _$e149870_ (gx#stx-false? _x149868_))))
         _stx149866_)))
    (define gx#core-bind-values!__%
      (lambda (_stx149830_ _rebind?149831_ _phi149832_ _ctx149833_)
        (gx#stx-for-each1
         (lambda (_id149835_)
           (if (gx#identifier? _id149835_)
               (gx#core-bind-runtime!__%
                _id149835_
                _rebind?149831_
                _phi149832_
                _ctx149833_)
               '#!void))
         _stx149830_)))
    (define gx#core-bind-values!__0
      (lambda (_stx149840_)
        (let* ((_rebind?149842_ '#f)
               (_phi149844_ (gx#current-expander-phi))
               (_ctx149846_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149840_
           _rebind?149842_
           _phi149844_
           _ctx149846_))))
    (define gx#core-bind-values!__1
      (lambda (_stx149848_ _rebind?149849_)
        (let* ((_phi149851_ (gx#current-expander-phi))
               (_ctx149853_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149848_
           _rebind?149849_
           _phi149851_
           _ctx149853_))))
    (define gx#core-bind-values!__2
      (lambda (_stx149855_ _rebind?149856_ _phi149857_)
        (let ((_ctx149859_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx149855_
           _rebind?149856_
           _phi149857_
           _ctx149859_))))
    (define gx#core-bind-values!
      (lambda _g157025_
        (let ((_g157024_ (##length _g157025_)))
          (cond ((##fx= _g157024_ 1)
                 (apply (lambda (_stx149840_)
                          (gx#core-bind-values!__0 _stx149840_))
                        _g157025_))
                ((##fx= _g157024_ 2)
                 (apply (lambda (_stx149848_ _rebind?149849_)
                          (gx#core-bind-values!__1
                           _stx149848_
                           _rebind?149849_))
                        _g157025_))
                ((##fx= _g157024_ 3)
                 (apply (lambda (_stx149855_ _rebind?149856_ _phi149857_)
                          (gx#core-bind-values!__2
                           _stx149855_
                           _rebind?149856_
                           _phi149857_))
                        _g157025_))
                ((##fx= _g157024_ 4)
                 (apply (lambda (_stx149861_
                                 _rebind?149862_
                                 _phi149863_
                                 _ctx149864_)
                          (gx#core-bind-values!__%
                           _stx149861_
                           _rebind?149862_
                           _phi149863_
                           _ctx149864_))
                        _g157025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157025_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx149825_)
        (gx#stx-map1
         (lambda (_x149827_)
           (if (gx#identifier? _x149827_)
               (gx#core-quote-syntax__0 _x149827_)
               '#f))
         _stx149825_)))
    (define gx#core-runtime-ref?
      (lambda (_stx149818_)
        (if (gx#identifier? _stx149818_)
            (let* ((_bind149820_ (gx#resolve-identifier__0 _stx149818_))
                   (_$e149822_ (not _bind149820_)))
              (if _$e149822_
                  _$e149822_
                  (##structure-instance-of?
                   _bind149820_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id149810_ _form149811_)
        (let ((_bind149813_ (gx#resolve-identifier__0 _id149810_)))
          (if (##structure-instance-of? _bind149813_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id149810_)
              (if (not _bind149813_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id149810_)))
                      (gx#core-quote-syntax__0 _id149810_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form149811_
                       _id149810_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form149811_
                   _id149810_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id149769_ _rebind?149770_ _phi149771_ _ctx149772_)
        (let* ((_key149774_ (gx#core-identifier-key _id149769_))
               (_eid149776_
                (gx#make-binding-id__%
                 _key149774_
                 '#f
                 _phi149771_
                 _ctx149772_))
               (_bind149778_
                (if (##structure-instance-of?
                     _ctx149772_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid149776_
                     _key149774_
                     _phi149771_
                     _ctx149772_)
                    (if (##structure-instance-of?
                         _ctx149772_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid149776_
                         _key149774_
                         _phi149771_)
                        (if (##structure-instance-of?
                             _ctx149772_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid149776_
                             _key149774_
                             _phi149771_)
                            (##structure
                             gx#runtime-binding::t
                             _eid149776_
                             _key149774_
                             _phi149771_))))))
          (gx#bind-identifier!__%
           _id149769_
           _bind149778_
           _rebind?149770_
           _phi149771_
           _ctx149772_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id149784_)
        (let* ((_rebind?149786_ '#f)
               (_phi149788_ (gx#current-expander-phi))
               (_ctx149790_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149784_
           _rebind?149786_
           _phi149788_
           _ctx149790_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id149792_ _rebind?149793_)
        (let* ((_phi149795_ (gx#current-expander-phi))
               (_ctx149797_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149792_
           _rebind?149793_
           _phi149795_
           _ctx149797_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id149799_ _rebind?149800_ _phi149801_)
        (let ((_ctx149803_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id149799_
           _rebind?149800_
           _phi149801_
           _ctx149803_))))
    (define gx#core-bind-runtime!
      (lambda _g157027_
        (let ((_g157026_ (##length _g157027_)))
          (cond ((##fx= _g157026_ 1)
                 (apply (lambda (_id149784_)
                          (gx#core-bind-runtime!__0 _id149784_))
                        _g157027_))
                ((##fx= _g157026_ 2)
                 (apply (lambda (_id149792_ _rebind?149793_)
                          (gx#core-bind-runtime!__1
                           _id149792_
                           _rebind?149793_))
                        _g157027_))
                ((##fx= _g157026_ 3)
                 (apply (lambda (_id149799_ _rebind?149800_ _phi149801_)
                          (gx#core-bind-runtime!__2
                           _id149799_
                           _rebind?149800_
                           _phi149801_))
                        _g157027_))
                ((##fx= _g157026_ 4)
                 (apply (lambda (_id149805_
                                 _rebind?149806_
                                 _phi149807_
                                 _ctx149808_)
                          (gx#core-bind-runtime!__%
                           _id149805_
                           _rebind?149806_
                           _phi149807_
                           _ctx149808_))
                        _g157027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157027_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id149724_ _eid149725_ _rebind?149726_ _phi149727_ _ctx149728_)
        (let* ((_key149730_ (gx#core-identifier-key _id149724_))
               (_bind149732_
                (if (##structure-instance-of?
                     _ctx149728_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid149725_
                     _key149730_
                     _phi149727_
                     _ctx149728_)
                    (if (##structure-instance-of?
                         _ctx149728_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid149725_
                         _key149730_
                         _phi149727_)
                        (##structure
                         gx#runtime-binding::t
                         _eid149725_
                         _key149730_
                         _phi149727_)))))
          (gx#bind-identifier!__%
           _id149724_
           _bind149732_
           _rebind?149726_
           _phi149727_
           _ctx149728_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id149738_ _eid149739_)
        (let* ((_rebind?149741_ '#f)
               (_phi149743_ (gx#current-expander-phi))
               (_ctx149745_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149738_
           _eid149739_
           _rebind?149741_
           _phi149743_
           _ctx149745_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id149747_ _eid149748_ _rebind?149749_)
        (let* ((_phi149751_ (gx#current-expander-phi))
               (_ctx149753_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149747_
           _eid149748_
           _rebind?149749_
           _phi149751_
           _ctx149753_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id149755_ _eid149756_ _rebind?149757_ _phi149758_)
        (let ((_ctx149760_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id149755_
           _eid149756_
           _rebind?149757_
           _phi149758_
           _ctx149760_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157029_
        (let ((_g157028_ (##length _g157029_)))
          (cond ((##fx= _g157028_ 2)
                 (apply (lambda (_id149738_ _eid149739_)
                          (gx#core-bind-runtime-reference!__0
                           _id149738_
                           _eid149739_))
                        _g157029_))
                ((##fx= _g157028_ 3)
                 (apply (lambda (_id149747_ _eid149748_ _rebind?149749_)
                          (gx#core-bind-runtime-reference!__1
                           _id149747_
                           _eid149748_
                           _rebind?149749_))
                        _g157029_))
                ((##fx= _g157028_ 4)
                 (apply (lambda (_id149755_
                                 _eid149756_
                                 _rebind?149757_
                                 _phi149758_)
                          (gx#core-bind-runtime-reference!__2
                           _id149755_
                           _eid149756_
                           _rebind?149757_
                           _phi149758_))
                        _g157029_))
                ((##fx= _g157028_ 5)
                 (apply (lambda (_id149762_
                                 _eid149763_
                                 _rebind?149764_
                                 _phi149765_
                                 _ctx149766_)
                          (gx#core-bind-runtime-reference!__%
                           _id149762_
                           _eid149763_
                           _rebind?149764_
                           _phi149765_
                           _ctx149766_))
                        _g157029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157029_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149684_ _eid149685_ _rebind?149686_ _phi149687_ _ctx149688_)
        (gx#bind-identifier!__%
         _id149684_
         (##structure
          gx#extern-binding::t
          _eid149685_
          (gx#core-identifier-key _id149684_)
          _phi149687_)
         _rebind?149686_
         _phi149687_
         _ctx149688_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149693_ _eid149694_)
        (let* ((_rebind?149696_ '#f)
               (_phi149698_ (gx#current-expander-phi))
               (_ctx149700_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149693_
           _eid149694_
           _rebind?149696_
           _phi149698_
           _ctx149700_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149702_ _eid149703_ _rebind?149704_)
        (let* ((_phi149706_ (gx#current-expander-phi))
               (_ctx149708_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149702_
           _eid149703_
           _rebind?149704_
           _phi149706_
           _ctx149708_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149710_ _eid149711_ _rebind?149712_ _phi149713_)
        (let ((_ctx149715_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149710_
           _eid149711_
           _rebind?149712_
           _phi149713_
           _ctx149715_))))
    (define gx#core-bind-extern!
      (lambda _g157031_
        (let ((_g157030_ (##length _g157031_)))
          (cond ((##fx= _g157030_ 2)
                 (apply (lambda (_id149693_ _eid149694_)
                          (gx#core-bind-extern!__0 _id149693_ _eid149694_))
                        _g157031_))
                ((##fx= _g157030_ 3)
                 (apply (lambda (_id149702_ _eid149703_ _rebind?149704_)
                          (gx#core-bind-extern!__1
                           _id149702_
                           _eid149703_
                           _rebind?149704_))
                        _g157031_))
                ((##fx= _g157030_ 4)
                 (apply (lambda (_id149710_
                                 _eid149711_
                                 _rebind?149712_
                                 _phi149713_)
                          (gx#core-bind-extern!__2
                           _id149710_
                           _eid149711_
                           _rebind?149712_
                           _phi149713_))
                        _g157031_))
                ((##fx= _g157030_ 5)
                 (apply (lambda (_id149717_
                                 _eid149718_
                                 _rebind?149719_
                                 _phi149720_
                                 _ctx149721_)
                          (gx#core-bind-extern!__%
                           _id149717_
                           _eid149718_
                           _rebind?149719_
                           _phi149720_
                           _ctx149721_))
                        _g157031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157031_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149638_ _e149639_ _rebind?149640_ _phi149641_ _ctx149642_)
        (gx#bind-identifier!__%
         _id149638_
         (let ((_key149647_ (gx#core-identifier-key _id149638_))
               (_e149648_
                (if (or (##structure-instance-of? _e149639_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e149639_
                         'gx#expander-context::t))
                    _e149639_
                    (##structure
                     gx#user-expander::t
                     _e149639_
                     _ctx149642_
                     _phi149641_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key149647_ '#t _phi149641_ _ctx149642_)
            _key149647_
            _phi149641_
            _e149648_))
         _rebind?149640_
         _phi149641_
         _ctx149642_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149653_ _e149654_)
        (let* ((_rebind?149656_ '#f)
               (_phi149658_ (gx#current-expander-phi))
               (_ctx149660_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149653_
           _e149654_
           _rebind?149656_
           _phi149658_
           _ctx149660_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149662_ _e149663_ _rebind?149664_)
        (let* ((_phi149666_ (gx#current-expander-phi))
               (_ctx149668_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149662_
           _e149663_
           _rebind?149664_
           _phi149666_
           _ctx149668_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149670_ _e149671_ _rebind?149672_ _phi149673_)
        (let ((_ctx149675_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149670_
           _e149671_
           _rebind?149672_
           _phi149673_
           _ctx149675_))))
    (define gx#core-bind-syntax!
      (lambda _g157033_
        (let ((_g157032_ (##length _g157033_)))
          (cond ((##fx= _g157032_ 2)
                 (apply (lambda (_id149653_ _e149654_)
                          (gx#core-bind-syntax!__0 _id149653_ _e149654_))
                        _g157033_))
                ((##fx= _g157032_ 3)
                 (apply (lambda (_id149662_ _e149663_ _rebind?149664_)
                          (gx#core-bind-syntax!__1
                           _id149662_
                           _e149663_
                           _rebind?149664_))
                        _g157033_))
                ((##fx= _g157032_ 4)
                 (apply (lambda (_id149670_
                                 _e149671_
                                 _rebind?149672_
                                 _phi149673_)
                          (gx#core-bind-syntax!__2
                           _id149670_
                           _e149671_
                           _rebind?149672_
                           _phi149673_))
                        _g157033_))
                ((##fx= _g157032_ 5)
                 (apply (lambda (_id149677_
                                 _e149678_
                                 _rebind?149679_
                                 _phi149680_
                                 _ctx149681_)
                          (gx#core-bind-syntax!__%
                           _id149677_
                           _e149678_
                           _rebind?149679_
                           _phi149680_
                           _ctx149681_))
                        _g157033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157033_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149621_ _e149622_ _rebind?149623_)
        (gx#core-bind-syntax!__%
         _id149621_
         _e149622_
         _rebind?149623_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149628_ _e149629_)
        (let ((_rebind?149631_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149628_
           _e149629_
           _rebind?149631_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157035_
        (let ((_g157034_ (##length _g157035_)))
          (cond ((##fx= _g157034_ 2)
                 (apply (lambda (_id149628_ _e149629_)
                          (gx#core-bind-root-syntax!__0 _id149628_ _e149629_))
                        _g157035_))
                ((##fx= _g157034_ 3)
                 (apply (lambda (_id149633_ _e149634_ _rebind?149635_)
                          (gx#core-bind-root-syntax!__%
                           _id149633_
                           _e149634_
                           _rebind?149635_))
                        _g157035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157035_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149579_
               _alias-id149580_
               _rebind?149581_
               _phi149582_
               _ctx149583_)
        (gx#bind-identifier!__%
         _id149579_
         (let ((_key149585_ (gx#core-identifier-key _id149579_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key149585_ '#t _phi149582_ _ctx149583_)
            _key149585_
            _phi149582_
            _alias-id149580_))
         _rebind?149581_
         _phi149582_
         _ctx149583_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149590_ _alias-id149591_)
        (let* ((_rebind?149593_ '#f)
               (_phi149595_ (gx#current-expander-phi))
               (_ctx149597_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149590_
           _alias-id149591_
           _rebind?149593_
           _phi149595_
           _ctx149597_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149599_ _alias-id149600_ _rebind?149601_)
        (let* ((_phi149603_ (gx#current-expander-phi))
               (_ctx149605_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149599_
           _alias-id149600_
           _rebind?149601_
           _phi149603_
           _ctx149605_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149607_ _alias-id149608_ _rebind?149609_ _phi149610_)
        (let ((_ctx149612_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149607_
           _alias-id149608_
           _rebind?149609_
           _phi149610_
           _ctx149612_))))
    (define gx#core-bind-alias!
      (lambda _g157037_
        (let ((_g157036_ (##length _g157037_)))
          (cond ((##fx= _g157036_ 2)
                 (apply (lambda (_id149590_ _alias-id149591_)
                          (gx#core-bind-alias!__0 _id149590_ _alias-id149591_))
                        _g157037_))
                ((##fx= _g157036_ 3)
                 (apply (lambda (_id149599_ _alias-id149600_ _rebind?149601_)
                          (gx#core-bind-alias!__1
                           _id149599_
                           _alias-id149600_
                           _rebind?149601_))
                        _g157037_))
                ((##fx= _g157036_ 4)
                 (apply (lambda (_id149607_
                                 _alias-id149608_
                                 _rebind?149609_
                                 _phi149610_)
                          (gx#core-bind-alias!__2
                           _id149607_
                           _alias-id149608_
                           _rebind?149609_
                           _phi149610_))
                        _g157037_))
                ((##fx= _g157036_ 5)
                 (apply (lambda (_id149614_
                                 _alias-id149615_
                                 _rebind?149616_
                                 _phi149617_
                                 _ctx149618_)
                          (gx#core-bind-alias!__%
                           _id149614_
                           _alias-id149615_
                           _rebind?149616_
                           _phi149617_
                           _ctx149618_))
                        _g157037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157037_))))))
    (define gx#make-binding-id__%
      (lambda (_key149536_ _syntax?149537_ _phi149538_ _ctx149539_)
        (if (uninterned-symbol? _key149536_)
            (gensym 'L)
            (if (pair? _key149536_)
                (gensym (car _key149536_))
                (if (##structure-instance-of? _ctx149539_ 'gx#top-context::t)
                    (let ((_ns149541_
                           (gx#core-context-namespace__% _ctx149539_)))
                      (if (and (fxzero? _phi149538_) (not _syntax?149537_))
                          (if _ns149541_
                              (make-symbol__1 _ns149541_ '"#" _key149536_)
                              _key149536_)
                          (if _syntax?149537_
                              (make-symbol__1
                               (let ((_$e149543_ _ns149541_))
                                 (if _$e149543_ _$e149543_ '""))
                               '"[:"
                               (number->string _phi149538_)
                               '":]#"
                               _key149536_)
                              (make-symbol__1
                               (let ((_$e149546_ _ns149541_))
                                 (if _$e149546_ _$e149546_ '""))
                               '"["
                               (number->string _phi149538_)
                               '"]#"
                               _key149536_))))
                    (gensym _key149536_))))))
    (define gx#make-binding-id__0
      (lambda (_key149552_)
        (let* ((_syntax?149554_ '#f)
               (_phi149556_ (gx#current-expander-phi))
               (_ctx149558_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149552_
           _syntax?149554_
           _phi149556_
           _ctx149558_))))
    (define gx#make-binding-id__1
      (lambda (_key149560_ _syntax?149561_)
        (let* ((_phi149563_ (gx#current-expander-phi))
               (_ctx149565_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149560_
           _syntax?149561_
           _phi149563_
           _ctx149565_))))
    (define gx#make-binding-id__2
      (lambda (_key149567_ _syntax?149568_ _phi149569_)
        (let ((_ctx149571_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149567_
           _syntax?149568_
           _phi149569_
           _ctx149571_))))
    (define gx#make-binding-id
      (lambda _g157039_
        (let ((_g157038_ (##length _g157039_)))
          (cond ((##fx= _g157038_ 1)
                 (apply (lambda (_key149552_)
                          (gx#make-binding-id__0 _key149552_))
                        _g157039_))
                ((##fx= _g157038_ 2)
                 (apply (lambda (_key149560_ _syntax?149561_)
                          (gx#make-binding-id__1 _key149560_ _syntax?149561_))
                        _g157039_))
                ((##fx= _g157038_ 3)
                 (apply (lambda (_key149567_ _syntax?149568_ _phi149569_)
                          (gx#make-binding-id__2
                           _key149567_
                           _syntax?149568_
                           _phi149569_))
                        _g157039_))
                ((##fx= _g157038_ 4)
                 (apply (lambda (_key149573_
                                 _syntax?149574_
                                 _phi149575_
                                 _ctx149576_)
                          (gx#make-binding-id__%
                           _key149573_
                           _syntax?149574_
                           _phi149575_
                           _ctx149576_))
                        _g157039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157039_))))))))
