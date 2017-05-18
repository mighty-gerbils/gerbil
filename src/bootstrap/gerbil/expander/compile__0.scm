(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12321_)
      (let ((_e1232212329_ _stx12321_))
        (let ((_E1232412333_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1232212329_))))
          (let ((_E1232312347_
                 (lambda ()
                   (if (gx#stx-pair? _e1232212329_)
                       (let ((_e1232512337_ (gx#syntax-e _e1232212329_)))
                         (let ((_hd1232612340_ (##car _e1232512337_))
                               (_tl1232712342_ (##cdr _e1232512337_)))
                           (let ((_form12345_ _hd1232612340_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12345_)
                                  'compile-top-syntax
                                  _stx12321_)
                                 (_E1232412333_)))))
                       (_E1232412333_)))))
            (let () (_E1232312347_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12281_ _stx12282_)
      (let ((_self1228312291_ _self12281_))
        (let ((_E1228512295_
               (lambda () (error '"No clause matching" _self1228312291_))))
          (let ((_K1228612307_
                 (lambda (_K12298_)
                   (let ((_$e12300_ (gx#stx-source _stx12282_)))
                     (if _$e12300_
                         ((lambda (_g1230212304_)
                            (gx#stx-wrap-source
                             (_K12298_ _stx12282_)
                             _g1230212304_))
                          _$e12300_)
                         (_K12298_ _stx12282_))))))
            (if (struct-instance? gx#core-expander::t _self1228312291_)
                (let ((_e1228712310_ (##vector-ref _self1228312291_ '1)))
                  (let ((_e1228812313_ (##vector-ref _self1228312291_ '2)))
                    (let ((_e1228912316_ (##vector-ref _self1228312291_ '3)))
                      (let ((_K12319_ _e1228912316_))
                        (_K1228612307_ _K12319_)))))
                (_E1228512295_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12279_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12279_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12249_)
      (let ((_e1225012257_ _stx12249_))
        (let ((_E1225212261_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225012257_))))
          (let ((_E1225112275_
                 (lambda ()
                   (if (gx#stx-pair? _e1225012257_)
                       (let ((_e1225312265_ (gx#syntax-e _e1225012257_)))
                         (let ((_hd1225412268_ (##car _e1225312265_))
                               (_tl1225512270_ (##cdr _e1225312265_)))
                           (let ((_body12273_ _tl1225512270_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12273_))
                                 (_E1225212261_)))))
                       (_E1225212261_)))))
            (let () (_E1225112275_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12218_)
      (let ((_e1221912226_ _stx12218_))
        (let ((_E1222112230_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1221912226_))))
          (let ((_E1222012245_
                 (lambda ()
                   (if (gx#stx-pair? _e1221912226_)
                       (let ((_e1222212234_ (gx#syntax-e _e1221912226_)))
                         (let ((_hd1222312237_ (##car _e1222212234_))
                               (_tl1222412239_ (##cdr _e1222212234_)))
                           (let ((_body12242_ _tl1222412239_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12242_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1222112230_)))))
                       (_E1222112230_)))))
            (let () (_E1222012245_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12188_)
      (let ((_e1218912196_ _stx12188_))
        (let ((_E1219112200_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1218912196_))))
          (let ((_E1219012214_
                 (lambda ()
                   (if (gx#stx-pair? _e1218912196_)
                       (let ((_e1219212204_ (gx#syntax-e _e1218912196_)))
                         (let ((_hd1219312207_ (##car _e1219212204_))
                               (_tl1219412209_ (##cdr _e1219212204_)))
                           (let ((_body12212_ _tl1219412209_))
                             (if '#t
                                 (cons '%#begin-foreign _body12212_)
                                 (_E1219112200_)))))
                       (_E1219112200_)))))
            (let () (_E1219012214_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12158_)
      (let ((_e1215912166_ _stx12158_))
        (let ((_E1216112170_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215912166_))))
          (let ((_E1216012184_
                 (lambda ()
                   (if (gx#stx-pair? _e1215912166_)
                       (let ((_e1216212174_ (gx#syntax-e _e1215912166_)))
                         (let ((_hd1216312177_ (##car _e1216212174_))
                               (_tl1216412179_ (##cdr _e1216212174_)))
                           (let ((_body12182_ _tl1216412179_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12182_))
                                 (_E1216112170_)))))
                       (_E1216112170_)))))
            (let () (_E1216012184_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12115_)
      (let ((_e1211612126_ _stx12115_))
        (let ((_E1211812130_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1211612126_))))
          (let ((_E1211712154_
                 (lambda ()
                   (if (gx#stx-pair? _e1211612126_)
                       (let ((_e1211912134_ (gx#syntax-e _e1211612126_)))
                         (let ((_hd1212012137_ (##car _e1211912134_))
                               (_tl1212112139_ (##cdr _e1211912134_)))
                           (if (gx#stx-pair? _tl1212112139_)
                               (let ((_e1212212142_
                                      (gx#syntax-e _tl1212112139_)))
                                 (let ((_hd1212312145_ (##car _e1212212142_))
                                       (_tl1212412147_ (##cdr _e1212212142_)))
                                   (let ((_hd12150_ _hd1212312145_))
                                     (let ((_body12152_ _tl1212412147_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12150_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12152_))
                                           (_E1211812130_))))))
                               (_E1211812130_))))
                       (_E1211812130_)))))
            (let () (_E1211712154_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12085_)
      (let ((_e1208612093_ _stx12085_))
        (let ((_E1208812097_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208612093_))))
          (let ((_E1208712111_
                 (lambda ()
                   (if (gx#stx-pair? _e1208612093_)
                       (let ((_e1208912101_ (gx#syntax-e _e1208612093_)))
                         (let ((_hd1209012104_ (##car _e1208912101_))
                               (_tl1209112106_ (##cdr _e1208912101_)))
                           (let ((_body12109_ _tl1209112106_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12109_))
                                 (_E1208812097_)))))
                       (_E1208812097_)))))
            (let () (_E1208712111_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12055_)
      (let ((_e1205612063_ _stx12055_))
        (let ((_E1205812067_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205612063_))))
          (let ((_E1205712081_
                 (lambda ()
                   (if (gx#stx-pair? _e1205612063_)
                       (let ((_e1205912071_ (gx#syntax-e _e1205612063_)))
                         (let ((_hd1206012074_ (##car _e1205912071_))
                               (_tl1206112076_ (##cdr _e1205912071_)))
                           (let ((_body12079_ _tl1206112076_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12079_))
                                 (_E1205812067_)))))
                       (_E1205812067_)))))
            (let () (_E1205712081_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11980_)
      (let ((_generate11982_
             (lambda (_hd12012_)
               (let ((_e1201312023_ _hd12012_))
                 (let ((_E1201512027_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1201312023_))))
                   (let ((_E1201412051_
                          (lambda ()
                            (if (gx#stx-pair? _e1201312023_)
                                (let ((_e1201612031_
                                       (gx#syntax-e _e1201312023_)))
                                  (let ((_hd1201712034_ (##car _e1201612031_))
                                        (_tl1201812036_ (##cdr _e1201612031_)))
                                    (let ((_id12039_ _hd1201712034_))
                                      (if (gx#stx-pair? _tl1201812036_)
                                          (let ((_e1201912041_
                                                 (gx#syntax-e _tl1201812036_)))
                                            (let ((_hd1202012044_
                                                   (##car _e1201912041_))
                                                  (_tl1202112046_
                                                   (##cdr _e1201912041_)))
                                              (let ((_eid12049_
                                                     _hd1202012044_))
                                                (if (gx#stx-null?
                                                     _tl1202112046_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12039_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12049_)
                            '()))
                (_E1201512027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1201512027_)))))
                                          (_E1201512027_)))))
                                (_E1201512027_)))))
                     (let () (_E1201412051_))))))))
        (let ((_e1198311990_ _stx11980_))
          (let ((_E1198511994_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1198311990_))))
            (let ((_E1198412008_
                   (lambda ()
                     (if (gx#stx-pair? _e1198311990_)
                         (let ((_e1198611998_ (gx#syntax-e _e1198311990_)))
                           (let ((_hd1198712001_ (##car _e1198611998_))
                                 (_tl1198812003_ (##cdr _e1198611998_)))
                             (let ((_body12006_ _tl1198812003_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11982_
                                          _body12006_))
                                   (_E1198511994_)))))
                         (_E1198511994_)))))
              (let () (_E1198412008_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11926_)
      (let ((_e1192711940_ _stx11926_))
        (let ((_E1192911944_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1192711940_))))
          (let ((_E1192811976_
                 (lambda ()
                   (if (gx#stx-pair? _e1192711940_)
                       (let ((_e1193011948_ (gx#syntax-e _e1192711940_)))
                         (let ((_hd1193111951_ (##car _e1193011948_))
                               (_tl1193211953_ (##cdr _e1193011948_)))
                           (if (gx#stx-pair? _tl1193211953_)
                               (let ((_e1193311956_
                                      (gx#syntax-e _tl1193211953_)))
                                 (let ((_hd1193411959_ (##car _e1193311956_))
                                       (_tl1193511961_ (##cdr _e1193311956_)))
                                   (let ((_hd11964_ _hd1193411959_))
                                     (if (gx#stx-pair? _tl1193511961_)
                                         (let ((_e1193611966_
                                                (gx#syntax-e _tl1193511961_)))
                                           (let ((_hd1193711969_
                                                  (##car _e1193611966_))
                                                 (_tl1193811971_
                                                  (##cdr _e1193611966_)))
                                             (let ((_expr11974_
                                                    _hd1193711969_))
                                               (if (gx#stx-null?
                                                    _tl1193811971_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11964_)
                           (cons (gx#core-compile-top-syntax _expr11974_)
                                 '())))
               (_E1192911944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1192911944_)))))
                                         (_E1192911944_)))))
                               (_E1192911944_))))
                       (_E1192911944_)))))
            (let () (_E1192811976_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11871_)
      (let ((_e1187211885_ _stx11871_))
        (let ((_E1187411889_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1187211885_))))
          (let ((_E1187311922_
                 (lambda ()
                   (if (gx#stx-pair? _e1187211885_)
                       (let ((_e1187511893_ (gx#syntax-e _e1187211885_)))
                         (let ((_hd1187611896_ (##car _e1187511893_))
                               (_tl1187711898_ (##cdr _e1187511893_)))
                           (if (gx#stx-pair? _tl1187711898_)
                               (let ((_e1187811901_
                                      (gx#syntax-e _tl1187711898_)))
                                 (let ((_hd1187911904_ (##car _e1187811901_))
                                       (_tl1188011906_ (##cdr _e1187811901_)))
                                   (let ((_hd11909_ _hd1187911904_))
                                     (if (gx#stx-pair? _tl1188011906_)
                                         (let ((_e1188111911_
                                                (gx#syntax-e _tl1188011906_)))
                                           (let ((_hd1188211914_
                                                  (##car _e1188111911_))
                                                 (_tl1188311916_
                                                  (##cdr _e1188111911_)))
                                             (let ((_expr11919_
                                                    _hd1188211914_))
                                               (if (gx#stx-null?
                                                    _tl1188311916_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11909_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11919_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1187411889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1187411889_)))))
                                         (_E1187411889_)))))
                               (_E1187411889_))))
                       (_E1187411889_)))))
            (let () (_E1187311922_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11817_)
      (let ((_e1181811831_ _stx11817_))
        (let ((_E1182011835_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1181811831_))))
          (let ((_E1181911867_
                 (lambda ()
                   (if (gx#stx-pair? _e1181811831_)
                       (let ((_e1182111839_ (gx#syntax-e _e1181811831_)))
                         (let ((_hd1182211842_ (##car _e1182111839_))
                               (_tl1182311844_ (##cdr _e1182111839_)))
                           (if (gx#stx-pair? _tl1182311844_)
                               (let ((_e1182411847_
                                      (gx#syntax-e _tl1182311844_)))
                                 (let ((_hd1182511850_ (##car _e1182411847_))
                                       (_tl1182611852_ (##cdr _e1182411847_)))
                                   (let ((_hd11855_ _hd1182511850_))
                                     (if (gx#stx-pair? _tl1182611852_)
                                         (let ((_e1182711857_
                                                (gx#syntax-e _tl1182611852_)))
                                           (let ((_hd1182811860_
                                                  (##car _e1182711857_))
                                                 (_tl1182911862_
                                                  (##cdr _e1182711857_)))
                                             (let ((_alias-id11865_
                                                    _hd1182811860_))
                                               (if (gx#stx-null?
                                                    _tl1182911862_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11855_)
                           (cons (gx#core-quote-syntax__0 _alias-id11865_)
                                 '())))
               (_E1182011835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1182011835_)))))
                                         (_E1182011835_)))))
                               (_E1182011835_))))
                       (_E1182011835_)))))
            (let () (_E1181911867_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11763_)
      (let ((_e1176411777_ _stx11763_))
        (let ((_E1176611781_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176411777_))))
          (let ((_E1176511813_
                 (lambda ()
                   (if (gx#stx-pair? _e1176411777_)
                       (let ((_e1176711785_ (gx#syntax-e _e1176411777_)))
                         (let ((_hd1176811788_ (##car _e1176711785_))
                               (_tl1176911790_ (##cdr _e1176711785_)))
                           (if (gx#stx-pair? _tl1176911790_)
                               (let ((_e1177011793_
                                      (gx#syntax-e _tl1176911790_)))
                                 (let ((_hd1177111796_ (##car _e1177011793_))
                                       (_tl1177211798_ (##cdr _e1177011793_)))
                                   (let ((_id11801_ _hd1177111796_))
                                     (if (gx#stx-pair? _tl1177211798_)
                                         (let ((_e1177311803_
                                                (gx#syntax-e _tl1177211798_)))
                                           (let ((_hd1177411806_
                                                  (##car _e1177311803_))
                                                 (_tl1177511808_
                                                  (##cdr _e1177311803_)))
                                             (let ((_binding-id11811_
                                                    _hd1177411806_))
                                               (if (gx#stx-null?
                                                    _tl1177511808_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11801_)
                           (cons (gx#core-quote-syntax__0 _binding-id11811_)
                                 '())))
               (_E1176611781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1176611781_)))))
                                         (_E1176611781_)))))
                               (_E1176611781_))))
                       (_E1176611781_)))))
            (let () (_E1176511813_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11733_)
      (let ((_e1173411741_ _stx11733_))
        (let ((_E1173611745_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1173411741_))))
          (let ((_E1173511759_
                 (lambda ()
                   (if (gx#stx-pair? _e1173411741_)
                       (let ((_e1173711749_ (gx#syntax-e _e1173411741_)))
                         (let ((_hd1173811752_ (##car _e1173711749_))
                               (_tl1173911754_ (##cdr _e1173711749_)))
                           (let ((_decls11757_ _tl1173911754_))
                             (if '#t
                                 (cons '%#declare _decls11757_)
                                 (_E1173611745_)))))
                       (_E1173611745_)))))
            (let () (_E1173511759_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11703_)
      (let ((_e1170411711_ _stx11703_))
        (let ((_E1170611715_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170411711_))))
          (let ((_E1170511729_
                 (lambda ()
                   (if (gx#stx-pair? _e1170411711_)
                       (let ((_e1170711719_ (gx#syntax-e _e1170411711_)))
                         (let ((_hd1170811722_ (##car _e1170711719_))
                               (_tl1170911724_ (##cdr _e1170711719_)))
                           (let ((_clause11727_ _tl1170911724_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11727_))
                                 (_E1170611715_)))))
                       (_E1170611715_)))))
            (let () (_E1170511729_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11660_)
      (let ((_e1166111671_ _stx11660_))
        (let ((_E1166311675_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166111671_))))
          (let ((_E1166211699_
                 (lambda ()
                   (if (gx#stx-pair? _e1166111671_)
                       (let ((_e1166411679_ (gx#syntax-e _e1166111671_)))
                         (let ((_hd1166511682_ (##car _e1166411679_))
                               (_tl1166611684_ (##cdr _e1166411679_)))
                           (let ((_hd11687_ _hd1166511682_))
                             (if (gx#stx-pair? _tl1166611684_)
                                 (let ((_e1166711689_
                                        (gx#syntax-e _tl1166611684_)))
                                   (let ((_hd1166811692_ (##car _e1166711689_))
                                         (_tl1166911694_
                                          (##cdr _e1166711689_)))
                                     (let ((_body11697_ _hd1166811692_))
                                       (if (gx#stx-null? _tl1166911694_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11687_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11697_)
                                                           '()))
                                               (_E1166311675_))
                                           (_E1166311675_)))))
                                 (_E1166311675_)))))
                       (_E1166311675_)))))
            (let () (_E1166211699_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11630_)
      (let ((_e1163111638_ _stx11630_))
        (let ((_E1163311642_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1163111638_))))
          (let ((_E1163211656_
                 (lambda ()
                   (if (gx#stx-pair? _e1163111638_)
                       (let ((_e1163411646_ (gx#syntax-e _e1163111638_)))
                         (let ((_hd1163511649_ (##car _e1163411646_))
                               (_tl1163611651_ (##cdr _e1163411646_)))
                           (let ((_clauses11654_ _tl1163611651_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11654_))
                                 (_E1163311642_)))))
                       (_E1163311642_)))))
            (let () (_E1163211656_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11563
      (lambda (_stx11565_ _form11566_)
        (let ((_e1156711580_ _stx11565_))
          (let ((_E1156911584_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1156711580_))))
            (let ((_E1156811616_
                   (lambda ()
                     (if (gx#stx-pair? _e1156711580_)
                         (let ((_e1157011588_ (gx#syntax-e _e1156711580_)))
                           (let ((_hd1157111591_ (##car _e1157011588_))
                                 (_tl1157211593_ (##cdr _e1157011588_)))
                             (if (gx#stx-pair? _tl1157211593_)
                                 (let ((_e1157311596_
                                        (gx#syntax-e _tl1157211593_)))
                                   (let ((_hd1157411599_ (##car _e1157311596_))
                                         (_tl1157511601_
                                          (##cdr _e1157311596_)))
                                     (let ((_hd11604_ _hd1157411599_))
                                       (if (gx#stx-pair? _tl1157511601_)
                                           (let ((_e1157611606_
                                                  (gx#syntax-e
                                                   _tl1157511601_)))
                                             (let ((_hd1157711609_
                                                    (##car _e1157611606_))
                                                   (_tl1157811611_
                                                    (##cdr _e1157611606_)))
                                               (let ((_body11614_
                                                      _hd1157711609_))
                                                 (if (gx#stx-null?
                                                      _tl1157811611_)
                                                     (if '#t
                                                         (cons _form11566_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11604_)
                             (cons (gx#core-compile-top-syntax _body11614_)
                                   '())))
                 (_E1156911584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1156911584_)))))
                                           (_E1156911584_)))))
                                 (_E1156911584_))))
                         (_E1156911584_)))))
              (let () (_E1156811616_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11623_)
          (let ((_form11625_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11563
             _stx11623_
             _form11625_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12351_
          (let ((_g12350_ (length _g12351_)))
            (cond ((fx= _g12350_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12351_))
                  ((fx= _g12350_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11563
                          _g12351_))
                  (else (error "No clause matching arguments" _g12351_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11562_)
      (gx#core-compile-top-let-values%__opt-lambda11563
       _stx11562_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11560_)
      (gx#core-compile-top-let-values%__opt-lambda11563
       _stx11560_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11519_)
      (let ((_e1152011530_ _stx11519_))
        (let ((_E1152211534_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1152011530_))))
          (let ((_E1152111556_
                 (lambda ()
                   (if (gx#stx-pair? _e1152011530_)
                       (let ((_e1152311538_ (gx#syntax-e _e1152011530_)))
                         (let ((_hd1152411541_ (##car _e1152311538_))
                               (_tl1152511543_ (##cdr _e1152311538_)))
                           (if (gx#stx-pair? _tl1152511543_)
                               (let ((_e1152611546_
                                      (gx#syntax-e _tl1152511543_)))
                                 (let ((_hd1152711549_ (##car _e1152611546_))
                                       (_tl1152811551_ (##cdr _e1152611546_)))
                                   (let ((_e11554_ _hd1152711549_))
                                     (if (gx#stx-null? _tl1152811551_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11554_)
                                                         '()))
                                             (_E1152211534_))
                                         (_E1152211534_)))))
                               (_E1152211534_))))
                       (_E1152211534_)))))
            (let () (_E1152111556_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11478_)
      (let ((_e1147911489_ _stx11478_))
        (let ((_E1148111493_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1147911489_))))
          (let ((_E1148011515_
                 (lambda ()
                   (if (gx#stx-pair? _e1147911489_)
                       (let ((_e1148211497_ (gx#syntax-e _e1147911489_)))
                         (let ((_hd1148311500_ (##car _e1148211497_))
                               (_tl1148411502_ (##cdr _e1148211497_)))
                           (if (gx#stx-pair? _tl1148411502_)
                               (let ((_e1148511505_
                                      (gx#syntax-e _tl1148411502_)))
                                 (let ((_hd1148611508_ (##car _e1148511505_))
                                       (_tl1148711510_ (##cdr _e1148511505_)))
                                   (let ((_e11513_ _hd1148611508_))
                                     (if (gx#stx-null? _tl1148711510_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11513_)
                                                         '()))
                                             (_E1148111493_))
                                         (_E1148111493_)))))
                               (_E1148111493_))))
                       (_E1148111493_)))))
            (let () (_E1148011515_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11435_)
      (let ((_e1143611446_ _stx11435_))
        (let ((_E1143811450_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1143611446_))))
          (let ((_E1143711474_
                 (lambda ()
                   (if (gx#stx-pair? _e1143611446_)
                       (let ((_e1143911454_ (gx#syntax-e _e1143611446_)))
                         (let ((_hd1144011457_ (##car _e1143911454_))
                               (_tl1144111459_ (##cdr _e1143911454_)))
                           (if (gx#stx-pair? _tl1144111459_)
                               (let ((_e1144211462_
                                      (gx#syntax-e _tl1144111459_)))
                                 (let ((_hd1144311465_ (##car _e1144211462_))
                                       (_tl1144411467_ (##cdr _e1144211462_)))
                                   (let ((_rator11470_ _hd1144311465_))
                                     (let ((_args11472_ _tl1144411467_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11470_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11472_))
                                           (_E1143811450_))))))
                               (_E1143811450_))))
                       (_E1143811450_)))))
            (let () (_E1143711474_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11368_)
      (let ((_e1136911385_ _stx11368_))
        (let ((_E1137111389_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1136911385_))))
          (let ((_E1137011431_
                 (lambda ()
                   (if (gx#stx-pair? _e1136911385_)
                       (let ((_e1137211393_ (gx#syntax-e _e1136911385_)))
                         (let ((_hd1137311396_ (##car _e1137211393_))
                               (_tl1137411398_ (##cdr _e1137211393_)))
                           (if (gx#stx-pair? _tl1137411398_)
                               (let ((_e1137511401_
                                      (gx#syntax-e _tl1137411398_)))
                                 (let ((_hd1137611404_ (##car _e1137511401_))
                                       (_tl1137711406_ (##cdr _e1137511401_)))
                                   (let ((_test11409_ _hd1137611404_))
                                     (if (gx#stx-pair? _tl1137711406_)
                                         (let ((_e1137811411_
                                                (gx#syntax-e _tl1137711406_)))
                                           (let ((_hd1137911414_
                                                  (##car _e1137811411_))
                                                 (_tl1138011416_
                                                  (##cdr _e1137811411_)))
                                             (let ((_K11419_ _hd1137911414_))
                                               (if (gx#stx-pair?
                                                    _tl1138011416_)
                                                   (let ((_e1138111421_
                                                          (gx#syntax-e
                                                           _tl1138011416_)))
                                                     (let ((_hd1138211424_
                                                            (##car _e1138111421_))
                                                           (_tl1138311426_
                                                            (##cdr _e1138111421_)))
                                                       (let ((_E11429_
                                                              _hd1138211424_))
                                                         (if (gx#stx-null?
                                                              _tl1138311426_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11409_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11419_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11429_)
                                                 '()))))
                         (_E1137111389_))
                     (_E1137111389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1137111389_)))))
                                         (_E1137111389_)))))
                               (_E1137111389_))))
                       (_E1137111389_)))))
            (let () (_E1137011431_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11327_)
      (let ((_e1132811338_ _stx11327_))
        (let ((_E1133011342_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1132811338_))))
          (let ((_E1132911364_
                 (lambda ()
                   (if (gx#stx-pair? _e1132811338_)
                       (let ((_e1133111346_ (gx#syntax-e _e1132811338_)))
                         (let ((_hd1133211349_ (##car _e1133111346_))
                               (_tl1133311351_ (##cdr _e1133111346_)))
                           (if (gx#stx-pair? _tl1133311351_)
                               (let ((_e1133411354_
                                      (gx#syntax-e _tl1133311351_)))
                                 (let ((_hd1133511357_ (##car _e1133411354_))
                                       (_tl1133611359_ (##cdr _e1133411354_)))
                                   (let ((_id11362_ _hd1133511357_))
                                     (if (gx#stx-null? _tl1133611359_)
                                         (if (gx#identifier? _id11362_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11362_)
                                                         '()))
                                             (_E1133011342_))
                                         (_E1133011342_)))))
                               (_E1133011342_))))
                       (_E1133011342_)))))
            (let () (_E1132911364_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11273_)
      (let ((_e1127411287_ _stx11273_))
        (let ((_E1127611291_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1127411287_))))
          (let ((_E1127511323_
                 (lambda ()
                   (if (gx#stx-pair? _e1127411287_)
                       (let ((_e1127711295_ (gx#syntax-e _e1127411287_)))
                         (let ((_hd1127811298_ (##car _e1127711295_))
                               (_tl1127911300_ (##cdr _e1127711295_)))
                           (if (gx#stx-pair? _tl1127911300_)
                               (let ((_e1128011303_
                                      (gx#syntax-e _tl1127911300_)))
                                 (let ((_hd1128111306_ (##car _e1128011303_))
                                       (_tl1128211308_ (##cdr _e1128011303_)))
                                   (let ((_id11311_ _hd1128111306_))
                                     (if (gx#stx-pair? _tl1128211308_)
                                         (let ((_e1128311313_
                                                (gx#syntax-e _tl1128211308_)))
                                           (let ((_hd1128411316_
                                                  (##car _e1128311313_))
                                                 (_tl1128511318_
                                                  (##cdr _e1128311313_)))
                                             (let ((_expr11321_
                                                    _hd1128411316_))
                                               (if (gx#stx-null?
                                                    _tl1128511318_)
                                                   (if (gx#identifier?
                                                        _id11311_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11311_)
                           (cons (gx#core-compile-top-syntax _expr11321_)
                                 '())))
               (_E1127611291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1127611291_)))))
                                         (_E1127611291_)))))
                               (_E1127611291_))))
                       (_E1127611291_)))))
            (let () (_E1127511323_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11268_)
      (let ((_$e11270_ (gx#resolve-identifier__0 _id11268_)))
        (if _$e11270_
            (##structure-ref _$e11270_ '1 gx#binding::t '#f)
            _id11268_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11266_)
      (if (gx#identifier? _hd11266_)
          (gx#core-compile-top-runtime-ref _hd11266_)
          '#f))))
