(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12650_)
      (let ((_e1265112658_ _stx12650_))
        (let ((_E1265312662_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1265112658_))))
          (let ((_E1265212676_
                 (lambda ()
                   (if (gx#stx-pair? _e1265112658_)
                       (let ((_e1265412666_ (gx#syntax-e _e1265112658_)))
                         (let ((_hd1265512669_ (##car _e1265412666_))
                               (_tl1265612671_ (##cdr _e1265412666_)))
                           (let ((_form12674_ _hd1265512669_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12674_)
                                  'compile-top-syntax
                                  _stx12650_)
                                 (_E1265312662_)))))
                       (_E1265312662_)))))
            (let () (_E1265212676_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12610_ _stx12611_)
      (let ((_self1261212620_ _self12610_))
        (let ((_E1261412624_
               (lambda () (error '"No clause matching" _self1261212620_))))
          (let ((_K1261512636_
                 (lambda (_K12627_)
                   (let ((_$e12629_ (gx#stx-source _stx12611_)))
                     (if _$e12629_
                         ((lambda (_g1263112633_)
                            (gx#stx-wrap-source
                             (_K12627_ _stx12611_)
                             _g1263112633_))
                          _$e12629_)
                         (_K12627_ _stx12611_))))))
            (if (##structure-instance-of?
                 _self1261212620_
                 (##type-id gx#core-expander::t))
                (let ((_e1261612639_ (##vector-ref _self1261212620_ '1)))
                  (let ((_e1261712642_ (##vector-ref _self1261212620_ '2)))
                    (let ((_e1261812645_ (##vector-ref _self1261212620_ '3)))
                      (let ((_K12648_ _e1261812645_))
                        (_K1261512636_ _K12648_)))))
                (_E1261412624_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12608_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12608_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12578_)
      (let ((_e1257912586_ _stx12578_))
        (let ((_E1258112590_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1257912586_))))
          (let ((_E1258012604_
                 (lambda ()
                   (if (gx#stx-pair? _e1257912586_)
                       (let ((_e1258212594_ (gx#syntax-e _e1257912586_)))
                         (let ((_hd1258312597_ (##car _e1258212594_))
                               (_tl1258412599_ (##cdr _e1258212594_)))
                           (let ((_body12602_ _tl1258412599_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12602_))
                                 (_E1258112590_)))))
                       (_E1258112590_)))))
            (let () (_E1258012604_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12547_)
      (let ((_e1254812555_ _stx12547_))
        (let ((_E1255012559_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1254812555_))))
          (let ((_E1254912574_
                 (lambda ()
                   (if (gx#stx-pair? _e1254812555_)
                       (let ((_e1255112563_ (gx#syntax-e _e1254812555_)))
                         (let ((_hd1255212566_ (##car _e1255112563_))
                               (_tl1255312568_ (##cdr _e1255112563_)))
                           (let ((_body12571_ _tl1255312568_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12571_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1255012559_)))))
                       (_E1255012559_)))))
            (let () (_E1254912574_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12517_)
      (let ((_e1251812525_ _stx12517_))
        (let ((_E1252012529_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1251812525_))))
          (let ((_E1251912543_
                 (lambda ()
                   (if (gx#stx-pair? _e1251812525_)
                       (let ((_e1252112533_ (gx#syntax-e _e1251812525_)))
                         (let ((_hd1252212536_ (##car _e1252112533_))
                               (_tl1252312538_ (##cdr _e1252112533_)))
                           (let ((_body12541_ _tl1252312538_))
                             (if '#t
                                 (cons '%#begin-foreign _body12541_)
                                 (_E1252012529_)))))
                       (_E1252012529_)))))
            (let () (_E1251912543_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12487_)
      (let ((_e1248812495_ _stx12487_))
        (let ((_E1249012499_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1248812495_))))
          (let ((_E1248912513_
                 (lambda ()
                   (if (gx#stx-pair? _e1248812495_)
                       (let ((_e1249112503_ (gx#syntax-e _e1248812495_)))
                         (let ((_hd1249212506_ (##car _e1249112503_))
                               (_tl1249312508_ (##cdr _e1249112503_)))
                           (let ((_body12511_ _tl1249312508_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12511_))
                                 (_E1249012499_)))))
                       (_E1249012499_)))))
            (let () (_E1248912513_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12444_)
      (let ((_e1244512455_ _stx12444_))
        (let ((_E1244712459_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1244512455_))))
          (let ((_E1244612483_
                 (lambda ()
                   (if (gx#stx-pair? _e1244512455_)
                       (let ((_e1244812463_ (gx#syntax-e _e1244512455_)))
                         (let ((_hd1244912466_ (##car _e1244812463_))
                               (_tl1245012468_ (##cdr _e1244812463_)))
                           (if (gx#stx-pair? _tl1245012468_)
                               (let ((_e1245112471_
                                      (gx#syntax-e _tl1245012468_)))
                                 (let ((_hd1245212474_ (##car _e1245112471_))
                                       (_tl1245312476_ (##cdr _e1245112471_)))
                                   (let ((_hd12479_ _hd1245212474_))
                                     (let ((_body12481_ _tl1245312476_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12479_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12481_))
                                           (_E1244712459_))))))
                               (_E1244712459_))))
                       (_E1244712459_)))))
            (let () (_E1244612483_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12414_)
      (let ((_e1241512422_ _stx12414_))
        (let ((_E1241712426_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1241512422_))))
          (let ((_E1241612440_
                 (lambda ()
                   (if (gx#stx-pair? _e1241512422_)
                       (let ((_e1241812430_ (gx#syntax-e _e1241512422_)))
                         (let ((_hd1241912433_ (##car _e1241812430_))
                               (_tl1242012435_ (##cdr _e1241812430_)))
                           (let ((_body12438_ _tl1242012435_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12438_))
                                 (_E1241712426_)))))
                       (_E1241712426_)))))
            (let () (_E1241612440_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12384_)
      (let ((_e1238512392_ _stx12384_))
        (let ((_E1238712396_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238512392_))))
          (let ((_E1238612410_
                 (lambda ()
                   (if (gx#stx-pair? _e1238512392_)
                       (let ((_e1238812400_ (gx#syntax-e _e1238512392_)))
                         (let ((_hd1238912403_ (##car _e1238812400_))
                               (_tl1239012405_ (##cdr _e1238812400_)))
                           (let ((_body12408_ _tl1239012405_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12408_))
                                 (_E1238712396_)))))
                       (_E1238712396_)))))
            (let () (_E1238612410_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12309_)
      (let ((_generate12311_
             (lambda (_hd12341_)
               (let ((_e1234212352_ _hd12341_))
                 (let ((_E1234412356_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1234212352_))))
                   (let ((_E1234312380_
                          (lambda ()
                            (if (gx#stx-pair? _e1234212352_)
                                (let ((_e1234512360_
                                       (gx#syntax-e _e1234212352_)))
                                  (let ((_hd1234612363_ (##car _e1234512360_))
                                        (_tl1234712365_ (##cdr _e1234512360_)))
                                    (let ((_id12368_ _hd1234612363_))
                                      (if (gx#stx-pair? _tl1234712365_)
                                          (let ((_e1234812370_
                                                 (gx#syntax-e _tl1234712365_)))
                                            (let ((_hd1234912373_
                                                   (##car _e1234812370_))
                                                  (_tl1235012375_
                                                   (##cdr _e1234812370_)))
                                              (let ((_eid12378_
                                                     _hd1234912373_))
                                                (if (gx#stx-null?
                                                     _tl1235012375_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12368_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12378_)
                            '()))
                (_E1234412356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234412356_)))))
                                          (_E1234412356_)))))
                                (_E1234412356_)))))
                     (let () (_E1234312380_))))))))
        (let ((_e1231212319_ _stx12309_))
          (let ((_E1231412323_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1231212319_))))
            (let ((_E1231312337_
                   (lambda ()
                     (if (gx#stx-pair? _e1231212319_)
                         (let ((_e1231512327_ (gx#syntax-e _e1231212319_)))
                           (let ((_hd1231612330_ (##car _e1231512327_))
                                 (_tl1231712332_ (##cdr _e1231512327_)))
                             (let ((_body12335_ _tl1231712332_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12311_
                                          _body12335_))
                                   (_E1231412323_)))))
                         (_E1231412323_)))))
              (let () (_E1231312337_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12255_)
      (let ((_e1225612269_ _stx12255_))
        (let ((_E1225812273_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225612269_))))
          (let ((_E1225712305_
                 (lambda ()
                   (if (gx#stx-pair? _e1225612269_)
                       (let ((_e1225912277_ (gx#syntax-e _e1225612269_)))
                         (let ((_hd1226012280_ (##car _e1225912277_))
                               (_tl1226112282_ (##cdr _e1225912277_)))
                           (if (gx#stx-pair? _tl1226112282_)
                               (let ((_e1226212285_
                                      (gx#syntax-e _tl1226112282_)))
                                 (let ((_hd1226312288_ (##car _e1226212285_))
                                       (_tl1226412290_ (##cdr _e1226212285_)))
                                   (let ((_hd12293_ _hd1226312288_))
                                     (if (gx#stx-pair? _tl1226412290_)
                                         (let ((_e1226512295_
                                                (gx#syntax-e _tl1226412290_)))
                                           (let ((_hd1226612298_
                                                  (##car _e1226512295_))
                                                 (_tl1226712300_
                                                  (##cdr _e1226512295_)))
                                             (let ((_expr12303_
                                                    _hd1226612298_))
                                               (if (gx#stx-null?
                                                    _tl1226712300_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12293_)
                           (cons (gx#core-compile-top-syntax _expr12303_)
                                 '())))
               (_E1225812273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1225812273_)))))
                                         (_E1225812273_)))))
                               (_E1225812273_))))
                       (_E1225812273_)))))
            (let () (_E1225712305_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12200_)
      (let ((_e1220112214_ _stx12200_))
        (let ((_E1220312218_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1220112214_))))
          (let ((_E1220212251_
                 (lambda ()
                   (if (gx#stx-pair? _e1220112214_)
                       (let ((_e1220412222_ (gx#syntax-e _e1220112214_)))
                         (let ((_hd1220512225_ (##car _e1220412222_))
                               (_tl1220612227_ (##cdr _e1220412222_)))
                           (if (gx#stx-pair? _tl1220612227_)
                               (let ((_e1220712230_
                                      (gx#syntax-e _tl1220612227_)))
                                 (let ((_hd1220812233_ (##car _e1220712230_))
                                       (_tl1220912235_ (##cdr _e1220712230_)))
                                   (let ((_hd12238_ _hd1220812233_))
                                     (if (gx#stx-pair? _tl1220912235_)
                                         (let ((_e1221012240_
                                                (gx#syntax-e _tl1220912235_)))
                                           (let ((_hd1221112243_
                                                  (##car _e1221012240_))
                                                 (_tl1221212245_
                                                  (##cdr _e1221012240_)))
                                             (let ((_expr12248_
                                                    _hd1221112243_))
                                               (if (gx#stx-null?
                                                    _tl1221212245_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12238_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12248_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1220312218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1220312218_)))))
                                         (_E1220312218_)))))
                               (_E1220312218_))))
                       (_E1220312218_)))))
            (let () (_E1220212251_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12146_)
      (let ((_e1214712160_ _stx12146_))
        (let ((_E1214912164_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1214712160_))))
          (let ((_E1214812196_
                 (lambda ()
                   (if (gx#stx-pair? _e1214712160_)
                       (let ((_e1215012168_ (gx#syntax-e _e1214712160_)))
                         (let ((_hd1215112171_ (##car _e1215012168_))
                               (_tl1215212173_ (##cdr _e1215012168_)))
                           (if (gx#stx-pair? _tl1215212173_)
                               (let ((_e1215312176_
                                      (gx#syntax-e _tl1215212173_)))
                                 (let ((_hd1215412179_ (##car _e1215312176_))
                                       (_tl1215512181_ (##cdr _e1215312176_)))
                                   (let ((_hd12184_ _hd1215412179_))
                                     (if (gx#stx-pair? _tl1215512181_)
                                         (let ((_e1215612186_
                                                (gx#syntax-e _tl1215512181_)))
                                           (let ((_hd1215712189_
                                                  (##car _e1215612186_))
                                                 (_tl1215812191_
                                                  (##cdr _e1215612186_)))
                                             (let ((_alias-id12194_
                                                    _hd1215712189_))
                                               (if (gx#stx-null?
                                                    _tl1215812191_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12184_)
                           (cons (gx#core-quote-syntax__0 _alias-id12194_)
                                 '())))
               (_E1214912164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1214912164_)))))
                                         (_E1214912164_)))))
                               (_E1214912164_))))
                       (_E1214912164_)))))
            (let () (_E1214812196_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12092_)
      (let ((_e1209312106_ _stx12092_))
        (let ((_E1209512110_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1209312106_))))
          (let ((_E1209412142_
                 (lambda ()
                   (if (gx#stx-pair? _e1209312106_)
                       (let ((_e1209612114_ (gx#syntax-e _e1209312106_)))
                         (let ((_hd1209712117_ (##car _e1209612114_))
                               (_tl1209812119_ (##cdr _e1209612114_)))
                           (if (gx#stx-pair? _tl1209812119_)
                               (let ((_e1209912122_
                                      (gx#syntax-e _tl1209812119_)))
                                 (let ((_hd1210012125_ (##car _e1209912122_))
                                       (_tl1210112127_ (##cdr _e1209912122_)))
                                   (let ((_id12130_ _hd1210012125_))
                                     (if (gx#stx-pair? _tl1210112127_)
                                         (let ((_e1210212132_
                                                (gx#syntax-e _tl1210112127_)))
                                           (let ((_hd1210312135_
                                                  (##car _e1210212132_))
                                                 (_tl1210412137_
                                                  (##cdr _e1210212132_)))
                                             (let ((_binding-id12140_
                                                    _hd1210312135_))
                                               (if (gx#stx-null?
                                                    _tl1210412137_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12130_)
                           (cons (gx#core-quote-syntax__0 _binding-id12140_)
                                 '())))
               (_E1209512110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1209512110_)))))
                                         (_E1209512110_)))))
                               (_E1209512110_))))
                       (_E1209512110_)))))
            (let () (_E1209412142_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12062_)
      (let ((_e1206312070_ _stx12062_))
        (let ((_E1206512074_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1206312070_))))
          (let ((_E1206412088_
                 (lambda ()
                   (if (gx#stx-pair? _e1206312070_)
                       (let ((_e1206612078_ (gx#syntax-e _e1206312070_)))
                         (let ((_hd1206712081_ (##car _e1206612078_))
                               (_tl1206812083_ (##cdr _e1206612078_)))
                           (let ((_decls12086_ _tl1206812083_))
                             (if '#t
                                 (cons '%#declare _decls12086_)
                                 (_E1206512074_)))))
                       (_E1206512074_)))))
            (let () (_E1206412088_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12032_)
      (let ((_e1203312040_ _stx12032_))
        (let ((_E1203512044_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203312040_))))
          (let ((_E1203412058_
                 (lambda ()
                   (if (gx#stx-pair? _e1203312040_)
                       (let ((_e1203612048_ (gx#syntax-e _e1203312040_)))
                         (let ((_hd1203712051_ (##car _e1203612048_))
                               (_tl1203812053_ (##cdr _e1203612048_)))
                           (let ((_clause12056_ _tl1203812053_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12056_))
                                 (_E1203512044_)))))
                       (_E1203512044_)))))
            (let () (_E1203412058_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11989_)
      (let ((_e1199012000_ _stx11989_))
        (let ((_E1199212004_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1199012000_))))
          (let ((_E1199112028_
                 (lambda ()
                   (if (gx#stx-pair? _e1199012000_)
                       (let ((_e1199312008_ (gx#syntax-e _e1199012000_)))
                         (let ((_hd1199412011_ (##car _e1199312008_))
                               (_tl1199512013_ (##cdr _e1199312008_)))
                           (let ((_hd12016_ _hd1199412011_))
                             (if (gx#stx-pair? _tl1199512013_)
                                 (let ((_e1199612018_
                                        (gx#syntax-e _tl1199512013_)))
                                   (let ((_hd1199712021_ (##car _e1199612018_))
                                         (_tl1199812023_
                                          (##cdr _e1199612018_)))
                                     (let ((_body12026_ _hd1199712021_))
                                       (if (gx#stx-null? _tl1199812023_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12016_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12026_)
                                                           '()))
                                               (_E1199212004_))
                                           (_E1199212004_)))))
                                 (_E1199212004_)))))
                       (_E1199212004_)))))
            (let () (_E1199112028_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11959_)
      (let ((_e1196011967_ _stx11959_))
        (let ((_E1196211971_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1196011967_))))
          (let ((_E1196111985_
                 (lambda ()
                   (if (gx#stx-pair? _e1196011967_)
                       (let ((_e1196311975_ (gx#syntax-e _e1196011967_)))
                         (let ((_hd1196411978_ (##car _e1196311975_))
                               (_tl1196511980_ (##cdr _e1196311975_)))
                           (let ((_clauses11983_ _tl1196511980_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11983_))
                                 (_E1196211971_)))))
                       (_E1196211971_)))))
            (let () (_E1196111985_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11892
      (lambda (_stx11894_ _form11895_)
        (let ((_e1189611909_ _stx11894_))
          (let ((_E1189811913_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1189611909_))))
            (let ((_E1189711945_
                   (lambda ()
                     (if (gx#stx-pair? _e1189611909_)
                         (let ((_e1189911917_ (gx#syntax-e _e1189611909_)))
                           (let ((_hd1190011920_ (##car _e1189911917_))
                                 (_tl1190111922_ (##cdr _e1189911917_)))
                             (if (gx#stx-pair? _tl1190111922_)
                                 (let ((_e1190211925_
                                        (gx#syntax-e _tl1190111922_)))
                                   (let ((_hd1190311928_ (##car _e1190211925_))
                                         (_tl1190411930_
                                          (##cdr _e1190211925_)))
                                     (let ((_hd11933_ _hd1190311928_))
                                       (if (gx#stx-pair? _tl1190411930_)
                                           (let ((_e1190511935_
                                                  (gx#syntax-e
                                                   _tl1190411930_)))
                                             (let ((_hd1190611938_
                                                    (##car _e1190511935_))
                                                   (_tl1190711940_
                                                    (##cdr _e1190511935_)))
                                               (let ((_body11943_
                                                      _hd1190611938_))
                                                 (if (gx#stx-null?
                                                      _tl1190711940_)
                                                     (if '#t
                                                         (cons _form11895_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11933_)
                             (cons (gx#core-compile-top-syntax _body11943_)
                                   '())))
                 (_E1189811913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1189811913_)))))
                                           (_E1189811913_)))))
                                 (_E1189811913_))))
                         (_E1189811913_)))))
              (let () (_E1189711945_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11952_)
          (let ((_form11954_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11892
             _stx11952_
             _form11954_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12680_
          (let ((_g12679_ (length _g12680_)))
            (cond ((fx= _g12679_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12680_))
                  ((fx= _g12679_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11892
                          _g12680_))
                  (else (error "No clause matching arguments" _g12680_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11891_)
      (gx#core-compile-top-let-values%__opt-lambda11892
       _stx11891_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11889_)
      (gx#core-compile-top-let-values%__opt-lambda11892
       _stx11889_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11848_)
      (let ((_e1184911859_ _stx11848_))
        (let ((_E1185111863_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1184911859_))))
          (let ((_E1185011885_
                 (lambda ()
                   (if (gx#stx-pair? _e1184911859_)
                       (let ((_e1185211867_ (gx#syntax-e _e1184911859_)))
                         (let ((_hd1185311870_ (##car _e1185211867_))
                               (_tl1185411872_ (##cdr _e1185211867_)))
                           (if (gx#stx-pair? _tl1185411872_)
                               (let ((_e1185511875_
                                      (gx#syntax-e _tl1185411872_)))
                                 (let ((_hd1185611878_ (##car _e1185511875_))
                                       (_tl1185711880_ (##cdr _e1185511875_)))
                                   (let ((_e11883_ _hd1185611878_))
                                     (if (gx#stx-null? _tl1185711880_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11883_)
                                                         '()))
                                             (_E1185111863_))
                                         (_E1185111863_)))))
                               (_E1185111863_))))
                       (_E1185111863_)))))
            (let () (_E1185011885_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11807_)
      (let ((_e1180811818_ _stx11807_))
        (let ((_E1181011822_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1180811818_))))
          (let ((_E1180911844_
                 (lambda ()
                   (if (gx#stx-pair? _e1180811818_)
                       (let ((_e1181111826_ (gx#syntax-e _e1180811818_)))
                         (let ((_hd1181211829_ (##car _e1181111826_))
                               (_tl1181311831_ (##cdr _e1181111826_)))
                           (if (gx#stx-pair? _tl1181311831_)
                               (let ((_e1181411834_
                                      (gx#syntax-e _tl1181311831_)))
                                 (let ((_hd1181511837_ (##car _e1181411834_))
                                       (_tl1181611839_ (##cdr _e1181411834_)))
                                   (let ((_e11842_ _hd1181511837_))
                                     (if (gx#stx-null? _tl1181611839_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11842_)
                                                         '()))
                                             (_E1181011822_))
                                         (_E1181011822_)))))
                               (_E1181011822_))))
                       (_E1181011822_)))))
            (let () (_E1180911844_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11764_)
      (let ((_e1176511775_ _stx11764_))
        (let ((_E1176711779_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176511775_))))
          (let ((_E1176611803_
                 (lambda ()
                   (if (gx#stx-pair? _e1176511775_)
                       (let ((_e1176811783_ (gx#syntax-e _e1176511775_)))
                         (let ((_hd1176911786_ (##car _e1176811783_))
                               (_tl1177011788_ (##cdr _e1176811783_)))
                           (if (gx#stx-pair? _tl1177011788_)
                               (let ((_e1177111791_
                                      (gx#syntax-e _tl1177011788_)))
                                 (let ((_hd1177211794_ (##car _e1177111791_))
                                       (_tl1177311796_ (##cdr _e1177111791_)))
                                   (let ((_rator11799_ _hd1177211794_))
                                     (let ((_args11801_ _tl1177311796_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11799_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11801_))
                                           (_E1176711779_))))))
                               (_E1176711779_))))
                       (_E1176711779_)))))
            (let () (_E1176611803_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11697_)
      (let ((_e1169811714_ _stx11697_))
        (let ((_E1170011718_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169811714_))))
          (let ((_E1169911760_
                 (lambda ()
                   (if (gx#stx-pair? _e1169811714_)
                       (let ((_e1170111722_ (gx#syntax-e _e1169811714_)))
                         (let ((_hd1170211725_ (##car _e1170111722_))
                               (_tl1170311727_ (##cdr _e1170111722_)))
                           (if (gx#stx-pair? _tl1170311727_)
                               (let ((_e1170411730_
                                      (gx#syntax-e _tl1170311727_)))
                                 (let ((_hd1170511733_ (##car _e1170411730_))
                                       (_tl1170611735_ (##cdr _e1170411730_)))
                                   (let ((_test11738_ _hd1170511733_))
                                     (if (gx#stx-pair? _tl1170611735_)
                                         (let ((_e1170711740_
                                                (gx#syntax-e _tl1170611735_)))
                                           (let ((_hd1170811743_
                                                  (##car _e1170711740_))
                                                 (_tl1170911745_
                                                  (##cdr _e1170711740_)))
                                             (let ((_K11748_ _hd1170811743_))
                                               (if (gx#stx-pair?
                                                    _tl1170911745_)
                                                   (let ((_e1171011750_
                                                          (gx#syntax-e
                                                           _tl1170911745_)))
                                                     (let ((_hd1171111753_
                                                            (##car _e1171011750_))
                                                           (_tl1171211755_
                                                            (##cdr _e1171011750_)))
                                                       (let ((_E11758_
                                                              _hd1171111753_))
                                                         (if (gx#stx-null?
                                                              _tl1171211755_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11738_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11748_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11758_)
                                                 '()))))
                         (_E1170011718_))
                     (_E1170011718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1170011718_)))))
                                         (_E1170011718_)))))
                               (_E1170011718_))))
                       (_E1170011718_)))))
            (let () (_E1169911760_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11656_)
      (let ((_e1165711667_ _stx11656_))
        (let ((_E1165911671_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165711667_))))
          (let ((_E1165811693_
                 (lambda ()
                   (if (gx#stx-pair? _e1165711667_)
                       (let ((_e1166011675_ (gx#syntax-e _e1165711667_)))
                         (let ((_hd1166111678_ (##car _e1166011675_))
                               (_tl1166211680_ (##cdr _e1166011675_)))
                           (if (gx#stx-pair? _tl1166211680_)
                               (let ((_e1166311683_
                                      (gx#syntax-e _tl1166211680_)))
                                 (let ((_hd1166411686_ (##car _e1166311683_))
                                       (_tl1166511688_ (##cdr _e1166311683_)))
                                   (let ((_id11691_ _hd1166411686_))
                                     (if (gx#stx-null? _tl1166511688_)
                                         (if (gx#identifier? _id11691_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11691_)
                                                         '()))
                                             (_E1165911671_))
                                         (_E1165911671_)))))
                               (_E1165911671_))))
                       (_E1165911671_)))))
            (let () (_E1165811693_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11602_)
      (let ((_e1160311616_ _stx11602_))
        (let ((_E1160511620_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160311616_))))
          (let ((_E1160411652_
                 (lambda ()
                   (if (gx#stx-pair? _e1160311616_)
                       (let ((_e1160611624_ (gx#syntax-e _e1160311616_)))
                         (let ((_hd1160711627_ (##car _e1160611624_))
                               (_tl1160811629_ (##cdr _e1160611624_)))
                           (if (gx#stx-pair? _tl1160811629_)
                               (let ((_e1160911632_
                                      (gx#syntax-e _tl1160811629_)))
                                 (let ((_hd1161011635_ (##car _e1160911632_))
                                       (_tl1161111637_ (##cdr _e1160911632_)))
                                   (let ((_id11640_ _hd1161011635_))
                                     (if (gx#stx-pair? _tl1161111637_)
                                         (let ((_e1161211642_
                                                (gx#syntax-e _tl1161111637_)))
                                           (let ((_hd1161311645_
                                                  (##car _e1161211642_))
                                                 (_tl1161411647_
                                                  (##cdr _e1161211642_)))
                                             (let ((_expr11650_
                                                    _hd1161311645_))
                                               (if (gx#stx-null?
                                                    _tl1161411647_)
                                                   (if (gx#identifier?
                                                        _id11640_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11640_)
                           (cons (gx#core-compile-top-syntax _expr11650_)
                                 '())))
               (_E1160511620_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1160511620_)))))
                                         (_E1160511620_)))))
                               (_E1160511620_))))
                       (_E1160511620_)))))
            (let () (_E1160411652_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11597_)
      (let ((_$e11599_ (gx#resolve-identifier__0 _id11597_)))
        (if _$e11599_
            (##structure-ref _$e11599_ '1 gx#binding::t '#f)
            _id11597_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11595_)
      (if (gx#identifier? _hd11595_)
          (gx#core-compile-top-runtime-ref _hd11595_)
          '#f))))
