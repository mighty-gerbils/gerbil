(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12187_)
      (let ((_e1218812195_ _stx12187_))
        (let ((_E1219012199_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1218812195_))))
          (let ((_E1218912213_
                 (lambda ()
                   (if (gx#stx-pair? _e1218812195_)
                       (let ((_e1219112203_ (gx#syntax-e _e1218812195_)))
                         (let ((_hd1219212206_ (##car _e1219112203_))
                               (_tl1219312208_ (##cdr _e1219112203_)))
                           (let ((_form12211_ _hd1219212206_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12211_)
                                  'compile-top-syntax
                                  _stx12187_)
                                 (_E1219012199_)))))
                       (_E1219012199_)))))
            (let () (_E1218912213_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12147_ _stx12148_)
      (let ((_self1214912157_ _self12147_))
        (let ((_E1215112161_
               (lambda () (error '"No clause matching" _self1214912157_))))
          (let ((_K1215212173_
                 (lambda (_K12164_)
                   (let ((_$e12166_ (gx#stx-source _stx12148_)))
                     (if _$e12166_
                         ((lambda (_g1216812170_)
                            (gx#stx-wrap-source
                             (_K12164_ _stx12148_)
                             _g1216812170_))
                          _$e12166_)
                         (_K12164_ _stx12148_))))))
            (if (struct-instance? gx#core-expander::t _self1214912157_)
                (let ((_e1215312176_ (##vector-ref _self1214912157_ '1)))
                  (let ((_e1215412179_ (##vector-ref _self1214912157_ '2)))
                    (let ((_e1215512182_ (##vector-ref _self1214912157_ '3)))
                      (let ((_K12185_ _e1215512182_))
                        (_K1215212173_ _K12185_)))))
                (_E1215112161_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12145_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12145_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12115_)
      (let ((_e1211612123_ _stx12115_))
        (let ((_E1211812127_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1211612123_))))
          (let ((_E1211712141_
                 (lambda ()
                   (if (gx#stx-pair? _e1211612123_)
                       (let ((_e1211912131_ (gx#syntax-e _e1211612123_)))
                         (let ((_hd1212012134_ (##car _e1211912131_))
                               (_tl1212112136_ (##cdr _e1211912131_)))
                           (let ((_body12139_ _tl1212112136_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12139_))
                                 (_E1211812127_)))))
                       (_E1211812127_)))))
            (let () (_E1211712141_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12084_)
      (let ((_e1208512092_ _stx12084_))
        (let ((_E1208712096_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208512092_))))
          (let ((_E1208612111_
                 (lambda ()
                   (if (gx#stx-pair? _e1208512092_)
                       (let ((_e1208812100_ (gx#syntax-e _e1208512092_)))
                         (let ((_hd1208912103_ (##car _e1208812100_))
                               (_tl1209012105_ (##cdr _e1208812100_)))
                           (let ((_body12108_ _tl1209012105_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12108_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1208712096_)))))
                       (_E1208712096_)))))
            (let () (_E1208612111_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12054_)
      (let ((_e1205512062_ _stx12054_))
        (let ((_E1205712066_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205512062_))))
          (let ((_E1205612080_
                 (lambda ()
                   (if (gx#stx-pair? _e1205512062_)
                       (let ((_e1205812070_ (gx#syntax-e _e1205512062_)))
                         (let ((_hd1205912073_ (##car _e1205812070_))
                               (_tl1206012075_ (##cdr _e1205812070_)))
                           (let ((_body12078_ _tl1206012075_))
                             (if '#t
                                 (cons '%#begin-foreign _body12078_)
                                 (_E1205712066_)))))
                       (_E1205712066_)))))
            (let () (_E1205612080_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12024_)
      (let ((_e1202512032_ _stx12024_))
        (let ((_E1202712036_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1202512032_))))
          (let ((_E1202612050_
                 (lambda ()
                   (if (gx#stx-pair? _e1202512032_)
                       (let ((_e1202812040_ (gx#syntax-e _e1202512032_)))
                         (let ((_hd1202912043_ (##car _e1202812040_))
                               (_tl1203012045_ (##cdr _e1202812040_)))
                           (let ((_body12048_ _tl1203012045_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12048_))
                                 (_E1202712036_)))))
                       (_E1202712036_)))))
            (let () (_E1202612050_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx11981_)
      (let ((_e1198211992_ _stx11981_))
        (let ((_E1198411996_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1198211992_))))
          (let ((_E1198312020_
                 (lambda ()
                   (if (gx#stx-pair? _e1198211992_)
                       (let ((_e1198512000_ (gx#syntax-e _e1198211992_)))
                         (let ((_hd1198612003_ (##car _e1198512000_))
                               (_tl1198712005_ (##cdr _e1198512000_)))
                           (if (gx#stx-pair? _tl1198712005_)
                               (let ((_e1198812008_
                                      (gx#syntax-e _tl1198712005_)))
                                 (let ((_hd1198912011_ (##car _e1198812008_))
                                       (_tl1199012013_ (##cdr _e1198812008_)))
                                   (let ((_hd12016_ _hd1198912011_))
                                     (let ((_body12018_ _tl1199012013_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12016_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12018_))
                                           (_E1198411996_))))))
                               (_E1198411996_))))
                       (_E1198411996_)))))
            (let () (_E1198312020_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx11951_)
      (let ((_e1195211959_ _stx11951_))
        (let ((_E1195411963_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1195211959_))))
          (let ((_E1195311977_
                 (lambda ()
                   (if (gx#stx-pair? _e1195211959_)
                       (let ((_e1195511967_ (gx#syntax-e _e1195211959_)))
                         (let ((_hd1195611970_ (##car _e1195511967_))
                               (_tl1195711972_ (##cdr _e1195511967_)))
                           (let ((_body11975_ _tl1195711972_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body11975_))
                                 (_E1195411963_)))))
                       (_E1195411963_)))))
            (let () (_E1195311977_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx11921_)
      (let ((_e1192211929_ _stx11921_))
        (let ((_E1192411933_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1192211929_))))
          (let ((_E1192311947_
                 (lambda ()
                   (if (gx#stx-pair? _e1192211929_)
                       (let ((_e1192511937_ (gx#syntax-e _e1192211929_)))
                         (let ((_hd1192611940_ (##car _e1192511937_))
                               (_tl1192711942_ (##cdr _e1192511937_)))
                           (let ((_body11945_ _tl1192711942_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body11945_))
                                 (_E1192411933_)))))
                       (_E1192411933_)))))
            (let () (_E1192311947_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11846_)
      (let ((_generate11848_
             (lambda (_hd11878_)
               (let ((_e1187911889_ _hd11878_))
                 (let ((_E1188111893_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1187911889_))))
                   (let ((_E1188011917_
                          (lambda ()
                            (if (gx#stx-pair? _e1187911889_)
                                (let ((_e1188211897_
                                       (gx#syntax-e _e1187911889_)))
                                  (let ((_hd1188311900_ (##car _e1188211897_))
                                        (_tl1188411902_ (##cdr _e1188211897_)))
                                    (let ((_id11905_ _hd1188311900_))
                                      (if (gx#stx-pair? _tl1188411902_)
                                          (let ((_e1188511907_
                                                 (gx#syntax-e _tl1188411902_)))
                                            (let ((_hd1188611910_
                                                   (##car _e1188511907_))
                                                  (_tl1188711912_
                                                   (##cdr _e1188511907_)))
                                              (let ((_eid11915_
                                                     _hd1188611910_))
                                                (if (gx#stx-null?
                                                     _tl1188711912_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id11905_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid11915_)
                            '()))
                (_E1188111893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1188111893_)))))
                                          (_E1188111893_)))))
                                (_E1188111893_)))))
                     (let () (_E1188011917_))))))))
        (let ((_e1184911856_ _stx11846_))
          (let ((_E1185111860_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1184911856_))))
            (let ((_E1185011874_
                   (lambda ()
                     (if (gx#stx-pair? _e1184911856_)
                         (let ((_e1185211864_ (gx#syntax-e _e1184911856_)))
                           (let ((_hd1185311867_ (##car _e1185211864_))
                                 (_tl1185411869_ (##cdr _e1185211864_)))
                             (let ((_body11872_ _tl1185411869_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11848_
                                          _body11872_))
                                   (_E1185111860_)))))
                         (_E1185111860_)))))
              (let () (_E1185011874_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11792_)
      (let ((_e1179311806_ _stx11792_))
        (let ((_E1179511810_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1179311806_))))
          (let ((_E1179411842_
                 (lambda ()
                   (if (gx#stx-pair? _e1179311806_)
                       (let ((_e1179611814_ (gx#syntax-e _e1179311806_)))
                         (let ((_hd1179711817_ (##car _e1179611814_))
                               (_tl1179811819_ (##cdr _e1179611814_)))
                           (if (gx#stx-pair? _tl1179811819_)
                               (let ((_e1179911822_
                                      (gx#syntax-e _tl1179811819_)))
                                 (let ((_hd1180011825_ (##car _e1179911822_))
                                       (_tl1180111827_ (##cdr _e1179911822_)))
                                   (let ((_hd11830_ _hd1180011825_))
                                     (if (gx#stx-pair? _tl1180111827_)
                                         (let ((_e1180211832_
                                                (gx#syntax-e _tl1180111827_)))
                                           (let ((_hd1180311835_
                                                  (##car _e1180211832_))
                                                 (_tl1180411837_
                                                  (##cdr _e1180211832_)))
                                             (let ((_expr11840_
                                                    _hd1180311835_))
                                               (if (gx#stx-null?
                                                    _tl1180411837_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11830_)
                           (cons (gx#core-compile-top-syntax _expr11840_)
                                 '())))
               (_E1179511810_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1179511810_)))))
                                         (_E1179511810_)))))
                               (_E1179511810_))))
                       (_E1179511810_)))))
            (let () (_E1179411842_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11737_)
      (let ((_e1173811751_ _stx11737_))
        (let ((_E1174011755_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1173811751_))))
          (let ((_E1173911788_
                 (lambda ()
                   (if (gx#stx-pair? _e1173811751_)
                       (let ((_e1174111759_ (gx#syntax-e _e1173811751_)))
                         (let ((_hd1174211762_ (##car _e1174111759_))
                               (_tl1174311764_ (##cdr _e1174111759_)))
                           (if (gx#stx-pair? _tl1174311764_)
                               (let ((_e1174411767_
                                      (gx#syntax-e _tl1174311764_)))
                                 (let ((_hd1174511770_ (##car _e1174411767_))
                                       (_tl1174611772_ (##cdr _e1174411767_)))
                                   (let ((_hd11775_ _hd1174511770_))
                                     (if (gx#stx-pair? _tl1174611772_)
                                         (let ((_e1174711777_
                                                (gx#syntax-e _tl1174611772_)))
                                           (let ((_hd1174811780_
                                                  (##car _e1174711777_))
                                                 (_tl1174911782_
                                                  (##cdr _e1174711777_)))
                                             (let ((_expr11785_
                                                    _hd1174811780_))
                                               (if (gx#stx-null?
                                                    _tl1174911782_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11775_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11785_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1174011755_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1174011755_)))))
                                         (_E1174011755_)))))
                               (_E1174011755_))))
                       (_E1174011755_)))))
            (let () (_E1173911788_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11683_)
      (let ((_e1168411697_ _stx11683_))
        (let ((_E1168611701_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1168411697_))))
          (let ((_E1168511733_
                 (lambda ()
                   (if (gx#stx-pair? _e1168411697_)
                       (let ((_e1168711705_ (gx#syntax-e _e1168411697_)))
                         (let ((_hd1168811708_ (##car _e1168711705_))
                               (_tl1168911710_ (##cdr _e1168711705_)))
                           (if (gx#stx-pair? _tl1168911710_)
                               (let ((_e1169011713_
                                      (gx#syntax-e _tl1168911710_)))
                                 (let ((_hd1169111716_ (##car _e1169011713_))
                                       (_tl1169211718_ (##cdr _e1169011713_)))
                                   (let ((_hd11721_ _hd1169111716_))
                                     (if (gx#stx-pair? _tl1169211718_)
                                         (let ((_e1169311723_
                                                (gx#syntax-e _tl1169211718_)))
                                           (let ((_hd1169411726_
                                                  (##car _e1169311723_))
                                                 (_tl1169511728_
                                                  (##cdr _e1169311723_)))
                                             (let ((_alias-id11731_
                                                    _hd1169411726_))
                                               (if (gx#stx-null?
                                                    _tl1169511728_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11721_)
                           (cons (gx#core-quote-syntax__0 _alias-id11731_)
                                 '())))
               (_E1168611701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1168611701_)))))
                                         (_E1168611701_)))))
                               (_E1168611701_))))
                       (_E1168611701_)))))
            (let () (_E1168511733_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11629_)
      (let ((_e1163011643_ _stx11629_))
        (let ((_E1163211647_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1163011643_))))
          (let ((_E1163111679_
                 (lambda ()
                   (if (gx#stx-pair? _e1163011643_)
                       (let ((_e1163311651_ (gx#syntax-e _e1163011643_)))
                         (let ((_hd1163411654_ (##car _e1163311651_))
                               (_tl1163511656_ (##cdr _e1163311651_)))
                           (if (gx#stx-pair? _tl1163511656_)
                               (let ((_e1163611659_
                                      (gx#syntax-e _tl1163511656_)))
                                 (let ((_hd1163711662_ (##car _e1163611659_))
                                       (_tl1163811664_ (##cdr _e1163611659_)))
                                   (let ((_id11667_ _hd1163711662_))
                                     (if (gx#stx-pair? _tl1163811664_)
                                         (let ((_e1163911669_
                                                (gx#syntax-e _tl1163811664_)))
                                           (let ((_hd1164011672_
                                                  (##car _e1163911669_))
                                                 (_tl1164111674_
                                                  (##cdr _e1163911669_)))
                                             (let ((_binding-id11677_
                                                    _hd1164011672_))
                                               (if (gx#stx-null?
                                                    _tl1164111674_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11667_)
                           (cons (gx#core-quote-syntax__0 _binding-id11677_)
                                 '())))
               (_E1163211647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1163211647_)))))
                                         (_E1163211647_)))))
                               (_E1163211647_))))
                       (_E1163211647_)))))
            (let () (_E1163111679_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11599_)
      (let ((_e1160011607_ _stx11599_))
        (let ((_E1160211611_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160011607_))))
          (let ((_E1160111625_
                 (lambda ()
                   (if (gx#stx-pair? _e1160011607_)
                       (let ((_e1160311615_ (gx#syntax-e _e1160011607_)))
                         (let ((_hd1160411618_ (##car _e1160311615_))
                               (_tl1160511620_ (##cdr _e1160311615_)))
                           (let ((_decls11623_ _tl1160511620_))
                             (if '#t
                                 (cons '%#declare _decls11623_)
                                 (_E1160211611_)))))
                       (_E1160211611_)))))
            (let () (_E1160111625_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11569_)
      (let ((_e1157011577_ _stx11569_))
        (let ((_E1157211581_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1157011577_))))
          (let ((_E1157111595_
                 (lambda ()
                   (if (gx#stx-pair? _e1157011577_)
                       (let ((_e1157311585_ (gx#syntax-e _e1157011577_)))
                         (let ((_hd1157411588_ (##car _e1157311585_))
                               (_tl1157511590_ (##cdr _e1157311585_)))
                           (let ((_clause11593_ _tl1157511590_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11593_))
                                 (_E1157211581_)))))
                       (_E1157211581_)))))
            (let () (_E1157111595_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11526_)
      (let ((_e1152711537_ _stx11526_))
        (let ((_E1152911541_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1152711537_))))
          (let ((_E1152811565_
                 (lambda ()
                   (if (gx#stx-pair? _e1152711537_)
                       (let ((_e1153011545_ (gx#syntax-e _e1152711537_)))
                         (let ((_hd1153111548_ (##car _e1153011545_))
                               (_tl1153211550_ (##cdr _e1153011545_)))
                           (let ((_hd11553_ _hd1153111548_))
                             (if (gx#stx-pair? _tl1153211550_)
                                 (let ((_e1153311555_
                                        (gx#syntax-e _tl1153211550_)))
                                   (let ((_hd1153411558_ (##car _e1153311555_))
                                         (_tl1153511560_
                                          (##cdr _e1153311555_)))
                                     (let ((_body11563_ _hd1153411558_))
                                       (if (gx#stx-null? _tl1153511560_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11553_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11563_)
                                                           '()))
                                               (_E1152911541_))
                                           (_E1152911541_)))))
                                 (_E1152911541_)))))
                       (_E1152911541_)))))
            (let () (_E1152811565_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11496_)
      (let ((_e1149711504_ _stx11496_))
        (let ((_E1149911508_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1149711504_))))
          (let ((_E1149811522_
                 (lambda ()
                   (if (gx#stx-pair? _e1149711504_)
                       (let ((_e1150011512_ (gx#syntax-e _e1149711504_)))
                         (let ((_hd1150111515_ (##car _e1150011512_))
                               (_tl1150211517_ (##cdr _e1150011512_)))
                           (let ((_clauses11520_ _tl1150211517_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11520_))
                                 (_E1149911508_)))))
                       (_E1149911508_)))))
            (let () (_E1149811522_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11429
      (lambda (_stx11431_ _form11432_)
        (let ((_e1143311446_ _stx11431_))
          (let ((_E1143511450_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1143311446_))))
            (let ((_E1143411482_
                   (lambda ()
                     (if (gx#stx-pair? _e1143311446_)
                         (let ((_e1143611454_ (gx#syntax-e _e1143311446_)))
                           (let ((_hd1143711457_ (##car _e1143611454_))
                                 (_tl1143811459_ (##cdr _e1143611454_)))
                             (if (gx#stx-pair? _tl1143811459_)
                                 (let ((_e1143911462_
                                        (gx#syntax-e _tl1143811459_)))
                                   (let ((_hd1144011465_ (##car _e1143911462_))
                                         (_tl1144111467_
                                          (##cdr _e1143911462_)))
                                     (let ((_hd11470_ _hd1144011465_))
                                       (if (gx#stx-pair? _tl1144111467_)
                                           (let ((_e1144211472_
                                                  (gx#syntax-e
                                                   _tl1144111467_)))
                                             (let ((_hd1144311475_
                                                    (##car _e1144211472_))
                                                   (_tl1144411477_
                                                    (##cdr _e1144211472_)))
                                               (let ((_body11480_
                                                      _hd1144311475_))
                                                 (if (gx#stx-null?
                                                      _tl1144411477_)
                                                     (if '#t
                                                         (cons _form11432_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11470_)
                             (cons (gx#core-compile-top-syntax _body11480_)
                                   '())))
                 (_E1143511450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1143511450_)))))
                                           (_E1143511450_)))))
                                 (_E1143511450_))))
                         (_E1143511450_)))))
              (let () (_E1143411482_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11489_)
          (let ((_form11491_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11429
             _stx11489_
             _form11491_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12217_
          (let ((_g12216_ (length _g12217_)))
            (cond ((fx= _g12216_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12217_))
                  ((fx= _g12216_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11429
                          _g12217_))
                  (else (error "No clause matching arguments" _g12217_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11428_)
      (gx#core-compile-top-let-values%__opt-lambda11429
       _stx11428_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11426_)
      (gx#core-compile-top-let-values%__opt-lambda11429
       _stx11426_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11385_)
      (let ((_e1138611396_ _stx11385_))
        (let ((_E1138811400_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1138611396_))))
          (let ((_E1138711422_
                 (lambda ()
                   (if (gx#stx-pair? _e1138611396_)
                       (let ((_e1138911404_ (gx#syntax-e _e1138611396_)))
                         (let ((_hd1139011407_ (##car _e1138911404_))
                               (_tl1139111409_ (##cdr _e1138911404_)))
                           (if (gx#stx-pair? _tl1139111409_)
                               (let ((_e1139211412_
                                      (gx#syntax-e _tl1139111409_)))
                                 (let ((_hd1139311415_ (##car _e1139211412_))
                                       (_tl1139411417_ (##cdr _e1139211412_)))
                                   (let ((_e11420_ _hd1139311415_))
                                     (if (gx#stx-null? _tl1139411417_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11420_)
                                                         '()))
                                             (_E1138811400_))
                                         (_E1138811400_)))))
                               (_E1138811400_))))
                       (_E1138811400_)))))
            (let () (_E1138711422_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11344_)
      (let ((_e1134511355_ _stx11344_))
        (let ((_E1134711359_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1134511355_))))
          (let ((_E1134611381_
                 (lambda ()
                   (if (gx#stx-pair? _e1134511355_)
                       (let ((_e1134811363_ (gx#syntax-e _e1134511355_)))
                         (let ((_hd1134911366_ (##car _e1134811363_))
                               (_tl1135011368_ (##cdr _e1134811363_)))
                           (if (gx#stx-pair? _tl1135011368_)
                               (let ((_e1135111371_
                                      (gx#syntax-e _tl1135011368_)))
                                 (let ((_hd1135211374_ (##car _e1135111371_))
                                       (_tl1135311376_ (##cdr _e1135111371_)))
                                   (let ((_e11379_ _hd1135211374_))
                                     (if (gx#stx-null? _tl1135311376_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11379_)
                                                         '()))
                                             (_E1134711359_))
                                         (_E1134711359_)))))
                               (_E1134711359_))))
                       (_E1134711359_)))))
            (let () (_E1134611381_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11301_)
      (let ((_e1130211312_ _stx11301_))
        (let ((_E1130411316_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1130211312_))))
          (let ((_E1130311340_
                 (lambda ()
                   (if (gx#stx-pair? _e1130211312_)
                       (let ((_e1130511320_ (gx#syntax-e _e1130211312_)))
                         (let ((_hd1130611323_ (##car _e1130511320_))
                               (_tl1130711325_ (##cdr _e1130511320_)))
                           (if (gx#stx-pair? _tl1130711325_)
                               (let ((_e1130811328_
                                      (gx#syntax-e _tl1130711325_)))
                                 (let ((_hd1130911331_ (##car _e1130811328_))
                                       (_tl1131011333_ (##cdr _e1130811328_)))
                                   (let ((_rator11336_ _hd1130911331_))
                                     (let ((_args11338_ _tl1131011333_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11336_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11338_))
                                           (_E1130411316_))))))
                               (_E1130411316_))))
                       (_E1130411316_)))))
            (let () (_E1130311340_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11234_)
      (let ((_e1123511251_ _stx11234_))
        (let ((_E1123711255_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1123511251_))))
          (let ((_E1123611297_
                 (lambda ()
                   (if (gx#stx-pair? _e1123511251_)
                       (let ((_e1123811259_ (gx#syntax-e _e1123511251_)))
                         (let ((_hd1123911262_ (##car _e1123811259_))
                               (_tl1124011264_ (##cdr _e1123811259_)))
                           (if (gx#stx-pair? _tl1124011264_)
                               (let ((_e1124111267_
                                      (gx#syntax-e _tl1124011264_)))
                                 (let ((_hd1124211270_ (##car _e1124111267_))
                                       (_tl1124311272_ (##cdr _e1124111267_)))
                                   (let ((_test11275_ _hd1124211270_))
                                     (if (gx#stx-pair? _tl1124311272_)
                                         (let ((_e1124411277_
                                                (gx#syntax-e _tl1124311272_)))
                                           (let ((_hd1124511280_
                                                  (##car _e1124411277_))
                                                 (_tl1124611282_
                                                  (##cdr _e1124411277_)))
                                             (let ((_K11285_ _hd1124511280_))
                                               (if (gx#stx-pair?
                                                    _tl1124611282_)
                                                   (let ((_e1124711287_
                                                          (gx#syntax-e
                                                           _tl1124611282_)))
                                                     (let ((_hd1124811290_
                                                            (##car _e1124711287_))
                                                           (_tl1124911292_
                                                            (##cdr _e1124711287_)))
                                                       (let ((_E11295_
                                                              _hd1124811290_))
                                                         (if (gx#stx-null?
                                                              _tl1124911292_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11275_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11285_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11295_)
                                                 '()))))
                         (_E1123711255_))
                     (_E1123711255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1123711255_)))))
                                         (_E1123711255_)))))
                               (_E1123711255_))))
                       (_E1123711255_)))))
            (let () (_E1123611297_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11193_)
      (let ((_e1119411204_ _stx11193_))
        (let ((_E1119611208_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1119411204_))))
          (let ((_E1119511230_
                 (lambda ()
                   (if (gx#stx-pair? _e1119411204_)
                       (let ((_e1119711212_ (gx#syntax-e _e1119411204_)))
                         (let ((_hd1119811215_ (##car _e1119711212_))
                               (_tl1119911217_ (##cdr _e1119711212_)))
                           (if (gx#stx-pair? _tl1119911217_)
                               (let ((_e1120011220_
                                      (gx#syntax-e _tl1119911217_)))
                                 (let ((_hd1120111223_ (##car _e1120011220_))
                                       (_tl1120211225_ (##cdr _e1120011220_)))
                                   (let ((_id11228_ _hd1120111223_))
                                     (if (gx#stx-null? _tl1120211225_)
                                         (if (gx#identifier? _id11228_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11228_)
                                                         '()))
                                             (_E1119611208_))
                                         (_E1119611208_)))))
                               (_E1119611208_))))
                       (_E1119611208_)))))
            (let () (_E1119511230_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11139_)
      (let ((_e1114011153_ _stx11139_))
        (let ((_E1114211157_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1114011153_))))
          (let ((_E1114111189_
                 (lambda ()
                   (if (gx#stx-pair? _e1114011153_)
                       (let ((_e1114311161_ (gx#syntax-e _e1114011153_)))
                         (let ((_hd1114411164_ (##car _e1114311161_))
                               (_tl1114511166_ (##cdr _e1114311161_)))
                           (if (gx#stx-pair? _tl1114511166_)
                               (let ((_e1114611169_
                                      (gx#syntax-e _tl1114511166_)))
                                 (let ((_hd1114711172_ (##car _e1114611169_))
                                       (_tl1114811174_ (##cdr _e1114611169_)))
                                   (let ((_id11177_ _hd1114711172_))
                                     (if (gx#stx-pair? _tl1114811174_)
                                         (let ((_e1114911179_
                                                (gx#syntax-e _tl1114811174_)))
                                           (let ((_hd1115011182_
                                                  (##car _e1114911179_))
                                                 (_tl1115111184_
                                                  (##cdr _e1114911179_)))
                                             (let ((_expr11187_
                                                    _hd1115011182_))
                                               (if (gx#stx-null?
                                                    _tl1115111184_)
                                                   (if (gx#identifier?
                                                        _id11177_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11177_)
                           (cons (gx#core-compile-top-syntax _expr11187_)
                                 '())))
               (_E1114211157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1114211157_)))))
                                         (_E1114211157_)))))
                               (_E1114211157_))))
                       (_E1114211157_)))))
            (let () (_E1114111189_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11134_)
      (let ((_$e11136_ (gx#resolve-identifier__0 _id11134_)))
        (if _$e11136_
            (##structure-ref _$e11136_ '1 gx#binding::t '#f)
            _id11134_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11132_)
      (if (gx#identifier? _hd11132_)
          (gx#core-compile-top-runtime-ref _hd11132_)
          '#f))))
