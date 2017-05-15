(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12196_)
      (let ((_e1219712204_ _stx12196_))
        (let ((_E1219912208_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1219712204_))))
          (let ((_E1219812222_
                 (lambda ()
                   (if (gx#stx-pair? _e1219712204_)
                       (let ((_e1220012212_ (gx#syntax-e _e1219712204_)))
                         (let ((_hd1220112215_ (##car _e1220012212_))
                               (_tl1220212217_ (##cdr _e1220012212_)))
                           (let ((_form12220_ _hd1220112215_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12220_)
                                  'compile-top-syntax
                                  _stx12196_)
                                 (_E1219912208_)))))
                       (_E1219912208_)))))
            (let () (_E1219812222_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12156_ _stx12157_)
      (let ((_self1215812166_ _self12156_))
        (let ((_E1216012170_
               (lambda () (error '"No clause matching" _self1215812166_))))
          (let ((_K1216112182_
                 (lambda (_K12173_)
                   (let ((_$e12175_ (gx#stx-source _stx12157_)))
                     (if _$e12175_
                         ((lambda (_g1217712179_)
                            (gx#stx-wrap-source
                             (_K12173_ _stx12157_)
                             _g1217712179_))
                          _$e12175_)
                         (_K12173_ _stx12157_))))))
            (if (struct-instance? gx#core-expander::t _self1215812166_)
                (let ((_e1216212185_ (##vector-ref _self1215812166_ '1)))
                  (let ((_e1216312188_ (##vector-ref _self1215812166_ '2)))
                    (let ((_e1216412191_ (##vector-ref _self1215812166_ '3)))
                      (let ((_K12194_ _e1216412191_))
                        (_K1216112182_ _K12194_)))))
                (_E1216012170_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12154_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12154_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12124_)
      (let ((_e1212512132_ _stx12124_))
        (let ((_E1212712136_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1212512132_))))
          (let ((_E1212612150_
                 (lambda ()
                   (if (gx#stx-pair? _e1212512132_)
                       (let ((_e1212812140_ (gx#syntax-e _e1212512132_)))
                         (let ((_hd1212912143_ (##car _e1212812140_))
                               (_tl1213012145_ (##cdr _e1212812140_)))
                           (let ((_body12148_ _tl1213012145_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12148_))
                                 (_E1212712136_)))))
                       (_E1212712136_)))))
            (let () (_E1212612150_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12093_)
      (let ((_e1209412101_ _stx12093_))
        (let ((_E1209612105_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1209412101_))))
          (let ((_E1209512120_
                 (lambda ()
                   (if (gx#stx-pair? _e1209412101_)
                       (let ((_e1209712109_ (gx#syntax-e _e1209412101_)))
                         (let ((_hd1209812112_ (##car _e1209712109_))
                               (_tl1209912114_ (##cdr _e1209712109_)))
                           (let ((_body12117_ _tl1209912114_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12117_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1209612105_)))))
                       (_E1209612105_)))))
            (let () (_E1209512120_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12063_)
      (let ((_e1206412071_ _stx12063_))
        (let ((_E1206612075_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1206412071_))))
          (let ((_E1206512089_
                 (lambda ()
                   (if (gx#stx-pair? _e1206412071_)
                       (let ((_e1206712079_ (gx#syntax-e _e1206412071_)))
                         (let ((_hd1206812082_ (##car _e1206712079_))
                               (_tl1206912084_ (##cdr _e1206712079_)))
                           (let ((_body12087_ _tl1206912084_))
                             (if '#t
                                 (cons '%#begin-foreign _body12087_)
                                 (_E1206612075_)))))
                       (_E1206612075_)))))
            (let () (_E1206512089_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12033_)
      (let ((_e1203412041_ _stx12033_))
        (let ((_E1203612045_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203412041_))))
          (let ((_E1203512059_
                 (lambda ()
                   (if (gx#stx-pair? _e1203412041_)
                       (let ((_e1203712049_ (gx#syntax-e _e1203412041_)))
                         (let ((_hd1203812052_ (##car _e1203712049_))
                               (_tl1203912054_ (##cdr _e1203712049_)))
                           (let ((_body12057_ _tl1203912054_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12057_))
                                 (_E1203612045_)))))
                       (_E1203612045_)))))
            (let () (_E1203512059_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx11990_)
      (let ((_e1199112001_ _stx11990_))
        (let ((_E1199312005_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1199112001_))))
          (let ((_E1199212029_
                 (lambda ()
                   (if (gx#stx-pair? _e1199112001_)
                       (let ((_e1199412009_ (gx#syntax-e _e1199112001_)))
                         (let ((_hd1199512012_ (##car _e1199412009_))
                               (_tl1199612014_ (##cdr _e1199412009_)))
                           (if (gx#stx-pair? _tl1199612014_)
                               (let ((_e1199712017_
                                      (gx#syntax-e _tl1199612014_)))
                                 (let ((_hd1199812020_ (##car _e1199712017_))
                                       (_tl1199912022_ (##cdr _e1199712017_)))
                                   (let ((_hd12025_ _hd1199812020_))
                                     (let ((_body12027_ _tl1199912022_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12025_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12027_))
                                           (_E1199312005_))))))
                               (_E1199312005_))))
                       (_E1199312005_)))))
            (let () (_E1199212029_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx11960_)
      (let ((_e1196111968_ _stx11960_))
        (let ((_E1196311972_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1196111968_))))
          (let ((_E1196211986_
                 (lambda ()
                   (if (gx#stx-pair? _e1196111968_)
                       (let ((_e1196411976_ (gx#syntax-e _e1196111968_)))
                         (let ((_hd1196511979_ (##car _e1196411976_))
                               (_tl1196611981_ (##cdr _e1196411976_)))
                           (let ((_body11984_ _tl1196611981_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body11984_))
                                 (_E1196311972_)))))
                       (_E1196311972_)))))
            (let () (_E1196211986_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx11930_)
      (let ((_e1193111938_ _stx11930_))
        (let ((_E1193311942_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1193111938_))))
          (let ((_E1193211956_
                 (lambda ()
                   (if (gx#stx-pair? _e1193111938_)
                       (let ((_e1193411946_ (gx#syntax-e _e1193111938_)))
                         (let ((_hd1193511949_ (##car _e1193411946_))
                               (_tl1193611951_ (##cdr _e1193411946_)))
                           (let ((_body11954_ _tl1193611951_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body11954_))
                                 (_E1193311942_)))))
                       (_E1193311942_)))))
            (let () (_E1193211956_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11855_)
      (let ((_generate11857_
             (lambda (_hd11887_)
               (let ((_e1188811898_ _hd11887_))
                 (let ((_E1189011902_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1188811898_))))
                   (let ((_E1188911926_
                          (lambda ()
                            (if (gx#stx-pair? _e1188811898_)
                                (let ((_e1189111906_
                                       (gx#syntax-e _e1188811898_)))
                                  (let ((_hd1189211909_ (##car _e1189111906_))
                                        (_tl1189311911_ (##cdr _e1189111906_)))
                                    (let ((_id11914_ _hd1189211909_))
                                      (if (gx#stx-pair? _tl1189311911_)
                                          (let ((_e1189411916_
                                                 (gx#syntax-e _tl1189311911_)))
                                            (let ((_hd1189511919_
                                                   (##car _e1189411916_))
                                                  (_tl1189611921_
                                                   (##cdr _e1189411916_)))
                                              (let ((_eid11924_
                                                     _hd1189511919_))
                                                (if (gx#stx-null?
                                                     _tl1189611921_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id11914_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid11924_)
                            '()))
                (_E1189011902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1189011902_)))))
                                          (_E1189011902_)))))
                                (_E1189011902_)))))
                     (let () (_E1188911926_))))))))
        (let ((_e1185811865_ _stx11855_))
          (let ((_E1186011869_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1185811865_))))
            (let ((_E1185911883_
                   (lambda ()
                     (if (gx#stx-pair? _e1185811865_)
                         (let ((_e1186111873_ (gx#syntax-e _e1185811865_)))
                           (let ((_hd1186211876_ (##car _e1186111873_))
                                 (_tl1186311878_ (##cdr _e1186111873_)))
                             (let ((_body11881_ _tl1186311878_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11857_
                                          _body11881_))
                                   (_E1186011869_)))))
                         (_E1186011869_)))))
              (let () (_E1185911883_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11801_)
      (let ((_e1180211815_ _stx11801_))
        (let ((_E1180411819_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1180211815_))))
          (let ((_E1180311851_
                 (lambda ()
                   (if (gx#stx-pair? _e1180211815_)
                       (let ((_e1180511823_ (gx#syntax-e _e1180211815_)))
                         (let ((_hd1180611826_ (##car _e1180511823_))
                               (_tl1180711828_ (##cdr _e1180511823_)))
                           (if (gx#stx-pair? _tl1180711828_)
                               (let ((_e1180811831_
                                      (gx#syntax-e _tl1180711828_)))
                                 (let ((_hd1180911834_ (##car _e1180811831_))
                                       (_tl1181011836_ (##cdr _e1180811831_)))
                                   (let ((_hd11839_ _hd1180911834_))
                                     (if (gx#stx-pair? _tl1181011836_)
                                         (let ((_e1181111841_
                                                (gx#syntax-e _tl1181011836_)))
                                           (let ((_hd1181211844_
                                                  (##car _e1181111841_))
                                                 (_tl1181311846_
                                                  (##cdr _e1181111841_)))
                                             (let ((_expr11849_
                                                    _hd1181211844_))
                                               (if (gx#stx-null?
                                                    _tl1181311846_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11839_)
                           (cons (gx#core-compile-top-syntax _expr11849_)
                                 '())))
               (_E1180411819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1180411819_)))))
                                         (_E1180411819_)))))
                               (_E1180411819_))))
                       (_E1180411819_)))))
            (let () (_E1180311851_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11746_)
      (let ((_e1174711760_ _stx11746_))
        (let ((_E1174911764_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1174711760_))))
          (let ((_E1174811797_
                 (lambda ()
                   (if (gx#stx-pair? _e1174711760_)
                       (let ((_e1175011768_ (gx#syntax-e _e1174711760_)))
                         (let ((_hd1175111771_ (##car _e1175011768_))
                               (_tl1175211773_ (##cdr _e1175011768_)))
                           (if (gx#stx-pair? _tl1175211773_)
                               (let ((_e1175311776_
                                      (gx#syntax-e _tl1175211773_)))
                                 (let ((_hd1175411779_ (##car _e1175311776_))
                                       (_tl1175511781_ (##cdr _e1175311776_)))
                                   (let ((_hd11784_ _hd1175411779_))
                                     (if (gx#stx-pair? _tl1175511781_)
                                         (let ((_e1175611786_
                                                (gx#syntax-e _tl1175511781_)))
                                           (let ((_hd1175711789_
                                                  (##car _e1175611786_))
                                                 (_tl1175811791_
                                                  (##cdr _e1175611786_)))
                                             (let ((_expr11794_
                                                    _hd1175711789_))
                                               (if (gx#stx-null?
                                                    _tl1175811791_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11784_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11794_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1174911764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1174911764_)))))
                                         (_E1174911764_)))))
                               (_E1174911764_))))
                       (_E1174911764_)))))
            (let () (_E1174811797_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11692_)
      (let ((_e1169311706_ _stx11692_))
        (let ((_E1169511710_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169311706_))))
          (let ((_E1169411742_
                 (lambda ()
                   (if (gx#stx-pair? _e1169311706_)
                       (let ((_e1169611714_ (gx#syntax-e _e1169311706_)))
                         (let ((_hd1169711717_ (##car _e1169611714_))
                               (_tl1169811719_ (##cdr _e1169611714_)))
                           (if (gx#stx-pair? _tl1169811719_)
                               (let ((_e1169911722_
                                      (gx#syntax-e _tl1169811719_)))
                                 (let ((_hd1170011725_ (##car _e1169911722_))
                                       (_tl1170111727_ (##cdr _e1169911722_)))
                                   (let ((_hd11730_ _hd1170011725_))
                                     (if (gx#stx-pair? _tl1170111727_)
                                         (let ((_e1170211732_
                                                (gx#syntax-e _tl1170111727_)))
                                           (let ((_hd1170311735_
                                                  (##car _e1170211732_))
                                                 (_tl1170411737_
                                                  (##cdr _e1170211732_)))
                                             (let ((_alias-id11740_
                                                    _hd1170311735_))
                                               (if (gx#stx-null?
                                                    _tl1170411737_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11730_)
                           (cons (gx#core-quote-syntax__0 _alias-id11740_)
                                 '())))
               (_E1169511710_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1169511710_)))))
                                         (_E1169511710_)))))
                               (_E1169511710_))))
                       (_E1169511710_)))))
            (let () (_E1169411742_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11638_)
      (let ((_e1163911652_ _stx11638_))
        (let ((_E1164111656_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1163911652_))))
          (let ((_E1164011688_
                 (lambda ()
                   (if (gx#stx-pair? _e1163911652_)
                       (let ((_e1164211660_ (gx#syntax-e _e1163911652_)))
                         (let ((_hd1164311663_ (##car _e1164211660_))
                               (_tl1164411665_ (##cdr _e1164211660_)))
                           (if (gx#stx-pair? _tl1164411665_)
                               (let ((_e1164511668_
                                      (gx#syntax-e _tl1164411665_)))
                                 (let ((_hd1164611671_ (##car _e1164511668_))
                                       (_tl1164711673_ (##cdr _e1164511668_)))
                                   (let ((_id11676_ _hd1164611671_))
                                     (if (gx#stx-pair? _tl1164711673_)
                                         (let ((_e1164811678_
                                                (gx#syntax-e _tl1164711673_)))
                                           (let ((_hd1164911681_
                                                  (##car _e1164811678_))
                                                 (_tl1165011683_
                                                  (##cdr _e1164811678_)))
                                             (let ((_binding-id11686_
                                                    _hd1164911681_))
                                               (if (gx#stx-null?
                                                    _tl1165011683_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11676_)
                           (cons (gx#core-quote-syntax__0 _binding-id11686_)
                                 '())))
               (_E1164111656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1164111656_)))))
                                         (_E1164111656_)))))
                               (_E1164111656_))))
                       (_E1164111656_)))))
            (let () (_E1164011688_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11608_)
      (let ((_e1160911616_ _stx11608_))
        (let ((_E1161111620_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160911616_))))
          (let ((_E1161011634_
                 (lambda ()
                   (if (gx#stx-pair? _e1160911616_)
                       (let ((_e1161211624_ (gx#syntax-e _e1160911616_)))
                         (let ((_hd1161311627_ (##car _e1161211624_))
                               (_tl1161411629_ (##cdr _e1161211624_)))
                           (let ((_decls11632_ _tl1161411629_))
                             (if '#t
                                 (cons '%#declare _decls11632_)
                                 (_E1161111620_)))))
                       (_E1161111620_)))))
            (let () (_E1161011634_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11578_)
      (let ((_e1157911586_ _stx11578_))
        (let ((_E1158111590_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1157911586_))))
          (let ((_E1158011604_
                 (lambda ()
                   (if (gx#stx-pair? _e1157911586_)
                       (let ((_e1158211594_ (gx#syntax-e _e1157911586_)))
                         (let ((_hd1158311597_ (##car _e1158211594_))
                               (_tl1158411599_ (##cdr _e1158211594_)))
                           (let ((_clause11602_ _tl1158411599_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11602_))
                                 (_E1158111590_)))))
                       (_E1158111590_)))))
            (let () (_E1158011604_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11535_)
      (let ((_e1153611546_ _stx11535_))
        (let ((_E1153811550_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1153611546_))))
          (let ((_E1153711574_
                 (lambda ()
                   (if (gx#stx-pair? _e1153611546_)
                       (let ((_e1153911554_ (gx#syntax-e _e1153611546_)))
                         (let ((_hd1154011557_ (##car _e1153911554_))
                               (_tl1154111559_ (##cdr _e1153911554_)))
                           (let ((_hd11562_ _hd1154011557_))
                             (if (gx#stx-pair? _tl1154111559_)
                                 (let ((_e1154211564_
                                        (gx#syntax-e _tl1154111559_)))
                                   (let ((_hd1154311567_ (##car _e1154211564_))
                                         (_tl1154411569_
                                          (##cdr _e1154211564_)))
                                     (let ((_body11572_ _hd1154311567_))
                                       (if (gx#stx-null? _tl1154411569_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11562_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11572_)
                                                           '()))
                                               (_E1153811550_))
                                           (_E1153811550_)))))
                                 (_E1153811550_)))))
                       (_E1153811550_)))))
            (let () (_E1153711574_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11505_)
      (let ((_e1150611513_ _stx11505_))
        (let ((_E1150811517_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1150611513_))))
          (let ((_E1150711531_
                 (lambda ()
                   (if (gx#stx-pair? _e1150611513_)
                       (let ((_e1150911521_ (gx#syntax-e _e1150611513_)))
                         (let ((_hd1151011524_ (##car _e1150911521_))
                               (_tl1151111526_ (##cdr _e1150911521_)))
                           (let ((_clauses11529_ _tl1151111526_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11529_))
                                 (_E1150811517_)))))
                       (_E1150811517_)))))
            (let () (_E1150711531_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11438
      (lambda (_stx11440_ _form11441_)
        (let ((_e1144211455_ _stx11440_))
          (let ((_E1144411459_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1144211455_))))
            (let ((_E1144311491_
                   (lambda ()
                     (if (gx#stx-pair? _e1144211455_)
                         (let ((_e1144511463_ (gx#syntax-e _e1144211455_)))
                           (let ((_hd1144611466_ (##car _e1144511463_))
                                 (_tl1144711468_ (##cdr _e1144511463_)))
                             (if (gx#stx-pair? _tl1144711468_)
                                 (let ((_e1144811471_
                                        (gx#syntax-e _tl1144711468_)))
                                   (let ((_hd1144911474_ (##car _e1144811471_))
                                         (_tl1145011476_
                                          (##cdr _e1144811471_)))
                                     (let ((_hd11479_ _hd1144911474_))
                                       (if (gx#stx-pair? _tl1145011476_)
                                           (let ((_e1145111481_
                                                  (gx#syntax-e
                                                   _tl1145011476_)))
                                             (let ((_hd1145211484_
                                                    (##car _e1145111481_))
                                                   (_tl1145311486_
                                                    (##cdr _e1145111481_)))
                                               (let ((_body11489_
                                                      _hd1145211484_))
                                                 (if (gx#stx-null?
                                                      _tl1145311486_)
                                                     (if '#t
                                                         (cons _form11441_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11479_)
                             (cons (gx#core-compile-top-syntax _body11489_)
                                   '())))
                 (_E1144411459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1144411459_)))))
                                           (_E1144411459_)))))
                                 (_E1144411459_))))
                         (_E1144411459_)))))
              (let () (_E1144311491_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11498_)
          (let ((_form11500_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11438
             _stx11498_
             _form11500_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12226_
          (let ((_g12225_ (length _g12226_)))
            (cond ((fx= _g12225_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12226_))
                  ((fx= _g12225_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11438
                          _g12226_))
                  (else (error "No clause matching arguments" _g12226_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11437_)
      (gx#core-compile-top-let-values%__opt-lambda11438
       _stx11437_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11435_)
      (gx#core-compile-top-let-values%__opt-lambda11438
       _stx11435_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11394_)
      (let ((_e1139511405_ _stx11394_))
        (let ((_E1139711409_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1139511405_))))
          (let ((_E1139611431_
                 (lambda ()
                   (if (gx#stx-pair? _e1139511405_)
                       (let ((_e1139811413_ (gx#syntax-e _e1139511405_)))
                         (let ((_hd1139911416_ (##car _e1139811413_))
                               (_tl1140011418_ (##cdr _e1139811413_)))
                           (if (gx#stx-pair? _tl1140011418_)
                               (let ((_e1140111421_
                                      (gx#syntax-e _tl1140011418_)))
                                 (let ((_hd1140211424_ (##car _e1140111421_))
                                       (_tl1140311426_ (##cdr _e1140111421_)))
                                   (let ((_e11429_ _hd1140211424_))
                                     (if (gx#stx-null? _tl1140311426_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11429_)
                                                         '()))
                                             (_E1139711409_))
                                         (_E1139711409_)))))
                               (_E1139711409_))))
                       (_E1139711409_)))))
            (let () (_E1139611431_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11353_)
      (let ((_e1135411364_ _stx11353_))
        (let ((_E1135611368_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1135411364_))))
          (let ((_E1135511390_
                 (lambda ()
                   (if (gx#stx-pair? _e1135411364_)
                       (let ((_e1135711372_ (gx#syntax-e _e1135411364_)))
                         (let ((_hd1135811375_ (##car _e1135711372_))
                               (_tl1135911377_ (##cdr _e1135711372_)))
                           (if (gx#stx-pair? _tl1135911377_)
                               (let ((_e1136011380_
                                      (gx#syntax-e _tl1135911377_)))
                                 (let ((_hd1136111383_ (##car _e1136011380_))
                                       (_tl1136211385_ (##cdr _e1136011380_)))
                                   (let ((_e11388_ _hd1136111383_))
                                     (if (gx#stx-null? _tl1136211385_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11388_)
                                                         '()))
                                             (_E1135611368_))
                                         (_E1135611368_)))))
                               (_E1135611368_))))
                       (_E1135611368_)))))
            (let () (_E1135511390_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11310_)
      (let ((_e1131111321_ _stx11310_))
        (let ((_E1131311325_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1131111321_))))
          (let ((_E1131211349_
                 (lambda ()
                   (if (gx#stx-pair? _e1131111321_)
                       (let ((_e1131411329_ (gx#syntax-e _e1131111321_)))
                         (let ((_hd1131511332_ (##car _e1131411329_))
                               (_tl1131611334_ (##cdr _e1131411329_)))
                           (if (gx#stx-pair? _tl1131611334_)
                               (let ((_e1131711337_
                                      (gx#syntax-e _tl1131611334_)))
                                 (let ((_hd1131811340_ (##car _e1131711337_))
                                       (_tl1131911342_ (##cdr _e1131711337_)))
                                   (let ((_rator11345_ _hd1131811340_))
                                     (let ((_args11347_ _tl1131911342_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11345_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11347_))
                                           (_E1131311325_))))))
                               (_E1131311325_))))
                       (_E1131311325_)))))
            (let () (_E1131211349_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11243_)
      (let ((_e1124411260_ _stx11243_))
        (let ((_E1124611264_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1124411260_))))
          (let ((_E1124511306_
                 (lambda ()
                   (if (gx#stx-pair? _e1124411260_)
                       (let ((_e1124711268_ (gx#syntax-e _e1124411260_)))
                         (let ((_hd1124811271_ (##car _e1124711268_))
                               (_tl1124911273_ (##cdr _e1124711268_)))
                           (if (gx#stx-pair? _tl1124911273_)
                               (let ((_e1125011276_
                                      (gx#syntax-e _tl1124911273_)))
                                 (let ((_hd1125111279_ (##car _e1125011276_))
                                       (_tl1125211281_ (##cdr _e1125011276_)))
                                   (let ((_test11284_ _hd1125111279_))
                                     (if (gx#stx-pair? _tl1125211281_)
                                         (let ((_e1125311286_
                                                (gx#syntax-e _tl1125211281_)))
                                           (let ((_hd1125411289_
                                                  (##car _e1125311286_))
                                                 (_tl1125511291_
                                                  (##cdr _e1125311286_)))
                                             (let ((_K11294_ _hd1125411289_))
                                               (if (gx#stx-pair?
                                                    _tl1125511291_)
                                                   (let ((_e1125611296_
                                                          (gx#syntax-e
                                                           _tl1125511291_)))
                                                     (let ((_hd1125711299_
                                                            (##car _e1125611296_))
                                                           (_tl1125811301_
                                                            (##cdr _e1125611296_)))
                                                       (let ((_E11304_
                                                              _hd1125711299_))
                                                         (if (gx#stx-null?
                                                              _tl1125811301_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11284_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11294_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11304_)
                                                 '()))))
                         (_E1124611264_))
                     (_E1124611264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1124611264_)))))
                                         (_E1124611264_)))))
                               (_E1124611264_))))
                       (_E1124611264_)))))
            (let () (_E1124511306_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11202_)
      (let ((_e1120311213_ _stx11202_))
        (let ((_E1120511217_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1120311213_))))
          (let ((_E1120411239_
                 (lambda ()
                   (if (gx#stx-pair? _e1120311213_)
                       (let ((_e1120611221_ (gx#syntax-e _e1120311213_)))
                         (let ((_hd1120711224_ (##car _e1120611221_))
                               (_tl1120811226_ (##cdr _e1120611221_)))
                           (if (gx#stx-pair? _tl1120811226_)
                               (let ((_e1120911229_
                                      (gx#syntax-e _tl1120811226_)))
                                 (let ((_hd1121011232_ (##car _e1120911229_))
                                       (_tl1121111234_ (##cdr _e1120911229_)))
                                   (let ((_id11237_ _hd1121011232_))
                                     (if (gx#stx-null? _tl1121111234_)
                                         (if (gx#identifier? _id11237_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11237_)
                                                         '()))
                                             (_E1120511217_))
                                         (_E1120511217_)))))
                               (_E1120511217_))))
                       (_E1120511217_)))))
            (let () (_E1120411239_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11148_)
      (let ((_e1114911162_ _stx11148_))
        (let ((_E1115111166_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1114911162_))))
          (let ((_E1115011198_
                 (lambda ()
                   (if (gx#stx-pair? _e1114911162_)
                       (let ((_e1115211170_ (gx#syntax-e _e1114911162_)))
                         (let ((_hd1115311173_ (##car _e1115211170_))
                               (_tl1115411175_ (##cdr _e1115211170_)))
                           (if (gx#stx-pair? _tl1115411175_)
                               (let ((_e1115511178_
                                      (gx#syntax-e _tl1115411175_)))
                                 (let ((_hd1115611181_ (##car _e1115511178_))
                                       (_tl1115711183_ (##cdr _e1115511178_)))
                                   (let ((_id11186_ _hd1115611181_))
                                     (if (gx#stx-pair? _tl1115711183_)
                                         (let ((_e1115811188_
                                                (gx#syntax-e _tl1115711183_)))
                                           (let ((_hd1115911191_
                                                  (##car _e1115811188_))
                                                 (_tl1116011193_
                                                  (##cdr _e1115811188_)))
                                             (let ((_expr11196_
                                                    _hd1115911191_))
                                               (if (gx#stx-null?
                                                    _tl1116011193_)
                                                   (if (gx#identifier?
                                                        _id11186_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11186_)
                           (cons (gx#core-compile-top-syntax _expr11196_)
                                 '())))
               (_E1115111166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1115111166_)))))
                                         (_E1115111166_)))))
                               (_E1115111166_))))
                       (_E1115111166_)))))
            (let () (_E1115011198_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11143_)
      (let ((_$e11145_ (gx#resolve-identifier__0 _id11143_)))
        (if _$e11145_
            (##structure-ref _$e11145_ '1 gx#binding::t '#f)
            _id11143_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11141_)
      (if (gx#identifier? _hd11141_)
          (gx#core-compile-top-runtime-ref _hd11141_)
          '#f))))
