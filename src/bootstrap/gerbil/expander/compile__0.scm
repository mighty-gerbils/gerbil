(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12562_)
      (let ((_e1256312570_ _stx12562_))
        (let ((_E1256512574_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1256312570_))))
          (let ((_E1256412588_
                 (lambda ()
                   (if (gx#stx-pair? _e1256312570_)
                       (let ((_e1256612578_ (gx#syntax-e _e1256312570_)))
                         (let ((_hd1256712581_ (##car _e1256612578_))
                               (_tl1256812583_ (##cdr _e1256612578_)))
                           (let ((_form12586_ _hd1256712581_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12586_)
                                  'compile-top-syntax
                                  _stx12562_)
                                 (_E1256512574_)))))
                       (_E1256512574_)))))
            (let () (_E1256412588_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12522_ _stx12523_)
      (let ((_self1252412532_ _self12522_))
        (let ((_E1252612536_
               (lambda () (error '"No clause matching" _self1252412532_))))
          (let ((_K1252712548_
                 (lambda (_K12539_)
                   (let ((_$e12541_ (gx#stx-source _stx12523_)))
                     (if _$e12541_
                         ((lambda (_g1254312545_)
                            (gx#stx-wrap-source
                             (_K12539_ _stx12523_)
                             _g1254312545_))
                          _$e12541_)
                         (_K12539_ _stx12523_))))))
            (if (struct-instance? gx#core-expander::t _self1252412532_)
                (let ((_e1252812551_ (##vector-ref _self1252412532_ '1)))
                  (let ((_e1252912554_ (##vector-ref _self1252412532_ '2)))
                    (let ((_e1253012557_ (##vector-ref _self1252412532_ '3)))
                      (let ((_K12560_ _e1253012557_))
                        (_K1252712548_ _K12560_)))))
                (_E1252612536_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12520_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12520_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12490_)
      (let ((_e1249112498_ _stx12490_))
        (let ((_E1249312502_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1249112498_))))
          (let ((_E1249212516_
                 (lambda ()
                   (if (gx#stx-pair? _e1249112498_)
                       (let ((_e1249412506_ (gx#syntax-e _e1249112498_)))
                         (let ((_hd1249512509_ (##car _e1249412506_))
                               (_tl1249612511_ (##cdr _e1249412506_)))
                           (let ((_body12514_ _tl1249612511_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12514_))
                                 (_E1249312502_)))))
                       (_E1249312502_)))))
            (let () (_E1249212516_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12459_)
      (let ((_e1246012467_ _stx12459_))
        (let ((_E1246212471_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1246012467_))))
          (let ((_E1246112486_
                 (lambda ()
                   (if (gx#stx-pair? _e1246012467_)
                       (let ((_e1246312475_ (gx#syntax-e _e1246012467_)))
                         (let ((_hd1246412478_ (##car _e1246312475_))
                               (_tl1246512480_ (##cdr _e1246312475_)))
                           (let ((_body12483_ _tl1246512480_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12483_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1246212471_)))))
                       (_E1246212471_)))))
            (let () (_E1246112486_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12429_)
      (let ((_e1243012437_ _stx12429_))
        (let ((_E1243212441_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1243012437_))))
          (let ((_E1243112455_
                 (lambda ()
                   (if (gx#stx-pair? _e1243012437_)
                       (let ((_e1243312445_ (gx#syntax-e _e1243012437_)))
                         (let ((_hd1243412448_ (##car _e1243312445_))
                               (_tl1243512450_ (##cdr _e1243312445_)))
                           (let ((_body12453_ _tl1243512450_))
                             (if '#t
                                 (cons '%#begin-foreign _body12453_)
                                 (_E1243212441_)))))
                       (_E1243212441_)))))
            (let () (_E1243112455_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12399_)
      (let ((_e1240012407_ _stx12399_))
        (let ((_E1240212411_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1240012407_))))
          (let ((_E1240112425_
                 (lambda ()
                   (if (gx#stx-pair? _e1240012407_)
                       (let ((_e1240312415_ (gx#syntax-e _e1240012407_)))
                         (let ((_hd1240412418_ (##car _e1240312415_))
                               (_tl1240512420_ (##cdr _e1240312415_)))
                           (let ((_body12423_ _tl1240512420_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12423_))
                                 (_E1240212411_)))))
                       (_E1240212411_)))))
            (let () (_E1240112425_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12356_)
      (let ((_e1235712367_ _stx12356_))
        (let ((_E1235912371_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1235712367_))))
          (let ((_E1235812395_
                 (lambda ()
                   (if (gx#stx-pair? _e1235712367_)
                       (let ((_e1236012375_ (gx#syntax-e _e1235712367_)))
                         (let ((_hd1236112378_ (##car _e1236012375_))
                               (_tl1236212380_ (##cdr _e1236012375_)))
                           (if (gx#stx-pair? _tl1236212380_)
                               (let ((_e1236312383_
                                      (gx#syntax-e _tl1236212380_)))
                                 (let ((_hd1236412386_ (##car _e1236312383_))
                                       (_tl1236512388_ (##cdr _e1236312383_)))
                                   (let ((_hd12391_ _hd1236412386_))
                                     (let ((_body12393_ _tl1236512388_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12391_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12393_))
                                           (_E1235912371_))))))
                               (_E1235912371_))))
                       (_E1235912371_)))))
            (let () (_E1235812395_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12326_)
      (let ((_e1232712334_ _stx12326_))
        (let ((_E1232912338_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1232712334_))))
          (let ((_E1232812352_
                 (lambda ()
                   (if (gx#stx-pair? _e1232712334_)
                       (let ((_e1233012342_ (gx#syntax-e _e1232712334_)))
                         (let ((_hd1233112345_ (##car _e1233012342_))
                               (_tl1233212347_ (##cdr _e1233012342_)))
                           (let ((_body12350_ _tl1233212347_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12350_))
                                 (_E1232912338_)))))
                       (_E1232912338_)))))
            (let () (_E1232812352_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12296_)
      (let ((_e1229712304_ _stx12296_))
        (let ((_E1229912308_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1229712304_))))
          (let ((_E1229812322_
                 (lambda ()
                   (if (gx#stx-pair? _e1229712304_)
                       (let ((_e1230012312_ (gx#syntax-e _e1229712304_)))
                         (let ((_hd1230112315_ (##car _e1230012312_))
                               (_tl1230212317_ (##cdr _e1230012312_)))
                           (let ((_body12320_ _tl1230212317_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12320_))
                                 (_E1229912308_)))))
                       (_E1229912308_)))))
            (let () (_E1229812322_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12221_)
      (let ((_generate12223_
             (lambda (_hd12253_)
               (let ((_e1225412264_ _hd12253_))
                 (let ((_E1225612268_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1225412264_))))
                   (let ((_E1225512292_
                          (lambda ()
                            (if (gx#stx-pair? _e1225412264_)
                                (let ((_e1225712272_
                                       (gx#syntax-e _e1225412264_)))
                                  (let ((_hd1225812275_ (##car _e1225712272_))
                                        (_tl1225912277_ (##cdr _e1225712272_)))
                                    (let ((_id12280_ _hd1225812275_))
                                      (if (gx#stx-pair? _tl1225912277_)
                                          (let ((_e1226012282_
                                                 (gx#syntax-e _tl1225912277_)))
                                            (let ((_hd1226112285_
                                                   (##car _e1226012282_))
                                                  (_tl1226212287_
                                                   (##cdr _e1226012282_)))
                                              (let ((_eid12290_
                                                     _hd1226112285_))
                                                (if (gx#stx-null?
                                                     _tl1226212287_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12280_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12290_)
                            '()))
                (_E1225612268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1225612268_)))))
                                          (_E1225612268_)))))
                                (_E1225612268_)))))
                     (let () (_E1225512292_))))))))
        (let ((_e1222412231_ _stx12221_))
          (let ((_E1222612235_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1222412231_))))
            (let ((_E1222512249_
                   (lambda ()
                     (if (gx#stx-pair? _e1222412231_)
                         (let ((_e1222712239_ (gx#syntax-e _e1222412231_)))
                           (let ((_hd1222812242_ (##car _e1222712239_))
                                 (_tl1222912244_ (##cdr _e1222712239_)))
                             (let ((_body12247_ _tl1222912244_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12223_
                                          _body12247_))
                                   (_E1222612235_)))))
                         (_E1222612235_)))))
              (let () (_E1222512249_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12167_)
      (let ((_e1216812181_ _stx12167_))
        (let ((_E1217012185_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1216812181_))))
          (let ((_E1216912217_
                 (lambda ()
                   (if (gx#stx-pair? _e1216812181_)
                       (let ((_e1217112189_ (gx#syntax-e _e1216812181_)))
                         (let ((_hd1217212192_ (##car _e1217112189_))
                               (_tl1217312194_ (##cdr _e1217112189_)))
                           (if (gx#stx-pair? _tl1217312194_)
                               (let ((_e1217412197_
                                      (gx#syntax-e _tl1217312194_)))
                                 (let ((_hd1217512200_ (##car _e1217412197_))
                                       (_tl1217612202_ (##cdr _e1217412197_)))
                                   (let ((_hd12205_ _hd1217512200_))
                                     (if (gx#stx-pair? _tl1217612202_)
                                         (let ((_e1217712207_
                                                (gx#syntax-e _tl1217612202_)))
                                           (let ((_hd1217812210_
                                                  (##car _e1217712207_))
                                                 (_tl1217912212_
                                                  (##cdr _e1217712207_)))
                                             (let ((_expr12215_
                                                    _hd1217812210_))
                                               (if (gx#stx-null?
                                                    _tl1217912212_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12205_)
                           (cons (gx#core-compile-top-syntax _expr12215_)
                                 '())))
               (_E1217012185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1217012185_)))))
                                         (_E1217012185_)))))
                               (_E1217012185_))))
                       (_E1217012185_)))))
            (let () (_E1216912217_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12112_)
      (let ((_e1211312126_ _stx12112_))
        (let ((_E1211512130_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1211312126_))))
          (let ((_E1211412163_
                 (lambda ()
                   (if (gx#stx-pair? _e1211312126_)
                       (let ((_e1211612134_ (gx#syntax-e _e1211312126_)))
                         (let ((_hd1211712137_ (##car _e1211612134_))
                               (_tl1211812139_ (##cdr _e1211612134_)))
                           (if (gx#stx-pair? _tl1211812139_)
                               (let ((_e1211912142_
                                      (gx#syntax-e _tl1211812139_)))
                                 (let ((_hd1212012145_ (##car _e1211912142_))
                                       (_tl1212112147_ (##cdr _e1211912142_)))
                                   (let ((_hd12150_ _hd1212012145_))
                                     (if (gx#stx-pair? _tl1212112147_)
                                         (let ((_e1212212152_
                                                (gx#syntax-e _tl1212112147_)))
                                           (let ((_hd1212312155_
                                                  (##car _e1212212152_))
                                                 (_tl1212412157_
                                                  (##cdr _e1212212152_)))
                                             (let ((_expr12160_
                                                    _hd1212312155_))
                                               (if (gx#stx-null?
                                                    _tl1212412157_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12150_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12160_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1211512130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1211512130_)))))
                                         (_E1211512130_)))))
                               (_E1211512130_))))
                       (_E1211512130_)))))
            (let () (_E1211412163_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12058_)
      (let ((_e1205912072_ _stx12058_))
        (let ((_E1206112076_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205912072_))))
          (let ((_E1206012108_
                 (lambda ()
                   (if (gx#stx-pair? _e1205912072_)
                       (let ((_e1206212080_ (gx#syntax-e _e1205912072_)))
                         (let ((_hd1206312083_ (##car _e1206212080_))
                               (_tl1206412085_ (##cdr _e1206212080_)))
                           (if (gx#stx-pair? _tl1206412085_)
                               (let ((_e1206512088_
                                      (gx#syntax-e _tl1206412085_)))
                                 (let ((_hd1206612091_ (##car _e1206512088_))
                                       (_tl1206712093_ (##cdr _e1206512088_)))
                                   (let ((_hd12096_ _hd1206612091_))
                                     (if (gx#stx-pair? _tl1206712093_)
                                         (let ((_e1206812098_
                                                (gx#syntax-e _tl1206712093_)))
                                           (let ((_hd1206912101_
                                                  (##car _e1206812098_))
                                                 (_tl1207012103_
                                                  (##cdr _e1206812098_)))
                                             (let ((_alias-id12106_
                                                    _hd1206912101_))
                                               (if (gx#stx-null?
                                                    _tl1207012103_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12096_)
                           (cons (gx#core-quote-syntax__0 _alias-id12106_)
                                 '())))
               (_E1206112076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1206112076_)))))
                                         (_E1206112076_)))))
                               (_E1206112076_))))
                       (_E1206112076_)))))
            (let () (_E1206012108_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12004_)
      (let ((_e1200512018_ _stx12004_))
        (let ((_E1200712022_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1200512018_))))
          (let ((_E1200612054_
                 (lambda ()
                   (if (gx#stx-pair? _e1200512018_)
                       (let ((_e1200812026_ (gx#syntax-e _e1200512018_)))
                         (let ((_hd1200912029_ (##car _e1200812026_))
                               (_tl1201012031_ (##cdr _e1200812026_)))
                           (if (gx#stx-pair? _tl1201012031_)
                               (let ((_e1201112034_
                                      (gx#syntax-e _tl1201012031_)))
                                 (let ((_hd1201212037_ (##car _e1201112034_))
                                       (_tl1201312039_ (##cdr _e1201112034_)))
                                   (let ((_id12042_ _hd1201212037_))
                                     (if (gx#stx-pair? _tl1201312039_)
                                         (let ((_e1201412044_
                                                (gx#syntax-e _tl1201312039_)))
                                           (let ((_hd1201512047_
                                                  (##car _e1201412044_))
                                                 (_tl1201612049_
                                                  (##cdr _e1201412044_)))
                                             (let ((_binding-id12052_
                                                    _hd1201512047_))
                                               (if (gx#stx-null?
                                                    _tl1201612049_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12042_)
                           (cons (gx#core-quote-syntax__0 _binding-id12052_)
                                 '())))
               (_E1200712022_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1200712022_)))))
                                         (_E1200712022_)))))
                               (_E1200712022_))))
                       (_E1200712022_)))))
            (let () (_E1200612054_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11974_)
      (let ((_e1197511982_ _stx11974_))
        (let ((_E1197711986_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1197511982_))))
          (let ((_E1197612000_
                 (lambda ()
                   (if (gx#stx-pair? _e1197511982_)
                       (let ((_e1197811990_ (gx#syntax-e _e1197511982_)))
                         (let ((_hd1197911993_ (##car _e1197811990_))
                               (_tl1198011995_ (##cdr _e1197811990_)))
                           (let ((_decls11998_ _tl1198011995_))
                             (if '#t
                                 (cons '%#declare _decls11998_)
                                 (_E1197711986_)))))
                       (_E1197711986_)))))
            (let () (_E1197612000_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11944_)
      (let ((_e1194511952_ _stx11944_))
        (let ((_E1194711956_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1194511952_))))
          (let ((_E1194611970_
                 (lambda ()
                   (if (gx#stx-pair? _e1194511952_)
                       (let ((_e1194811960_ (gx#syntax-e _e1194511952_)))
                         (let ((_hd1194911963_ (##car _e1194811960_))
                               (_tl1195011965_ (##cdr _e1194811960_)))
                           (let ((_clause11968_ _tl1195011965_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11968_))
                                 (_E1194711956_)))))
                       (_E1194711956_)))))
            (let () (_E1194611970_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11901_)
      (let ((_e1190211912_ _stx11901_))
        (let ((_E1190411916_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1190211912_))))
          (let ((_E1190311940_
                 (lambda ()
                   (if (gx#stx-pair? _e1190211912_)
                       (let ((_e1190511920_ (gx#syntax-e _e1190211912_)))
                         (let ((_hd1190611923_ (##car _e1190511920_))
                               (_tl1190711925_ (##cdr _e1190511920_)))
                           (let ((_hd11928_ _hd1190611923_))
                             (if (gx#stx-pair? _tl1190711925_)
                                 (let ((_e1190811930_
                                        (gx#syntax-e _tl1190711925_)))
                                   (let ((_hd1190911933_ (##car _e1190811930_))
                                         (_tl1191011935_
                                          (##cdr _e1190811930_)))
                                     (let ((_body11938_ _hd1190911933_))
                                       (if (gx#stx-null? _tl1191011935_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11928_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11938_)
                                                           '()))
                                               (_E1190411916_))
                                           (_E1190411916_)))))
                                 (_E1190411916_)))))
                       (_E1190411916_)))))
            (let () (_E1190311940_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11871_)
      (let ((_e1187211879_ _stx11871_))
        (let ((_E1187411883_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1187211879_))))
          (let ((_E1187311897_
                 (lambda ()
                   (if (gx#stx-pair? _e1187211879_)
                       (let ((_e1187511887_ (gx#syntax-e _e1187211879_)))
                         (let ((_hd1187611890_ (##car _e1187511887_))
                               (_tl1187711892_ (##cdr _e1187511887_)))
                           (let ((_clauses11895_ _tl1187711892_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11895_))
                                 (_E1187411883_)))))
                       (_E1187411883_)))))
            (let () (_E1187311897_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11804
      (lambda (_stx11806_ _form11807_)
        (let ((_e1180811821_ _stx11806_))
          (let ((_E1181011825_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1180811821_))))
            (let ((_E1180911857_
                   (lambda ()
                     (if (gx#stx-pair? _e1180811821_)
                         (let ((_e1181111829_ (gx#syntax-e _e1180811821_)))
                           (let ((_hd1181211832_ (##car _e1181111829_))
                                 (_tl1181311834_ (##cdr _e1181111829_)))
                             (if (gx#stx-pair? _tl1181311834_)
                                 (let ((_e1181411837_
                                        (gx#syntax-e _tl1181311834_)))
                                   (let ((_hd1181511840_ (##car _e1181411837_))
                                         (_tl1181611842_
                                          (##cdr _e1181411837_)))
                                     (let ((_hd11845_ _hd1181511840_))
                                       (if (gx#stx-pair? _tl1181611842_)
                                           (let ((_e1181711847_
                                                  (gx#syntax-e
                                                   _tl1181611842_)))
                                             (let ((_hd1181811850_
                                                    (##car _e1181711847_))
                                                   (_tl1181911852_
                                                    (##cdr _e1181711847_)))
                                               (let ((_body11855_
                                                      _hd1181811850_))
                                                 (if (gx#stx-null?
                                                      _tl1181911852_)
                                                     (if '#t
                                                         (cons _form11807_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11845_)
                             (cons (gx#core-compile-top-syntax _body11855_)
                                   '())))
                 (_E1181011825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1181011825_)))))
                                           (_E1181011825_)))))
                                 (_E1181011825_))))
                         (_E1181011825_)))))
              (let () (_E1180911857_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11864_)
          (let ((_form11866_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11804
             _stx11864_
             _form11866_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12592_
          (let ((_g12591_ (length _g12592_)))
            (cond ((fx= _g12591_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12592_))
                  ((fx= _g12591_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11804
                          _g12592_))
                  (else (error "No clause matching arguments" _g12592_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11803_)
      (gx#core-compile-top-let-values%__opt-lambda11804
       _stx11803_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11801_)
      (gx#core-compile-top-let-values%__opt-lambda11804
       _stx11801_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11760_)
      (let ((_e1176111771_ _stx11760_))
        (let ((_E1176311775_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176111771_))))
          (let ((_E1176211797_
                 (lambda ()
                   (if (gx#stx-pair? _e1176111771_)
                       (let ((_e1176411779_ (gx#syntax-e _e1176111771_)))
                         (let ((_hd1176511782_ (##car _e1176411779_))
                               (_tl1176611784_ (##cdr _e1176411779_)))
                           (if (gx#stx-pair? _tl1176611784_)
                               (let ((_e1176711787_
                                      (gx#syntax-e _tl1176611784_)))
                                 (let ((_hd1176811790_ (##car _e1176711787_))
                                       (_tl1176911792_ (##cdr _e1176711787_)))
                                   (let ((_e11795_ _hd1176811790_))
                                     (if (gx#stx-null? _tl1176911792_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11795_)
                                                         '()))
                                             (_E1176311775_))
                                         (_E1176311775_)))))
                               (_E1176311775_))))
                       (_E1176311775_)))))
            (let () (_E1176211797_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11719_)
      (let ((_e1172011730_ _stx11719_))
        (let ((_E1172211734_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1172011730_))))
          (let ((_E1172111756_
                 (lambda ()
                   (if (gx#stx-pair? _e1172011730_)
                       (let ((_e1172311738_ (gx#syntax-e _e1172011730_)))
                         (let ((_hd1172411741_ (##car _e1172311738_))
                               (_tl1172511743_ (##cdr _e1172311738_)))
                           (if (gx#stx-pair? _tl1172511743_)
                               (let ((_e1172611746_
                                      (gx#syntax-e _tl1172511743_)))
                                 (let ((_hd1172711749_ (##car _e1172611746_))
                                       (_tl1172811751_ (##cdr _e1172611746_)))
                                   (let ((_e11754_ _hd1172711749_))
                                     (if (gx#stx-null? _tl1172811751_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11754_)
                                                         '()))
                                             (_E1172211734_))
                                         (_E1172211734_)))))
                               (_E1172211734_))))
                       (_E1172211734_)))))
            (let () (_E1172111756_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11676_)
      (let ((_e1167711687_ _stx11676_))
        (let ((_E1167911691_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1167711687_))))
          (let ((_E1167811715_
                 (lambda ()
                   (if (gx#stx-pair? _e1167711687_)
                       (let ((_e1168011695_ (gx#syntax-e _e1167711687_)))
                         (let ((_hd1168111698_ (##car _e1168011695_))
                               (_tl1168211700_ (##cdr _e1168011695_)))
                           (if (gx#stx-pair? _tl1168211700_)
                               (let ((_e1168311703_
                                      (gx#syntax-e _tl1168211700_)))
                                 (let ((_hd1168411706_ (##car _e1168311703_))
                                       (_tl1168511708_ (##cdr _e1168311703_)))
                                   (let ((_rator11711_ _hd1168411706_))
                                     (let ((_args11713_ _tl1168511708_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11711_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11713_))
                                           (_E1167911691_))))))
                               (_E1167911691_))))
                       (_E1167911691_)))))
            (let () (_E1167811715_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11609_)
      (let ((_e1161011626_ _stx11609_))
        (let ((_E1161211630_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1161011626_))))
          (let ((_E1161111672_
                 (lambda ()
                   (if (gx#stx-pair? _e1161011626_)
                       (let ((_e1161311634_ (gx#syntax-e _e1161011626_)))
                         (let ((_hd1161411637_ (##car _e1161311634_))
                               (_tl1161511639_ (##cdr _e1161311634_)))
                           (if (gx#stx-pair? _tl1161511639_)
                               (let ((_e1161611642_
                                      (gx#syntax-e _tl1161511639_)))
                                 (let ((_hd1161711645_ (##car _e1161611642_))
                                       (_tl1161811647_ (##cdr _e1161611642_)))
                                   (let ((_test11650_ _hd1161711645_))
                                     (if (gx#stx-pair? _tl1161811647_)
                                         (let ((_e1161911652_
                                                (gx#syntax-e _tl1161811647_)))
                                           (let ((_hd1162011655_
                                                  (##car _e1161911652_))
                                                 (_tl1162111657_
                                                  (##cdr _e1161911652_)))
                                             (let ((_K11660_ _hd1162011655_))
                                               (if (gx#stx-pair?
                                                    _tl1162111657_)
                                                   (let ((_e1162211662_
                                                          (gx#syntax-e
                                                           _tl1162111657_)))
                                                     (let ((_hd1162311665_
                                                            (##car _e1162211662_))
                                                           (_tl1162411667_
                                                            (##cdr _e1162211662_)))
                                                       (let ((_E11670_
                                                              _hd1162311665_))
                                                         (if (gx#stx-null?
                                                              _tl1162411667_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11650_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11660_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11670_)
                                                 '()))))
                         (_E1161211630_))
                     (_E1161211630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1161211630_)))))
                                         (_E1161211630_)))))
                               (_E1161211630_))))
                       (_E1161211630_)))))
            (let () (_E1161111672_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11568_)
      (let ((_e1156911579_ _stx11568_))
        (let ((_E1157111583_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1156911579_))))
          (let ((_E1157011605_
                 (lambda ()
                   (if (gx#stx-pair? _e1156911579_)
                       (let ((_e1157211587_ (gx#syntax-e _e1156911579_)))
                         (let ((_hd1157311590_ (##car _e1157211587_))
                               (_tl1157411592_ (##cdr _e1157211587_)))
                           (if (gx#stx-pair? _tl1157411592_)
                               (let ((_e1157511595_
                                      (gx#syntax-e _tl1157411592_)))
                                 (let ((_hd1157611598_ (##car _e1157511595_))
                                       (_tl1157711600_ (##cdr _e1157511595_)))
                                   (let ((_id11603_ _hd1157611598_))
                                     (if (gx#stx-null? _tl1157711600_)
                                         (if (gx#identifier? _id11603_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11603_)
                                                         '()))
                                             (_E1157111583_))
                                         (_E1157111583_)))))
                               (_E1157111583_))))
                       (_E1157111583_)))))
            (let () (_E1157011605_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11514_)
      (let ((_e1151511528_ _stx11514_))
        (let ((_E1151711532_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1151511528_))))
          (let ((_E1151611564_
                 (lambda ()
                   (if (gx#stx-pair? _e1151511528_)
                       (let ((_e1151811536_ (gx#syntax-e _e1151511528_)))
                         (let ((_hd1151911539_ (##car _e1151811536_))
                               (_tl1152011541_ (##cdr _e1151811536_)))
                           (if (gx#stx-pair? _tl1152011541_)
                               (let ((_e1152111544_
                                      (gx#syntax-e _tl1152011541_)))
                                 (let ((_hd1152211547_ (##car _e1152111544_))
                                       (_tl1152311549_ (##cdr _e1152111544_)))
                                   (let ((_id11552_ _hd1152211547_))
                                     (if (gx#stx-pair? _tl1152311549_)
                                         (let ((_e1152411554_
                                                (gx#syntax-e _tl1152311549_)))
                                           (let ((_hd1152511557_
                                                  (##car _e1152411554_))
                                                 (_tl1152611559_
                                                  (##cdr _e1152411554_)))
                                             (let ((_expr11562_
                                                    _hd1152511557_))
                                               (if (gx#stx-null?
                                                    _tl1152611559_)
                                                   (if (gx#identifier?
                                                        _id11552_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11552_)
                           (cons (gx#core-compile-top-syntax _expr11562_)
                                 '())))
               (_E1151711532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1151711532_)))))
                                         (_E1151711532_)))))
                               (_E1151711532_))))
                       (_E1151711532_)))))
            (let () (_E1151611564_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11509_)
      (let ((_$e11511_ (gx#resolve-identifier__0 _id11509_)))
        (if _$e11511_
            (##structure-ref _$e11511_ '1 gx#binding::t '#f)
            _id11509_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11507_)
      (if (gx#identifier? _hd11507_)
          (gx#core-compile-top-runtime-ref _hd11507_)
          '#f))))
