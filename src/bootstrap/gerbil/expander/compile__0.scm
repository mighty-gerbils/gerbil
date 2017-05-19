(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12549_)
      (let ((_e1255012557_ _stx12549_))
        (let ((_E1255212561_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1255012557_))))
          (let ((_E1255112575_
                 (lambda ()
                   (if (gx#stx-pair? _e1255012557_)
                       (let ((_e1255312565_ (gx#syntax-e _e1255012557_)))
                         (let ((_hd1255412568_ (##car _e1255312565_))
                               (_tl1255512570_ (##cdr _e1255312565_)))
                           (let ((_form12573_ _hd1255412568_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12573_)
                                  'compile-top-syntax
                                  _stx12549_)
                                 (_E1255212561_)))))
                       (_E1255212561_)))))
            (let () (_E1255112575_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12509_ _stx12510_)
      (let ((_self1251112519_ _self12509_))
        (let ((_E1251312523_
               (lambda () (error '"No clause matching" _self1251112519_))))
          (let ((_K1251412535_
                 (lambda (_K12526_)
                   (let ((_$e12528_ (gx#stx-source _stx12510_)))
                     (if _$e12528_
                         ((lambda (_g1253012532_)
                            (gx#stx-wrap-source
                             (_K12526_ _stx12510_)
                             _g1253012532_))
                          _$e12528_)
                         (_K12526_ _stx12510_))))))
            (if (struct-instance? gx#core-expander::t _self1251112519_)
                (let ((_e1251512538_ (##vector-ref _self1251112519_ '1)))
                  (let ((_e1251612541_ (##vector-ref _self1251112519_ '2)))
                    (let ((_e1251712544_ (##vector-ref _self1251112519_ '3)))
                      (let ((_K12547_ _e1251712544_))
                        (_K1251412535_ _K12547_)))))
                (_E1251312523_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12507_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12507_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12477_)
      (let ((_e1247812485_ _stx12477_))
        (let ((_E1248012489_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1247812485_))))
          (let ((_E1247912503_
                 (lambda ()
                   (if (gx#stx-pair? _e1247812485_)
                       (let ((_e1248112493_ (gx#syntax-e _e1247812485_)))
                         (let ((_hd1248212496_ (##car _e1248112493_))
                               (_tl1248312498_ (##cdr _e1248112493_)))
                           (let ((_body12501_ _tl1248312498_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12501_))
                                 (_E1248012489_)))))
                       (_E1248012489_)))))
            (let () (_E1247912503_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12446_)
      (let ((_e1244712454_ _stx12446_))
        (let ((_E1244912458_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1244712454_))))
          (let ((_E1244812473_
                 (lambda ()
                   (if (gx#stx-pair? _e1244712454_)
                       (let ((_e1245012462_ (gx#syntax-e _e1244712454_)))
                         (let ((_hd1245112465_ (##car _e1245012462_))
                               (_tl1245212467_ (##cdr _e1245012462_)))
                           (let ((_body12470_ _tl1245212467_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12470_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1244912458_)))))
                       (_E1244912458_)))))
            (let () (_E1244812473_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12416_)
      (let ((_e1241712424_ _stx12416_))
        (let ((_E1241912428_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1241712424_))))
          (let ((_E1241812442_
                 (lambda ()
                   (if (gx#stx-pair? _e1241712424_)
                       (let ((_e1242012432_ (gx#syntax-e _e1241712424_)))
                         (let ((_hd1242112435_ (##car _e1242012432_))
                               (_tl1242212437_ (##cdr _e1242012432_)))
                           (let ((_body12440_ _tl1242212437_))
                             (if '#t
                                 (cons '%#begin-foreign _body12440_)
                                 (_E1241912428_)))))
                       (_E1241912428_)))))
            (let () (_E1241812442_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12386_)
      (let ((_e1238712394_ _stx12386_))
        (let ((_E1238912398_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238712394_))))
          (let ((_E1238812412_
                 (lambda ()
                   (if (gx#stx-pair? _e1238712394_)
                       (let ((_e1239012402_ (gx#syntax-e _e1238712394_)))
                         (let ((_hd1239112405_ (##car _e1239012402_))
                               (_tl1239212407_ (##cdr _e1239012402_)))
                           (let ((_body12410_ _tl1239212407_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12410_))
                                 (_E1238912398_)))))
                       (_E1238912398_)))))
            (let () (_E1238812412_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12343_)
      (let ((_e1234412354_ _stx12343_))
        (let ((_E1234612358_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1234412354_))))
          (let ((_E1234512382_
                 (lambda ()
                   (if (gx#stx-pair? _e1234412354_)
                       (let ((_e1234712362_ (gx#syntax-e _e1234412354_)))
                         (let ((_hd1234812365_ (##car _e1234712362_))
                               (_tl1234912367_ (##cdr _e1234712362_)))
                           (if (gx#stx-pair? _tl1234912367_)
                               (let ((_e1235012370_
                                      (gx#syntax-e _tl1234912367_)))
                                 (let ((_hd1235112373_ (##car _e1235012370_))
                                       (_tl1235212375_ (##cdr _e1235012370_)))
                                   (let ((_hd12378_ _hd1235112373_))
                                     (let ((_body12380_ _tl1235212375_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12378_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12380_))
                                           (_E1234612358_))))))
                               (_E1234612358_))))
                       (_E1234612358_)))))
            (let () (_E1234512382_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12313_)
      (let ((_e1231412321_ _stx12313_))
        (let ((_E1231612325_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1231412321_))))
          (let ((_E1231512339_
                 (lambda ()
                   (if (gx#stx-pair? _e1231412321_)
                       (let ((_e1231712329_ (gx#syntax-e _e1231412321_)))
                         (let ((_hd1231812332_ (##car _e1231712329_))
                               (_tl1231912334_ (##cdr _e1231712329_)))
                           (let ((_body12337_ _tl1231912334_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12337_))
                                 (_E1231612325_)))))
                       (_E1231612325_)))))
            (let () (_E1231512339_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12283_)
      (let ((_e1228412291_ _stx12283_))
        (let ((_E1228612295_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1228412291_))))
          (let ((_E1228512309_
                 (lambda ()
                   (if (gx#stx-pair? _e1228412291_)
                       (let ((_e1228712299_ (gx#syntax-e _e1228412291_)))
                         (let ((_hd1228812302_ (##car _e1228712299_))
                               (_tl1228912304_ (##cdr _e1228712299_)))
                           (let ((_body12307_ _tl1228912304_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12307_))
                                 (_E1228612295_)))))
                       (_E1228612295_)))))
            (let () (_E1228512309_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12208_)
      (let ((_generate12210_
             (lambda (_hd12240_)
               (let ((_e1224112251_ _hd12240_))
                 (let ((_E1224312255_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1224112251_))))
                   (let ((_E1224212279_
                          (lambda ()
                            (if (gx#stx-pair? _e1224112251_)
                                (let ((_e1224412259_
                                       (gx#syntax-e _e1224112251_)))
                                  (let ((_hd1224512262_ (##car _e1224412259_))
                                        (_tl1224612264_ (##cdr _e1224412259_)))
                                    (let ((_id12267_ _hd1224512262_))
                                      (if (gx#stx-pair? _tl1224612264_)
                                          (let ((_e1224712269_
                                                 (gx#syntax-e _tl1224612264_)))
                                            (let ((_hd1224812272_
                                                   (##car _e1224712269_))
                                                  (_tl1224912274_
                                                   (##cdr _e1224712269_)))
                                              (let ((_eid12277_
                                                     _hd1224812272_))
                                                (if (gx#stx-null?
                                                     _tl1224912274_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12267_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12277_)
                            '()))
                (_E1224312255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1224312255_)))))
                                          (_E1224312255_)))))
                                (_E1224312255_)))))
                     (let () (_E1224212279_))))))))
        (let ((_e1221112218_ _stx12208_))
          (let ((_E1221312222_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1221112218_))))
            (let ((_E1221212236_
                   (lambda ()
                     (if (gx#stx-pair? _e1221112218_)
                         (let ((_e1221412226_ (gx#syntax-e _e1221112218_)))
                           (let ((_hd1221512229_ (##car _e1221412226_))
                                 (_tl1221612231_ (##cdr _e1221412226_)))
                             (let ((_body12234_ _tl1221612231_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12210_
                                          _body12234_))
                                   (_E1221312222_)))))
                         (_E1221312222_)))))
              (let () (_E1221212236_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12154_)
      (let ((_e1215512168_ _stx12154_))
        (let ((_E1215712172_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215512168_))))
          (let ((_E1215612204_
                 (lambda ()
                   (if (gx#stx-pair? _e1215512168_)
                       (let ((_e1215812176_ (gx#syntax-e _e1215512168_)))
                         (let ((_hd1215912179_ (##car _e1215812176_))
                               (_tl1216012181_ (##cdr _e1215812176_)))
                           (if (gx#stx-pair? _tl1216012181_)
                               (let ((_e1216112184_
                                      (gx#syntax-e _tl1216012181_)))
                                 (let ((_hd1216212187_ (##car _e1216112184_))
                                       (_tl1216312189_ (##cdr _e1216112184_)))
                                   (let ((_hd12192_ _hd1216212187_))
                                     (if (gx#stx-pair? _tl1216312189_)
                                         (let ((_e1216412194_
                                                (gx#syntax-e _tl1216312189_)))
                                           (let ((_hd1216512197_
                                                  (##car _e1216412194_))
                                                 (_tl1216612199_
                                                  (##cdr _e1216412194_)))
                                             (let ((_expr12202_
                                                    _hd1216512197_))
                                               (if (gx#stx-null?
                                                    _tl1216612199_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12192_)
                           (cons (gx#core-compile-top-syntax _expr12202_)
                                 '())))
               (_E1215712172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1215712172_)))))
                                         (_E1215712172_)))))
                               (_E1215712172_))))
                       (_E1215712172_)))))
            (let () (_E1215612204_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12099_)
      (let ((_e1210012113_ _stx12099_))
        (let ((_E1210212117_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1210012113_))))
          (let ((_E1210112150_
                 (lambda ()
                   (if (gx#stx-pair? _e1210012113_)
                       (let ((_e1210312121_ (gx#syntax-e _e1210012113_)))
                         (let ((_hd1210412124_ (##car _e1210312121_))
                               (_tl1210512126_ (##cdr _e1210312121_)))
                           (if (gx#stx-pair? _tl1210512126_)
                               (let ((_e1210612129_
                                      (gx#syntax-e _tl1210512126_)))
                                 (let ((_hd1210712132_ (##car _e1210612129_))
                                       (_tl1210812134_ (##cdr _e1210612129_)))
                                   (let ((_hd12137_ _hd1210712132_))
                                     (if (gx#stx-pair? _tl1210812134_)
                                         (let ((_e1210912139_
                                                (gx#syntax-e _tl1210812134_)))
                                           (let ((_hd1211012142_
                                                  (##car _e1210912139_))
                                                 (_tl1211112144_
                                                  (##cdr _e1210912139_)))
                                             (let ((_expr12147_
                                                    _hd1211012142_))
                                               (if (gx#stx-null?
                                                    _tl1211112144_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12137_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12147_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1210212117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1210212117_)))))
                                         (_E1210212117_)))))
                               (_E1210212117_))))
                       (_E1210212117_)))))
            (let () (_E1210112150_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12045_)
      (let ((_e1204612059_ _stx12045_))
        (let ((_E1204812063_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1204612059_))))
          (let ((_E1204712095_
                 (lambda ()
                   (if (gx#stx-pair? _e1204612059_)
                       (let ((_e1204912067_ (gx#syntax-e _e1204612059_)))
                         (let ((_hd1205012070_ (##car _e1204912067_))
                               (_tl1205112072_ (##cdr _e1204912067_)))
                           (if (gx#stx-pair? _tl1205112072_)
                               (let ((_e1205212075_
                                      (gx#syntax-e _tl1205112072_)))
                                 (let ((_hd1205312078_ (##car _e1205212075_))
                                       (_tl1205412080_ (##cdr _e1205212075_)))
                                   (let ((_hd12083_ _hd1205312078_))
                                     (if (gx#stx-pair? _tl1205412080_)
                                         (let ((_e1205512085_
                                                (gx#syntax-e _tl1205412080_)))
                                           (let ((_hd1205612088_
                                                  (##car _e1205512085_))
                                                 (_tl1205712090_
                                                  (##cdr _e1205512085_)))
                                             (let ((_alias-id12093_
                                                    _hd1205612088_))
                                               (if (gx#stx-null?
                                                    _tl1205712090_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12083_)
                           (cons (gx#core-quote-syntax__0 _alias-id12093_)
                                 '())))
               (_E1204812063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1204812063_)))))
                                         (_E1204812063_)))))
                               (_E1204812063_))))
                       (_E1204812063_)))))
            (let () (_E1204712095_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11991_)
      (let ((_e1199212005_ _stx11991_))
        (let ((_E1199412009_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1199212005_))))
          (let ((_E1199312041_
                 (lambda ()
                   (if (gx#stx-pair? _e1199212005_)
                       (let ((_e1199512013_ (gx#syntax-e _e1199212005_)))
                         (let ((_hd1199612016_ (##car _e1199512013_))
                               (_tl1199712018_ (##cdr _e1199512013_)))
                           (if (gx#stx-pair? _tl1199712018_)
                               (let ((_e1199812021_
                                      (gx#syntax-e _tl1199712018_)))
                                 (let ((_hd1199912024_ (##car _e1199812021_))
                                       (_tl1200012026_ (##cdr _e1199812021_)))
                                   (let ((_id12029_ _hd1199912024_))
                                     (if (gx#stx-pair? _tl1200012026_)
                                         (let ((_e1200112031_
                                                (gx#syntax-e _tl1200012026_)))
                                           (let ((_hd1200212034_
                                                  (##car _e1200112031_))
                                                 (_tl1200312036_
                                                  (##cdr _e1200112031_)))
                                             (let ((_binding-id12039_
                                                    _hd1200212034_))
                                               (if (gx#stx-null?
                                                    _tl1200312036_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12029_)
                           (cons (gx#core-quote-syntax__0 _binding-id12039_)
                                 '())))
               (_E1199412009_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1199412009_)))))
                                         (_E1199412009_)))))
                               (_E1199412009_))))
                       (_E1199412009_)))))
            (let () (_E1199312041_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11961_)
      (let ((_e1196211969_ _stx11961_))
        (let ((_E1196411973_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1196211969_))))
          (let ((_E1196311987_
                 (lambda ()
                   (if (gx#stx-pair? _e1196211969_)
                       (let ((_e1196511977_ (gx#syntax-e _e1196211969_)))
                         (let ((_hd1196611980_ (##car _e1196511977_))
                               (_tl1196711982_ (##cdr _e1196511977_)))
                           (let ((_decls11985_ _tl1196711982_))
                             (if '#t
                                 (cons '%#declare _decls11985_)
                                 (_E1196411973_)))))
                       (_E1196411973_)))))
            (let () (_E1196311987_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11931_)
      (let ((_e1193211939_ _stx11931_))
        (let ((_E1193411943_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1193211939_))))
          (let ((_E1193311957_
                 (lambda ()
                   (if (gx#stx-pair? _e1193211939_)
                       (let ((_e1193511947_ (gx#syntax-e _e1193211939_)))
                         (let ((_hd1193611950_ (##car _e1193511947_))
                               (_tl1193711952_ (##cdr _e1193511947_)))
                           (let ((_clause11955_ _tl1193711952_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11955_))
                                 (_E1193411943_)))))
                       (_E1193411943_)))))
            (let () (_E1193311957_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11888_)
      (let ((_e1188911899_ _stx11888_))
        (let ((_E1189111903_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1188911899_))))
          (let ((_E1189011927_
                 (lambda ()
                   (if (gx#stx-pair? _e1188911899_)
                       (let ((_e1189211907_ (gx#syntax-e _e1188911899_)))
                         (let ((_hd1189311910_ (##car _e1189211907_))
                               (_tl1189411912_ (##cdr _e1189211907_)))
                           (let ((_hd11915_ _hd1189311910_))
                             (if (gx#stx-pair? _tl1189411912_)
                                 (let ((_e1189511917_
                                        (gx#syntax-e _tl1189411912_)))
                                   (let ((_hd1189611920_ (##car _e1189511917_))
                                         (_tl1189711922_
                                          (##cdr _e1189511917_)))
                                     (let ((_body11925_ _hd1189611920_))
                                       (if (gx#stx-null? _tl1189711922_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11915_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11925_)
                                                           '()))
                                               (_E1189111903_))
                                           (_E1189111903_)))))
                                 (_E1189111903_)))))
                       (_E1189111903_)))))
            (let () (_E1189011927_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11858_)
      (let ((_e1185911866_ _stx11858_))
        (let ((_E1186111870_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1185911866_))))
          (let ((_E1186011884_
                 (lambda ()
                   (if (gx#stx-pair? _e1185911866_)
                       (let ((_e1186211874_ (gx#syntax-e _e1185911866_)))
                         (let ((_hd1186311877_ (##car _e1186211874_))
                               (_tl1186411879_ (##cdr _e1186211874_)))
                           (let ((_clauses11882_ _tl1186411879_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11882_))
                                 (_E1186111870_)))))
                       (_E1186111870_)))))
            (let () (_E1186011884_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11791
      (lambda (_stx11793_ _form11794_)
        (let ((_e1179511808_ _stx11793_))
          (let ((_E1179711812_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1179511808_))))
            (let ((_E1179611844_
                   (lambda ()
                     (if (gx#stx-pair? _e1179511808_)
                         (let ((_e1179811816_ (gx#syntax-e _e1179511808_)))
                           (let ((_hd1179911819_ (##car _e1179811816_))
                                 (_tl1180011821_ (##cdr _e1179811816_)))
                             (if (gx#stx-pair? _tl1180011821_)
                                 (let ((_e1180111824_
                                        (gx#syntax-e _tl1180011821_)))
                                   (let ((_hd1180211827_ (##car _e1180111824_))
                                         (_tl1180311829_
                                          (##cdr _e1180111824_)))
                                     (let ((_hd11832_ _hd1180211827_))
                                       (if (gx#stx-pair? _tl1180311829_)
                                           (let ((_e1180411834_
                                                  (gx#syntax-e
                                                   _tl1180311829_)))
                                             (let ((_hd1180511837_
                                                    (##car _e1180411834_))
                                                   (_tl1180611839_
                                                    (##cdr _e1180411834_)))
                                               (let ((_body11842_
                                                      _hd1180511837_))
                                                 (if (gx#stx-null?
                                                      _tl1180611839_)
                                                     (if '#t
                                                         (cons _form11794_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11832_)
                             (cons (gx#core-compile-top-syntax _body11842_)
                                   '())))
                 (_E1179711812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1179711812_)))))
                                           (_E1179711812_)))))
                                 (_E1179711812_))))
                         (_E1179711812_)))))
              (let () (_E1179611844_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11851_)
          (let ((_form11853_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11791
             _stx11851_
             _form11853_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12579_
          (let ((_g12578_ (length _g12579_)))
            (cond ((fx= _g12578_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12579_))
                  ((fx= _g12578_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11791
                          _g12579_))
                  (else (error "No clause matching arguments" _g12579_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11790_)
      (gx#core-compile-top-let-values%__opt-lambda11791
       _stx11790_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11788_)
      (gx#core-compile-top-let-values%__opt-lambda11791
       _stx11788_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11747_)
      (let ((_e1174811758_ _stx11747_))
        (let ((_E1175011762_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1174811758_))))
          (let ((_E1174911784_
                 (lambda ()
                   (if (gx#stx-pair? _e1174811758_)
                       (let ((_e1175111766_ (gx#syntax-e _e1174811758_)))
                         (let ((_hd1175211769_ (##car _e1175111766_))
                               (_tl1175311771_ (##cdr _e1175111766_)))
                           (if (gx#stx-pair? _tl1175311771_)
                               (let ((_e1175411774_
                                      (gx#syntax-e _tl1175311771_)))
                                 (let ((_hd1175511777_ (##car _e1175411774_))
                                       (_tl1175611779_ (##cdr _e1175411774_)))
                                   (let ((_e11782_ _hd1175511777_))
                                     (if (gx#stx-null? _tl1175611779_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11782_)
                                                         '()))
                                             (_E1175011762_))
                                         (_E1175011762_)))))
                               (_E1175011762_))))
                       (_E1175011762_)))))
            (let () (_E1174911784_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11706_)
      (let ((_e1170711717_ _stx11706_))
        (let ((_E1170911721_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170711717_))))
          (let ((_E1170811743_
                 (lambda ()
                   (if (gx#stx-pair? _e1170711717_)
                       (let ((_e1171011725_ (gx#syntax-e _e1170711717_)))
                         (let ((_hd1171111728_ (##car _e1171011725_))
                               (_tl1171211730_ (##cdr _e1171011725_)))
                           (if (gx#stx-pair? _tl1171211730_)
                               (let ((_e1171311733_
                                      (gx#syntax-e _tl1171211730_)))
                                 (let ((_hd1171411736_ (##car _e1171311733_))
                                       (_tl1171511738_ (##cdr _e1171311733_)))
                                   (let ((_e11741_ _hd1171411736_))
                                     (if (gx#stx-null? _tl1171511738_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11741_)
                                                         '()))
                                             (_E1170911721_))
                                         (_E1170911721_)))))
                               (_E1170911721_))))
                       (_E1170911721_)))))
            (let () (_E1170811743_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11663_)
      (let ((_e1166411674_ _stx11663_))
        (let ((_E1166611678_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166411674_))))
          (let ((_E1166511702_
                 (lambda ()
                   (if (gx#stx-pair? _e1166411674_)
                       (let ((_e1166711682_ (gx#syntax-e _e1166411674_)))
                         (let ((_hd1166811685_ (##car _e1166711682_))
                               (_tl1166911687_ (##cdr _e1166711682_)))
                           (if (gx#stx-pair? _tl1166911687_)
                               (let ((_e1167011690_
                                      (gx#syntax-e _tl1166911687_)))
                                 (let ((_hd1167111693_ (##car _e1167011690_))
                                       (_tl1167211695_ (##cdr _e1167011690_)))
                                   (let ((_rator11698_ _hd1167111693_))
                                     (let ((_args11700_ _tl1167211695_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11698_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11700_))
                                           (_E1166611678_))))))
                               (_E1166611678_))))
                       (_E1166611678_)))))
            (let () (_E1166511702_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11596_)
      (let ((_e1159711613_ _stx11596_))
        (let ((_E1159911617_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1159711613_))))
          (let ((_E1159811659_
                 (lambda ()
                   (if (gx#stx-pair? _e1159711613_)
                       (let ((_e1160011621_ (gx#syntax-e _e1159711613_)))
                         (let ((_hd1160111624_ (##car _e1160011621_))
                               (_tl1160211626_ (##cdr _e1160011621_)))
                           (if (gx#stx-pair? _tl1160211626_)
                               (let ((_e1160311629_
                                      (gx#syntax-e _tl1160211626_)))
                                 (let ((_hd1160411632_ (##car _e1160311629_))
                                       (_tl1160511634_ (##cdr _e1160311629_)))
                                   (let ((_test11637_ _hd1160411632_))
                                     (if (gx#stx-pair? _tl1160511634_)
                                         (let ((_e1160611639_
                                                (gx#syntax-e _tl1160511634_)))
                                           (let ((_hd1160711642_
                                                  (##car _e1160611639_))
                                                 (_tl1160811644_
                                                  (##cdr _e1160611639_)))
                                             (let ((_K11647_ _hd1160711642_))
                                               (if (gx#stx-pair?
                                                    _tl1160811644_)
                                                   (let ((_e1160911649_
                                                          (gx#syntax-e
                                                           _tl1160811644_)))
                                                     (let ((_hd1161011652_
                                                            (##car _e1160911649_))
                                                           (_tl1161111654_
                                                            (##cdr _e1160911649_)))
                                                       (let ((_E11657_
                                                              _hd1161011652_))
                                                         (if (gx#stx-null?
                                                              _tl1161111654_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11637_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11647_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11657_)
                                                 '()))))
                         (_E1159911617_))
                     (_E1159911617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1159911617_)))))
                                         (_E1159911617_)))))
                               (_E1159911617_))))
                       (_E1159911617_)))))
            (let () (_E1159811659_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11555_)
      (let ((_e1155611566_ _stx11555_))
        (let ((_E1155811570_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1155611566_))))
          (let ((_E1155711592_
                 (lambda ()
                   (if (gx#stx-pair? _e1155611566_)
                       (let ((_e1155911574_ (gx#syntax-e _e1155611566_)))
                         (let ((_hd1156011577_ (##car _e1155911574_))
                               (_tl1156111579_ (##cdr _e1155911574_)))
                           (if (gx#stx-pair? _tl1156111579_)
                               (let ((_e1156211582_
                                      (gx#syntax-e _tl1156111579_)))
                                 (let ((_hd1156311585_ (##car _e1156211582_))
                                       (_tl1156411587_ (##cdr _e1156211582_)))
                                   (let ((_id11590_ _hd1156311585_))
                                     (if (gx#stx-null? _tl1156411587_)
                                         (if (gx#identifier? _id11590_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11590_)
                                                         '()))
                                             (_E1155811570_))
                                         (_E1155811570_)))))
                               (_E1155811570_))))
                       (_E1155811570_)))))
            (let () (_E1155711592_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11501_)
      (let ((_e1150211515_ _stx11501_))
        (let ((_E1150411519_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1150211515_))))
          (let ((_E1150311551_
                 (lambda ()
                   (if (gx#stx-pair? _e1150211515_)
                       (let ((_e1150511523_ (gx#syntax-e _e1150211515_)))
                         (let ((_hd1150611526_ (##car _e1150511523_))
                               (_tl1150711528_ (##cdr _e1150511523_)))
                           (if (gx#stx-pair? _tl1150711528_)
                               (let ((_e1150811531_
                                      (gx#syntax-e _tl1150711528_)))
                                 (let ((_hd1150911534_ (##car _e1150811531_))
                                       (_tl1151011536_ (##cdr _e1150811531_)))
                                   (let ((_id11539_ _hd1150911534_))
                                     (if (gx#stx-pair? _tl1151011536_)
                                         (let ((_e1151111541_
                                                (gx#syntax-e _tl1151011536_)))
                                           (let ((_hd1151211544_
                                                  (##car _e1151111541_))
                                                 (_tl1151311546_
                                                  (##cdr _e1151111541_)))
                                             (let ((_expr11549_
                                                    _hd1151211544_))
                                               (if (gx#stx-null?
                                                    _tl1151311546_)
                                                   (if (gx#identifier?
                                                        _id11539_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11539_)
                           (cons (gx#core-compile-top-syntax _expr11549_)
                                 '())))
               (_E1150411519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1150411519_)))))
                                         (_E1150411519_)))))
                               (_E1150411519_))))
                       (_E1150411519_)))))
            (let () (_E1150311551_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11496_)
      (let ((_$e11498_ (gx#resolve-identifier__0 _id11496_)))
        (if _$e11498_
            (##structure-ref _$e11498_ '1 gx#binding::t '#f)
            _id11496_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11494_)
      (if (gx#identifier? _hd11494_)
          (gx#core-compile-top-runtime-ref _hd11494_)
          '#f))))
