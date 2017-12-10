(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12715_)
      (let* ((_e1271612723_ _stx12715_)
             (_E1271812727_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1271612723_)))
             (_E1271712741_
              (lambda ()
                (if (gx#stx-pair? _e1271612723_)
                    (let ((_e1271912731_ (gx#syntax-e _e1271612723_)))
                      (let ((_hd1272012734_ (##car _e1271912731_))
                            (_tl1272112736_ (##cdr _e1271912731_)))
                        (let ((_form12739_ _hd1272012734_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12739_)
                               'compile-top-syntax
                               _stx12715_)
                              (_E1271812727_)))))
                    (_E1271812727_)))))
        (_E1271712741_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12675_ _stx12676_)
      (let* ((_self1267712685_ _self12675_)
             (_E1267912689_
              (lambda () (error '"No clause matching" _self1267712685_)))
             (_K1268012701_
              (lambda (_K12692_)
                (let ((_$e12694_ (gx#stx-source _stx12676_)))
                  (if _$e12694_
                      ((lambda (_g1269612698_)
                         (gx#stx-wrap-source
                          (_K12692_ _stx12676_)
                          _g1269612698_))
                       _$e12694_)
                      (_K12692_ _stx12676_))))))
        (if (##structure-instance-of?
             _self1267712685_
             (##type-id gx#core-expander::t))
            (let* ((_e1268112704_ (##vector-ref _self1267712685_ '1))
                   (_e1268212707_ (##vector-ref _self1267712685_ '2))
                   (_e1268312710_ (##vector-ref _self1267712685_ '3))
                   (_K12713_ _e1268312710_))
              (_K1268012701_ _K12713_))
            (_E1267912689_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12673_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12673_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12643_)
      (let* ((_e1264412651_ _stx12643_)
             (_E1264612655_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1264412651_)))
             (_E1264512669_
              (lambda ()
                (if (gx#stx-pair? _e1264412651_)
                    (let ((_e1264712659_ (gx#syntax-e _e1264412651_)))
                      (let ((_hd1264812662_ (##car _e1264712659_))
                            (_tl1264912664_ (##cdr _e1264712659_)))
                        (let ((_body12667_ _tl1264912664_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12667_))
                              (_E1264612655_)))))
                    (_E1264612655_)))))
        (_E1264512669_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12612_)
      (let* ((_e1261312620_ _stx12612_)
             (_E1261512624_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1261312620_)))
             (_E1261412639_
              (lambda ()
                (if (gx#stx-pair? _e1261312620_)
                    (let ((_e1261612628_ (gx#syntax-e _e1261312620_)))
                      (let ((_hd1261712631_ (##car _e1261612628_))
                            (_tl1261812633_ (##cdr _e1261612628_)))
                        (let ((_body12636_ _tl1261812633_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12636_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1261512624_)))))
                    (_E1261512624_)))))
        (_E1261412639_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12582_)
      (let* ((_e1258312590_ _stx12582_)
             (_E1258512594_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1258312590_)))
             (_E1258412608_
              (lambda ()
                (if (gx#stx-pair? _e1258312590_)
                    (let ((_e1258612598_ (gx#syntax-e _e1258312590_)))
                      (let ((_hd1258712601_ (##car _e1258612598_))
                            (_tl1258812603_ (##cdr _e1258612598_)))
                        (let ((_body12606_ _tl1258812603_))
                          (if '#t
                              (cons '%#begin-foreign _body12606_)
                              (_E1258512594_)))))
                    (_E1258512594_)))))
        (_E1258412608_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12552_)
      (let* ((_e1255312560_ _stx12552_)
             (_E1255512564_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1255312560_)))
             (_E1255412578_
              (lambda ()
                (if (gx#stx-pair? _e1255312560_)
                    (let ((_e1255612568_ (gx#syntax-e _e1255312560_)))
                      (let ((_hd1255712571_ (##car _e1255612568_))
                            (_tl1255812573_ (##cdr _e1255612568_)))
                        (let ((_body12576_ _tl1255812573_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12576_))
                              (_E1255512564_)))))
                    (_E1255512564_)))))
        (_E1255412578_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12509_)
      (let* ((_e1251012520_ _stx12509_)
             (_E1251212524_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1251012520_)))
             (_E1251112548_
              (lambda ()
                (if (gx#stx-pair? _e1251012520_)
                    (let ((_e1251312528_ (gx#syntax-e _e1251012520_)))
                      (let ((_hd1251412531_ (##car _e1251312528_))
                            (_tl1251512533_ (##cdr _e1251312528_)))
                        (if (gx#stx-pair? _tl1251512533_)
                            (let ((_e1251612536_ (gx#syntax-e _tl1251512533_)))
                              (let ((_hd1251712539_ (##car _e1251612536_))
                                    (_tl1251812541_ (##cdr _e1251612536_)))
                                (let* ((_hd12544_ _hd1251712539_)
                                       (_body12546_ _tl1251812541_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12544_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12546_))
                                      (_E1251212524_)))))
                            (_E1251212524_))))
                    (_E1251212524_)))))
        (_E1251112548_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12479_)
      (let* ((_e1248012487_ _stx12479_)
             (_E1248212491_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1248012487_)))
             (_E1248112505_
              (lambda ()
                (if (gx#stx-pair? _e1248012487_)
                    (let ((_e1248312495_ (gx#syntax-e _e1248012487_)))
                      (let ((_hd1248412498_ (##car _e1248312495_))
                            (_tl1248512500_ (##cdr _e1248312495_)))
                        (let ((_body12503_ _tl1248512500_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12503_))
                              (_E1248212491_)))))
                    (_E1248212491_)))))
        (_E1248112505_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12449_)
      (let* ((_e1245012457_ _stx12449_)
             (_E1245212461_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1245012457_)))
             (_E1245112475_
              (lambda ()
                (if (gx#stx-pair? _e1245012457_)
                    (let ((_e1245312465_ (gx#syntax-e _e1245012457_)))
                      (let ((_hd1245412468_ (##car _e1245312465_))
                            (_tl1245512470_ (##cdr _e1245312465_)))
                        (let ((_body12473_ _tl1245512470_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12473_))
                              (_E1245212461_)))))
                    (_E1245212461_)))))
        (_E1245112475_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12374_)
      (letrec ((_generate12376_
                (lambda (_hd12406_)
                  (let* ((_e1240712417_ _hd12406_)
                         (_E1240912421_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1240712417_)))
                         (_E1240812445_
                          (lambda ()
                            (if (gx#stx-pair? _e1240712417_)
                                (let ((_e1241012425_
                                       (gx#syntax-e _e1240712417_)))
                                  (let ((_hd1241112428_ (##car _e1241012425_))
                                        (_tl1241212430_ (##cdr _e1241012425_)))
                                    (let ((_id12433_ _hd1241112428_))
                                      (if (gx#stx-pair? _tl1241212430_)
                                          (let ((_e1241312435_
                                                 (gx#syntax-e _tl1241212430_)))
                                            (let ((_hd1241412438_
                                                   (##car _e1241312435_))
                                                  (_tl1241512440_
                                                   (##cdr _e1241312435_)))
                                              (let ((_eid12443_
                                                     _hd1241412438_))
                                                (if (gx#stx-null?
                                                     _tl1241512440_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12433_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12443_)
                            '()))
                (_E1240912421_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1240912421_)))))
                                          (_E1240912421_)))))
                                (_E1240912421_)))))
                    (_E1240812445_)))))
        (let* ((_e1237712384_ _stx12374_)
               (_E1237912388_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1237712384_)))
               (_E1237812402_
                (lambda ()
                  (if (gx#stx-pair? _e1237712384_)
                      (let ((_e1238012392_ (gx#syntax-e _e1237712384_)))
                        (let ((_hd1238112395_ (##car _e1238012392_))
                              (_tl1238212397_ (##cdr _e1238012392_)))
                          (let ((_body12400_ _tl1238212397_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12376_
                                       _body12400_))
                                (_E1237912388_)))))
                      (_E1237912388_)))))
          (_E1237812402_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12320_)
      (let* ((_e1232112334_ _stx12320_)
             (_E1232312338_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1232112334_)))
             (_E1232212370_
              (lambda ()
                (if (gx#stx-pair? _e1232112334_)
                    (let ((_e1232412342_ (gx#syntax-e _e1232112334_)))
                      (let ((_hd1232512345_ (##car _e1232412342_))
                            (_tl1232612347_ (##cdr _e1232412342_)))
                        (if (gx#stx-pair? _tl1232612347_)
                            (let ((_e1232712350_ (gx#syntax-e _tl1232612347_)))
                              (let ((_hd1232812353_ (##car _e1232712350_))
                                    (_tl1232912355_ (##cdr _e1232712350_)))
                                (let ((_hd12358_ _hd1232812353_))
                                  (if (gx#stx-pair? _tl1232912355_)
                                      (let ((_e1233012360_
                                             (gx#syntax-e _tl1232912355_)))
                                        (let ((_hd1233112363_
                                               (##car _e1233012360_))
                                              (_tl1233212365_
                                               (##cdr _e1233012360_)))
                                          (let ((_expr12368_ _hd1233112363_))
                                            (if (gx#stx-null? _tl1233212365_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12358_)
                        (cons (gx#core-compile-top-syntax _expr12368_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1232312338_))
                                                (_E1232312338_)))))
                                      (_E1232312338_)))))
                            (_E1232312338_))))
                    (_E1232312338_)))))
        (_E1232212370_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12265_)
      (let* ((_e1226612279_ _stx12265_)
             (_E1226812283_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1226612279_)))
             (_E1226712316_
              (lambda ()
                (if (gx#stx-pair? _e1226612279_)
                    (let ((_e1226912287_ (gx#syntax-e _e1226612279_)))
                      (let ((_hd1227012290_ (##car _e1226912287_))
                            (_tl1227112292_ (##cdr _e1226912287_)))
                        (if (gx#stx-pair? _tl1227112292_)
                            (let ((_e1227212295_ (gx#syntax-e _tl1227112292_)))
                              (let ((_hd1227312298_ (##car _e1227212295_))
                                    (_tl1227412300_ (##cdr _e1227212295_)))
                                (let ((_hd12303_ _hd1227312298_))
                                  (if (gx#stx-pair? _tl1227412300_)
                                      (let ((_e1227512305_
                                             (gx#syntax-e _tl1227412300_)))
                                        (let ((_hd1227612308_
                                               (##car _e1227512305_))
                                              (_tl1227712310_
                                               (##cdr _e1227512305_)))
                                          (let ((_expr12313_ _hd1227612308_))
                                            (if (gx#stx-null? _tl1227712310_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12303_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12313_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1226812283_))
                                                (_E1226812283_)))))
                                      (_E1226812283_)))))
                            (_E1226812283_))))
                    (_E1226812283_)))))
        (_E1226712316_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12211_)
      (let* ((_e1221212225_ _stx12211_)
             (_E1221412229_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1221212225_)))
             (_E1221312261_
              (lambda ()
                (if (gx#stx-pair? _e1221212225_)
                    (let ((_e1221512233_ (gx#syntax-e _e1221212225_)))
                      (let ((_hd1221612236_ (##car _e1221512233_))
                            (_tl1221712238_ (##cdr _e1221512233_)))
                        (if (gx#stx-pair? _tl1221712238_)
                            (let ((_e1221812241_ (gx#syntax-e _tl1221712238_)))
                              (let ((_hd1221912244_ (##car _e1221812241_))
                                    (_tl1222012246_ (##cdr _e1221812241_)))
                                (let ((_hd12249_ _hd1221912244_))
                                  (if (gx#stx-pair? _tl1222012246_)
                                      (let ((_e1222112251_
                                             (gx#syntax-e _tl1222012246_)))
                                        (let ((_hd1222212254_
                                               (##car _e1222112251_))
                                              (_tl1222312256_
                                               (##cdr _e1222112251_)))
                                          (let ((_alias-id12259_
                                                 _hd1222212254_))
                                            (if (gx#stx-null? _tl1222312256_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12249_)
                        (cons (gx#core-quote-syntax__0 _alias-id12259_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1221412229_))
                                                (_E1221412229_)))))
                                      (_E1221412229_)))))
                            (_E1221412229_))))
                    (_E1221412229_)))))
        (_E1221312261_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12157_)
      (let* ((_e1215812171_ _stx12157_)
             (_E1216012175_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215812171_)))
             (_E1215912207_
              (lambda ()
                (if (gx#stx-pair? _e1215812171_)
                    (let ((_e1216112179_ (gx#syntax-e _e1215812171_)))
                      (let ((_hd1216212182_ (##car _e1216112179_))
                            (_tl1216312184_ (##cdr _e1216112179_)))
                        (if (gx#stx-pair? _tl1216312184_)
                            (let ((_e1216412187_ (gx#syntax-e _tl1216312184_)))
                              (let ((_hd1216512190_ (##car _e1216412187_))
                                    (_tl1216612192_ (##cdr _e1216412187_)))
                                (let ((_id12195_ _hd1216512190_))
                                  (if (gx#stx-pair? _tl1216612192_)
                                      (let ((_e1216712197_
                                             (gx#syntax-e _tl1216612192_)))
                                        (let ((_hd1216812200_
                                               (##car _e1216712197_))
                                              (_tl1216912202_
                                               (##cdr _e1216712197_)))
                                          (let ((_binding-id12205_
                                                 _hd1216812200_))
                                            (if (gx#stx-null? _tl1216912202_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12195_)
                        (cons (gx#core-quote-syntax__0 _binding-id12205_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1216012175_))
                                                (_E1216012175_)))))
                                      (_E1216012175_)))))
                            (_E1216012175_))))
                    (_E1216012175_)))))
        (_E1215912207_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12127_)
      (let* ((_e1212812135_ _stx12127_)
             (_E1213012139_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1212812135_)))
             (_E1212912153_
              (lambda ()
                (if (gx#stx-pair? _e1212812135_)
                    (let ((_e1213112143_ (gx#syntax-e _e1212812135_)))
                      (let ((_hd1213212146_ (##car _e1213112143_))
                            (_tl1213312148_ (##cdr _e1213112143_)))
                        (let ((_decls12151_ _tl1213312148_))
                          (if '#t
                              (cons '%#declare _decls12151_)
                              (_E1213012139_)))))
                    (_E1213012139_)))))
        (_E1212912153_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12097_)
      (let* ((_e1209812105_ _stx12097_)
             (_E1210012109_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1209812105_)))
             (_E1209912123_
              (lambda ()
                (if (gx#stx-pair? _e1209812105_)
                    (let ((_e1210112113_ (gx#syntax-e _e1209812105_)))
                      (let ((_hd1210212116_ (##car _e1210112113_))
                            (_tl1210312118_ (##cdr _e1210112113_)))
                        (let ((_clause12121_ _tl1210312118_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12121_))
                              (_E1210012109_)))))
                    (_E1210012109_)))))
        (_E1209912123_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx12054_)
      (let* ((_e1205512065_ _stx12054_)
             (_E1205712069_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1205512065_)))
             (_E1205612093_
              (lambda ()
                (if (gx#stx-pair? _e1205512065_)
                    (let ((_e1205812073_ (gx#syntax-e _e1205512065_)))
                      (let ((_hd1205912076_ (##car _e1205812073_))
                            (_tl1206012078_ (##cdr _e1205812073_)))
                        (let ((_hd12081_ _hd1205912076_))
                          (if (gx#stx-pair? _tl1206012078_)
                              (let ((_e1206112083_
                                     (gx#syntax-e _tl1206012078_)))
                                (let ((_hd1206212086_ (##car _e1206112083_))
                                      (_tl1206312088_ (##cdr _e1206112083_)))
                                  (let ((_body12091_ _hd1206212086_))
                                    (if (gx#stx-null? _tl1206312088_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12081_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12091_)
                                                        '()))
                                            (_E1205712069_))
                                        (_E1205712069_)))))
                              (_E1205712069_)))))
                    (_E1205712069_)))))
        (_E1205612093_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx12024_)
      (let* ((_e1202512032_ _stx12024_)
             (_E1202712036_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1202512032_)))
             (_E1202612050_
              (lambda ()
                (if (gx#stx-pair? _e1202512032_)
                    (let ((_e1202812040_ (gx#syntax-e _e1202512032_)))
                      (let ((_hd1202912043_ (##car _e1202812040_))
                            (_tl1203012045_ (##cdr _e1202812040_)))
                        (let ((_clauses12048_ _tl1203012045_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses12048_))
                              (_E1202712036_)))))
                    (_E1202712036_)))))
        (_E1202612050_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11957
      (lambda (_stx11959_ _form11960_)
        (let* ((_e1196111974_ _stx11959_)
               (_E1196311978_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1196111974_)))
               (_E1196212010_
                (lambda ()
                  (if (gx#stx-pair? _e1196111974_)
                      (let ((_e1196411982_ (gx#syntax-e _e1196111974_)))
                        (let ((_hd1196511985_ (##car _e1196411982_))
                              (_tl1196611987_ (##cdr _e1196411982_)))
                          (if (gx#stx-pair? _tl1196611987_)
                              (let ((_e1196711990_
                                     (gx#syntax-e _tl1196611987_)))
                                (let ((_hd1196811993_ (##car _e1196711990_))
                                      (_tl1196911995_ (##cdr _e1196711990_)))
                                  (let ((_hd11998_ _hd1196811993_))
                                    (if (gx#stx-pair? _tl1196911995_)
                                        (let ((_e1197012000_
                                               (gx#syntax-e _tl1196911995_)))
                                          (let ((_hd1197112003_
                                                 (##car _e1197012000_))
                                                (_tl1197212005_
                                                 (##cdr _e1197012000_)))
                                            (let ((_body12008_ _hd1197112003_))
                                              (if (gx#stx-null? _tl1197212005_)
                                                  (if '#t
                                                      (cons _form11960_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd11998_)
                          (cons (gx#core-compile-top-syntax _body12008_) '())))
              (_E1196311978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1196311978_)))))
                                        (_E1196311978_)))))
                              (_E1196311978_))))
                      (_E1196311978_)))))
          (_E1196212010_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx12017_)
          (let ((_form12019_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11957
             _stx12017_
             _form12019_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12745_
          (let ((_g12744_ (length _g12745_)))
            (cond ((fx= _g12744_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12745_))
                  ((fx= _g12744_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11957
                          _g12745_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12745_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11956_)
      (gx#core-compile-top-let-values%__opt-lambda11957
       _stx11956_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11954_)
      (gx#core-compile-top-let-values%__opt-lambda11957
       _stx11954_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11913_)
      (let* ((_e1191411924_ _stx11913_)
             (_E1191611928_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1191411924_)))
             (_E1191511950_
              (lambda ()
                (if (gx#stx-pair? _e1191411924_)
                    (let ((_e1191711932_ (gx#syntax-e _e1191411924_)))
                      (let ((_hd1191811935_ (##car _e1191711932_))
                            (_tl1191911937_ (##cdr _e1191711932_)))
                        (if (gx#stx-pair? _tl1191911937_)
                            (let ((_e1192011940_ (gx#syntax-e _tl1191911937_)))
                              (let ((_hd1192111943_ (##car _e1192011940_))
                                    (_tl1192211945_ (##cdr _e1192011940_)))
                                (let ((_e11948_ _hd1192111943_))
                                  (if (gx#stx-null? _tl1192211945_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e11948_)
                                                      '()))
                                          (_E1191611928_))
                                      (_E1191611928_)))))
                            (_E1191611928_))))
                    (_E1191611928_)))))
        (_E1191511950_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11872_)
      (let* ((_e1187311883_ _stx11872_)
             (_E1187511887_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1187311883_)))
             (_E1187411909_
              (lambda ()
                (if (gx#stx-pair? _e1187311883_)
                    (let ((_e1187611891_ (gx#syntax-e _e1187311883_)))
                      (let ((_hd1187711894_ (##car _e1187611891_))
                            (_tl1187811896_ (##cdr _e1187611891_)))
                        (if (gx#stx-pair? _tl1187811896_)
                            (let ((_e1187911899_ (gx#syntax-e _tl1187811896_)))
                              (let ((_hd1188011902_ (##car _e1187911899_))
                                    (_tl1188111904_ (##cdr _e1187911899_)))
                                (let ((_e11907_ _hd1188011902_))
                                  (if (gx#stx-null? _tl1188111904_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e11907_)
                                                      '()))
                                          (_E1187511887_))
                                      (_E1187511887_)))))
                            (_E1187511887_))))
                    (_E1187511887_)))))
        (_E1187411909_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11829_)
      (let* ((_e1183011840_ _stx11829_)
             (_E1183211844_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1183011840_)))
             (_E1183111868_
              (lambda ()
                (if (gx#stx-pair? _e1183011840_)
                    (let ((_e1183311848_ (gx#syntax-e _e1183011840_)))
                      (let ((_hd1183411851_ (##car _e1183311848_))
                            (_tl1183511853_ (##cdr _e1183311848_)))
                        (if (gx#stx-pair? _tl1183511853_)
                            (let ((_e1183611856_ (gx#syntax-e _tl1183511853_)))
                              (let ((_hd1183711859_ (##car _e1183611856_))
                                    (_tl1183811861_ (##cdr _e1183611856_)))
                                (let* ((_rator11864_ _hd1183711859_)
                                       (_args11866_ _tl1183811861_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator11864_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args11866_))
                                      (_E1183211844_)))))
                            (_E1183211844_))))
                    (_E1183211844_)))))
        (_E1183111868_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11762_)
      (let* ((_e1176311779_ _stx11762_)
             (_E1176511783_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1176311779_)))
             (_E1176411825_
              (lambda ()
                (if (gx#stx-pair? _e1176311779_)
                    (let ((_e1176611787_ (gx#syntax-e _e1176311779_)))
                      (let ((_hd1176711790_ (##car _e1176611787_))
                            (_tl1176811792_ (##cdr _e1176611787_)))
                        (if (gx#stx-pair? _tl1176811792_)
                            (let ((_e1176911795_ (gx#syntax-e _tl1176811792_)))
                              (let ((_hd1177011798_ (##car _e1176911795_))
                                    (_tl1177111800_ (##cdr _e1176911795_)))
                                (let ((_test11803_ _hd1177011798_))
                                  (if (gx#stx-pair? _tl1177111800_)
                                      (let ((_e1177211805_
                                             (gx#syntax-e _tl1177111800_)))
                                        (let ((_hd1177311808_
                                               (##car _e1177211805_))
                                              (_tl1177411810_
                                               (##cdr _e1177211805_)))
                                          (let ((_K11813_ _hd1177311808_))
                                            (if (gx#stx-pair? _tl1177411810_)
                                                (let ((_e1177511815_
                                                       (gx#syntax-e
                                                        _tl1177411810_)))
                                                  (let ((_hd1177611818_
                                                         (##car _e1177511815_))
                                                        (_tl1177711820_
                                                         (##cdr _e1177511815_)))
                                                    (let ((_E11823_
                                                           _hd1177611818_))
                                                      (if (gx#stx-null?
                                                           _tl1177711820_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11803_)
                                  (cons (gx#core-compile-top-syntax _K11813_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11823_)
                                              '()))))
                      (_E1176511783_))
                  (_E1176511783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1176511783_)))))
                                      (_E1176511783_)))))
                            (_E1176511783_))))
                    (_E1176511783_)))))
        (_E1176411825_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11721_)
      (let* ((_e1172211732_ _stx11721_)
             (_E1172411736_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1172211732_)))
             (_E1172311758_
              (lambda ()
                (if (gx#stx-pair? _e1172211732_)
                    (let ((_e1172511740_ (gx#syntax-e _e1172211732_)))
                      (let ((_hd1172611743_ (##car _e1172511740_))
                            (_tl1172711745_ (##cdr _e1172511740_)))
                        (if (gx#stx-pair? _tl1172711745_)
                            (let ((_e1172811748_ (gx#syntax-e _tl1172711745_)))
                              (let ((_hd1172911751_ (##car _e1172811748_))
                                    (_tl1173011753_ (##cdr _e1172811748_)))
                                (let ((_id11756_ _hd1172911751_))
                                  (if (gx#stx-null? _tl1173011753_)
                                      (if (gx#identifier? _id11756_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11756_)
                                                      '()))
                                          (_E1172411736_))
                                      (_E1172411736_)))))
                            (_E1172411736_))))
                    (_E1172411736_)))))
        (_E1172311758_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11667_)
      (let* ((_e1166811681_ _stx11667_)
             (_E1167011685_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166811681_)))
             (_E1166911717_
              (lambda ()
                (if (gx#stx-pair? _e1166811681_)
                    (let ((_e1167111689_ (gx#syntax-e _e1166811681_)))
                      (let ((_hd1167211692_ (##car _e1167111689_))
                            (_tl1167311694_ (##cdr _e1167111689_)))
                        (if (gx#stx-pair? _tl1167311694_)
                            (let ((_e1167411697_ (gx#syntax-e _tl1167311694_)))
                              (let ((_hd1167511700_ (##car _e1167411697_))
                                    (_tl1167611702_ (##cdr _e1167411697_)))
                                (let ((_id11705_ _hd1167511700_))
                                  (if (gx#stx-pair? _tl1167611702_)
                                      (let ((_e1167711707_
                                             (gx#syntax-e _tl1167611702_)))
                                        (let ((_hd1167811710_
                                               (##car _e1167711707_))
                                              (_tl1167911712_
                                               (##cdr _e1167711707_)))
                                          (let ((_expr11715_ _hd1167811710_))
                                            (if (gx#stx-null? _tl1167911712_)
                                                (if (gx#identifier? _id11705_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11705_)
                        (cons (gx#core-compile-top-syntax _expr11715_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1167011685_))
                                                (_E1167011685_)))))
                                      (_E1167011685_)))))
                            (_E1167011685_))))
                    (_E1167011685_)))))
        (_E1166911717_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11662_)
      (let ((_$e11664_ (gx#resolve-identifier__0 _id11662_)))
        (if _$e11664_
            (##structure-ref _$e11664_ '1 gx#binding::t '#f)
            _id11662_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11660_)
      (if (gx#identifier? _hd11660_)
          (gx#core-compile-top-runtime-ref _hd11660_)
          '#f))))
