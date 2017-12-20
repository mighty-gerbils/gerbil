(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12740_)
      (let* ((_e1274112748_ _stx12740_)
             (_E1274312752_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1274112748_)))
             (_E1274212766_
              (lambda ()
                (if (gx#stx-pair? _e1274112748_)
                    (let ((_e1274412756_ (gx#syntax-e _e1274112748_)))
                      (let ((_hd1274512759_ (##car _e1274412756_))
                            (_tl1274612761_ (##cdr _e1274412756_)))
                        (let ((_form12764_ _hd1274512759_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12764_)
                               'compile-top-syntax
                               _stx12740_)
                              (_E1274312752_)))))
                    (_E1274312752_)))))
        (_E1274212766_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12700_ _stx12701_)
      (let* ((_self1270212710_ _self12700_)
             (_E1270412714_
              (lambda () (error '"No clause matching" _self1270212710_)))
             (_K1270512726_
              (lambda (_K12717_)
                (let ((_$e12719_ (gx#stx-source _stx12701_)))
                  (if _$e12719_
                      ((lambda (_g1272112723_)
                         (gx#stx-wrap-source
                          (_K12717_ _stx12701_)
                          _g1272112723_))
                       _$e12719_)
                      (_K12717_ _stx12701_))))))
        (if (##structure-instance-of?
             _self1270212710_
             (##type-id gx#core-expander::t))
            (let* ((_e1270612729_ (##vector-ref _self1270212710_ '1))
                   (_e1270712732_ (##vector-ref _self1270212710_ '2))
                   (_e1270812735_ (##vector-ref _self1270212710_ '3))
                   (_K12738_ _e1270812735_))
              (_K1270512726_ _K12738_))
            (_E1270412714_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12698_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12698_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12668_)
      (let* ((_e1266912676_ _stx12668_)
             (_E1267112680_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1266912676_)))
             (_E1267012694_
              (lambda ()
                (if (gx#stx-pair? _e1266912676_)
                    (let ((_e1267212684_ (gx#syntax-e _e1266912676_)))
                      (let ((_hd1267312687_ (##car _e1267212684_))
                            (_tl1267412689_ (##cdr _e1267212684_)))
                        (let ((_body12692_ _tl1267412689_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12692_))
                              (_E1267112680_)))))
                    (_E1267112680_)))))
        (_E1267012694_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12637_)
      (let* ((_e1263812645_ _stx12637_)
             (_E1264012649_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1263812645_)))
             (_E1263912664_
              (lambda ()
                (if (gx#stx-pair? _e1263812645_)
                    (let ((_e1264112653_ (gx#syntax-e _e1263812645_)))
                      (let ((_hd1264212656_ (##car _e1264112653_))
                            (_tl1264312658_ (##cdr _e1264112653_)))
                        (let ((_body12661_ _tl1264312658_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12661_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1264012649_)))))
                    (_E1264012649_)))))
        (_E1263912664_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12607_)
      (let* ((_e1260812615_ _stx12607_)
             (_E1261012619_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1260812615_)))
             (_E1260912633_
              (lambda ()
                (if (gx#stx-pair? _e1260812615_)
                    (let ((_e1261112623_ (gx#syntax-e _e1260812615_)))
                      (let ((_hd1261212626_ (##car _e1261112623_))
                            (_tl1261312628_ (##cdr _e1261112623_)))
                        (let ((_body12631_ _tl1261312628_))
                          (if '#t
                              (cons '%#begin-foreign _body12631_)
                              (_E1261012619_)))))
                    (_E1261012619_)))))
        (_E1260912633_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12577_)
      (let* ((_e1257812585_ _stx12577_)
             (_E1258012589_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1257812585_)))
             (_E1257912603_
              (lambda ()
                (if (gx#stx-pair? _e1257812585_)
                    (let ((_e1258112593_ (gx#syntax-e _e1257812585_)))
                      (let ((_hd1258212596_ (##car _e1258112593_))
                            (_tl1258312598_ (##cdr _e1258112593_)))
                        (let ((_body12601_ _tl1258312598_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12601_))
                              (_E1258012589_)))))
                    (_E1258012589_)))))
        (_E1257912603_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12534_)
      (let* ((_e1253512545_ _stx12534_)
             (_E1253712549_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1253512545_)))
             (_E1253612573_
              (lambda ()
                (if (gx#stx-pair? _e1253512545_)
                    (let ((_e1253812553_ (gx#syntax-e _e1253512545_)))
                      (let ((_hd1253912556_ (##car _e1253812553_))
                            (_tl1254012558_ (##cdr _e1253812553_)))
                        (if (gx#stx-pair? _tl1254012558_)
                            (let ((_e1254112561_ (gx#syntax-e _tl1254012558_)))
                              (let ((_hd1254212564_ (##car _e1254112561_))
                                    (_tl1254312566_ (##cdr _e1254112561_)))
                                (let* ((_hd12569_ _hd1254212564_)
                                       (_body12571_ _tl1254312566_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12569_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12571_))
                                      (_E1253712549_)))))
                            (_E1253712549_))))
                    (_E1253712549_)))))
        (_E1253612573_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12504_)
      (let* ((_e1250512512_ _stx12504_)
             (_E1250712516_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1250512512_)))
             (_E1250612530_
              (lambda ()
                (if (gx#stx-pair? _e1250512512_)
                    (let ((_e1250812520_ (gx#syntax-e _e1250512512_)))
                      (let ((_hd1250912523_ (##car _e1250812520_))
                            (_tl1251012525_ (##cdr _e1250812520_)))
                        (let ((_body12528_ _tl1251012525_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12528_))
                              (_E1250712516_)))))
                    (_E1250712516_)))))
        (_E1250612530_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12474_)
      (let* ((_e1247512482_ _stx12474_)
             (_E1247712486_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1247512482_)))
             (_E1247612500_
              (lambda ()
                (if (gx#stx-pair? _e1247512482_)
                    (let ((_e1247812490_ (gx#syntax-e _e1247512482_)))
                      (let ((_hd1247912493_ (##car _e1247812490_))
                            (_tl1248012495_ (##cdr _e1247812490_)))
                        (let ((_body12498_ _tl1248012495_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12498_))
                              (_E1247712486_)))))
                    (_E1247712486_)))))
        (_E1247612500_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12399_)
      (letrec ((_generate12401_
                (lambda (_hd12431_)
                  (let* ((_e1243212442_ _hd12431_)
                         (_E1243412446_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1243212442_)))
                         (_E1243312470_
                          (lambda ()
                            (if (gx#stx-pair? _e1243212442_)
                                (let ((_e1243512450_
                                       (gx#syntax-e _e1243212442_)))
                                  (let ((_hd1243612453_ (##car _e1243512450_))
                                        (_tl1243712455_ (##cdr _e1243512450_)))
                                    (let ((_id12458_ _hd1243612453_))
                                      (if (gx#stx-pair? _tl1243712455_)
                                          (let ((_e1243812460_
                                                 (gx#syntax-e _tl1243712455_)))
                                            (let ((_hd1243912463_
                                                   (##car _e1243812460_))
                                                  (_tl1244012465_
                                                   (##cdr _e1243812460_)))
                                              (let ((_eid12468_
                                                     _hd1243912463_))
                                                (if (gx#stx-null?
                                                     _tl1244012465_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12458_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12468_)
                            '()))
                (_E1243412446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1243412446_)))))
                                          (_E1243412446_)))))
                                (_E1243412446_)))))
                    (_E1243312470_)))))
        (let* ((_e1240212409_ _stx12399_)
               (_E1240412413_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1240212409_)))
               (_E1240312427_
                (lambda ()
                  (if (gx#stx-pair? _e1240212409_)
                      (let ((_e1240512417_ (gx#syntax-e _e1240212409_)))
                        (let ((_hd1240612420_ (##car _e1240512417_))
                              (_tl1240712422_ (##cdr _e1240512417_)))
                          (let ((_body12425_ _tl1240712422_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12401_
                                       _body12425_))
                                (_E1240412413_)))))
                      (_E1240412413_)))))
          (_E1240312427_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12345_)
      (let* ((_e1234612359_ _stx12345_)
             (_E1234812363_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1234612359_)))
             (_E1234712395_
              (lambda ()
                (if (gx#stx-pair? _e1234612359_)
                    (let ((_e1234912367_ (gx#syntax-e _e1234612359_)))
                      (let ((_hd1235012370_ (##car _e1234912367_))
                            (_tl1235112372_ (##cdr _e1234912367_)))
                        (if (gx#stx-pair? _tl1235112372_)
                            (let ((_e1235212375_ (gx#syntax-e _tl1235112372_)))
                              (let ((_hd1235312378_ (##car _e1235212375_))
                                    (_tl1235412380_ (##cdr _e1235212375_)))
                                (let ((_hd12383_ _hd1235312378_))
                                  (if (gx#stx-pair? _tl1235412380_)
                                      (let ((_e1235512385_
                                             (gx#syntax-e _tl1235412380_)))
                                        (let ((_hd1235612388_
                                               (##car _e1235512385_))
                                              (_tl1235712390_
                                               (##cdr _e1235512385_)))
                                          (let ((_expr12393_ _hd1235612388_))
                                            (if (gx#stx-null? _tl1235712390_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12383_)
                        (cons (gx#core-compile-top-syntax _expr12393_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234812363_))
                                                (_E1234812363_)))))
                                      (_E1234812363_)))))
                            (_E1234812363_))))
                    (_E1234812363_)))))
        (_E1234712395_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12290_)
      (let* ((_e1229112304_ _stx12290_)
             (_E1229312308_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1229112304_)))
             (_E1229212341_
              (lambda ()
                (if (gx#stx-pair? _e1229112304_)
                    (let ((_e1229412312_ (gx#syntax-e _e1229112304_)))
                      (let ((_hd1229512315_ (##car _e1229412312_))
                            (_tl1229612317_ (##cdr _e1229412312_)))
                        (if (gx#stx-pair? _tl1229612317_)
                            (let ((_e1229712320_ (gx#syntax-e _tl1229612317_)))
                              (let ((_hd1229812323_ (##car _e1229712320_))
                                    (_tl1229912325_ (##cdr _e1229712320_)))
                                (let ((_hd12328_ _hd1229812323_))
                                  (if (gx#stx-pair? _tl1229912325_)
                                      (let ((_e1230012330_
                                             (gx#syntax-e _tl1229912325_)))
                                        (let ((_hd1230112333_
                                               (##car _e1230012330_))
                                              (_tl1230212335_
                                               (##cdr _e1230012330_)))
                                          (let ((_expr12338_ _hd1230112333_))
                                            (if (gx#stx-null? _tl1230212335_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12328_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12338_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1229312308_))
                                                (_E1229312308_)))))
                                      (_E1229312308_)))))
                            (_E1229312308_))))
                    (_E1229312308_)))))
        (_E1229212341_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12236_)
      (let* ((_e1223712250_ _stx12236_)
             (_E1223912254_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1223712250_)))
             (_E1223812286_
              (lambda ()
                (if (gx#stx-pair? _e1223712250_)
                    (let ((_e1224012258_ (gx#syntax-e _e1223712250_)))
                      (let ((_hd1224112261_ (##car _e1224012258_))
                            (_tl1224212263_ (##cdr _e1224012258_)))
                        (if (gx#stx-pair? _tl1224212263_)
                            (let ((_e1224312266_ (gx#syntax-e _tl1224212263_)))
                              (let ((_hd1224412269_ (##car _e1224312266_))
                                    (_tl1224512271_ (##cdr _e1224312266_)))
                                (let ((_hd12274_ _hd1224412269_))
                                  (if (gx#stx-pair? _tl1224512271_)
                                      (let ((_e1224612276_
                                             (gx#syntax-e _tl1224512271_)))
                                        (let ((_hd1224712279_
                                               (##car _e1224612276_))
                                              (_tl1224812281_
                                               (##cdr _e1224612276_)))
                                          (let ((_alias-id12284_
                                                 _hd1224712279_))
                                            (if (gx#stx-null? _tl1224812281_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12274_)
                        (cons (gx#core-quote-syntax__0 _alias-id12284_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1223912254_))
                                                (_E1223912254_)))))
                                      (_E1223912254_)))))
                            (_E1223912254_))))
                    (_E1223912254_)))))
        (_E1223812286_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12182_)
      (let* ((_e1218312196_ _stx12182_)
             (_E1218512200_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1218312196_)))
             (_E1218412232_
              (lambda ()
                (if (gx#stx-pair? _e1218312196_)
                    (let ((_e1218612204_ (gx#syntax-e _e1218312196_)))
                      (let ((_hd1218712207_ (##car _e1218612204_))
                            (_tl1218812209_ (##cdr _e1218612204_)))
                        (if (gx#stx-pair? _tl1218812209_)
                            (let ((_e1218912212_ (gx#syntax-e _tl1218812209_)))
                              (let ((_hd1219012215_ (##car _e1218912212_))
                                    (_tl1219112217_ (##cdr _e1218912212_)))
                                (let ((_id12220_ _hd1219012215_))
                                  (if (gx#stx-pair? _tl1219112217_)
                                      (let ((_e1219212222_
                                             (gx#syntax-e _tl1219112217_)))
                                        (let ((_hd1219312225_
                                               (##car _e1219212222_))
                                              (_tl1219412227_
                                               (##cdr _e1219212222_)))
                                          (let ((_binding-id12230_
                                                 _hd1219312225_))
                                            (if (gx#stx-null? _tl1219412227_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12220_)
                        (cons (gx#core-quote-syntax__0 _binding-id12230_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1218512200_))
                                                (_E1218512200_)))))
                                      (_E1218512200_)))))
                            (_E1218512200_))))
                    (_E1218512200_)))))
        (_E1218412232_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12152_)
      (let* ((_e1215312160_ _stx12152_)
             (_E1215512164_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215312160_)))
             (_E1215412178_
              (lambda ()
                (if (gx#stx-pair? _e1215312160_)
                    (let ((_e1215612168_ (gx#syntax-e _e1215312160_)))
                      (let ((_hd1215712171_ (##car _e1215612168_))
                            (_tl1215812173_ (##cdr _e1215612168_)))
                        (let ((_decls12176_ _tl1215812173_))
                          (if '#t
                              (cons '%#declare _decls12176_)
                              (_E1215512164_)))))
                    (_E1215512164_)))))
        (_E1215412178_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12122_)
      (let* ((_e1212312130_ _stx12122_)
             (_E1212512134_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1212312130_)))
             (_E1212412148_
              (lambda ()
                (if (gx#stx-pair? _e1212312130_)
                    (let ((_e1212612138_ (gx#syntax-e _e1212312130_)))
                      (let ((_hd1212712141_ (##car _e1212612138_))
                            (_tl1212812143_ (##cdr _e1212612138_)))
                        (let ((_clause12146_ _tl1212812143_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12146_))
                              (_E1212512134_)))))
                    (_E1212512134_)))))
        (_E1212412148_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12079_)
      (let* ((_e1208012090_ _stx12079_)
             (_E1208212094_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1208012090_)))
             (_E1208112118_
              (lambda ()
                (if (gx#stx-pair? _e1208012090_)
                    (let ((_e1208312098_ (gx#syntax-e _e1208012090_)))
                      (let ((_hd1208412101_ (##car _e1208312098_))
                            (_tl1208512103_ (##cdr _e1208312098_)))
                        (let ((_hd12106_ _hd1208412101_))
                          (if (gx#stx-pair? _tl1208512103_)
                              (let ((_e1208612108_
                                     (gx#syntax-e _tl1208512103_)))
                                (let ((_hd1208712111_ (##car _e1208612108_))
                                      (_tl1208812113_ (##cdr _e1208612108_)))
                                  (let ((_body12116_ _hd1208712111_))
                                    (if (gx#stx-null? _tl1208812113_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12106_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12116_)
                                                        '()))
                                            (_E1208212094_))
                                        (_E1208212094_)))))
                              (_E1208212094_)))))
                    (_E1208212094_)))))
        (_E1208112118_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12049_)
      (let* ((_e1205012057_ _stx12049_)
             (_E1205212061_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1205012057_)))
             (_E1205112075_
              (lambda ()
                (if (gx#stx-pair? _e1205012057_)
                    (let ((_e1205312065_ (gx#syntax-e _e1205012057_)))
                      (let ((_hd1205412068_ (##car _e1205312065_))
                            (_tl1205512070_ (##cdr _e1205312065_)))
                        (let ((_clauses12073_ _tl1205512070_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12073_))
                              (_E1205212061_)))))
                    (_E1205212061_)))))
        (_E1205112075_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11982
      (lambda (_stx11984_ _form11985_)
        (let* ((_e1198611999_ _stx11984_)
               (_E1198812003_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1198611999_)))
               (_E1198712035_
                (lambda ()
                  (if (gx#stx-pair? _e1198611999_)
                      (let ((_e1198912007_ (gx#syntax-e _e1198611999_)))
                        (let ((_hd1199012010_ (##car _e1198912007_))
                              (_tl1199112012_ (##cdr _e1198912007_)))
                          (if (gx#stx-pair? _tl1199112012_)
                              (let ((_e1199212015_
                                     (gx#syntax-e _tl1199112012_)))
                                (let ((_hd1199312018_ (##car _e1199212015_))
                                      (_tl1199412020_ (##cdr _e1199212015_)))
                                  (let ((_hd12023_ _hd1199312018_))
                                    (if (gx#stx-pair? _tl1199412020_)
                                        (let ((_e1199512025_
                                               (gx#syntax-e _tl1199412020_)))
                                          (let ((_hd1199612028_
                                                 (##car _e1199512025_))
                                                (_tl1199712030_
                                                 (##cdr _e1199512025_)))
                                            (let ((_body12033_ _hd1199612028_))
                                              (if (gx#stx-null? _tl1199712030_)
                                                  (if '#t
                                                      (cons _form11985_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd12023_)
                          (cons (gx#core-compile-top-syntax _body12033_) '())))
              (_E1198812003_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1198812003_)))))
                                        (_E1198812003_)))))
                              (_E1198812003_))))
                      (_E1198812003_)))))
          (_E1198712035_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12042_)
          (let ((_form12044_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11982
             _stx12042_
             _form12044_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12770_
          (let ((_g12769_ (length _g12770_)))
            (cond ((fx= _g12769_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12770_))
                  ((fx= _g12769_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11982
                          _g12770_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12770_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11981_)
      (gx#core-compile-top-let-values%__opt-lambda11982
       _stx11981_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11979_)
      (gx#core-compile-top-let-values%__opt-lambda11982
       _stx11979_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11938_)
      (let* ((_e1193911949_ _stx11938_)
             (_E1194111953_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1193911949_)))
             (_E1194011975_
              (lambda ()
                (if (gx#stx-pair? _e1193911949_)
                    (let ((_e1194211957_ (gx#syntax-e _e1193911949_)))
                      (let ((_hd1194311960_ (##car _e1194211957_))
                            (_tl1194411962_ (##cdr _e1194211957_)))
                        (if (gx#stx-pair? _tl1194411962_)
                            (let ((_e1194511965_ (gx#syntax-e _tl1194411962_)))
                              (let ((_hd1194611968_ (##car _e1194511965_))
                                    (_tl1194711970_ (##cdr _e1194511965_)))
                                (let ((_e11973_ _hd1194611968_))
                                  (if (gx#stx-null? _tl1194711970_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e11973_)
                                                      '()))
                                          (_E1194111953_))
                                      (_E1194111953_)))))
                            (_E1194111953_))))
                    (_E1194111953_)))))
        (_E1194011975_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11897_)
      (let* ((_e1189811908_ _stx11897_)
             (_E1190011912_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1189811908_)))
             (_E1189911934_
              (lambda ()
                (if (gx#stx-pair? _e1189811908_)
                    (let ((_e1190111916_ (gx#syntax-e _e1189811908_)))
                      (let ((_hd1190211919_ (##car _e1190111916_))
                            (_tl1190311921_ (##cdr _e1190111916_)))
                        (if (gx#stx-pair? _tl1190311921_)
                            (let ((_e1190411924_ (gx#syntax-e _tl1190311921_)))
                              (let ((_hd1190511927_ (##car _e1190411924_))
                                    (_tl1190611929_ (##cdr _e1190411924_)))
                                (let ((_e11932_ _hd1190511927_))
                                  (if (gx#stx-null? _tl1190611929_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e11932_)
                                                      '()))
                                          (_E1190011912_))
                                      (_E1190011912_)))))
                            (_E1190011912_))))
                    (_E1190011912_)))))
        (_E1189911934_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11854_)
      (let* ((_e1185511865_ _stx11854_)
             (_E1185711869_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1185511865_)))
             (_E1185611893_
              (lambda ()
                (if (gx#stx-pair? _e1185511865_)
                    (let ((_e1185811873_ (gx#syntax-e _e1185511865_)))
                      (let ((_hd1185911876_ (##car _e1185811873_))
                            (_tl1186011878_ (##cdr _e1185811873_)))
                        (if (gx#stx-pair? _tl1186011878_)
                            (let ((_e1186111881_ (gx#syntax-e _tl1186011878_)))
                              (let ((_hd1186211884_ (##car _e1186111881_))
                                    (_tl1186311886_ (##cdr _e1186111881_)))
                                (let* ((_rator11889_ _hd1186211884_)
                                       (_args11891_ _tl1186311886_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator11889_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args11891_))
                                      (_E1185711869_)))))
                            (_E1185711869_))))
                    (_E1185711869_)))))
        (_E1185611893_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11787_)
      (let* ((_e1178811804_ _stx11787_)
             (_E1179011808_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1178811804_)))
             (_E1178911850_
              (lambda ()
                (if (gx#stx-pair? _e1178811804_)
                    (let ((_e1179111812_ (gx#syntax-e _e1178811804_)))
                      (let ((_hd1179211815_ (##car _e1179111812_))
                            (_tl1179311817_ (##cdr _e1179111812_)))
                        (if (gx#stx-pair? _tl1179311817_)
                            (let ((_e1179411820_ (gx#syntax-e _tl1179311817_)))
                              (let ((_hd1179511823_ (##car _e1179411820_))
                                    (_tl1179611825_ (##cdr _e1179411820_)))
                                (let ((_test11828_ _hd1179511823_))
                                  (if (gx#stx-pair? _tl1179611825_)
                                      (let ((_e1179711830_
                                             (gx#syntax-e _tl1179611825_)))
                                        (let ((_hd1179811833_
                                               (##car _e1179711830_))
                                              (_tl1179911835_
                                               (##cdr _e1179711830_)))
                                          (let ((_K11838_ _hd1179811833_))
                                            (if (gx#stx-pair? _tl1179911835_)
                                                (let ((_e1180011840_
                                                       (gx#syntax-e
                                                        _tl1179911835_)))
                                                  (let ((_hd1180111843_
                                                         (##car _e1180011840_))
                                                        (_tl1180211845_
                                                         (##cdr _e1180011840_)))
                                                    (let ((_E11848_
                                                           _hd1180111843_))
                                                      (if (gx#stx-null?
                                                           _tl1180211845_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11828_)
                                  (cons (gx#core-compile-top-syntax _K11838_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11848_)
                                              '()))))
                      (_E1179011808_))
                  (_E1179011808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1179011808_)))))
                                      (_E1179011808_)))))
                            (_E1179011808_))))
                    (_E1179011808_)))))
        (_E1178911850_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11746_)
      (let* ((_e1174711757_ _stx11746_)
             (_E1174911761_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1174711757_)))
             (_E1174811783_
              (lambda ()
                (if (gx#stx-pair? _e1174711757_)
                    (let ((_e1175011765_ (gx#syntax-e _e1174711757_)))
                      (let ((_hd1175111768_ (##car _e1175011765_))
                            (_tl1175211770_ (##cdr _e1175011765_)))
                        (if (gx#stx-pair? _tl1175211770_)
                            (let ((_e1175311773_ (gx#syntax-e _tl1175211770_)))
                              (let ((_hd1175411776_ (##car _e1175311773_))
                                    (_tl1175511778_ (##cdr _e1175311773_)))
                                (let ((_id11781_ _hd1175411776_))
                                  (if (gx#stx-null? _tl1175511778_)
                                      (if (gx#identifier? _id11781_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11781_)
                                                      '()))
                                          (_E1174911761_))
                                      (_E1174911761_)))))
                            (_E1174911761_))))
                    (_E1174911761_)))))
        (_E1174811783_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11692_)
      (let* ((_e1169311706_ _stx11692_)
             (_E1169511710_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1169311706_)))
             (_E1169411742_
              (lambda ()
                (if (gx#stx-pair? _e1169311706_)
                    (let ((_e1169611714_ (gx#syntax-e _e1169311706_)))
                      (let ((_hd1169711717_ (##car _e1169611714_))
                            (_tl1169811719_ (##cdr _e1169611714_)))
                        (if (gx#stx-pair? _tl1169811719_)
                            (let ((_e1169911722_ (gx#syntax-e _tl1169811719_)))
                              (let ((_hd1170011725_ (##car _e1169911722_))
                                    (_tl1170111727_ (##cdr _e1169911722_)))
                                (let ((_id11730_ _hd1170011725_))
                                  (if (gx#stx-pair? _tl1170111727_)
                                      (let ((_e1170211732_
                                             (gx#syntax-e _tl1170111727_)))
                                        (let ((_hd1170311735_
                                               (##car _e1170211732_))
                                              (_tl1170411737_
                                               (##cdr _e1170211732_)))
                                          (let ((_expr11740_ _hd1170311735_))
                                            (if (gx#stx-null? _tl1170411737_)
                                                (if (gx#identifier? _id11730_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11730_)
                        (cons (gx#core-compile-top-syntax _expr11740_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1169511710_))
                                                (_E1169511710_)))))
                                      (_E1169511710_)))))
                            (_E1169511710_))))
                    (_E1169511710_)))))
        (_E1169411742_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11687_)
      (let ((_$e11689_ (gx#resolve-identifier__0 _id11687_)))
        (if _$e11689_
            (##structure-ref _$e11689_ '1 gx#binding::t '#f)
            _id11687_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11685_)
      (if (gx#identifier? _hd11685_)
          (gx#core-compile-top-runtime-ref _hd11685_)
          '#f))))
