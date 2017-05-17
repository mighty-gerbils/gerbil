(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12289_)
      (let ((_e1229012297_ _stx12289_))
        (let ((_E1229212301_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1229012297_))))
          (let ((_E1229112315_
                 (lambda ()
                   (if (gx#stx-pair? _e1229012297_)
                       (let ((_e1229312305_ (gx#syntax-e _e1229012297_)))
                         (let ((_hd1229412308_ (##car _e1229312305_))
                               (_tl1229512310_ (##cdr _e1229312305_)))
                           (let ((_form12313_ _hd1229412308_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12313_)
                                  'compile-top-syntax
                                  _stx12289_)
                                 (_E1229212301_)))))
                       (_E1229212301_)))))
            (let () (_E1229112315_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12249_ _stx12250_)
      (let ((_self1225112259_ _self12249_))
        (let ((_E1225312263_
               (lambda () (error '"No clause matching" _self1225112259_))))
          (let ((_K1225412275_
                 (lambda (_K12266_)
                   (let ((_$e12268_ (gx#stx-source _stx12250_)))
                     (if _$e12268_
                         ((lambda (_g1227012272_)
                            (gx#stx-wrap-source
                             (_K12266_ _stx12250_)
                             _g1227012272_))
                          _$e12268_)
                         (_K12266_ _stx12250_))))))
            (if (struct-instance? gx#core-expander::t _self1225112259_)
                (let ((_e1225512278_ (##vector-ref _self1225112259_ '1)))
                  (let ((_e1225612281_ (##vector-ref _self1225112259_ '2)))
                    (let ((_e1225712284_ (##vector-ref _self1225112259_ '3)))
                      (let ((_K12287_ _e1225712284_))
                        (_K1225412275_ _K12287_)))))
                (_E1225312263_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12247_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12247_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12217_)
      (let ((_e1221812225_ _stx12217_))
        (let ((_E1222012229_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1221812225_))))
          (let ((_E1221912243_
                 (lambda ()
                   (if (gx#stx-pair? _e1221812225_)
                       (let ((_e1222112233_ (gx#syntax-e _e1221812225_)))
                         (let ((_hd1222212236_ (##car _e1222112233_))
                               (_tl1222312238_ (##cdr _e1222112233_)))
                           (let ((_body12241_ _tl1222312238_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12241_))
                                 (_E1222012229_)))))
                       (_E1222012229_)))))
            (let () (_E1221912243_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12186_)
      (let ((_e1218712194_ _stx12186_))
        (let ((_E1218912198_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1218712194_))))
          (let ((_E1218812213_
                 (lambda ()
                   (if (gx#stx-pair? _e1218712194_)
                       (let ((_e1219012202_ (gx#syntax-e _e1218712194_)))
                         (let ((_hd1219112205_ (##car _e1219012202_))
                               (_tl1219212207_ (##cdr _e1219012202_)))
                           (let ((_body12210_ _tl1219212207_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12210_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1218912198_)))))
                       (_E1218912198_)))))
            (let () (_E1218812213_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12156_)
      (let ((_e1215712164_ _stx12156_))
        (let ((_E1215912168_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215712164_))))
          (let ((_E1215812182_
                 (lambda ()
                   (if (gx#stx-pair? _e1215712164_)
                       (let ((_e1216012172_ (gx#syntax-e _e1215712164_)))
                         (let ((_hd1216112175_ (##car _e1216012172_))
                               (_tl1216212177_ (##cdr _e1216012172_)))
                           (let ((_body12180_ _tl1216212177_))
                             (if '#t
                                 (cons '%#begin-foreign _body12180_)
                                 (_E1215912168_)))))
                       (_E1215912168_)))))
            (let () (_E1215812182_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12126_)
      (let ((_e1212712134_ _stx12126_))
        (let ((_E1212912138_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1212712134_))))
          (let ((_E1212812152_
                 (lambda ()
                   (if (gx#stx-pair? _e1212712134_)
                       (let ((_e1213012142_ (gx#syntax-e _e1212712134_)))
                         (let ((_hd1213112145_ (##car _e1213012142_))
                               (_tl1213212147_ (##cdr _e1213012142_)))
                           (let ((_body12150_ _tl1213212147_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12150_))
                                 (_E1212912138_)))))
                       (_E1212912138_)))))
            (let () (_E1212812152_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12083_)
      (let ((_e1208412094_ _stx12083_))
        (let ((_E1208612098_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208412094_))))
          (let ((_E1208512122_
                 (lambda ()
                   (if (gx#stx-pair? _e1208412094_)
                       (let ((_e1208712102_ (gx#syntax-e _e1208412094_)))
                         (let ((_hd1208812105_ (##car _e1208712102_))
                               (_tl1208912107_ (##cdr _e1208712102_)))
                           (if (gx#stx-pair? _tl1208912107_)
                               (let ((_e1209012110_
                                      (gx#syntax-e _tl1208912107_)))
                                 (let ((_hd1209112113_ (##car _e1209012110_))
                                       (_tl1209212115_ (##cdr _e1209012110_)))
                                   (let ((_hd12118_ _hd1209112113_))
                                     (let ((_body12120_ _tl1209212115_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12118_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12120_))
                                           (_E1208612098_))))))
                               (_E1208612098_))))
                       (_E1208612098_)))))
            (let () (_E1208512122_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12053_)
      (let ((_e1205412061_ _stx12053_))
        (let ((_E1205612065_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205412061_))))
          (let ((_E1205512079_
                 (lambda ()
                   (if (gx#stx-pair? _e1205412061_)
                       (let ((_e1205712069_ (gx#syntax-e _e1205412061_)))
                         (let ((_hd1205812072_ (##car _e1205712069_))
                               (_tl1205912074_ (##cdr _e1205712069_)))
                           (let ((_body12077_ _tl1205912074_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12077_))
                                 (_E1205612065_)))))
                       (_E1205612065_)))))
            (let () (_E1205512079_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12023_)
      (let ((_e1202412031_ _stx12023_))
        (let ((_E1202612035_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1202412031_))))
          (let ((_E1202512049_
                 (lambda ()
                   (if (gx#stx-pair? _e1202412031_)
                       (let ((_e1202712039_ (gx#syntax-e _e1202412031_)))
                         (let ((_hd1202812042_ (##car _e1202712039_))
                               (_tl1202912044_ (##cdr _e1202712039_)))
                           (let ((_body12047_ _tl1202912044_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12047_))
                                 (_E1202612035_)))))
                       (_E1202612035_)))))
            (let () (_E1202512049_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11948_)
      (let ((_generate11950_
             (lambda (_hd11980_)
               (let ((_e1198111991_ _hd11980_))
                 (let ((_E1198311995_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1198111991_))))
                   (let ((_E1198212019_
                          (lambda ()
                            (if (gx#stx-pair? _e1198111991_)
                                (let ((_e1198411999_
                                       (gx#syntax-e _e1198111991_)))
                                  (let ((_hd1198512002_ (##car _e1198411999_))
                                        (_tl1198612004_ (##cdr _e1198411999_)))
                                    (let ((_id12007_ _hd1198512002_))
                                      (if (gx#stx-pair? _tl1198612004_)
                                          (let ((_e1198712009_
                                                 (gx#syntax-e _tl1198612004_)))
                                            (let ((_hd1198812012_
                                                   (##car _e1198712009_))
                                                  (_tl1198912014_
                                                   (##cdr _e1198712009_)))
                                              (let ((_eid12017_
                                                     _hd1198812012_))
                                                (if (gx#stx-null?
                                                     _tl1198912014_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12007_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12017_)
                            '()))
                (_E1198311995_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1198311995_)))))
                                          (_E1198311995_)))))
                                (_E1198311995_)))))
                     (let () (_E1198212019_))))))))
        (let ((_e1195111958_ _stx11948_))
          (let ((_E1195311962_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1195111958_))))
            (let ((_E1195211976_
                   (lambda ()
                     (if (gx#stx-pair? _e1195111958_)
                         (let ((_e1195411966_ (gx#syntax-e _e1195111958_)))
                           (let ((_hd1195511969_ (##car _e1195411966_))
                                 (_tl1195611971_ (##cdr _e1195411966_)))
                             (let ((_body11974_ _tl1195611971_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11950_
                                          _body11974_))
                                   (_E1195311962_)))))
                         (_E1195311962_)))))
              (let () (_E1195211976_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11894_)
      (let ((_e1189511908_ _stx11894_))
        (let ((_E1189711912_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1189511908_))))
          (let ((_E1189611944_
                 (lambda ()
                   (if (gx#stx-pair? _e1189511908_)
                       (let ((_e1189811916_ (gx#syntax-e _e1189511908_)))
                         (let ((_hd1189911919_ (##car _e1189811916_))
                               (_tl1190011921_ (##cdr _e1189811916_)))
                           (if (gx#stx-pair? _tl1190011921_)
                               (let ((_e1190111924_
                                      (gx#syntax-e _tl1190011921_)))
                                 (let ((_hd1190211927_ (##car _e1190111924_))
                                       (_tl1190311929_ (##cdr _e1190111924_)))
                                   (let ((_hd11932_ _hd1190211927_))
                                     (if (gx#stx-pair? _tl1190311929_)
                                         (let ((_e1190411934_
                                                (gx#syntax-e _tl1190311929_)))
                                           (let ((_hd1190511937_
                                                  (##car _e1190411934_))
                                                 (_tl1190611939_
                                                  (##cdr _e1190411934_)))
                                             (let ((_expr11942_
                                                    _hd1190511937_))
                                               (if (gx#stx-null?
                                                    _tl1190611939_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11932_)
                           (cons (gx#core-compile-top-syntax _expr11942_)
                                 '())))
               (_E1189711912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1189711912_)))))
                                         (_E1189711912_)))))
                               (_E1189711912_))))
                       (_E1189711912_)))))
            (let () (_E1189611944_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11839_)
      (let ((_e1184011853_ _stx11839_))
        (let ((_E1184211857_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1184011853_))))
          (let ((_E1184111890_
                 (lambda ()
                   (if (gx#stx-pair? _e1184011853_)
                       (let ((_e1184311861_ (gx#syntax-e _e1184011853_)))
                         (let ((_hd1184411864_ (##car _e1184311861_))
                               (_tl1184511866_ (##cdr _e1184311861_)))
                           (if (gx#stx-pair? _tl1184511866_)
                               (let ((_e1184611869_
                                      (gx#syntax-e _tl1184511866_)))
                                 (let ((_hd1184711872_ (##car _e1184611869_))
                                       (_tl1184811874_ (##cdr _e1184611869_)))
                                   (let ((_hd11877_ _hd1184711872_))
                                     (if (gx#stx-pair? _tl1184811874_)
                                         (let ((_e1184911879_
                                                (gx#syntax-e _tl1184811874_)))
                                           (let ((_hd1185011882_
                                                  (##car _e1184911879_))
                                                 (_tl1185111884_
                                                  (##cdr _e1184911879_)))
                                             (let ((_expr11887_
                                                    _hd1185011882_))
                                               (if (gx#stx-null?
                                                    _tl1185111884_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11877_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11887_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1184211857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1184211857_)))))
                                         (_E1184211857_)))))
                               (_E1184211857_))))
                       (_E1184211857_)))))
            (let () (_E1184111890_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11785_)
      (let ((_e1178611799_ _stx11785_))
        (let ((_E1178811803_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1178611799_))))
          (let ((_E1178711835_
                 (lambda ()
                   (if (gx#stx-pair? _e1178611799_)
                       (let ((_e1178911807_ (gx#syntax-e _e1178611799_)))
                         (let ((_hd1179011810_ (##car _e1178911807_))
                               (_tl1179111812_ (##cdr _e1178911807_)))
                           (if (gx#stx-pair? _tl1179111812_)
                               (let ((_e1179211815_
                                      (gx#syntax-e _tl1179111812_)))
                                 (let ((_hd1179311818_ (##car _e1179211815_))
                                       (_tl1179411820_ (##cdr _e1179211815_)))
                                   (let ((_hd11823_ _hd1179311818_))
                                     (if (gx#stx-pair? _tl1179411820_)
                                         (let ((_e1179511825_
                                                (gx#syntax-e _tl1179411820_)))
                                           (let ((_hd1179611828_
                                                  (##car _e1179511825_))
                                                 (_tl1179711830_
                                                  (##cdr _e1179511825_)))
                                             (let ((_alias-id11833_
                                                    _hd1179611828_))
                                               (if (gx#stx-null?
                                                    _tl1179711830_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11823_)
                           (cons (gx#core-quote-syntax__0 _alias-id11833_)
                                 '())))
               (_E1178811803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1178811803_)))))
                                         (_E1178811803_)))))
                               (_E1178811803_))))
                       (_E1178811803_)))))
            (let () (_E1178711835_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11731_)
      (let ((_e1173211745_ _stx11731_))
        (let ((_E1173411749_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1173211745_))))
          (let ((_E1173311781_
                 (lambda ()
                   (if (gx#stx-pair? _e1173211745_)
                       (let ((_e1173511753_ (gx#syntax-e _e1173211745_)))
                         (let ((_hd1173611756_ (##car _e1173511753_))
                               (_tl1173711758_ (##cdr _e1173511753_)))
                           (if (gx#stx-pair? _tl1173711758_)
                               (let ((_e1173811761_
                                      (gx#syntax-e _tl1173711758_)))
                                 (let ((_hd1173911764_ (##car _e1173811761_))
                                       (_tl1174011766_ (##cdr _e1173811761_)))
                                   (let ((_id11769_ _hd1173911764_))
                                     (if (gx#stx-pair? _tl1174011766_)
                                         (let ((_e1174111771_
                                                (gx#syntax-e _tl1174011766_)))
                                           (let ((_hd1174211774_
                                                  (##car _e1174111771_))
                                                 (_tl1174311776_
                                                  (##cdr _e1174111771_)))
                                             (let ((_binding-id11779_
                                                    _hd1174211774_))
                                               (if (gx#stx-null?
                                                    _tl1174311776_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11769_)
                           (cons (gx#core-quote-syntax__0 _binding-id11779_)
                                 '())))
               (_E1173411749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1173411749_)))))
                                         (_E1173411749_)))))
                               (_E1173411749_))))
                       (_E1173411749_)))))
            (let () (_E1173311781_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11701_)
      (let ((_e1170211709_ _stx11701_))
        (let ((_E1170411713_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170211709_))))
          (let ((_E1170311727_
                 (lambda ()
                   (if (gx#stx-pair? _e1170211709_)
                       (let ((_e1170511717_ (gx#syntax-e _e1170211709_)))
                         (let ((_hd1170611720_ (##car _e1170511717_))
                               (_tl1170711722_ (##cdr _e1170511717_)))
                           (let ((_decls11725_ _tl1170711722_))
                             (if '#t
                                 (cons '%#declare _decls11725_)
                                 (_E1170411713_)))))
                       (_E1170411713_)))))
            (let () (_E1170311727_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11671_)
      (let ((_e1167211679_ _stx11671_))
        (let ((_E1167411683_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1167211679_))))
          (let ((_E1167311697_
                 (lambda ()
                   (if (gx#stx-pair? _e1167211679_)
                       (let ((_e1167511687_ (gx#syntax-e _e1167211679_)))
                         (let ((_hd1167611690_ (##car _e1167511687_))
                               (_tl1167711692_ (##cdr _e1167511687_)))
                           (let ((_clause11695_ _tl1167711692_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11695_))
                                 (_E1167411683_)))))
                       (_E1167411683_)))))
            (let () (_E1167311697_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11628_)
      (let ((_e1162911639_ _stx11628_))
        (let ((_E1163111643_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1162911639_))))
          (let ((_E1163011667_
                 (lambda ()
                   (if (gx#stx-pair? _e1162911639_)
                       (let ((_e1163211647_ (gx#syntax-e _e1162911639_)))
                         (let ((_hd1163311650_ (##car _e1163211647_))
                               (_tl1163411652_ (##cdr _e1163211647_)))
                           (let ((_hd11655_ _hd1163311650_))
                             (if (gx#stx-pair? _tl1163411652_)
                                 (let ((_e1163511657_
                                        (gx#syntax-e _tl1163411652_)))
                                   (let ((_hd1163611660_ (##car _e1163511657_))
                                         (_tl1163711662_
                                          (##cdr _e1163511657_)))
                                     (let ((_body11665_ _hd1163611660_))
                                       (if (gx#stx-null? _tl1163711662_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11655_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11665_)
                                                           '()))
                                               (_E1163111643_))
                                           (_E1163111643_)))))
                                 (_E1163111643_)))))
                       (_E1163111643_)))))
            (let () (_E1163011667_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11598_)
      (let ((_e1159911606_ _stx11598_))
        (let ((_E1160111610_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1159911606_))))
          (let ((_E1160011624_
                 (lambda ()
                   (if (gx#stx-pair? _e1159911606_)
                       (let ((_e1160211614_ (gx#syntax-e _e1159911606_)))
                         (let ((_hd1160311617_ (##car _e1160211614_))
                               (_tl1160411619_ (##cdr _e1160211614_)))
                           (let ((_clauses11622_ _tl1160411619_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11622_))
                                 (_E1160111610_)))))
                       (_E1160111610_)))))
            (let () (_E1160011624_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11531
      (lambda (_stx11533_ _form11534_)
        (let ((_e1153511548_ _stx11533_))
          (let ((_E1153711552_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1153511548_))))
            (let ((_E1153611584_
                   (lambda ()
                     (if (gx#stx-pair? _e1153511548_)
                         (let ((_e1153811556_ (gx#syntax-e _e1153511548_)))
                           (let ((_hd1153911559_ (##car _e1153811556_))
                                 (_tl1154011561_ (##cdr _e1153811556_)))
                             (if (gx#stx-pair? _tl1154011561_)
                                 (let ((_e1154111564_
                                        (gx#syntax-e _tl1154011561_)))
                                   (let ((_hd1154211567_ (##car _e1154111564_))
                                         (_tl1154311569_
                                          (##cdr _e1154111564_)))
                                     (let ((_hd11572_ _hd1154211567_))
                                       (if (gx#stx-pair? _tl1154311569_)
                                           (let ((_e1154411574_
                                                  (gx#syntax-e
                                                   _tl1154311569_)))
                                             (let ((_hd1154511577_
                                                    (##car _e1154411574_))
                                                   (_tl1154611579_
                                                    (##cdr _e1154411574_)))
                                               (let ((_body11582_
                                                      _hd1154511577_))
                                                 (if (gx#stx-null?
                                                      _tl1154611579_)
                                                     (if '#t
                                                         (cons _form11534_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11572_)
                             (cons (gx#core-compile-top-syntax _body11582_)
                                   '())))
                 (_E1153711552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1153711552_)))))
                                           (_E1153711552_)))))
                                 (_E1153711552_))))
                         (_E1153711552_)))))
              (let () (_E1153611584_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11591_)
          (let ((_form11593_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11531
             _stx11591_
             _form11593_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12319_
          (let ((_g12318_ (length _g12319_)))
            (cond ((fx= _g12318_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12319_))
                  ((fx= _g12318_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11531
                          _g12319_))
                  (else (error "No clause matching arguments" _g12319_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11530_)
      (gx#core-compile-top-let-values%__opt-lambda11531
       _stx11530_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11528_)
      (gx#core-compile-top-let-values%__opt-lambda11531
       _stx11528_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11487_)
      (let ((_e1148811498_ _stx11487_))
        (let ((_E1149011502_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1148811498_))))
          (let ((_E1148911524_
                 (lambda ()
                   (if (gx#stx-pair? _e1148811498_)
                       (let ((_e1149111506_ (gx#syntax-e _e1148811498_)))
                         (let ((_hd1149211509_ (##car _e1149111506_))
                               (_tl1149311511_ (##cdr _e1149111506_)))
                           (if (gx#stx-pair? _tl1149311511_)
                               (let ((_e1149411514_
                                      (gx#syntax-e _tl1149311511_)))
                                 (let ((_hd1149511517_ (##car _e1149411514_))
                                       (_tl1149611519_ (##cdr _e1149411514_)))
                                   (let ((_e11522_ _hd1149511517_))
                                     (if (gx#stx-null? _tl1149611519_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11522_)
                                                         '()))
                                             (_E1149011502_))
                                         (_E1149011502_)))))
                               (_E1149011502_))))
                       (_E1149011502_)))))
            (let () (_E1148911524_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11446_)
      (let ((_e1144711457_ _stx11446_))
        (let ((_E1144911461_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1144711457_))))
          (let ((_E1144811483_
                 (lambda ()
                   (if (gx#stx-pair? _e1144711457_)
                       (let ((_e1145011465_ (gx#syntax-e _e1144711457_)))
                         (let ((_hd1145111468_ (##car _e1145011465_))
                               (_tl1145211470_ (##cdr _e1145011465_)))
                           (if (gx#stx-pair? _tl1145211470_)
                               (let ((_e1145311473_
                                      (gx#syntax-e _tl1145211470_)))
                                 (let ((_hd1145411476_ (##car _e1145311473_))
                                       (_tl1145511478_ (##cdr _e1145311473_)))
                                   (let ((_e11481_ _hd1145411476_))
                                     (if (gx#stx-null? _tl1145511478_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11481_)
                                                         '()))
                                             (_E1144911461_))
                                         (_E1144911461_)))))
                               (_E1144911461_))))
                       (_E1144911461_)))))
            (let () (_E1144811483_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11403_)
      (let ((_e1140411414_ _stx11403_))
        (let ((_E1140611418_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1140411414_))))
          (let ((_E1140511442_
                 (lambda ()
                   (if (gx#stx-pair? _e1140411414_)
                       (let ((_e1140711422_ (gx#syntax-e _e1140411414_)))
                         (let ((_hd1140811425_ (##car _e1140711422_))
                               (_tl1140911427_ (##cdr _e1140711422_)))
                           (if (gx#stx-pair? _tl1140911427_)
                               (let ((_e1141011430_
                                      (gx#syntax-e _tl1140911427_)))
                                 (let ((_hd1141111433_ (##car _e1141011430_))
                                       (_tl1141211435_ (##cdr _e1141011430_)))
                                   (let ((_rator11438_ _hd1141111433_))
                                     (let ((_args11440_ _tl1141211435_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11438_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11440_))
                                           (_E1140611418_))))))
                               (_E1140611418_))))
                       (_E1140611418_)))))
            (let () (_E1140511442_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11336_)
      (let ((_e1133711353_ _stx11336_))
        (let ((_E1133911357_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1133711353_))))
          (let ((_E1133811399_
                 (lambda ()
                   (if (gx#stx-pair? _e1133711353_)
                       (let ((_e1134011361_ (gx#syntax-e _e1133711353_)))
                         (let ((_hd1134111364_ (##car _e1134011361_))
                               (_tl1134211366_ (##cdr _e1134011361_)))
                           (if (gx#stx-pair? _tl1134211366_)
                               (let ((_e1134311369_
                                      (gx#syntax-e _tl1134211366_)))
                                 (let ((_hd1134411372_ (##car _e1134311369_))
                                       (_tl1134511374_ (##cdr _e1134311369_)))
                                   (let ((_test11377_ _hd1134411372_))
                                     (if (gx#stx-pair? _tl1134511374_)
                                         (let ((_e1134611379_
                                                (gx#syntax-e _tl1134511374_)))
                                           (let ((_hd1134711382_
                                                  (##car _e1134611379_))
                                                 (_tl1134811384_
                                                  (##cdr _e1134611379_)))
                                             (let ((_K11387_ _hd1134711382_))
                                               (if (gx#stx-pair?
                                                    _tl1134811384_)
                                                   (let ((_e1134911389_
                                                          (gx#syntax-e
                                                           _tl1134811384_)))
                                                     (let ((_hd1135011392_
                                                            (##car _e1134911389_))
                                                           (_tl1135111394_
                                                            (##cdr _e1134911389_)))
                                                       (let ((_E11397_
                                                              _hd1135011392_))
                                                         (if (gx#stx-null?
                                                              _tl1135111394_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11377_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11387_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11397_)
                                                 '()))))
                         (_E1133911357_))
                     (_E1133911357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1133911357_)))))
                                         (_E1133911357_)))))
                               (_E1133911357_))))
                       (_E1133911357_)))))
            (let () (_E1133811399_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11295_)
      (let ((_e1129611306_ _stx11295_))
        (let ((_E1129811310_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1129611306_))))
          (let ((_E1129711332_
                 (lambda ()
                   (if (gx#stx-pair? _e1129611306_)
                       (let ((_e1129911314_ (gx#syntax-e _e1129611306_)))
                         (let ((_hd1130011317_ (##car _e1129911314_))
                               (_tl1130111319_ (##cdr _e1129911314_)))
                           (if (gx#stx-pair? _tl1130111319_)
                               (let ((_e1130211322_
                                      (gx#syntax-e _tl1130111319_)))
                                 (let ((_hd1130311325_ (##car _e1130211322_))
                                       (_tl1130411327_ (##cdr _e1130211322_)))
                                   (let ((_id11330_ _hd1130311325_))
                                     (if (gx#stx-null? _tl1130411327_)
                                         (if (gx#identifier? _id11330_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11330_)
                                                         '()))
                                             (_E1129811310_))
                                         (_E1129811310_)))))
                               (_E1129811310_))))
                       (_E1129811310_)))))
            (let () (_E1129711332_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11241_)
      (let ((_e1124211255_ _stx11241_))
        (let ((_E1124411259_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1124211255_))))
          (let ((_E1124311291_
                 (lambda ()
                   (if (gx#stx-pair? _e1124211255_)
                       (let ((_e1124511263_ (gx#syntax-e _e1124211255_)))
                         (let ((_hd1124611266_ (##car _e1124511263_))
                               (_tl1124711268_ (##cdr _e1124511263_)))
                           (if (gx#stx-pair? _tl1124711268_)
                               (let ((_e1124811271_
                                      (gx#syntax-e _tl1124711268_)))
                                 (let ((_hd1124911274_ (##car _e1124811271_))
                                       (_tl1125011276_ (##cdr _e1124811271_)))
                                   (let ((_id11279_ _hd1124911274_))
                                     (if (gx#stx-pair? _tl1125011276_)
                                         (let ((_e1125111281_
                                                (gx#syntax-e _tl1125011276_)))
                                           (let ((_hd1125211284_
                                                  (##car _e1125111281_))
                                                 (_tl1125311286_
                                                  (##cdr _e1125111281_)))
                                             (let ((_expr11289_
                                                    _hd1125211284_))
                                               (if (gx#stx-null?
                                                    _tl1125311286_)
                                                   (if (gx#identifier?
                                                        _id11279_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11279_)
                           (cons (gx#core-compile-top-syntax _expr11289_)
                                 '())))
               (_E1124411259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1124411259_)))))
                                         (_E1124411259_)))))
                               (_E1124411259_))))
                       (_E1124411259_)))))
            (let () (_E1124311291_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11236_)
      (let ((_$e11238_ (gx#resolve-identifier__0 _id11236_)))
        (if _$e11238_
            (##structure-ref _$e11238_ '1 gx#binding::t '#f)
            _id11236_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11234_)
      (if (gx#identifier? _hd11234_)
          (gx#core-compile-top-runtime-ref _hd11234_)
          '#f))))
