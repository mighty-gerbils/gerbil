(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx13333_)
      (let* ((_e1333413341_ _stx13333_)
             (_E1333613345_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1333413341_)))
             (_E1333513359_
              (lambda ()
                (if (gx#stx-pair? _e1333413341_)
                    (let ((_e1333713349_ (gx#syntax-e _e1333413341_)))
                      (let ((_hd1333813352_ (##car _e1333713349_))
                            (_tl1333913354_ (##cdr _e1333713349_)))
                        (let ((_form13357_ _hd1333813352_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form13357_)
                               'compile-top-syntax
                               _stx13333_)
                              (_E1333613345_)))))
                    (_E1333613345_)))))
        (_E1333513359_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self13293_ _stx13294_)
      (let* ((_self1329513303_ _self13293_)
             (_E1329713307_
              (lambda () (error '"No clause matching" _self1329513303_)))
             (_K1329813319_
              (lambda (_K13310_)
                (let ((_$e13312_ (gx#stx-source _stx13294_)))
                  (if _$e13312_
                      ((lambda (_g1331413316_)
                         (gx#stx-wrap-source
                          (_K13310_ _stx13294_)
                          _g1331413316_))
                       _$e13312_)
                      (_K13310_ _stx13294_))))))
        (if (##structure-instance-of?
             _self1329513303_
             (##type-id gx#core-expander::t))
            (let* ((_e1329913322_ (##vector-ref _self1329513303_ '1))
                   (_e1330013325_ (##vector-ref _self1329513303_ '2))
                   (_e1330113328_ (##vector-ref _self1329513303_ '3))
                   (_K13331_ _e1330113328_))
              (_K1329813319_ _K13331_))
            (_E1329713307_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx13291_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx13291_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx13261_)
      (let* ((_e1326213269_ _stx13261_)
             (_E1326413273_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1326213269_)))
             (_E1326313287_
              (lambda ()
                (if (gx#stx-pair? _e1326213269_)
                    (let ((_e1326513277_ (gx#syntax-e _e1326213269_)))
                      (let ((_hd1326613280_ (##car _e1326513277_))
                            (_tl1326713282_ (##cdr _e1326513277_)))
                        (let ((_body13285_ _tl1326713282_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body13285_))
                              (_E1326413273_)))))
                    (_E1326413273_)))))
        (_E1326313287_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx13230_)
      (let* ((_e1323113238_ _stx13230_)
             (_E1323313242_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1323113238_)))
             (_E1323213257_
              (lambda ()
                (if (gx#stx-pair? _e1323113238_)
                    (let ((_e1323413246_ (gx#syntax-e _e1323113238_)))
                      (let ((_hd1323513249_ (##car _e1323413246_))
                            (_tl1323613251_ (##cdr _e1323413246_)))
                        (let ((_body13254_ _tl1323613251_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body13254_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1323313242_)))))
                    (_E1323313242_)))))
        (_E1323213257_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx13200_)
      (let* ((_e1320113208_ _stx13200_)
             (_E1320313212_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1320113208_)))
             (_E1320213226_
              (lambda ()
                (if (gx#stx-pair? _e1320113208_)
                    (let ((_e1320413216_ (gx#syntax-e _e1320113208_)))
                      (let ((_hd1320513219_ (##car _e1320413216_))
                            (_tl1320613221_ (##cdr _e1320413216_)))
                        (let ((_body13224_ _tl1320613221_))
                          (if '#t
                              (cons '%#begin-foreign _body13224_)
                              (_E1320313212_)))))
                    (_E1320313212_)))))
        (_E1320213226_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx13146_)
      (let* ((_e1314713160_ _stx13146_)
             (_E1314913164_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1314713160_)))
             (_E1314813196_
              (lambda ()
                (if (gx#stx-pair? _e1314713160_)
                    (let ((_e1315013168_ (gx#syntax-e _e1314713160_)))
                      (let ((_hd1315113171_ (##car _e1315013168_))
                            (_tl1315213173_ (##cdr _e1315013168_)))
                        (if (gx#stx-pair? _tl1315213173_)
                            (let ((_e1315313176_ (gx#syntax-e _tl1315213173_)))
                              (let ((_hd1315413179_ (##car _e1315313176_))
                                    (_tl1315513181_ (##cdr _e1315313176_)))
                                (let ((_ann13184_ _hd1315413179_))
                                  (if (gx#stx-pair? _tl1315513181_)
                                      (let ((_e1315613186_
                                             (gx#syntax-e _tl1315513181_)))
                                        (let ((_hd1315713189_
                                               (##car _e1315613186_))
                                              (_tl1315813191_
                                               (##cdr _e1315613186_)))
                                          (let ((_expr13194_ _hd1315713189_))
                                            (if (gx#stx-null? _tl1315813191_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr13194_)
                                                    (_E1314913164_))
                                                (_E1314913164_)))))
                                      (_E1314913164_)))))
                            (_E1314913164_))))
                    (_E1314913164_)))))
        (_E1314813196_))))
  (define gx#core-compile-top-import%
    (lambda (_stx13116_)
      (let* ((_e1311713124_ _stx13116_)
             (_E1311913128_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1311713124_)))
             (_E1311813142_
              (lambda ()
                (if (gx#stx-pair? _e1311713124_)
                    (let ((_e1312013132_ (gx#syntax-e _e1311713124_)))
                      (let ((_hd1312113135_ (##car _e1312013132_))
                            (_tl1312213137_ (##cdr _e1312013132_)))
                        (let ((_body13140_ _tl1312213137_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body13140_))
                              (_E1311913128_)))))
                    (_E1311913128_)))))
        (_E1311813142_))))
  (define gx#core-compile-top-module%
    (lambda (_stx13073_)
      (let* ((_e1307413084_ _stx13073_)
             (_E1307613088_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1307413084_)))
             (_E1307513112_
              (lambda ()
                (if (gx#stx-pair? _e1307413084_)
                    (let ((_e1307713092_ (gx#syntax-e _e1307413084_)))
                      (let ((_hd1307813095_ (##car _e1307713092_))
                            (_tl1307913097_ (##cdr _e1307713092_)))
                        (if (gx#stx-pair? _tl1307913097_)
                            (let ((_e1308013100_ (gx#syntax-e _tl1307913097_)))
                              (let ((_hd1308113103_ (##car _e1308013100_))
                                    (_tl1308213105_ (##cdr _e1308013100_)))
                                (let* ((_hd13108_ _hd1308113103_)
                                       (_body13110_ _tl1308213105_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd13108_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body13110_))
                                      (_E1307613088_)))))
                            (_E1307613088_))))
                    (_E1307613088_)))))
        (_E1307513112_))))
  (define gx#core-compile-top-export%
    (lambda (_stx13043_)
      (let* ((_e1304413051_ _stx13043_)
             (_E1304613055_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1304413051_)))
             (_E1304513069_
              (lambda ()
                (if (gx#stx-pair? _e1304413051_)
                    (let ((_e1304713059_ (gx#syntax-e _e1304413051_)))
                      (let ((_hd1304813062_ (##car _e1304713059_))
                            (_tl1304913064_ (##cdr _e1304713059_)))
                        (let ((_body13067_ _tl1304913064_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body13067_))
                              (_E1304613055_)))))
                    (_E1304613055_)))))
        (_E1304513069_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx13013_)
      (let* ((_e1301413021_ _stx13013_)
             (_E1301613025_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1301413021_)))
             (_E1301513039_
              (lambda ()
                (if (gx#stx-pair? _e1301413021_)
                    (let ((_e1301713029_ (gx#syntax-e _e1301413021_)))
                      (let ((_hd1301813032_ (##car _e1301713029_))
                            (_tl1301913034_ (##cdr _e1301713029_)))
                        (let ((_body13037_ _tl1301913034_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body13037_))
                              (_E1301613025_)))))
                    (_E1301613025_)))))
        (_E1301513039_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12938_)
      (letrec ((_generate12940_
                (lambda (_hd12970_)
                  (let* ((_e1297112981_ _hd12970_)
                         (_E1297312985_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1297112981_)))
                         (_E1297213009_
                          (lambda ()
                            (if (gx#stx-pair? _e1297112981_)
                                (let ((_e1297412989_
                                       (gx#syntax-e _e1297112981_)))
                                  (let ((_hd1297512992_ (##car _e1297412989_))
                                        (_tl1297612994_ (##cdr _e1297412989_)))
                                    (let ((_id12997_ _hd1297512992_))
                                      (if (gx#stx-pair? _tl1297612994_)
                                          (let ((_e1297712999_
                                                 (gx#syntax-e _tl1297612994_)))
                                            (let ((_hd1297813002_
                                                   (##car _e1297712999_))
                                                  (_tl1297913004_
                                                   (##cdr _e1297712999_)))
                                              (let ((_eid13007_
                                                     _hd1297813002_))
                                                (if (gx#stx-null?
                                                     _tl1297913004_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12997_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid13007_)
                            '()))
                (_E1297312985_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1297312985_)))))
                                          (_E1297312985_)))))
                                (_E1297312985_)))))
                    (_E1297213009_)))))
        (let* ((_e1294112948_ _stx12938_)
               (_E1294312952_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1294112948_)))
               (_E1294212966_
                (lambda ()
                  (if (gx#stx-pair? _e1294112948_)
                      (let ((_e1294412956_ (gx#syntax-e _e1294112948_)))
                        (let ((_hd1294512959_ (##car _e1294412956_))
                              (_tl1294612961_ (##cdr _e1294412956_)))
                          (let ((_body12964_ _tl1294612961_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12940_
                                       _body12964_))
                                (_E1294312952_)))))
                      (_E1294312952_)))))
          (_E1294212966_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12884_)
      (let* ((_e1288512898_ _stx12884_)
             (_E1288712902_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1288512898_)))
             (_E1288612934_
              (lambda ()
                (if (gx#stx-pair? _e1288512898_)
                    (let ((_e1288812906_ (gx#syntax-e _e1288512898_)))
                      (let ((_hd1288912909_ (##car _e1288812906_))
                            (_tl1289012911_ (##cdr _e1288812906_)))
                        (if (gx#stx-pair? _tl1289012911_)
                            (let ((_e1289112914_ (gx#syntax-e _tl1289012911_)))
                              (let ((_hd1289212917_ (##car _e1289112914_))
                                    (_tl1289312919_ (##cdr _e1289112914_)))
                                (let ((_hd12922_ _hd1289212917_))
                                  (if (gx#stx-pair? _tl1289312919_)
                                      (let ((_e1289412924_
                                             (gx#syntax-e _tl1289312919_)))
                                        (let ((_hd1289512927_
                                               (##car _e1289412924_))
                                              (_tl1289612929_
                                               (##cdr _e1289412924_)))
                                          (let ((_expr12932_ _hd1289512927_))
                                            (if (gx#stx-null? _tl1289612929_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12922_)
                        (cons (gx#core-compile-top-syntax _expr12932_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1288712902_))
                                                (_E1288712902_)))))
                                      (_E1288712902_)))))
                            (_E1288712902_))))
                    (_E1288712902_)))))
        (_E1288612934_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12829_)
      (let* ((_e1283012843_ _stx12829_)
             (_E1283212847_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1283012843_)))
             (_E1283112880_
              (lambda ()
                (if (gx#stx-pair? _e1283012843_)
                    (let ((_e1283312851_ (gx#syntax-e _e1283012843_)))
                      (let ((_hd1283412854_ (##car _e1283312851_))
                            (_tl1283512856_ (##cdr _e1283312851_)))
                        (if (gx#stx-pair? _tl1283512856_)
                            (let ((_e1283612859_ (gx#syntax-e _tl1283512856_)))
                              (let ((_hd1283712862_ (##car _e1283612859_))
                                    (_tl1283812864_ (##cdr _e1283612859_)))
                                (let ((_hd12867_ _hd1283712862_))
                                  (if (gx#stx-pair? _tl1283812864_)
                                      (let ((_e1283912869_
                                             (gx#syntax-e _tl1283812864_)))
                                        (let ((_hd1284012872_
                                               (##car _e1283912869_))
                                              (_tl1284112874_
                                               (##cdr _e1283912869_)))
                                          (let ((_expr12877_ _hd1284012872_))
                                            (if (gx#stx-null? _tl1284112874_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12867_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12877_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1283212847_))
                                                (_E1283212847_)))))
                                      (_E1283212847_)))))
                            (_E1283212847_))))
                    (_E1283212847_)))))
        (_E1283112880_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12775_)
      (let* ((_e1277612789_ _stx12775_)
             (_E1277812793_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1277612789_)))
             (_E1277712825_
              (lambda ()
                (if (gx#stx-pair? _e1277612789_)
                    (let ((_e1277912797_ (gx#syntax-e _e1277612789_)))
                      (let ((_hd1278012800_ (##car _e1277912797_))
                            (_tl1278112802_ (##cdr _e1277912797_)))
                        (if (gx#stx-pair? _tl1278112802_)
                            (let ((_e1278212805_ (gx#syntax-e _tl1278112802_)))
                              (let ((_hd1278312808_ (##car _e1278212805_))
                                    (_tl1278412810_ (##cdr _e1278212805_)))
                                (let ((_hd12813_ _hd1278312808_))
                                  (if (gx#stx-pair? _tl1278412810_)
                                      (let ((_e1278512815_
                                             (gx#syntax-e _tl1278412810_)))
                                        (let ((_hd1278612818_
                                               (##car _e1278512815_))
                                              (_tl1278712820_
                                               (##cdr _e1278512815_)))
                                          (let ((_alias-id12823_
                                                 _hd1278612818_))
                                            (if (gx#stx-null? _tl1278712820_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12813_)
                        (cons (gx#core-quote-syntax__0 _alias-id12823_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1277812793_))
                                                (_E1277812793_)))))
                                      (_E1277812793_)))))
                            (_E1277812793_))))
                    (_E1277812793_)))))
        (_E1277712825_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12721_)
      (let* ((_e1272212735_ _stx12721_)
             (_E1272412739_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1272212735_)))
             (_E1272312771_
              (lambda ()
                (if (gx#stx-pair? _e1272212735_)
                    (let ((_e1272512743_ (gx#syntax-e _e1272212735_)))
                      (let ((_hd1272612746_ (##car _e1272512743_))
                            (_tl1272712748_ (##cdr _e1272512743_)))
                        (if (gx#stx-pair? _tl1272712748_)
                            (let ((_e1272812751_ (gx#syntax-e _tl1272712748_)))
                              (let ((_hd1272912754_ (##car _e1272812751_))
                                    (_tl1273012756_ (##cdr _e1272812751_)))
                                (let ((_id12759_ _hd1272912754_))
                                  (if (gx#stx-pair? _tl1273012756_)
                                      (let ((_e1273112761_
                                             (gx#syntax-e _tl1273012756_)))
                                        (let ((_hd1273212764_
                                               (##car _e1273112761_))
                                              (_tl1273312766_
                                               (##cdr _e1273112761_)))
                                          (let ((_binding-id12769_
                                                 _hd1273212764_))
                                            (if (gx#stx-null? _tl1273312766_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12759_)
                        (cons (gx#core-quote-syntax__0 _binding-id12769_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1272412739_))
                                                (_E1272412739_)))))
                                      (_E1272412739_)))))
                            (_E1272412739_))))
                    (_E1272412739_)))))
        (_E1272312771_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12691_)
      (let* ((_e1269212699_ _stx12691_)
             (_E1269412703_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1269212699_)))
             (_E1269312717_
              (lambda ()
                (if (gx#stx-pair? _e1269212699_)
                    (let ((_e1269512707_ (gx#syntax-e _e1269212699_)))
                      (let ((_hd1269612710_ (##car _e1269512707_))
                            (_tl1269712712_ (##cdr _e1269512707_)))
                        (let ((_decls12715_ _tl1269712712_))
                          (if '#t
                              (cons '%#declare _decls12715_)
                              (_E1269412703_)))))
                    (_E1269412703_)))))
        (_E1269312717_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12661_)
      (let* ((_e1266212669_ _stx12661_)
             (_E1266412673_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1266212669_)))
             (_E1266312687_
              (lambda ()
                (if (gx#stx-pair? _e1266212669_)
                    (let ((_e1266512677_ (gx#syntax-e _e1266212669_)))
                      (let ((_hd1266612680_ (##car _e1266512677_))
                            (_tl1266712682_ (##cdr _e1266512677_)))
                        (let ((_clause12685_ _tl1266712682_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12685_))
                              (_E1266412673_)))))
                    (_E1266412673_)))))
        (_E1266312687_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12618_)
      (let* ((_e1261912629_ _stx12618_)
             (_E1262112633_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1261912629_)))
             (_E1262012657_
              (lambda ()
                (if (gx#stx-pair? _e1261912629_)
                    (let ((_e1262212637_ (gx#syntax-e _e1261912629_)))
                      (let ((_hd1262312640_ (##car _e1262212637_))
                            (_tl1262412642_ (##cdr _e1262212637_)))
                        (let ((_hd12645_ _hd1262312640_))
                          (if (gx#stx-pair? _tl1262412642_)
                              (let ((_e1262512647_
                                     (gx#syntax-e _tl1262412642_)))
                                (let ((_hd1262612650_ (##car _e1262512647_))
                                      (_tl1262712652_ (##cdr _e1262512647_)))
                                  (let ((_body12655_ _hd1262612650_))
                                    (if (gx#stx-null? _tl1262712652_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12645_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12655_)
                                                        '()))
                                            (_E1262112633_))
                                        (_E1262112633_)))))
                              (_E1262112633_)))))
                    (_E1262112633_)))))
        (_E1262012657_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12588_)
      (let* ((_e1258912596_ _stx12588_)
             (_E1259112600_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1258912596_)))
             (_E1259012614_
              (lambda ()
                (if (gx#stx-pair? _e1258912596_)
                    (let ((_e1259212604_ (gx#syntax-e _e1258912596_)))
                      (let ((_hd1259312607_ (##car _e1259212604_))
                            (_tl1259412609_ (##cdr _e1259212604_)))
                        (let ((_clauses12612_ _tl1259412609_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12612_))
                              (_E1259112600_)))))
                    (_E1259112600_)))))
        (_E1259012614_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda12521
      (lambda (_stx12523_ _form12524_)
        (let* ((_e1252512538_ _stx12523_)
               (_E1252712542_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1252512538_)))
               (_E1252612574_
                (lambda ()
                  (if (gx#stx-pair? _e1252512538_)
                      (let ((_e1252812546_ (gx#syntax-e _e1252512538_)))
                        (let ((_hd1252912549_ (##car _e1252812546_))
                              (_tl1253012551_ (##cdr _e1252812546_)))
                          (if (gx#stx-pair? _tl1253012551_)
                              (let ((_e1253112554_
                                     (gx#syntax-e _tl1253012551_)))
                                (let ((_hd1253212557_ (##car _e1253112554_))
                                      (_tl1253312559_ (##cdr _e1253112554_)))
                                  (let ((_hd12562_ _hd1253212557_))
                                    (if (gx#stx-pair? _tl1253312559_)
                                        (let ((_e1253412564_
                                               (gx#syntax-e _tl1253312559_)))
                                          (let ((_hd1253512567_
                                                 (##car _e1253412564_))
                                                (_tl1253612569_
                                                 (##cdr _e1253412564_)))
                                            (let ((_body12572_ _hd1253512567_))
                                              (if (gx#stx-null? _tl1253612569_)
                                                  (if '#t
                                                      (cons _form12524_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd12562_)
                          (cons (gx#core-compile-top-syntax _body12572_) '())))
              (_E1252712542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1252712542_)))))
                                        (_E1252712542_)))))
                              (_E1252712542_))))
                      (_E1252712542_)))))
          (_E1252612574_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12581_)
          (let ((_form12583_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda12521
             _stx12581_
             _form12583_))))
      (define gx#core-compile-top-let-values%
        (lambda _g13363_
          (let ((_g13362_ (length _g13363_)))
            (cond ((fx= _g13362_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g13363_))
                  ((fx= _g13362_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda12521
                          _g13363_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g13363_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx12520_)
      (gx#core-compile-top-let-values%__opt-lambda12521
       _stx12520_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx12518_)
      (gx#core-compile-top-let-values%__opt-lambda12521
       _stx12518_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx12477_)
      (let* ((_e1247812488_ _stx12477_)
             (_E1248012492_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1247812488_)))
             (_E1247912514_
              (lambda ()
                (if (gx#stx-pair? _e1247812488_)
                    (let ((_e1248112496_ (gx#syntax-e _e1247812488_)))
                      (let ((_hd1248212499_ (##car _e1248112496_))
                            (_tl1248312501_ (##cdr _e1248112496_)))
                        (if (gx#stx-pair? _tl1248312501_)
                            (let ((_e1248412504_ (gx#syntax-e _tl1248312501_)))
                              (let ((_hd1248512507_ (##car _e1248412504_))
                                    (_tl1248612509_ (##cdr _e1248412504_)))
                                (let ((_e12512_ _hd1248512507_))
                                  (if (gx#stx-null? _tl1248612509_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e12512_)
                                                      '()))
                                          (_E1248012492_))
                                      (_E1248012492_)))))
                            (_E1248012492_))))
                    (_E1248012492_)))))
        (_E1247912514_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx12436_)
      (let* ((_e1243712447_ _stx12436_)
             (_E1243912451_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1243712447_)))
             (_E1243812473_
              (lambda ()
                (if (gx#stx-pair? _e1243712447_)
                    (let ((_e1244012455_ (gx#syntax-e _e1243712447_)))
                      (let ((_hd1244112458_ (##car _e1244012455_))
                            (_tl1244212460_ (##cdr _e1244012455_)))
                        (if (gx#stx-pair? _tl1244212460_)
                            (let ((_e1244312463_ (gx#syntax-e _tl1244212460_)))
                              (let ((_hd1244412466_ (##car _e1244312463_))
                                    (_tl1244512468_ (##cdr _e1244312463_)))
                                (let ((_e12471_ _hd1244412466_))
                                  (if (gx#stx-null? _tl1244512468_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e12471_)
                                                      '()))
                                          (_E1243912451_))
                                      (_E1243912451_)))))
                            (_E1243912451_))))
                    (_E1243912451_)))))
        (_E1243812473_))))
  (define gx#core-compile-top-call%
    (lambda (_stx12393_)
      (let* ((_e1239412404_ _stx12393_)
             (_E1239612408_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1239412404_)))
             (_E1239512432_
              (lambda ()
                (if (gx#stx-pair? _e1239412404_)
                    (let ((_e1239712412_ (gx#syntax-e _e1239412404_)))
                      (let ((_hd1239812415_ (##car _e1239712412_))
                            (_tl1239912417_ (##cdr _e1239712412_)))
                        (if (gx#stx-pair? _tl1239912417_)
                            (let ((_e1240012420_ (gx#syntax-e _tl1239912417_)))
                              (let ((_hd1240112423_ (##car _e1240012420_))
                                    (_tl1240212425_ (##cdr _e1240012420_)))
                                (let* ((_rator12428_ _hd1240112423_)
                                       (_args12430_ _tl1240212425_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator12428_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args12430_))
                                      (_E1239612408_)))))
                            (_E1239612408_))))
                    (_E1239612408_)))))
        (_E1239512432_))))
  (define gx#core-compile-top-if%
    (lambda (_stx12326_)
      (let* ((_e1232712343_ _stx12326_)
             (_E1232912347_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1232712343_)))
             (_E1232812389_
              (lambda ()
                (if (gx#stx-pair? _e1232712343_)
                    (let ((_e1233012351_ (gx#syntax-e _e1232712343_)))
                      (let ((_hd1233112354_ (##car _e1233012351_))
                            (_tl1233212356_ (##cdr _e1233012351_)))
                        (if (gx#stx-pair? _tl1233212356_)
                            (let ((_e1233312359_ (gx#syntax-e _tl1233212356_)))
                              (let ((_hd1233412362_ (##car _e1233312359_))
                                    (_tl1233512364_ (##cdr _e1233312359_)))
                                (let ((_test12367_ _hd1233412362_))
                                  (if (gx#stx-pair? _tl1233512364_)
                                      (let ((_e1233612369_
                                             (gx#syntax-e _tl1233512364_)))
                                        (let ((_hd1233712372_
                                               (##car _e1233612369_))
                                              (_tl1233812374_
                                               (##cdr _e1233612369_)))
                                          (let ((_K12377_ _hd1233712372_))
                                            (if (gx#stx-pair? _tl1233812374_)
                                                (let ((_e1233912379_
                                                       (gx#syntax-e
                                                        _tl1233812374_)))
                                                  (let ((_hd1234012382_
                                                         (##car _e1233912379_))
                                                        (_tl1234112384_
                                                         (##cdr _e1233912379_)))
                                                    (let ((_E12387_
                                                           _hd1234012382_))
                                                      (if (gx#stx-null?
                                                           _tl1234112384_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test12367_)
                                  (cons (gx#core-compile-top-syntax _K12377_)
                                        (cons (gx#core-compile-top-syntax
                                               _E12387_)
                                              '()))))
                      (_E1232912347_))
                  (_E1232912347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1232912347_)))))
                                      (_E1232912347_)))))
                            (_E1232912347_))))
                    (_E1232912347_)))))
        (_E1232812389_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx12285_)
      (let* ((_e1228612296_ _stx12285_)
             (_E1228812300_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1228612296_)))
             (_E1228712322_
              (lambda ()
                (if (gx#stx-pair? _e1228612296_)
                    (let ((_e1228912304_ (gx#syntax-e _e1228612296_)))
                      (let ((_hd1229012307_ (##car _e1228912304_))
                            (_tl1229112309_ (##cdr _e1228912304_)))
                        (if (gx#stx-pair? _tl1229112309_)
                            (let ((_e1229212312_ (gx#syntax-e _tl1229112309_)))
                              (let ((_hd1229312315_ (##car _e1229212312_))
                                    (_tl1229412317_ (##cdr _e1229212312_)))
                                (let ((_id12320_ _hd1229312315_))
                                  (if (gx#stx-null? _tl1229412317_)
                                      (if (gx#identifier? _id12320_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id12320_)
                                                      '()))
                                          (_E1228812300_))
                                      (_E1228812300_)))))
                            (_E1228812300_))))
                    (_E1228812300_)))))
        (_E1228712322_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx12231_)
      (let* ((_e1223212245_ _stx12231_)
             (_E1223412249_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1223212245_)))
             (_E1223312281_
              (lambda ()
                (if (gx#stx-pair? _e1223212245_)
                    (let ((_e1223512253_ (gx#syntax-e _e1223212245_)))
                      (let ((_hd1223612256_ (##car _e1223512253_))
                            (_tl1223712258_ (##cdr _e1223512253_)))
                        (if (gx#stx-pair? _tl1223712258_)
                            (let ((_e1223812261_ (gx#syntax-e _tl1223712258_)))
                              (let ((_hd1223912264_ (##car _e1223812261_))
                                    (_tl1224012266_ (##cdr _e1223812261_)))
                                (let ((_id12269_ _hd1223912264_))
                                  (if (gx#stx-pair? _tl1224012266_)
                                      (let ((_e1224112271_
                                             (gx#syntax-e _tl1224012266_)))
                                        (let ((_hd1224212274_
                                               (##car _e1224112271_))
                                              (_tl1224312276_
                                               (##cdr _e1224112271_)))
                                          (let ((_expr12279_ _hd1224212274_))
                                            (if (gx#stx-null? _tl1224312276_)
                                                (if (gx#identifier? _id12269_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12269_)
                        (cons (gx#core-compile-top-syntax _expr12279_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1223412249_))
                                                (_E1223412249_)))))
                                      (_E1223412249_)))))
                            (_E1223412249_))))
                    (_E1223412249_)))))
        (_E1223312281_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id12226_)
      (let ((_$e12228_ (gx#resolve-identifier__0 _id12226_)))
        (if _$e12228_
            (##structure-ref _$e12228_ '1 gx#binding::t '#f)
            _id12226_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd12224_)
      (if (gx#identifier? _hd12224_)
          (gx#core-compile-top-runtime-ref _hd12224_)
          '#f))))
