(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12315_)
      (let ((_e1231612323_ _stx12315_))
        (let ((_E1231812327_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1231612323_))))
          (let ((_E1231712341_
                 (lambda ()
                   (if (gx#stx-pair? _e1231612323_)
                       (let ((_e1231912331_ (gx#syntax-e _e1231612323_)))
                         (let ((_hd1232012334_ (##car _e1231912331_))
                               (_tl1232112336_ (##cdr _e1231912331_)))
                           (let ((_form12339_ _hd1232012334_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12339_)
                                  'compile-top-syntax
                                  _stx12315_)
                                 (_E1231812327_)))))
                       (_E1231812327_)))))
            (let () (_E1231712341_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12275_ _stx12276_)
      (let ((_self1227712285_ _self12275_))
        (let ((_E1227912289_
               (lambda () (error '"No clause matching" _self1227712285_))))
          (let ((_K1228012301_
                 (lambda (_K12292_)
                   (let ((_$e12294_ (gx#stx-source _stx12276_)))
                     (if _$e12294_
                         ((lambda (_g1229612298_)
                            (gx#stx-wrap-source
                             (_K12292_ _stx12276_)
                             _g1229612298_))
                          _$e12294_)
                         (_K12292_ _stx12276_))))))
            (if (struct-instance? gx#core-expander::t _self1227712285_)
                (let ((_e1228112304_ (##vector-ref _self1227712285_ '1)))
                  (let ((_e1228212307_ (##vector-ref _self1227712285_ '2)))
                    (let ((_e1228312310_ (##vector-ref _self1227712285_ '3)))
                      (let ((_K12313_ _e1228312310_))
                        (_K1228012301_ _K12313_)))))
                (_E1227912289_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12273_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12273_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12243_)
      (let ((_e1224412251_ _stx12243_))
        (let ((_E1224612255_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1224412251_))))
          (let ((_E1224512269_
                 (lambda ()
                   (if (gx#stx-pair? _e1224412251_)
                       (let ((_e1224712259_ (gx#syntax-e _e1224412251_)))
                         (let ((_hd1224812262_ (##car _e1224712259_))
                               (_tl1224912264_ (##cdr _e1224712259_)))
                           (let ((_body12267_ _tl1224912264_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12267_))
                                 (_E1224612255_)))))
                       (_E1224612255_)))))
            (let () (_E1224512269_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12212_)
      (let ((_e1221312220_ _stx12212_))
        (let ((_E1221512224_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1221312220_))))
          (let ((_E1221412239_
                 (lambda ()
                   (if (gx#stx-pair? _e1221312220_)
                       (let ((_e1221612228_ (gx#syntax-e _e1221312220_)))
                         (let ((_hd1221712231_ (##car _e1221612228_))
                               (_tl1221812233_ (##cdr _e1221612228_)))
                           (let ((_body12236_ _tl1221812233_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12236_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1221512224_)))))
                       (_E1221512224_)))))
            (let () (_E1221412239_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12182_)
      (let ((_e1218312190_ _stx12182_))
        (let ((_E1218512194_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1218312190_))))
          (let ((_E1218412208_
                 (lambda ()
                   (if (gx#stx-pair? _e1218312190_)
                       (let ((_e1218612198_ (gx#syntax-e _e1218312190_)))
                         (let ((_hd1218712201_ (##car _e1218612198_))
                               (_tl1218812203_ (##cdr _e1218612198_)))
                           (let ((_body12206_ _tl1218812203_))
                             (if '#t
                                 (cons '%#begin-foreign _body12206_)
                                 (_E1218512194_)))))
                       (_E1218512194_)))))
            (let () (_E1218412208_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12152_)
      (let ((_e1215312160_ _stx12152_))
        (let ((_E1215512164_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215312160_))))
          (let ((_E1215412178_
                 (lambda ()
                   (if (gx#stx-pair? _e1215312160_)
                       (let ((_e1215612168_ (gx#syntax-e _e1215312160_)))
                         (let ((_hd1215712171_ (##car _e1215612168_))
                               (_tl1215812173_ (##cdr _e1215612168_)))
                           (let ((_body12176_ _tl1215812173_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12176_))
                                 (_E1215512164_)))))
                       (_E1215512164_)))))
            (let () (_E1215412178_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12109_)
      (let ((_e1211012120_ _stx12109_))
        (let ((_E1211212124_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1211012120_))))
          (let ((_E1211112148_
                 (lambda ()
                   (if (gx#stx-pair? _e1211012120_)
                       (let ((_e1211312128_ (gx#syntax-e _e1211012120_)))
                         (let ((_hd1211412131_ (##car _e1211312128_))
                               (_tl1211512133_ (##cdr _e1211312128_)))
                           (if (gx#stx-pair? _tl1211512133_)
                               (let ((_e1211612136_
                                      (gx#syntax-e _tl1211512133_)))
                                 (let ((_hd1211712139_ (##car _e1211612136_))
                                       (_tl1211812141_ (##cdr _e1211612136_)))
                                   (let ((_hd12144_ _hd1211712139_))
                                     (let ((_body12146_ _tl1211812141_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12144_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12146_))
                                           (_E1211212124_))))))
                               (_E1211212124_))))
                       (_E1211212124_)))))
            (let () (_E1211112148_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12079_)
      (let ((_e1208012087_ _stx12079_))
        (let ((_E1208212091_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208012087_))))
          (let ((_E1208112105_
                 (lambda ()
                   (if (gx#stx-pair? _e1208012087_)
                       (let ((_e1208312095_ (gx#syntax-e _e1208012087_)))
                         (let ((_hd1208412098_ (##car _e1208312095_))
                               (_tl1208512100_ (##cdr _e1208312095_)))
                           (let ((_body12103_ _tl1208512100_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12103_))
                                 (_E1208212091_)))))
                       (_E1208212091_)))))
            (let () (_E1208112105_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12049_)
      (let ((_e1205012057_ _stx12049_))
        (let ((_E1205212061_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205012057_))))
          (let ((_E1205112075_
                 (lambda ()
                   (if (gx#stx-pair? _e1205012057_)
                       (let ((_e1205312065_ (gx#syntax-e _e1205012057_)))
                         (let ((_hd1205412068_ (##car _e1205312065_))
                               (_tl1205512070_ (##cdr _e1205312065_)))
                           (let ((_body12073_ _tl1205512070_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12073_))
                                 (_E1205212061_)))))
                       (_E1205212061_)))))
            (let () (_E1205112075_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11974_)
      (let ((_generate11976_
             (lambda (_hd12006_)
               (let ((_e1200712017_ _hd12006_))
                 (let ((_E1200912021_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1200712017_))))
                   (let ((_E1200812045_
                          (lambda ()
                            (if (gx#stx-pair? _e1200712017_)
                                (let ((_e1201012025_
                                       (gx#syntax-e _e1200712017_)))
                                  (let ((_hd1201112028_ (##car _e1201012025_))
                                        (_tl1201212030_ (##cdr _e1201012025_)))
                                    (let ((_id12033_ _hd1201112028_))
                                      (if (gx#stx-pair? _tl1201212030_)
                                          (let ((_e1201312035_
                                                 (gx#syntax-e _tl1201212030_)))
                                            (let ((_hd1201412038_
                                                   (##car _e1201312035_))
                                                  (_tl1201512040_
                                                   (##cdr _e1201312035_)))
                                              (let ((_eid12043_
                                                     _hd1201412038_))
                                                (if (gx#stx-null?
                                                     _tl1201512040_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12033_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12043_)
                            '()))
                (_E1200912021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1200912021_)))))
                                          (_E1200912021_)))))
                                (_E1200912021_)))))
                     (let () (_E1200812045_))))))))
        (let ((_e1197711984_ _stx11974_))
          (let ((_E1197911988_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1197711984_))))
            (let ((_E1197812002_
                   (lambda ()
                     (if (gx#stx-pair? _e1197711984_)
                         (let ((_e1198011992_ (gx#syntax-e _e1197711984_)))
                           (let ((_hd1198111995_ (##car _e1198011992_))
                                 (_tl1198211997_ (##cdr _e1198011992_)))
                             (let ((_body12000_ _tl1198211997_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11976_
                                          _body12000_))
                                   (_E1197911988_)))))
                         (_E1197911988_)))))
              (let () (_E1197812002_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11920_)
      (let ((_e1192111934_ _stx11920_))
        (let ((_E1192311938_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1192111934_))))
          (let ((_E1192211970_
                 (lambda ()
                   (if (gx#stx-pair? _e1192111934_)
                       (let ((_e1192411942_ (gx#syntax-e _e1192111934_)))
                         (let ((_hd1192511945_ (##car _e1192411942_))
                               (_tl1192611947_ (##cdr _e1192411942_)))
                           (if (gx#stx-pair? _tl1192611947_)
                               (let ((_e1192711950_
                                      (gx#syntax-e _tl1192611947_)))
                                 (let ((_hd1192811953_ (##car _e1192711950_))
                                       (_tl1192911955_ (##cdr _e1192711950_)))
                                   (let ((_hd11958_ _hd1192811953_))
                                     (if (gx#stx-pair? _tl1192911955_)
                                         (let ((_e1193011960_
                                                (gx#syntax-e _tl1192911955_)))
                                           (let ((_hd1193111963_
                                                  (##car _e1193011960_))
                                                 (_tl1193211965_
                                                  (##cdr _e1193011960_)))
                                             (let ((_expr11968_
                                                    _hd1193111963_))
                                               (if (gx#stx-null?
                                                    _tl1193211965_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11958_)
                           (cons (gx#core-compile-top-syntax _expr11968_)
                                 '())))
               (_E1192311938_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1192311938_)))))
                                         (_E1192311938_)))))
                               (_E1192311938_))))
                       (_E1192311938_)))))
            (let () (_E1192211970_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11865_)
      (let ((_e1186611879_ _stx11865_))
        (let ((_E1186811883_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1186611879_))))
          (let ((_E1186711916_
                 (lambda ()
                   (if (gx#stx-pair? _e1186611879_)
                       (let ((_e1186911887_ (gx#syntax-e _e1186611879_)))
                         (let ((_hd1187011890_ (##car _e1186911887_))
                               (_tl1187111892_ (##cdr _e1186911887_)))
                           (if (gx#stx-pair? _tl1187111892_)
                               (let ((_e1187211895_
                                      (gx#syntax-e _tl1187111892_)))
                                 (let ((_hd1187311898_ (##car _e1187211895_))
                                       (_tl1187411900_ (##cdr _e1187211895_)))
                                   (let ((_hd11903_ _hd1187311898_))
                                     (if (gx#stx-pair? _tl1187411900_)
                                         (let ((_e1187511905_
                                                (gx#syntax-e _tl1187411900_)))
                                           (let ((_hd1187611908_
                                                  (##car _e1187511905_))
                                                 (_tl1187711910_
                                                  (##cdr _e1187511905_)))
                                             (let ((_expr11913_
                                                    _hd1187611908_))
                                               (if (gx#stx-null?
                                                    _tl1187711910_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11903_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11913_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1186811883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1186811883_)))))
                                         (_E1186811883_)))))
                               (_E1186811883_))))
                       (_E1186811883_)))))
            (let () (_E1186711916_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11811_)
      (let ((_e1181211825_ _stx11811_))
        (let ((_E1181411829_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1181211825_))))
          (let ((_E1181311861_
                 (lambda ()
                   (if (gx#stx-pair? _e1181211825_)
                       (let ((_e1181511833_ (gx#syntax-e _e1181211825_)))
                         (let ((_hd1181611836_ (##car _e1181511833_))
                               (_tl1181711838_ (##cdr _e1181511833_)))
                           (if (gx#stx-pair? _tl1181711838_)
                               (let ((_e1181811841_
                                      (gx#syntax-e _tl1181711838_)))
                                 (let ((_hd1181911844_ (##car _e1181811841_))
                                       (_tl1182011846_ (##cdr _e1181811841_)))
                                   (let ((_hd11849_ _hd1181911844_))
                                     (if (gx#stx-pair? _tl1182011846_)
                                         (let ((_e1182111851_
                                                (gx#syntax-e _tl1182011846_)))
                                           (let ((_hd1182211854_
                                                  (##car _e1182111851_))
                                                 (_tl1182311856_
                                                  (##cdr _e1182111851_)))
                                             (let ((_alias-id11859_
                                                    _hd1182211854_))
                                               (if (gx#stx-null?
                                                    _tl1182311856_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11849_)
                           (cons (gx#core-quote-syntax__0 _alias-id11859_)
                                 '())))
               (_E1181411829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1181411829_)))))
                                         (_E1181411829_)))))
                               (_E1181411829_))))
                       (_E1181411829_)))))
            (let () (_E1181311861_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11757_)
      (let ((_e1175811771_ _stx11757_))
        (let ((_E1176011775_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1175811771_))))
          (let ((_E1175911807_
                 (lambda ()
                   (if (gx#stx-pair? _e1175811771_)
                       (let ((_e1176111779_ (gx#syntax-e _e1175811771_)))
                         (let ((_hd1176211782_ (##car _e1176111779_))
                               (_tl1176311784_ (##cdr _e1176111779_)))
                           (if (gx#stx-pair? _tl1176311784_)
                               (let ((_e1176411787_
                                      (gx#syntax-e _tl1176311784_)))
                                 (let ((_hd1176511790_ (##car _e1176411787_))
                                       (_tl1176611792_ (##cdr _e1176411787_)))
                                   (let ((_id11795_ _hd1176511790_))
                                     (if (gx#stx-pair? _tl1176611792_)
                                         (let ((_e1176711797_
                                                (gx#syntax-e _tl1176611792_)))
                                           (let ((_hd1176811800_
                                                  (##car _e1176711797_))
                                                 (_tl1176911802_
                                                  (##cdr _e1176711797_)))
                                             (let ((_binding-id11805_
                                                    _hd1176811800_))
                                               (if (gx#stx-null?
                                                    _tl1176911802_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11795_)
                           (cons (gx#core-quote-syntax__0 _binding-id11805_)
                                 '())))
               (_E1176011775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1176011775_)))))
                                         (_E1176011775_)))))
                               (_E1176011775_))))
                       (_E1176011775_)))))
            (let () (_E1175911807_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11727_)
      (let ((_e1172811735_ _stx11727_))
        (let ((_E1173011739_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1172811735_))))
          (let ((_E1172911753_
                 (lambda ()
                   (if (gx#stx-pair? _e1172811735_)
                       (let ((_e1173111743_ (gx#syntax-e _e1172811735_)))
                         (let ((_hd1173211746_ (##car _e1173111743_))
                               (_tl1173311748_ (##cdr _e1173111743_)))
                           (let ((_decls11751_ _tl1173311748_))
                             (if '#t
                                 (cons '%#declare _decls11751_)
                                 (_E1173011739_)))))
                       (_E1173011739_)))))
            (let () (_E1172911753_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11697_)
      (let ((_e1169811705_ _stx11697_))
        (let ((_E1170011709_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169811705_))))
          (let ((_E1169911723_
                 (lambda ()
                   (if (gx#stx-pair? _e1169811705_)
                       (let ((_e1170111713_ (gx#syntax-e _e1169811705_)))
                         (let ((_hd1170211716_ (##car _e1170111713_))
                               (_tl1170311718_ (##cdr _e1170111713_)))
                           (let ((_clause11721_ _tl1170311718_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11721_))
                                 (_E1170011709_)))))
                       (_E1170011709_)))))
            (let () (_E1169911723_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11654_)
      (let ((_e1165511665_ _stx11654_))
        (let ((_E1165711669_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165511665_))))
          (let ((_E1165611693_
                 (lambda ()
                   (if (gx#stx-pair? _e1165511665_)
                       (let ((_e1165811673_ (gx#syntax-e _e1165511665_)))
                         (let ((_hd1165911676_ (##car _e1165811673_))
                               (_tl1166011678_ (##cdr _e1165811673_)))
                           (let ((_hd11681_ _hd1165911676_))
                             (if (gx#stx-pair? _tl1166011678_)
                                 (let ((_e1166111683_
                                        (gx#syntax-e _tl1166011678_)))
                                   (let ((_hd1166211686_ (##car _e1166111683_))
                                         (_tl1166311688_
                                          (##cdr _e1166111683_)))
                                     (let ((_body11691_ _hd1166211686_))
                                       (if (gx#stx-null? _tl1166311688_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11681_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11691_)
                                                           '()))
                                               (_E1165711669_))
                                           (_E1165711669_)))))
                                 (_E1165711669_)))))
                       (_E1165711669_)))))
            (let () (_E1165611693_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11624_)
      (let ((_e1162511632_ _stx11624_))
        (let ((_E1162711636_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1162511632_))))
          (let ((_E1162611650_
                 (lambda ()
                   (if (gx#stx-pair? _e1162511632_)
                       (let ((_e1162811640_ (gx#syntax-e _e1162511632_)))
                         (let ((_hd1162911643_ (##car _e1162811640_))
                               (_tl1163011645_ (##cdr _e1162811640_)))
                           (let ((_clauses11648_ _tl1163011645_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11648_))
                                 (_E1162711636_)))))
                       (_E1162711636_)))))
            (let () (_E1162611650_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11557
      (lambda (_stx11559_ _form11560_)
        (let ((_e1156111574_ _stx11559_))
          (let ((_E1156311578_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1156111574_))))
            (let ((_E1156211610_
                   (lambda ()
                     (if (gx#stx-pair? _e1156111574_)
                         (let ((_e1156411582_ (gx#syntax-e _e1156111574_)))
                           (let ((_hd1156511585_ (##car _e1156411582_))
                                 (_tl1156611587_ (##cdr _e1156411582_)))
                             (if (gx#stx-pair? _tl1156611587_)
                                 (let ((_e1156711590_
                                        (gx#syntax-e _tl1156611587_)))
                                   (let ((_hd1156811593_ (##car _e1156711590_))
                                         (_tl1156911595_
                                          (##cdr _e1156711590_)))
                                     (let ((_hd11598_ _hd1156811593_))
                                       (if (gx#stx-pair? _tl1156911595_)
                                           (let ((_e1157011600_
                                                  (gx#syntax-e
                                                   _tl1156911595_)))
                                             (let ((_hd1157111603_
                                                    (##car _e1157011600_))
                                                   (_tl1157211605_
                                                    (##cdr _e1157011600_)))
                                               (let ((_body11608_
                                                      _hd1157111603_))
                                                 (if (gx#stx-null?
                                                      _tl1157211605_)
                                                     (if '#t
                                                         (cons _form11560_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11598_)
                             (cons (gx#core-compile-top-syntax _body11608_)
                                   '())))
                 (_E1156311578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1156311578_)))))
                                           (_E1156311578_)))))
                                 (_E1156311578_))))
                         (_E1156311578_)))))
              (let () (_E1156211610_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11617_)
          (let ((_form11619_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11557
             _stx11617_
             _form11619_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12345_
          (let ((_g12344_ (length _g12345_)))
            (cond ((fx= _g12344_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12345_))
                  ((fx= _g12344_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11557
                          _g12345_))
                  (else (error "No clause matching arguments" _g12345_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11556_)
      (gx#core-compile-top-let-values%__opt-lambda11557
       _stx11556_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11554_)
      (gx#core-compile-top-let-values%__opt-lambda11557
       _stx11554_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11513_)
      (let ((_e1151411524_ _stx11513_))
        (let ((_E1151611528_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1151411524_))))
          (let ((_E1151511550_
                 (lambda ()
                   (if (gx#stx-pair? _e1151411524_)
                       (let ((_e1151711532_ (gx#syntax-e _e1151411524_)))
                         (let ((_hd1151811535_ (##car _e1151711532_))
                               (_tl1151911537_ (##cdr _e1151711532_)))
                           (if (gx#stx-pair? _tl1151911537_)
                               (let ((_e1152011540_
                                      (gx#syntax-e _tl1151911537_)))
                                 (let ((_hd1152111543_ (##car _e1152011540_))
                                       (_tl1152211545_ (##cdr _e1152011540_)))
                                   (let ((_e11548_ _hd1152111543_))
                                     (if (gx#stx-null? _tl1152211545_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11548_)
                                                         '()))
                                             (_E1151611528_))
                                         (_E1151611528_)))))
                               (_E1151611528_))))
                       (_E1151611528_)))))
            (let () (_E1151511550_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11472_)
      (let ((_e1147311483_ _stx11472_))
        (let ((_E1147511487_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1147311483_))))
          (let ((_E1147411509_
                 (lambda ()
                   (if (gx#stx-pair? _e1147311483_)
                       (let ((_e1147611491_ (gx#syntax-e _e1147311483_)))
                         (let ((_hd1147711494_ (##car _e1147611491_))
                               (_tl1147811496_ (##cdr _e1147611491_)))
                           (if (gx#stx-pair? _tl1147811496_)
                               (let ((_e1147911499_
                                      (gx#syntax-e _tl1147811496_)))
                                 (let ((_hd1148011502_ (##car _e1147911499_))
                                       (_tl1148111504_ (##cdr _e1147911499_)))
                                   (let ((_e11507_ _hd1148011502_))
                                     (if (gx#stx-null? _tl1148111504_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11507_)
                                                         '()))
                                             (_E1147511487_))
                                         (_E1147511487_)))))
                               (_E1147511487_))))
                       (_E1147511487_)))))
            (let () (_E1147411509_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11429_)
      (let ((_e1143011440_ _stx11429_))
        (let ((_E1143211444_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1143011440_))))
          (let ((_E1143111468_
                 (lambda ()
                   (if (gx#stx-pair? _e1143011440_)
                       (let ((_e1143311448_ (gx#syntax-e _e1143011440_)))
                         (let ((_hd1143411451_ (##car _e1143311448_))
                               (_tl1143511453_ (##cdr _e1143311448_)))
                           (if (gx#stx-pair? _tl1143511453_)
                               (let ((_e1143611456_
                                      (gx#syntax-e _tl1143511453_)))
                                 (let ((_hd1143711459_ (##car _e1143611456_))
                                       (_tl1143811461_ (##cdr _e1143611456_)))
                                   (let ((_rator11464_ _hd1143711459_))
                                     (let ((_args11466_ _tl1143811461_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11464_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11466_))
                                           (_E1143211444_))))))
                               (_E1143211444_))))
                       (_E1143211444_)))))
            (let () (_E1143111468_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11362_)
      (let ((_e1136311379_ _stx11362_))
        (let ((_E1136511383_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1136311379_))))
          (let ((_E1136411425_
                 (lambda ()
                   (if (gx#stx-pair? _e1136311379_)
                       (let ((_e1136611387_ (gx#syntax-e _e1136311379_)))
                         (let ((_hd1136711390_ (##car _e1136611387_))
                               (_tl1136811392_ (##cdr _e1136611387_)))
                           (if (gx#stx-pair? _tl1136811392_)
                               (let ((_e1136911395_
                                      (gx#syntax-e _tl1136811392_)))
                                 (let ((_hd1137011398_ (##car _e1136911395_))
                                       (_tl1137111400_ (##cdr _e1136911395_)))
                                   (let ((_test11403_ _hd1137011398_))
                                     (if (gx#stx-pair? _tl1137111400_)
                                         (let ((_e1137211405_
                                                (gx#syntax-e _tl1137111400_)))
                                           (let ((_hd1137311408_
                                                  (##car _e1137211405_))
                                                 (_tl1137411410_
                                                  (##cdr _e1137211405_)))
                                             (let ((_K11413_ _hd1137311408_))
                                               (if (gx#stx-pair?
                                                    _tl1137411410_)
                                                   (let ((_e1137511415_
                                                          (gx#syntax-e
                                                           _tl1137411410_)))
                                                     (let ((_hd1137611418_
                                                            (##car _e1137511415_))
                                                           (_tl1137711420_
                                                            (##cdr _e1137511415_)))
                                                       (let ((_E11423_
                                                              _hd1137611418_))
                                                         (if (gx#stx-null?
                                                              _tl1137711420_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11403_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11413_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11423_)
                                                 '()))))
                         (_E1136511383_))
                     (_E1136511383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1136511383_)))))
                                         (_E1136511383_)))))
                               (_E1136511383_))))
                       (_E1136511383_)))))
            (let () (_E1136411425_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11321_)
      (let ((_e1132211332_ _stx11321_))
        (let ((_E1132411336_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1132211332_))))
          (let ((_E1132311358_
                 (lambda ()
                   (if (gx#stx-pair? _e1132211332_)
                       (let ((_e1132511340_ (gx#syntax-e _e1132211332_)))
                         (let ((_hd1132611343_ (##car _e1132511340_))
                               (_tl1132711345_ (##cdr _e1132511340_)))
                           (if (gx#stx-pair? _tl1132711345_)
                               (let ((_e1132811348_
                                      (gx#syntax-e _tl1132711345_)))
                                 (let ((_hd1132911351_ (##car _e1132811348_))
                                       (_tl1133011353_ (##cdr _e1132811348_)))
                                   (let ((_id11356_ _hd1132911351_))
                                     (if (gx#stx-null? _tl1133011353_)
                                         (if (gx#identifier? _id11356_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11356_)
                                                         '()))
                                             (_E1132411336_))
                                         (_E1132411336_)))))
                               (_E1132411336_))))
                       (_E1132411336_)))))
            (let () (_E1132311358_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11267_)
      (let ((_e1126811281_ _stx11267_))
        (let ((_E1127011285_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1126811281_))))
          (let ((_E1126911317_
                 (lambda ()
                   (if (gx#stx-pair? _e1126811281_)
                       (let ((_e1127111289_ (gx#syntax-e _e1126811281_)))
                         (let ((_hd1127211292_ (##car _e1127111289_))
                               (_tl1127311294_ (##cdr _e1127111289_)))
                           (if (gx#stx-pair? _tl1127311294_)
                               (let ((_e1127411297_
                                      (gx#syntax-e _tl1127311294_)))
                                 (let ((_hd1127511300_ (##car _e1127411297_))
                                       (_tl1127611302_ (##cdr _e1127411297_)))
                                   (let ((_id11305_ _hd1127511300_))
                                     (if (gx#stx-pair? _tl1127611302_)
                                         (let ((_e1127711307_
                                                (gx#syntax-e _tl1127611302_)))
                                           (let ((_hd1127811310_
                                                  (##car _e1127711307_))
                                                 (_tl1127911312_
                                                  (##cdr _e1127711307_)))
                                             (let ((_expr11315_
                                                    _hd1127811310_))
                                               (if (gx#stx-null?
                                                    _tl1127911312_)
                                                   (if (gx#identifier?
                                                        _id11305_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11305_)
                           (cons (gx#core-compile-top-syntax _expr11315_)
                                 '())))
               (_E1127011285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1127011285_)))))
                                         (_E1127011285_)))))
                               (_E1127011285_))))
                       (_E1127011285_)))))
            (let () (_E1126911317_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11262_)
      (let ((_$e11264_ (gx#resolve-identifier__0 _id11262_)))
        (if _$e11264_
            (##structure-ref _$e11264_ '1 gx#binding::t '#f)
            _id11262_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11260_)
      (if (gx#identifier? _hd11260_)
          (gx#core-compile-top-runtime-ref _hd11260_)
          '#f))))
