(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx13390_)
      (let* ((_e1339113398_ _stx13390_)
             (_E1339313402_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1339113398_)))
             (_E1339213416_
              (lambda ()
                (if (gx#stx-pair? _e1339113398_)
                    (let ((_e1339413406_ (gx#syntax-e _e1339113398_)))
                      (let ((_hd1339513409_ (##car _e1339413406_))
                            (_tl1339613411_ (##cdr _e1339413406_)))
                        (let ((_form13414_ _hd1339513409_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form13414_)
                               'compile-top-syntax
                               _stx13390_)
                              (_E1339313402_)))))
                    (_E1339313402_)))))
        (_E1339213416_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self13350_ _stx13351_)
      (let* ((_self1335213360_ _self13350_)
             (_E1335413364_
              (lambda () (error '"No clause matching" _self1335213360_)))
             (_K1335513376_
              (lambda (_K13367_)
                (let ((_$e13369_ (gx#stx-source _stx13351_)))
                  (if _$e13369_
                      ((lambda (_g1337113373_)
                         (gx#stx-wrap-source
                          (_K13367_ _stx13351_)
                          _g1337113373_))
                       _$e13369_)
                      (_K13367_ _stx13351_))))))
        (if (##structure-instance-of?
             _self1335213360_
             (##type-id gx#core-expander::t))
            (let* ((_e1335613379_ (##vector-ref _self1335213360_ '1))
                   (_e1335713382_ (##vector-ref _self1335213360_ '2))
                   (_e1335813385_ (##vector-ref _self1335213360_ '3))
                   (_K13388_ _e1335813385_))
              (_K1335513376_ _K13388_))
            (_E1335413364_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx13348_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx13348_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx13318_)
      (let* ((_e1331913326_ _stx13318_)
             (_E1332113330_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1331913326_)))
             (_E1332013344_
              (lambda ()
                (if (gx#stx-pair? _e1331913326_)
                    (let ((_e1332213334_ (gx#syntax-e _e1331913326_)))
                      (let ((_hd1332313337_ (##car _e1332213334_))
                            (_tl1332413339_ (##cdr _e1332213334_)))
                        (let ((_body13342_ _tl1332413339_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body13342_))
                              (_E1332113330_)))))
                    (_E1332113330_)))))
        (_E1332013344_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx13287_)
      (let* ((_e1328813295_ _stx13287_)
             (_E1329013299_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1328813295_)))
             (_E1328913314_
              (lambda ()
                (if (gx#stx-pair? _e1328813295_)
                    (let ((_e1329113303_ (gx#syntax-e _e1328813295_)))
                      (let ((_hd1329213306_ (##car _e1329113303_))
                            (_tl1329313308_ (##cdr _e1329113303_)))
                        (let ((_body13311_ _tl1329313308_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body13311_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1329013299_)))))
                    (_E1329013299_)))))
        (_E1328913314_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx13257_)
      (let* ((_e1325813265_ _stx13257_)
             (_E1326013269_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1325813265_)))
             (_E1325913283_
              (lambda ()
                (if (gx#stx-pair? _e1325813265_)
                    (let ((_e1326113273_ (gx#syntax-e _e1325813265_)))
                      (let ((_hd1326213276_ (##car _e1326113273_))
                            (_tl1326313278_ (##cdr _e1326113273_)))
                        (let ((_body13281_ _tl1326313278_))
                          (if '#t
                              (cons '%#begin-foreign _body13281_)
                              (_E1326013269_)))))
                    (_E1326013269_)))))
        (_E1325913283_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx13203_)
      (let* ((_e1320413217_ _stx13203_)
             (_E1320613221_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1320413217_)))
             (_E1320513253_
              (lambda ()
                (if (gx#stx-pair? _e1320413217_)
                    (let ((_e1320713225_ (gx#syntax-e _e1320413217_)))
                      (let ((_hd1320813228_ (##car _e1320713225_))
                            (_tl1320913230_ (##cdr _e1320713225_)))
                        (if (gx#stx-pair? _tl1320913230_)
                            (let ((_e1321013233_ (gx#syntax-e _tl1320913230_)))
                              (let ((_hd1321113236_ (##car _e1321013233_))
                                    (_tl1321213238_ (##cdr _e1321013233_)))
                                (let ((_ann13241_ _hd1321113236_))
                                  (if (gx#stx-pair? _tl1321213238_)
                                      (let ((_e1321313243_
                                             (gx#syntax-e _tl1321213238_)))
                                        (let ((_hd1321413246_
                                               (##car _e1321313243_))
                                              (_tl1321513248_
                                               (##cdr _e1321313243_)))
                                          (let ((_expr13251_ _hd1321413246_))
                                            (if (gx#stx-null? _tl1321513248_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr13251_)
                                                    (_E1320613221_))
                                                (_E1320613221_)))))
                                      (_E1320613221_)))))
                            (_E1320613221_))))
                    (_E1320613221_)))))
        (_E1320513253_))))
  (define gx#core-compile-top-import%
    (lambda (_stx13173_)
      (let* ((_e1317413181_ _stx13173_)
             (_E1317613185_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1317413181_)))
             (_E1317513199_
              (lambda ()
                (if (gx#stx-pair? _e1317413181_)
                    (let ((_e1317713189_ (gx#syntax-e _e1317413181_)))
                      (let ((_hd1317813192_ (##car _e1317713189_))
                            (_tl1317913194_ (##cdr _e1317713189_)))
                        (let ((_body13197_ _tl1317913194_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body13197_))
                              (_E1317613185_)))))
                    (_E1317613185_)))))
        (_E1317513199_))))
  (define gx#core-compile-top-module%
    (lambda (_stx13130_)
      (let* ((_e1313113141_ _stx13130_)
             (_E1313313145_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1313113141_)))
             (_E1313213169_
              (lambda ()
                (if (gx#stx-pair? _e1313113141_)
                    (let ((_e1313413149_ (gx#syntax-e _e1313113141_)))
                      (let ((_hd1313513152_ (##car _e1313413149_))
                            (_tl1313613154_ (##cdr _e1313413149_)))
                        (if (gx#stx-pair? _tl1313613154_)
                            (let ((_e1313713157_ (gx#syntax-e _tl1313613154_)))
                              (let ((_hd1313813160_ (##car _e1313713157_))
                                    (_tl1313913162_ (##cdr _e1313713157_)))
                                (let* ((_hd13165_ _hd1313813160_)
                                       (_body13167_ _tl1313913162_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd13165_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body13167_))
                                      (_E1313313145_)))))
                            (_E1313313145_))))
                    (_E1313313145_)))))
        (_E1313213169_))))
  (define gx#core-compile-top-export%
    (lambda (_stx13100_)
      (let* ((_e1310113108_ _stx13100_)
             (_E1310313112_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1310113108_)))
             (_E1310213126_
              (lambda ()
                (if (gx#stx-pair? _e1310113108_)
                    (let ((_e1310413116_ (gx#syntax-e _e1310113108_)))
                      (let ((_hd1310513119_ (##car _e1310413116_))
                            (_tl1310613121_ (##cdr _e1310413116_)))
                        (let ((_body13124_ _tl1310613121_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body13124_))
                              (_E1310313112_)))))
                    (_E1310313112_)))))
        (_E1310213126_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx13070_)
      (let* ((_e1307113078_ _stx13070_)
             (_E1307313082_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1307113078_)))
             (_E1307213096_
              (lambda ()
                (if (gx#stx-pair? _e1307113078_)
                    (let ((_e1307413086_ (gx#syntax-e _e1307113078_)))
                      (let ((_hd1307513089_ (##car _e1307413086_))
                            (_tl1307613091_ (##cdr _e1307413086_)))
                        (let ((_body13094_ _tl1307613091_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body13094_))
                              (_E1307313082_)))))
                    (_E1307313082_)))))
        (_E1307213096_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12995_)
      (letrec ((_generate12997_
                (lambda (_hd13027_)
                  (let* ((_e1302813038_ _hd13027_)
                         (_E1303013042_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1302813038_)))
                         (_E1302913066_
                          (lambda ()
                            (if (gx#stx-pair? _e1302813038_)
                                (let ((_e1303113046_
                                       (gx#syntax-e _e1302813038_)))
                                  (let ((_hd1303213049_ (##car _e1303113046_))
                                        (_tl1303313051_ (##cdr _e1303113046_)))
                                    (let ((_id13054_ _hd1303213049_))
                                      (if (gx#stx-pair? _tl1303313051_)
                                          (let ((_e1303413056_
                                                 (gx#syntax-e _tl1303313051_)))
                                            (let ((_hd1303513059_
                                                   (##car _e1303413056_))
                                                  (_tl1303613061_
                                                   (##cdr _e1303413056_)))
                                              (let ((_eid13064_
                                                     _hd1303513059_))
                                                (if (gx#stx-null?
                                                     _tl1303613061_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id13054_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid13064_)
                            '()))
                (_E1303013042_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1303013042_)))))
                                          (_E1303013042_)))))
                                (_E1303013042_)))))
                    (_E1302913066_)))))
        (let* ((_e1299813005_ _stx12995_)
               (_E1300013009_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1299813005_)))
               (_E1299913023_
                (lambda ()
                  (if (gx#stx-pair? _e1299813005_)
                      (let ((_e1300113013_ (gx#syntax-e _e1299813005_)))
                        (let ((_hd1300213016_ (##car _e1300113013_))
                              (_tl1300313018_ (##cdr _e1300113013_)))
                          (let ((_body13021_ _tl1300313018_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12997_
                                       _body13021_))
                                (_E1300013009_)))))
                      (_E1300013009_)))))
          (_E1299913023_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12941_)
      (let* ((_e1294212955_ _stx12941_)
             (_E1294412959_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1294212955_)))
             (_E1294312991_
              (lambda ()
                (if (gx#stx-pair? _e1294212955_)
                    (let ((_e1294512963_ (gx#syntax-e _e1294212955_)))
                      (let ((_hd1294612966_ (##car _e1294512963_))
                            (_tl1294712968_ (##cdr _e1294512963_)))
                        (if (gx#stx-pair? _tl1294712968_)
                            (let ((_e1294812971_ (gx#syntax-e _tl1294712968_)))
                              (let ((_hd1294912974_ (##car _e1294812971_))
                                    (_tl1295012976_ (##cdr _e1294812971_)))
                                (let ((_hd12979_ _hd1294912974_))
                                  (if (gx#stx-pair? _tl1295012976_)
                                      (let ((_e1295112981_
                                             (gx#syntax-e _tl1295012976_)))
                                        (let ((_hd1295212984_
                                               (##car _e1295112981_))
                                              (_tl1295312986_
                                               (##cdr _e1295112981_)))
                                          (let ((_expr12989_ _hd1295212984_))
                                            (if (gx#stx-null? _tl1295312986_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12979_)
                        (cons (gx#core-compile-top-syntax _expr12989_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1294412959_))
                                                (_E1294412959_)))))
                                      (_E1294412959_)))))
                            (_E1294412959_))))
                    (_E1294412959_)))))
        (_E1294312991_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12886_)
      (let* ((_e1288712900_ _stx12886_)
             (_E1288912904_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1288712900_)))
             (_E1288812937_
              (lambda ()
                (if (gx#stx-pair? _e1288712900_)
                    (let ((_e1289012908_ (gx#syntax-e _e1288712900_)))
                      (let ((_hd1289112911_ (##car _e1289012908_))
                            (_tl1289212913_ (##cdr _e1289012908_)))
                        (if (gx#stx-pair? _tl1289212913_)
                            (let ((_e1289312916_ (gx#syntax-e _tl1289212913_)))
                              (let ((_hd1289412919_ (##car _e1289312916_))
                                    (_tl1289512921_ (##cdr _e1289312916_)))
                                (let ((_hd12924_ _hd1289412919_))
                                  (if (gx#stx-pair? _tl1289512921_)
                                      (let ((_e1289612926_
                                             (gx#syntax-e _tl1289512921_)))
                                        (let ((_hd1289712929_
                                               (##car _e1289612926_))
                                              (_tl1289812931_
                                               (##cdr _e1289612926_)))
                                          (let ((_expr12934_ _hd1289712929_))
                                            (if (gx#stx-null? _tl1289812931_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12924_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12934_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1288912904_))
                                                (_E1288912904_)))))
                                      (_E1288912904_)))))
                            (_E1288912904_))))
                    (_E1288912904_)))))
        (_E1288812937_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12832_)
      (let* ((_e1283312846_ _stx12832_)
             (_E1283512850_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1283312846_)))
             (_E1283412882_
              (lambda ()
                (if (gx#stx-pair? _e1283312846_)
                    (let ((_e1283612854_ (gx#syntax-e _e1283312846_)))
                      (let ((_hd1283712857_ (##car _e1283612854_))
                            (_tl1283812859_ (##cdr _e1283612854_)))
                        (if (gx#stx-pair? _tl1283812859_)
                            (let ((_e1283912862_ (gx#syntax-e _tl1283812859_)))
                              (let ((_hd1284012865_ (##car _e1283912862_))
                                    (_tl1284112867_ (##cdr _e1283912862_)))
                                (let ((_hd12870_ _hd1284012865_))
                                  (if (gx#stx-pair? _tl1284112867_)
                                      (let ((_e1284212872_
                                             (gx#syntax-e _tl1284112867_)))
                                        (let ((_hd1284312875_
                                               (##car _e1284212872_))
                                              (_tl1284412877_
                                               (##cdr _e1284212872_)))
                                          (let ((_alias-id12880_
                                                 _hd1284312875_))
                                            (if (gx#stx-null? _tl1284412877_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12870_)
                        (cons (gx#core-quote-syntax__0 _alias-id12880_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1283512850_))
                                                (_E1283512850_)))))
                                      (_E1283512850_)))))
                            (_E1283512850_))))
                    (_E1283512850_)))))
        (_E1283412882_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12778_)
      (let* ((_e1277912792_ _stx12778_)
             (_E1278112796_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1277912792_)))
             (_E1278012828_
              (lambda ()
                (if (gx#stx-pair? _e1277912792_)
                    (let ((_e1278212800_ (gx#syntax-e _e1277912792_)))
                      (let ((_hd1278312803_ (##car _e1278212800_))
                            (_tl1278412805_ (##cdr _e1278212800_)))
                        (if (gx#stx-pair? _tl1278412805_)
                            (let ((_e1278512808_ (gx#syntax-e _tl1278412805_)))
                              (let ((_hd1278612811_ (##car _e1278512808_))
                                    (_tl1278712813_ (##cdr _e1278512808_)))
                                (let ((_id12816_ _hd1278612811_))
                                  (if (gx#stx-pair? _tl1278712813_)
                                      (let ((_e1278812818_
                                             (gx#syntax-e _tl1278712813_)))
                                        (let ((_hd1278912821_
                                               (##car _e1278812818_))
                                              (_tl1279012823_
                                               (##cdr _e1278812818_)))
                                          (let ((_binding-id12826_
                                                 _hd1278912821_))
                                            (if (gx#stx-null? _tl1279012823_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12816_)
                        (cons (gx#core-quote-syntax__0 _binding-id12826_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1278112796_))
                                                (_E1278112796_)))))
                                      (_E1278112796_)))))
                            (_E1278112796_))))
                    (_E1278112796_)))))
        (_E1278012828_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12748_)
      (let* ((_e1274912756_ _stx12748_)
             (_E1275112760_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1274912756_)))
             (_E1275012774_
              (lambda ()
                (if (gx#stx-pair? _e1274912756_)
                    (let ((_e1275212764_ (gx#syntax-e _e1274912756_)))
                      (let ((_hd1275312767_ (##car _e1275212764_))
                            (_tl1275412769_ (##cdr _e1275212764_)))
                        (let ((_decls12772_ _tl1275412769_))
                          (if '#t
                              (cons '%#declare _decls12772_)
                              (_E1275112760_)))))
                    (_E1275112760_)))))
        (_E1275012774_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12718_)
      (let* ((_e1271912726_ _stx12718_)
             (_E1272112730_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1271912726_)))
             (_E1272012744_
              (lambda ()
                (if (gx#stx-pair? _e1271912726_)
                    (let ((_e1272212734_ (gx#syntax-e _e1271912726_)))
                      (let ((_hd1272312737_ (##car _e1272212734_))
                            (_tl1272412739_ (##cdr _e1272212734_)))
                        (let ((_clause12742_ _tl1272412739_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12742_))
                              (_E1272112730_)))))
                    (_E1272112730_)))))
        (_E1272012744_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12675_)
      (let* ((_e1267612686_ _stx12675_)
             (_E1267812690_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1267612686_)))
             (_E1267712714_
              (lambda ()
                (if (gx#stx-pair? _e1267612686_)
                    (let ((_e1267912694_ (gx#syntax-e _e1267612686_)))
                      (let ((_hd1268012697_ (##car _e1267912694_))
                            (_tl1268112699_ (##cdr _e1267912694_)))
                        (let ((_hd12702_ _hd1268012697_))
                          (if (gx#stx-pair? _tl1268112699_)
                              (let ((_e1268212704_
                                     (gx#syntax-e _tl1268112699_)))
                                (let ((_hd1268312707_ (##car _e1268212704_))
                                      (_tl1268412709_ (##cdr _e1268212704_)))
                                  (let ((_body12712_ _hd1268312707_))
                                    (if (gx#stx-null? _tl1268412709_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12702_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12712_)
                                                        '()))
                                            (_E1267812690_))
                                        (_E1267812690_)))))
                              (_E1267812690_)))))
                    (_E1267812690_)))))
        (_E1267712714_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12645_)
      (let* ((_e1264612653_ _stx12645_)
             (_E1264812657_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1264612653_)))
             (_E1264712671_
              (lambda ()
                (if (gx#stx-pair? _e1264612653_)
                    (let ((_e1264912661_ (gx#syntax-e _e1264612653_)))
                      (let ((_hd1265012664_ (##car _e1264912661_))
                            (_tl1265112666_ (##cdr _e1264912661_)))
                        (let ((_clauses12669_ _tl1265112666_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12669_))
                              (_E1264812657_)))))
                    (_E1264812657_)))))
        (_E1264712671_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda12578
      (lambda (_stx12580_ _form12581_)
        (let* ((_e1258212595_ _stx12580_)
               (_E1258412599_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1258212595_)))
               (_E1258312631_
                (lambda ()
                  (if (gx#stx-pair? _e1258212595_)
                      (let ((_e1258512603_ (gx#syntax-e _e1258212595_)))
                        (let ((_hd1258612606_ (##car _e1258512603_))
                              (_tl1258712608_ (##cdr _e1258512603_)))
                          (if (gx#stx-pair? _tl1258712608_)
                              (let ((_e1258812611_
                                     (gx#syntax-e _tl1258712608_)))
                                (let ((_hd1258912614_ (##car _e1258812611_))
                                      (_tl1259012616_ (##cdr _e1258812611_)))
                                  (let ((_hd12619_ _hd1258912614_))
                                    (if (gx#stx-pair? _tl1259012616_)
                                        (let ((_e1259112621_
                                               (gx#syntax-e _tl1259012616_)))
                                          (let ((_hd1259212624_
                                                 (##car _e1259112621_))
                                                (_tl1259312626_
                                                 (##cdr _e1259112621_)))
                                            (let ((_body12629_ _hd1259212624_))
                                              (if (gx#stx-null? _tl1259312626_)
                                                  (if '#t
                                                      (cons _form12581_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd12619_)
                          (cons (gx#core-compile-top-syntax _body12629_) '())))
              (_E1258412599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1258412599_)))))
                                        (_E1258412599_)))))
                              (_E1258412599_))))
                      (_E1258412599_)))))
          (_E1258312631_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12638_)
          (let ((_form12640_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda12578
             _stx12638_
             _form12640_))))
      (define gx#core-compile-top-let-values%
        (lambda _g13420_
          (let ((_g13419_ (length _g13420_)))
            (cond ((fx= _g13419_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g13420_))
                  ((fx= _g13419_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda12578
                          _g13420_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g13420_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx12577_)
      (gx#core-compile-top-let-values%__opt-lambda12578
       _stx12577_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx12575_)
      (gx#core-compile-top-let-values%__opt-lambda12578
       _stx12575_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx12534_)
      (let* ((_e1253512545_ _stx12534_)
             (_E1253712549_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1253512545_)))
             (_E1253612571_
              (lambda ()
                (if (gx#stx-pair? _e1253512545_)
                    (let ((_e1253812553_ (gx#syntax-e _e1253512545_)))
                      (let ((_hd1253912556_ (##car _e1253812553_))
                            (_tl1254012558_ (##cdr _e1253812553_)))
                        (if (gx#stx-pair? _tl1254012558_)
                            (let ((_e1254112561_ (gx#syntax-e _tl1254012558_)))
                              (let ((_hd1254212564_ (##car _e1254112561_))
                                    (_tl1254312566_ (##cdr _e1254112561_)))
                                (let ((_e12569_ _hd1254212564_))
                                  (if (gx#stx-null? _tl1254312566_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e12569_)
                                                      '()))
                                          (_E1253712549_))
                                      (_E1253712549_)))))
                            (_E1253712549_))))
                    (_E1253712549_)))))
        (_E1253612571_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx12493_)
      (let* ((_e1249412504_ _stx12493_)
             (_E1249612508_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1249412504_)))
             (_E1249512530_
              (lambda ()
                (if (gx#stx-pair? _e1249412504_)
                    (let ((_e1249712512_ (gx#syntax-e _e1249412504_)))
                      (let ((_hd1249812515_ (##car _e1249712512_))
                            (_tl1249912517_ (##cdr _e1249712512_)))
                        (if (gx#stx-pair? _tl1249912517_)
                            (let ((_e1250012520_ (gx#syntax-e _tl1249912517_)))
                              (let ((_hd1250112523_ (##car _e1250012520_))
                                    (_tl1250212525_ (##cdr _e1250012520_)))
                                (let ((_e12528_ _hd1250112523_))
                                  (if (gx#stx-null? _tl1250212525_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e12528_)
                                                      '()))
                                          (_E1249612508_))
                                      (_E1249612508_)))))
                            (_E1249612508_))))
                    (_E1249612508_)))))
        (_E1249512530_))))
  (define gx#core-compile-top-call%
    (lambda (_stx12450_)
      (let* ((_e1245112461_ _stx12450_)
             (_E1245312465_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1245112461_)))
             (_E1245212489_
              (lambda ()
                (if (gx#stx-pair? _e1245112461_)
                    (let ((_e1245412469_ (gx#syntax-e _e1245112461_)))
                      (let ((_hd1245512472_ (##car _e1245412469_))
                            (_tl1245612474_ (##cdr _e1245412469_)))
                        (if (gx#stx-pair? _tl1245612474_)
                            (let ((_e1245712477_ (gx#syntax-e _tl1245612474_)))
                              (let ((_hd1245812480_ (##car _e1245712477_))
                                    (_tl1245912482_ (##cdr _e1245712477_)))
                                (let* ((_rator12485_ _hd1245812480_)
                                       (_args12487_ _tl1245912482_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator12485_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args12487_))
                                      (_E1245312465_)))))
                            (_E1245312465_))))
                    (_E1245312465_)))))
        (_E1245212489_))))
  (define gx#core-compile-top-if%
    (lambda (_stx12383_)
      (let* ((_e1238412400_ _stx12383_)
             (_E1238612404_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1238412400_)))
             (_E1238512446_
              (lambda ()
                (if (gx#stx-pair? _e1238412400_)
                    (let ((_e1238712408_ (gx#syntax-e _e1238412400_)))
                      (let ((_hd1238812411_ (##car _e1238712408_))
                            (_tl1238912413_ (##cdr _e1238712408_)))
                        (if (gx#stx-pair? _tl1238912413_)
                            (let ((_e1239012416_ (gx#syntax-e _tl1238912413_)))
                              (let ((_hd1239112419_ (##car _e1239012416_))
                                    (_tl1239212421_ (##cdr _e1239012416_)))
                                (let ((_test12424_ _hd1239112419_))
                                  (if (gx#stx-pair? _tl1239212421_)
                                      (let ((_e1239312426_
                                             (gx#syntax-e _tl1239212421_)))
                                        (let ((_hd1239412429_
                                               (##car _e1239312426_))
                                              (_tl1239512431_
                                               (##cdr _e1239312426_)))
                                          (let ((_K12434_ _hd1239412429_))
                                            (if (gx#stx-pair? _tl1239512431_)
                                                (let ((_e1239612436_
                                                       (gx#syntax-e
                                                        _tl1239512431_)))
                                                  (let ((_hd1239712439_
                                                         (##car _e1239612436_))
                                                        (_tl1239812441_
                                                         (##cdr _e1239612436_)))
                                                    (let ((_E12444_
                                                           _hd1239712439_))
                                                      (if (gx#stx-null?
                                                           _tl1239812441_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test12424_)
                                  (cons (gx#core-compile-top-syntax _K12434_)
                                        (cons (gx#core-compile-top-syntax
                                               _E12444_)
                                              '()))))
                      (_E1238612404_))
                  (_E1238612404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1238612404_)))))
                                      (_E1238612404_)))))
                            (_E1238612404_))))
                    (_E1238612404_)))))
        (_E1238512446_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx12342_)
      (let* ((_e1234312353_ _stx12342_)
             (_E1234512357_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1234312353_)))
             (_E1234412379_
              (lambda ()
                (if (gx#stx-pair? _e1234312353_)
                    (let ((_e1234612361_ (gx#syntax-e _e1234312353_)))
                      (let ((_hd1234712364_ (##car _e1234612361_))
                            (_tl1234812366_ (##cdr _e1234612361_)))
                        (if (gx#stx-pair? _tl1234812366_)
                            (let ((_e1234912369_ (gx#syntax-e _tl1234812366_)))
                              (let ((_hd1235012372_ (##car _e1234912369_))
                                    (_tl1235112374_ (##cdr _e1234912369_)))
                                (let ((_id12377_ _hd1235012372_))
                                  (if (gx#stx-null? _tl1235112374_)
                                      (if (gx#identifier? _id12377_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id12377_)
                                                      '()))
                                          (_E1234512357_))
                                      (_E1234512357_)))))
                            (_E1234512357_))))
                    (_E1234512357_)))))
        (_E1234412379_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx12288_)
      (let* ((_e1228912302_ _stx12288_)
             (_E1229112306_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1228912302_)))
             (_E1229012338_
              (lambda ()
                (if (gx#stx-pair? _e1228912302_)
                    (let ((_e1229212310_ (gx#syntax-e _e1228912302_)))
                      (let ((_hd1229312313_ (##car _e1229212310_))
                            (_tl1229412315_ (##cdr _e1229212310_)))
                        (if (gx#stx-pair? _tl1229412315_)
                            (let ((_e1229512318_ (gx#syntax-e _tl1229412315_)))
                              (let ((_hd1229612321_ (##car _e1229512318_))
                                    (_tl1229712323_ (##cdr _e1229512318_)))
                                (let ((_id12326_ _hd1229612321_))
                                  (if (gx#stx-pair? _tl1229712323_)
                                      (let ((_e1229812328_
                                             (gx#syntax-e _tl1229712323_)))
                                        (let ((_hd1229912331_
                                               (##car _e1229812328_))
                                              (_tl1230012333_
                                               (##cdr _e1229812328_)))
                                          (let ((_expr12336_ _hd1229912331_))
                                            (if (gx#stx-null? _tl1230012333_)
                                                (if (gx#identifier? _id12326_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12326_)
                        (cons (gx#core-compile-top-syntax _expr12336_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1229112306_))
                                                (_E1229112306_)))))
                                      (_E1229112306_)))))
                            (_E1229112306_))))
                    (_E1229112306_)))))
        (_E1229012338_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id12283_)
      (let ((_$e12285_ (gx#resolve-identifier__0 _id12283_)))
        (if _$e12285_
            (##structure-ref _$e12285_ '1 gx#binding::t '#f)
            _id12283_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd12281_)
      (if (gx#identifier? _hd12281_)
          (gx#core-compile-top-runtime-ref _hd12281_)
          '#f))))
