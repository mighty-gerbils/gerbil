(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12648_)
      (let ((_e1264912656_ _stx12648_))
        (let ((_E1265112660_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1264912656_))))
          (let ((_E1265012674_
                 (lambda ()
                   (if (gx#stx-pair? _e1264912656_)
                       (let ((_e1265212664_ (gx#syntax-e _e1264912656_)))
                         (let ((_hd1265312667_ (##car _e1265212664_))
                               (_tl1265412669_ (##cdr _e1265212664_)))
                           (let ((_form12672_ _hd1265312667_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12672_)
                                  'compile-top-syntax
                                  _stx12648_)
                                 (_E1265112660_)))))
                       (_E1265112660_)))))
            (let () (_E1265012674_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12608_ _stx12609_)
      (let ((_self1261012618_ _self12608_))
        (let ((_E1261212622_
               (lambda () (error '"No clause matching" _self1261012618_))))
          (let ((_K1261312634_
                 (lambda (_K12625_)
                   (let ((_$e12627_ (gx#stx-source _stx12609_)))
                     (if _$e12627_
                         ((lambda (_g1262912631_)
                            (gx#stx-wrap-source
                             (_K12625_ _stx12609_)
                             _g1262912631_))
                          _$e12627_)
                         (_K12625_ _stx12609_))))))
            (if (##structure-instance-of?
                 _self1261012618_
                 (##type-id gx#core-expander::t))
                (let ((_e1261412637_ (##vector-ref _self1261012618_ '1)))
                  (let ((_e1261512640_ (##vector-ref _self1261012618_ '2)))
                    (let ((_e1261612643_ (##vector-ref _self1261012618_ '3)))
                      (let ((_K12646_ _e1261612643_))
                        (_K1261312634_ _K12646_)))))
                (_E1261212622_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12606_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12606_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12576_)
      (let ((_e1257712584_ _stx12576_))
        (let ((_E1257912588_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1257712584_))))
          (let ((_E1257812602_
                 (lambda ()
                   (if (gx#stx-pair? _e1257712584_)
                       (let ((_e1258012592_ (gx#syntax-e _e1257712584_)))
                         (let ((_hd1258112595_ (##car _e1258012592_))
                               (_tl1258212597_ (##cdr _e1258012592_)))
                           (let ((_body12600_ _tl1258212597_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12600_))
                                 (_E1257912588_)))))
                       (_E1257912588_)))))
            (let () (_E1257812602_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12545_)
      (let ((_e1254612553_ _stx12545_))
        (let ((_E1254812557_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1254612553_))))
          (let ((_E1254712572_
                 (lambda ()
                   (if (gx#stx-pair? _e1254612553_)
                       (let ((_e1254912561_ (gx#syntax-e _e1254612553_)))
                         (let ((_hd1255012564_ (##car _e1254912561_))
                               (_tl1255112566_ (##cdr _e1254912561_)))
                           (let ((_body12569_ _tl1255112566_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12569_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1254812557_)))))
                       (_E1254812557_)))))
            (let () (_E1254712572_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12515_)
      (let ((_e1251612523_ _stx12515_))
        (let ((_E1251812527_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1251612523_))))
          (let ((_E1251712541_
                 (lambda ()
                   (if (gx#stx-pair? _e1251612523_)
                       (let ((_e1251912531_ (gx#syntax-e _e1251612523_)))
                         (let ((_hd1252012534_ (##car _e1251912531_))
                               (_tl1252112536_ (##cdr _e1251912531_)))
                           (let ((_body12539_ _tl1252112536_))
                             (if '#t
                                 (cons '%#begin-foreign _body12539_)
                                 (_E1251812527_)))))
                       (_E1251812527_)))))
            (let () (_E1251712541_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12485_)
      (let ((_e1248612493_ _stx12485_))
        (let ((_E1248812497_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1248612493_))))
          (let ((_E1248712511_
                 (lambda ()
                   (if (gx#stx-pair? _e1248612493_)
                       (let ((_e1248912501_ (gx#syntax-e _e1248612493_)))
                         (let ((_hd1249012504_ (##car _e1248912501_))
                               (_tl1249112506_ (##cdr _e1248912501_)))
                           (let ((_body12509_ _tl1249112506_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12509_))
                                 (_E1248812497_)))))
                       (_E1248812497_)))))
            (let () (_E1248712511_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12442_)
      (let ((_e1244312453_ _stx12442_))
        (let ((_E1244512457_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1244312453_))))
          (let ((_E1244412481_
                 (lambda ()
                   (if (gx#stx-pair? _e1244312453_)
                       (let ((_e1244612461_ (gx#syntax-e _e1244312453_)))
                         (let ((_hd1244712464_ (##car _e1244612461_))
                               (_tl1244812466_ (##cdr _e1244612461_)))
                           (if (gx#stx-pair? _tl1244812466_)
                               (let ((_e1244912469_
                                      (gx#syntax-e _tl1244812466_)))
                                 (let ((_hd1245012472_ (##car _e1244912469_))
                                       (_tl1245112474_ (##cdr _e1244912469_)))
                                   (let ((_hd12477_ _hd1245012472_))
                                     (let ((_body12479_ _tl1245112474_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12477_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12479_))
                                           (_E1244512457_))))))
                               (_E1244512457_))))
                       (_E1244512457_)))))
            (let () (_E1244412481_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12412_)
      (let ((_e1241312420_ _stx12412_))
        (let ((_E1241512424_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1241312420_))))
          (let ((_E1241412438_
                 (lambda ()
                   (if (gx#stx-pair? _e1241312420_)
                       (let ((_e1241612428_ (gx#syntax-e _e1241312420_)))
                         (let ((_hd1241712431_ (##car _e1241612428_))
                               (_tl1241812433_ (##cdr _e1241612428_)))
                           (let ((_body12436_ _tl1241812433_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12436_))
                                 (_E1241512424_)))))
                       (_E1241512424_)))))
            (let () (_E1241412438_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12382_)
      (let ((_e1238312390_ _stx12382_))
        (let ((_E1238512394_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238312390_))))
          (let ((_E1238412408_
                 (lambda ()
                   (if (gx#stx-pair? _e1238312390_)
                       (let ((_e1238612398_ (gx#syntax-e _e1238312390_)))
                         (let ((_hd1238712401_ (##car _e1238612398_))
                               (_tl1238812403_ (##cdr _e1238612398_)))
                           (let ((_body12406_ _tl1238812403_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12406_))
                                 (_E1238512394_)))))
                       (_E1238512394_)))))
            (let () (_E1238412408_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12307_)
      (let ((_generate12309_
             (lambda (_hd12339_)
               (let ((_e1234012350_ _hd12339_))
                 (let ((_E1234212354_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1234012350_))))
                   (let ((_E1234112378_
                          (lambda ()
                            (if (gx#stx-pair? _e1234012350_)
                                (let ((_e1234312358_
                                       (gx#syntax-e _e1234012350_)))
                                  (let ((_hd1234412361_ (##car _e1234312358_))
                                        (_tl1234512363_ (##cdr _e1234312358_)))
                                    (let ((_id12366_ _hd1234412361_))
                                      (if (gx#stx-pair? _tl1234512363_)
                                          (let ((_e1234612368_
                                                 (gx#syntax-e _tl1234512363_)))
                                            (let ((_hd1234712371_
                                                   (##car _e1234612368_))
                                                  (_tl1234812373_
                                                   (##cdr _e1234612368_)))
                                              (let ((_eid12376_
                                                     _hd1234712371_))
                                                (if (gx#stx-null?
                                                     _tl1234812373_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12366_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12376_)
                            '()))
                (_E1234212354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234212354_)))))
                                          (_E1234212354_)))))
                                (_E1234212354_)))))
                     (let () (_E1234112378_))))))))
        (let ((_e1231012317_ _stx12307_))
          (let ((_E1231212321_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1231012317_))))
            (let ((_E1231112335_
                   (lambda ()
                     (if (gx#stx-pair? _e1231012317_)
                         (let ((_e1231312325_ (gx#syntax-e _e1231012317_)))
                           (let ((_hd1231412328_ (##car _e1231312325_))
                                 (_tl1231512330_ (##cdr _e1231312325_)))
                             (let ((_body12333_ _tl1231512330_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12309_
                                          _body12333_))
                                   (_E1231212321_)))))
                         (_E1231212321_)))))
              (let () (_E1231112335_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12253_)
      (let ((_e1225412267_ _stx12253_))
        (let ((_E1225612271_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225412267_))))
          (let ((_E1225512303_
                 (lambda ()
                   (if (gx#stx-pair? _e1225412267_)
                       (let ((_e1225712275_ (gx#syntax-e _e1225412267_)))
                         (let ((_hd1225812278_ (##car _e1225712275_))
                               (_tl1225912280_ (##cdr _e1225712275_)))
                           (if (gx#stx-pair? _tl1225912280_)
                               (let ((_e1226012283_
                                      (gx#syntax-e _tl1225912280_)))
                                 (let ((_hd1226112286_ (##car _e1226012283_))
                                       (_tl1226212288_ (##cdr _e1226012283_)))
                                   (let ((_hd12291_ _hd1226112286_))
                                     (if (gx#stx-pair? _tl1226212288_)
                                         (let ((_e1226312293_
                                                (gx#syntax-e _tl1226212288_)))
                                           (let ((_hd1226412296_
                                                  (##car _e1226312293_))
                                                 (_tl1226512298_
                                                  (##cdr _e1226312293_)))
                                             (let ((_expr12301_
                                                    _hd1226412296_))
                                               (if (gx#stx-null?
                                                    _tl1226512298_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12291_)
                           (cons (gx#core-compile-top-syntax _expr12301_)
                                 '())))
               (_E1225612271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1225612271_)))))
                                         (_E1225612271_)))))
                               (_E1225612271_))))
                       (_E1225612271_)))))
            (let () (_E1225512303_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12198_)
      (let ((_e1219912212_ _stx12198_))
        (let ((_E1220112216_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1219912212_))))
          (let ((_E1220012249_
                 (lambda ()
                   (if (gx#stx-pair? _e1219912212_)
                       (let ((_e1220212220_ (gx#syntax-e _e1219912212_)))
                         (let ((_hd1220312223_ (##car _e1220212220_))
                               (_tl1220412225_ (##cdr _e1220212220_)))
                           (if (gx#stx-pair? _tl1220412225_)
                               (let ((_e1220512228_
                                      (gx#syntax-e _tl1220412225_)))
                                 (let ((_hd1220612231_ (##car _e1220512228_))
                                       (_tl1220712233_ (##cdr _e1220512228_)))
                                   (let ((_hd12236_ _hd1220612231_))
                                     (if (gx#stx-pair? _tl1220712233_)
                                         (let ((_e1220812238_
                                                (gx#syntax-e _tl1220712233_)))
                                           (let ((_hd1220912241_
                                                  (##car _e1220812238_))
                                                 (_tl1221012243_
                                                  (##cdr _e1220812238_)))
                                             (let ((_expr12246_
                                                    _hd1220912241_))
                                               (if (gx#stx-null?
                                                    _tl1221012243_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12236_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12246_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1220112216_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1220112216_)))))
                                         (_E1220112216_)))))
                               (_E1220112216_))))
                       (_E1220112216_)))))
            (let () (_E1220012249_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12144_)
      (let ((_e1214512158_ _stx12144_))
        (let ((_E1214712162_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1214512158_))))
          (let ((_E1214612194_
                 (lambda ()
                   (if (gx#stx-pair? _e1214512158_)
                       (let ((_e1214812166_ (gx#syntax-e _e1214512158_)))
                         (let ((_hd1214912169_ (##car _e1214812166_))
                               (_tl1215012171_ (##cdr _e1214812166_)))
                           (if (gx#stx-pair? _tl1215012171_)
                               (let ((_e1215112174_
                                      (gx#syntax-e _tl1215012171_)))
                                 (let ((_hd1215212177_ (##car _e1215112174_))
                                       (_tl1215312179_ (##cdr _e1215112174_)))
                                   (let ((_hd12182_ _hd1215212177_))
                                     (if (gx#stx-pair? _tl1215312179_)
                                         (let ((_e1215412184_
                                                (gx#syntax-e _tl1215312179_)))
                                           (let ((_hd1215512187_
                                                  (##car _e1215412184_))
                                                 (_tl1215612189_
                                                  (##cdr _e1215412184_)))
                                             (let ((_alias-id12192_
                                                    _hd1215512187_))
                                               (if (gx#stx-null?
                                                    _tl1215612189_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12182_)
                           (cons (gx#core-quote-syntax__0 _alias-id12192_)
                                 '())))
               (_E1214712162_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1214712162_)))))
                                         (_E1214712162_)))))
                               (_E1214712162_))))
                       (_E1214712162_)))))
            (let () (_E1214612194_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12090_)
      (let ((_e1209112104_ _stx12090_))
        (let ((_E1209312108_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1209112104_))))
          (let ((_E1209212140_
                 (lambda ()
                   (if (gx#stx-pair? _e1209112104_)
                       (let ((_e1209412112_ (gx#syntax-e _e1209112104_)))
                         (let ((_hd1209512115_ (##car _e1209412112_))
                               (_tl1209612117_ (##cdr _e1209412112_)))
                           (if (gx#stx-pair? _tl1209612117_)
                               (let ((_e1209712120_
                                      (gx#syntax-e _tl1209612117_)))
                                 (let ((_hd1209812123_ (##car _e1209712120_))
                                       (_tl1209912125_ (##cdr _e1209712120_)))
                                   (let ((_id12128_ _hd1209812123_))
                                     (if (gx#stx-pair? _tl1209912125_)
                                         (let ((_e1210012130_
                                                (gx#syntax-e _tl1209912125_)))
                                           (let ((_hd1210112133_
                                                  (##car _e1210012130_))
                                                 (_tl1210212135_
                                                  (##cdr _e1210012130_)))
                                             (let ((_binding-id12138_
                                                    _hd1210112133_))
                                               (if (gx#stx-null?
                                                    _tl1210212135_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12128_)
                           (cons (gx#core-quote-syntax__0 _binding-id12138_)
                                 '())))
               (_E1209312108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1209312108_)))))
                                         (_E1209312108_)))))
                               (_E1209312108_))))
                       (_E1209312108_)))))
            (let () (_E1209212140_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12060_)
      (let ((_e1206112068_ _stx12060_))
        (let ((_E1206312072_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1206112068_))))
          (let ((_E1206212086_
                 (lambda ()
                   (if (gx#stx-pair? _e1206112068_)
                       (let ((_e1206412076_ (gx#syntax-e _e1206112068_)))
                         (let ((_hd1206512079_ (##car _e1206412076_))
                               (_tl1206612081_ (##cdr _e1206412076_)))
                           (let ((_decls12084_ _tl1206612081_))
                             (if '#t
                                 (cons '%#declare _decls12084_)
                                 (_E1206312072_)))))
                       (_E1206312072_)))))
            (let () (_E1206212086_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12030_)
      (let ((_e1203112038_ _stx12030_))
        (let ((_E1203312042_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203112038_))))
          (let ((_E1203212056_
                 (lambda ()
                   (if (gx#stx-pair? _e1203112038_)
                       (let ((_e1203412046_ (gx#syntax-e _e1203112038_)))
                         (let ((_hd1203512049_ (##car _e1203412046_))
                               (_tl1203612051_ (##cdr _e1203412046_)))
                           (let ((_clause12054_ _tl1203612051_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12054_))
                                 (_E1203312042_)))))
                       (_E1203312042_)))))
            (let () (_E1203212056_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11987_)
      (let ((_e1198811998_ _stx11987_))
        (let ((_E1199012002_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1198811998_))))
          (let ((_E1198912026_
                 (lambda ()
                   (if (gx#stx-pair? _e1198811998_)
                       (let ((_e1199112006_ (gx#syntax-e _e1198811998_)))
                         (let ((_hd1199212009_ (##car _e1199112006_))
                               (_tl1199312011_ (##cdr _e1199112006_)))
                           (let ((_hd12014_ _hd1199212009_))
                             (if (gx#stx-pair? _tl1199312011_)
                                 (let ((_e1199412016_
                                        (gx#syntax-e _tl1199312011_)))
                                   (let ((_hd1199512019_ (##car _e1199412016_))
                                         (_tl1199612021_
                                          (##cdr _e1199412016_)))
                                     (let ((_body12024_ _hd1199512019_))
                                       (if (gx#stx-null? _tl1199612021_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12014_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12024_)
                                                           '()))
                                               (_E1199012002_))
                                           (_E1199012002_)))))
                                 (_E1199012002_)))))
                       (_E1199012002_)))))
            (let () (_E1198912026_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11957_)
      (let ((_e1195811965_ _stx11957_))
        (let ((_E1196011969_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1195811965_))))
          (let ((_E1195911983_
                 (lambda ()
                   (if (gx#stx-pair? _e1195811965_)
                       (let ((_e1196111973_ (gx#syntax-e _e1195811965_)))
                         (let ((_hd1196211976_ (##car _e1196111973_))
                               (_tl1196311978_ (##cdr _e1196111973_)))
                           (let ((_clauses11981_ _tl1196311978_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11981_))
                                 (_E1196011969_)))))
                       (_E1196011969_)))))
            (let () (_E1195911983_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11890
      (lambda (_stx11892_ _form11893_)
        (let ((_e1189411907_ _stx11892_))
          (let ((_E1189611911_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1189411907_))))
            (let ((_E1189511943_
                   (lambda ()
                     (if (gx#stx-pair? _e1189411907_)
                         (let ((_e1189711915_ (gx#syntax-e _e1189411907_)))
                           (let ((_hd1189811918_ (##car _e1189711915_))
                                 (_tl1189911920_ (##cdr _e1189711915_)))
                             (if (gx#stx-pair? _tl1189911920_)
                                 (let ((_e1190011923_
                                        (gx#syntax-e _tl1189911920_)))
                                   (let ((_hd1190111926_ (##car _e1190011923_))
                                         (_tl1190211928_
                                          (##cdr _e1190011923_)))
                                     (let ((_hd11931_ _hd1190111926_))
                                       (if (gx#stx-pair? _tl1190211928_)
                                           (let ((_e1190311933_
                                                  (gx#syntax-e
                                                   _tl1190211928_)))
                                             (let ((_hd1190411936_
                                                    (##car _e1190311933_))
                                                   (_tl1190511938_
                                                    (##cdr _e1190311933_)))
                                               (let ((_body11941_
                                                      _hd1190411936_))
                                                 (if (gx#stx-null?
                                                      _tl1190511938_)
                                                     (if '#t
                                                         (cons _form11893_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11931_)
                             (cons (gx#core-compile-top-syntax _body11941_)
                                   '())))
                 (_E1189611911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1189611911_)))))
                                           (_E1189611911_)))))
                                 (_E1189611911_))))
                         (_E1189611911_)))))
              (let () (_E1189511943_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11950_)
          (let ((_form11952_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11890
             _stx11950_
             _form11952_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12678_
          (let ((_g12677_ (length _g12678_)))
            (cond ((fx= _g12677_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12678_))
                  ((fx= _g12677_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11890
                          _g12678_))
                  (else (error "No clause matching arguments" _g12678_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11889_)
      (gx#core-compile-top-let-values%__opt-lambda11890
       _stx11889_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11887_)
      (gx#core-compile-top-let-values%__opt-lambda11890
       _stx11887_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11846_)
      (let ((_e1184711857_ _stx11846_))
        (let ((_E1184911861_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1184711857_))))
          (let ((_E1184811883_
                 (lambda ()
                   (if (gx#stx-pair? _e1184711857_)
                       (let ((_e1185011865_ (gx#syntax-e _e1184711857_)))
                         (let ((_hd1185111868_ (##car _e1185011865_))
                               (_tl1185211870_ (##cdr _e1185011865_)))
                           (if (gx#stx-pair? _tl1185211870_)
                               (let ((_e1185311873_
                                      (gx#syntax-e _tl1185211870_)))
                                 (let ((_hd1185411876_ (##car _e1185311873_))
                                       (_tl1185511878_ (##cdr _e1185311873_)))
                                   (let ((_e11881_ _hd1185411876_))
                                     (if (gx#stx-null? _tl1185511878_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11881_)
                                                         '()))
                                             (_E1184911861_))
                                         (_E1184911861_)))))
                               (_E1184911861_))))
                       (_E1184911861_)))))
            (let () (_E1184811883_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11805_)
      (let ((_e1180611816_ _stx11805_))
        (let ((_E1180811820_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1180611816_))))
          (let ((_E1180711842_
                 (lambda ()
                   (if (gx#stx-pair? _e1180611816_)
                       (let ((_e1180911824_ (gx#syntax-e _e1180611816_)))
                         (let ((_hd1181011827_ (##car _e1180911824_))
                               (_tl1181111829_ (##cdr _e1180911824_)))
                           (if (gx#stx-pair? _tl1181111829_)
                               (let ((_e1181211832_
                                      (gx#syntax-e _tl1181111829_)))
                                 (let ((_hd1181311835_ (##car _e1181211832_))
                                       (_tl1181411837_ (##cdr _e1181211832_)))
                                   (let ((_e11840_ _hd1181311835_))
                                     (if (gx#stx-null? _tl1181411837_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11840_)
                                                         '()))
                                             (_E1180811820_))
                                         (_E1180811820_)))))
                               (_E1180811820_))))
                       (_E1180811820_)))))
            (let () (_E1180711842_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11762_)
      (let ((_e1176311773_ _stx11762_))
        (let ((_E1176511777_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176311773_))))
          (let ((_E1176411801_
                 (lambda ()
                   (if (gx#stx-pair? _e1176311773_)
                       (let ((_e1176611781_ (gx#syntax-e _e1176311773_)))
                         (let ((_hd1176711784_ (##car _e1176611781_))
                               (_tl1176811786_ (##cdr _e1176611781_)))
                           (if (gx#stx-pair? _tl1176811786_)
                               (let ((_e1176911789_
                                      (gx#syntax-e _tl1176811786_)))
                                 (let ((_hd1177011792_ (##car _e1176911789_))
                                       (_tl1177111794_ (##cdr _e1176911789_)))
                                   (let ((_rator11797_ _hd1177011792_))
                                     (let ((_args11799_ _tl1177111794_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11797_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11799_))
                                           (_E1176511777_))))))
                               (_E1176511777_))))
                       (_E1176511777_)))))
            (let () (_E1176411801_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11695_)
      (let ((_e1169611712_ _stx11695_))
        (let ((_E1169811716_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169611712_))))
          (let ((_E1169711758_
                 (lambda ()
                   (if (gx#stx-pair? _e1169611712_)
                       (let ((_e1169911720_ (gx#syntax-e _e1169611712_)))
                         (let ((_hd1170011723_ (##car _e1169911720_))
                               (_tl1170111725_ (##cdr _e1169911720_)))
                           (if (gx#stx-pair? _tl1170111725_)
                               (let ((_e1170211728_
                                      (gx#syntax-e _tl1170111725_)))
                                 (let ((_hd1170311731_ (##car _e1170211728_))
                                       (_tl1170411733_ (##cdr _e1170211728_)))
                                   (let ((_test11736_ _hd1170311731_))
                                     (if (gx#stx-pair? _tl1170411733_)
                                         (let ((_e1170511738_
                                                (gx#syntax-e _tl1170411733_)))
                                           (let ((_hd1170611741_
                                                  (##car _e1170511738_))
                                                 (_tl1170711743_
                                                  (##cdr _e1170511738_)))
                                             (let ((_K11746_ _hd1170611741_))
                                               (if (gx#stx-pair?
                                                    _tl1170711743_)
                                                   (let ((_e1170811748_
                                                          (gx#syntax-e
                                                           _tl1170711743_)))
                                                     (let ((_hd1170911751_
                                                            (##car _e1170811748_))
                                                           (_tl1171011753_
                                                            (##cdr _e1170811748_)))
                                                       (let ((_E11756_
                                                              _hd1170911751_))
                                                         (if (gx#stx-null?
                                                              _tl1171011753_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11736_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11746_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11756_)
                                                 '()))))
                         (_E1169811716_))
                     (_E1169811716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1169811716_)))))
                                         (_E1169811716_)))))
                               (_E1169811716_))))
                       (_E1169811716_)))))
            (let () (_E1169711758_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11654_)
      (let ((_e1165511665_ _stx11654_))
        (let ((_E1165711669_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165511665_))))
          (let ((_E1165611691_
                 (lambda ()
                   (if (gx#stx-pair? _e1165511665_)
                       (let ((_e1165811673_ (gx#syntax-e _e1165511665_)))
                         (let ((_hd1165911676_ (##car _e1165811673_))
                               (_tl1166011678_ (##cdr _e1165811673_)))
                           (if (gx#stx-pair? _tl1166011678_)
                               (let ((_e1166111681_
                                      (gx#syntax-e _tl1166011678_)))
                                 (let ((_hd1166211684_ (##car _e1166111681_))
                                       (_tl1166311686_ (##cdr _e1166111681_)))
                                   (let ((_id11689_ _hd1166211684_))
                                     (if (gx#stx-null? _tl1166311686_)
                                         (if (gx#identifier? _id11689_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11689_)
                                                         '()))
                                             (_E1165711669_))
                                         (_E1165711669_)))))
                               (_E1165711669_))))
                       (_E1165711669_)))))
            (let () (_E1165611691_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11600_)
      (let ((_e1160111614_ _stx11600_))
        (let ((_E1160311618_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160111614_))))
          (let ((_E1160211650_
                 (lambda ()
                   (if (gx#stx-pair? _e1160111614_)
                       (let ((_e1160411622_ (gx#syntax-e _e1160111614_)))
                         (let ((_hd1160511625_ (##car _e1160411622_))
                               (_tl1160611627_ (##cdr _e1160411622_)))
                           (if (gx#stx-pair? _tl1160611627_)
                               (let ((_e1160711630_
                                      (gx#syntax-e _tl1160611627_)))
                                 (let ((_hd1160811633_ (##car _e1160711630_))
                                       (_tl1160911635_ (##cdr _e1160711630_)))
                                   (let ((_id11638_ _hd1160811633_))
                                     (if (gx#stx-pair? _tl1160911635_)
                                         (let ((_e1161011640_
                                                (gx#syntax-e _tl1160911635_)))
                                           (let ((_hd1161111643_
                                                  (##car _e1161011640_))
                                                 (_tl1161211645_
                                                  (##cdr _e1161011640_)))
                                             (let ((_expr11648_
                                                    _hd1161111643_))
                                               (if (gx#stx-null?
                                                    _tl1161211645_)
                                                   (if (gx#identifier?
                                                        _id11638_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11638_)
                           (cons (gx#core-compile-top-syntax _expr11648_)
                                 '())))
               (_E1160311618_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1160311618_)))))
                                         (_E1160311618_)))))
                               (_E1160311618_))))
                       (_E1160311618_)))))
            (let () (_E1160211650_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11595_)
      (let ((_$e11597_ (gx#resolve-identifier__0 _id11595_)))
        (if _$e11597_
            (##structure-ref _$e11597_ '1 gx#binding::t '#f)
            _id11595_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11593_)
      (if (gx#identifier? _hd11593_)
          (gx#core-compile-top-runtime-ref _hd11593_)
          '#f))))
