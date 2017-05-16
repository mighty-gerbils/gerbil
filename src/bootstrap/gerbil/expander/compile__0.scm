(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12213_)
      (let ((_e1221412221_ _stx12213_))
        (let ((_E1221612225_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1221412221_))))
          (let ((_E1221512239_
                 (lambda ()
                   (if (gx#stx-pair? _e1221412221_)
                       (let ((_e1221712229_ (gx#syntax-e _e1221412221_)))
                         (let ((_hd1221812232_ (##car _e1221712229_))
                               (_tl1221912234_ (##cdr _e1221712229_)))
                           (let ((_form12237_ _hd1221812232_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12237_)
                                  'compile-top-syntax
                                  _stx12213_)
                                 (_E1221612225_)))))
                       (_E1221612225_)))))
            (let () (_E1221512239_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12173_ _stx12174_)
      (let ((_self1217512183_ _self12173_))
        (let ((_E1217712187_
               (lambda () (error '"No clause matching" _self1217512183_))))
          (let ((_K1217812199_
                 (lambda (_K12190_)
                   (let ((_$e12192_ (gx#stx-source _stx12174_)))
                     (if _$e12192_
                         ((lambda (_g1219412196_)
                            (gx#stx-wrap-source
                             (_K12190_ _stx12174_)
                             _g1219412196_))
                          _$e12192_)
                         (_K12190_ _stx12174_))))))
            (if (struct-instance? gx#core-expander::t _self1217512183_)
                (let ((_e1217912202_ (##vector-ref _self1217512183_ '1)))
                  (let ((_e1218012205_ (##vector-ref _self1217512183_ '2)))
                    (let ((_e1218112208_ (##vector-ref _self1217512183_ '3)))
                      (let ((_K12211_ _e1218112208_))
                        (_K1217812199_ _K12211_)))))
                (_E1217712187_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12171_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12171_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12141_)
      (let ((_e1214212149_ _stx12141_))
        (let ((_E1214412153_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1214212149_))))
          (let ((_E1214312167_
                 (lambda ()
                   (if (gx#stx-pair? _e1214212149_)
                       (let ((_e1214512157_ (gx#syntax-e _e1214212149_)))
                         (let ((_hd1214612160_ (##car _e1214512157_))
                               (_tl1214712162_ (##cdr _e1214512157_)))
                           (let ((_body12165_ _tl1214712162_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12165_))
                                 (_E1214412153_)))))
                       (_E1214412153_)))))
            (let () (_E1214312167_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12110_)
      (let ((_e1211112118_ _stx12110_))
        (let ((_E1211312122_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1211112118_))))
          (let ((_E1211212137_
                 (lambda ()
                   (if (gx#stx-pair? _e1211112118_)
                       (let ((_e1211412126_ (gx#syntax-e _e1211112118_)))
                         (let ((_hd1211512129_ (##car _e1211412126_))
                               (_tl1211612131_ (##cdr _e1211412126_)))
                           (let ((_body12134_ _tl1211612131_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12134_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1211312122_)))))
                       (_E1211312122_)))))
            (let () (_E1211212137_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12080_)
      (let ((_e1208112088_ _stx12080_))
        (let ((_E1208312092_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208112088_))))
          (let ((_E1208212106_
                 (lambda ()
                   (if (gx#stx-pair? _e1208112088_)
                       (let ((_e1208412096_ (gx#syntax-e _e1208112088_)))
                         (let ((_hd1208512099_ (##car _e1208412096_))
                               (_tl1208612101_ (##cdr _e1208412096_)))
                           (let ((_body12104_ _tl1208612101_))
                             (if '#t
                                 (cons '%#begin-foreign _body12104_)
                                 (_E1208312092_)))))
                       (_E1208312092_)))))
            (let () (_E1208212106_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12050_)
      (let ((_e1205112058_ _stx12050_))
        (let ((_E1205312062_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205112058_))))
          (let ((_E1205212076_
                 (lambda ()
                   (if (gx#stx-pair? _e1205112058_)
                       (let ((_e1205412066_ (gx#syntax-e _e1205112058_)))
                         (let ((_hd1205512069_ (##car _e1205412066_))
                               (_tl1205612071_ (##cdr _e1205412066_)))
                           (let ((_body12074_ _tl1205612071_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12074_))
                                 (_E1205312062_)))))
                       (_E1205312062_)))))
            (let () (_E1205212076_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12007_)
      (let ((_e1200812018_ _stx12007_))
        (let ((_E1201012022_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1200812018_))))
          (let ((_E1200912046_
                 (lambda ()
                   (if (gx#stx-pair? _e1200812018_)
                       (let ((_e1201112026_ (gx#syntax-e _e1200812018_)))
                         (let ((_hd1201212029_ (##car _e1201112026_))
                               (_tl1201312031_ (##cdr _e1201112026_)))
                           (if (gx#stx-pair? _tl1201312031_)
                               (let ((_e1201412034_
                                      (gx#syntax-e _tl1201312031_)))
                                 (let ((_hd1201512037_ (##car _e1201412034_))
                                       (_tl1201612039_ (##cdr _e1201412034_)))
                                   (let ((_hd12042_ _hd1201512037_))
                                     (let ((_body12044_ _tl1201612039_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12042_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12044_))
                                           (_E1201012022_))))))
                               (_E1201012022_))))
                       (_E1201012022_)))))
            (let () (_E1200912046_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx11977_)
      (let ((_e1197811985_ _stx11977_))
        (let ((_E1198011989_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1197811985_))))
          (let ((_E1197912003_
                 (lambda ()
                   (if (gx#stx-pair? _e1197811985_)
                       (let ((_e1198111993_ (gx#syntax-e _e1197811985_)))
                         (let ((_hd1198211996_ (##car _e1198111993_))
                               (_tl1198311998_ (##cdr _e1198111993_)))
                           (let ((_body12001_ _tl1198311998_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12001_))
                                 (_E1198011989_)))))
                       (_E1198011989_)))))
            (let () (_E1197912003_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx11947_)
      (let ((_e1194811955_ _stx11947_))
        (let ((_E1195011959_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1194811955_))))
          (let ((_E1194911973_
                 (lambda ()
                   (if (gx#stx-pair? _e1194811955_)
                       (let ((_e1195111963_ (gx#syntax-e _e1194811955_)))
                         (let ((_hd1195211966_ (##car _e1195111963_))
                               (_tl1195311968_ (##cdr _e1195111963_)))
                           (let ((_body11971_ _tl1195311968_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body11971_))
                                 (_E1195011959_)))))
                       (_E1195011959_)))))
            (let () (_E1194911973_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx11872_)
      (let ((_generate11874_
             (lambda (_hd11904_)
               (let ((_e1190511915_ _hd11904_))
                 (let ((_E1190711919_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1190511915_))))
                   (let ((_E1190611943_
                          (lambda ()
                            (if (gx#stx-pair? _e1190511915_)
                                (let ((_e1190811923_
                                       (gx#syntax-e _e1190511915_)))
                                  (let ((_hd1190911926_ (##car _e1190811923_))
                                        (_tl1191011928_ (##cdr _e1190811923_)))
                                    (let ((_id11931_ _hd1190911926_))
                                      (if (gx#stx-pair? _tl1191011928_)
                                          (let ((_e1191111933_
                                                 (gx#syntax-e _tl1191011928_)))
                                            (let ((_hd1191211936_
                                                   (##car _e1191111933_))
                                                  (_tl1191311938_
                                                   (##cdr _e1191111933_)))
                                              (let ((_eid11941_
                                                     _hd1191211936_))
                                                (if (gx#stx-null?
                                                     _tl1191311938_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id11931_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid11941_)
                            '()))
                (_E1190711919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1190711919_)))))
                                          (_E1190711919_)))))
                                (_E1190711919_)))))
                     (let () (_E1190611943_))))))))
        (let ((_e1187511882_ _stx11872_))
          (let ((_E1187711886_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1187511882_))))
            (let ((_E1187611900_
                   (lambda ()
                     (if (gx#stx-pair? _e1187511882_)
                         (let ((_e1187811890_ (gx#syntax-e _e1187511882_)))
                           (let ((_hd1187911893_ (##car _e1187811890_))
                                 (_tl1188011895_ (##cdr _e1187811890_)))
                             (let ((_body11898_ _tl1188011895_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate11874_
                                          _body11898_))
                                   (_E1187711886_)))))
                         (_E1187711886_)))))
              (let () (_E1187611900_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx11818_)
      (let ((_e1181911832_ _stx11818_))
        (let ((_E1182111836_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1181911832_))))
          (let ((_E1182011868_
                 (lambda ()
                   (if (gx#stx-pair? _e1181911832_)
                       (let ((_e1182211840_ (gx#syntax-e _e1181911832_)))
                         (let ((_hd1182311843_ (##car _e1182211840_))
                               (_tl1182411845_ (##cdr _e1182211840_)))
                           (if (gx#stx-pair? _tl1182411845_)
                               (let ((_e1182511848_
                                      (gx#syntax-e _tl1182411845_)))
                                 (let ((_hd1182611851_ (##car _e1182511848_))
                                       (_tl1182711853_ (##cdr _e1182511848_)))
                                   (let ((_hd11856_ _hd1182611851_))
                                     (if (gx#stx-pair? _tl1182711853_)
                                         (let ((_e1182811858_
                                                (gx#syntax-e _tl1182711853_)))
                                           (let ((_hd1182911861_
                                                  (##car _e1182811858_))
                                                 (_tl1183011863_
                                                  (##cdr _e1182811858_)))
                                             (let ((_expr11866_
                                                    _hd1182911861_))
                                               (if (gx#stx-null?
                                                    _tl1183011863_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd11856_)
                           (cons (gx#core-compile-top-syntax _expr11866_)
                                 '())))
               (_E1182111836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1182111836_)))))
                                         (_E1182111836_)))))
                               (_E1182111836_))))
                       (_E1182111836_)))))
            (let () (_E1182011868_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx11763_)
      (let ((_e1176411777_ _stx11763_))
        (let ((_E1176611781_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176411777_))))
          (let ((_E1176511814_
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
                                   (let ((_hd11801_ _hd1177111796_))
                                     (if (gx#stx-pair? _tl1177211798_)
                                         (let ((_e1177311803_
                                                (gx#syntax-e _tl1177211798_)))
                                           (let ((_hd1177411806_
                                                  (##car _e1177311803_))
                                                 (_tl1177511808_
                                                  (##cdr _e1177311803_)))
                                             (let ((_expr11811_
                                                    _hd1177411806_))
                                               (if (gx#stx-null?
                                                    _tl1177511808_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11801_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr11811_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1176611781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1176611781_)))))
                                         (_E1176611781_)))))
                               (_E1176611781_))))
                       (_E1176611781_)))))
            (let () (_E1176511814_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11709_)
      (let ((_e1171011723_ _stx11709_))
        (let ((_E1171211727_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1171011723_))))
          (let ((_E1171111759_
                 (lambda ()
                   (if (gx#stx-pair? _e1171011723_)
                       (let ((_e1171311731_ (gx#syntax-e _e1171011723_)))
                         (let ((_hd1171411734_ (##car _e1171311731_))
                               (_tl1171511736_ (##cdr _e1171311731_)))
                           (if (gx#stx-pair? _tl1171511736_)
                               (let ((_e1171611739_
                                      (gx#syntax-e _tl1171511736_)))
                                 (let ((_hd1171711742_ (##car _e1171611739_))
                                       (_tl1171811744_ (##cdr _e1171611739_)))
                                   (let ((_hd11747_ _hd1171711742_))
                                     (if (gx#stx-pair? _tl1171811744_)
                                         (let ((_e1171911749_
                                                (gx#syntax-e _tl1171811744_)))
                                           (let ((_hd1172011752_
                                                  (##car _e1171911749_))
                                                 (_tl1172111754_
                                                  (##cdr _e1171911749_)))
                                             (let ((_alias-id11757_
                                                    _hd1172011752_))
                                               (if (gx#stx-null?
                                                    _tl1172111754_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11747_)
                           (cons (gx#core-quote-syntax__0 _alias-id11757_)
                                 '())))
               (_E1171211727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1171211727_)))))
                                         (_E1171211727_)))))
                               (_E1171211727_))))
                       (_E1171211727_)))))
            (let () (_E1171111759_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11655_)
      (let ((_e1165611669_ _stx11655_))
        (let ((_E1165811673_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165611669_))))
          (let ((_E1165711705_
                 (lambda ()
                   (if (gx#stx-pair? _e1165611669_)
                       (let ((_e1165911677_ (gx#syntax-e _e1165611669_)))
                         (let ((_hd1166011680_ (##car _e1165911677_))
                               (_tl1166111682_ (##cdr _e1165911677_)))
                           (if (gx#stx-pair? _tl1166111682_)
                               (let ((_e1166211685_
                                      (gx#syntax-e _tl1166111682_)))
                                 (let ((_hd1166311688_ (##car _e1166211685_))
                                       (_tl1166411690_ (##cdr _e1166211685_)))
                                   (let ((_id11693_ _hd1166311688_))
                                     (if (gx#stx-pair? _tl1166411690_)
                                         (let ((_e1166511695_
                                                (gx#syntax-e _tl1166411690_)))
                                           (let ((_hd1166611698_
                                                  (##car _e1166511695_))
                                                 (_tl1166711700_
                                                  (##cdr _e1166511695_)))
                                             (let ((_binding-id11703_
                                                    _hd1166611698_))
                                               (if (gx#stx-null?
                                                    _tl1166711700_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11693_)
                           (cons (gx#core-quote-syntax__0 _binding-id11703_)
                                 '())))
               (_E1165811673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1165811673_)))))
                                         (_E1165811673_)))))
                               (_E1165811673_))))
                       (_E1165811673_)))))
            (let () (_E1165711705_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11625_)
      (let ((_e1162611633_ _stx11625_))
        (let ((_E1162811637_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1162611633_))))
          (let ((_E1162711651_
                 (lambda ()
                   (if (gx#stx-pair? _e1162611633_)
                       (let ((_e1162911641_ (gx#syntax-e _e1162611633_)))
                         (let ((_hd1163011644_ (##car _e1162911641_))
                               (_tl1163111646_ (##cdr _e1162911641_)))
                           (let ((_decls11649_ _tl1163111646_))
                             (if '#t
                                 (cons '%#declare _decls11649_)
                                 (_E1162811637_)))))
                       (_E1162811637_)))))
            (let () (_E1162711651_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11595_)
      (let ((_e1159611603_ _stx11595_))
        (let ((_E1159811607_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1159611603_))))
          (let ((_E1159711621_
                 (lambda ()
                   (if (gx#stx-pair? _e1159611603_)
                       (let ((_e1159911611_ (gx#syntax-e _e1159611603_)))
                         (let ((_hd1160011614_ (##car _e1159911611_))
                               (_tl1160111616_ (##cdr _e1159911611_)))
                           (let ((_clause11619_ _tl1160111616_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11619_))
                                 (_E1159811607_)))))
                       (_E1159811607_)))))
            (let () (_E1159711621_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11552_)
      (let ((_e1155311563_ _stx11552_))
        (let ((_E1155511567_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1155311563_))))
          (let ((_E1155411591_
                 (lambda ()
                   (if (gx#stx-pair? _e1155311563_)
                       (let ((_e1155611571_ (gx#syntax-e _e1155311563_)))
                         (let ((_hd1155711574_ (##car _e1155611571_))
                               (_tl1155811576_ (##cdr _e1155611571_)))
                           (let ((_hd11579_ _hd1155711574_))
                             (if (gx#stx-pair? _tl1155811576_)
                                 (let ((_e1155911581_
                                        (gx#syntax-e _tl1155811576_)))
                                   (let ((_hd1156011584_ (##car _e1155911581_))
                                         (_tl1156111586_
                                          (##cdr _e1155911581_)))
                                     (let ((_body11589_ _hd1156011584_))
                                       (if (gx#stx-null? _tl1156111586_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11579_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11589_)
                                                           '()))
                                               (_E1155511567_))
                                           (_E1155511567_)))))
                                 (_E1155511567_)))))
                       (_E1155511567_)))))
            (let () (_E1155411591_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11522_)
      (let ((_e1152311530_ _stx11522_))
        (let ((_E1152511534_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1152311530_))))
          (let ((_E1152411548_
                 (lambda ()
                   (if (gx#stx-pair? _e1152311530_)
                       (let ((_e1152611538_ (gx#syntax-e _e1152311530_)))
                         (let ((_hd1152711541_ (##car _e1152611538_))
                               (_tl1152811543_ (##cdr _e1152611538_)))
                           (let ((_clauses11546_ _tl1152811543_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11546_))
                                 (_E1152511534_)))))
                       (_E1152511534_)))))
            (let () (_E1152411548_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11455
      (lambda (_stx11457_ _form11458_)
        (let ((_e1145911472_ _stx11457_))
          (let ((_E1146111476_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1145911472_))))
            (let ((_E1146011508_
                   (lambda ()
                     (if (gx#stx-pair? _e1145911472_)
                         (let ((_e1146211480_ (gx#syntax-e _e1145911472_)))
                           (let ((_hd1146311483_ (##car _e1146211480_))
                                 (_tl1146411485_ (##cdr _e1146211480_)))
                             (if (gx#stx-pair? _tl1146411485_)
                                 (let ((_e1146511488_
                                        (gx#syntax-e _tl1146411485_)))
                                   (let ((_hd1146611491_ (##car _e1146511488_))
                                         (_tl1146711493_
                                          (##cdr _e1146511488_)))
                                     (let ((_hd11496_ _hd1146611491_))
                                       (if (gx#stx-pair? _tl1146711493_)
                                           (let ((_e1146811498_
                                                  (gx#syntax-e
                                                   _tl1146711493_)))
                                             (let ((_hd1146911501_
                                                    (##car _e1146811498_))
                                                   (_tl1147011503_
                                                    (##cdr _e1146811498_)))
                                               (let ((_body11506_
                                                      _hd1146911501_))
                                                 (if (gx#stx-null?
                                                      _tl1147011503_)
                                                     (if '#t
                                                         (cons _form11458_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11496_)
                             (cons (gx#core-compile-top-syntax _body11506_)
                                   '())))
                 (_E1146111476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1146111476_)))))
                                           (_E1146111476_)))))
                                 (_E1146111476_))))
                         (_E1146111476_)))))
              (let () (_E1146011508_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11515_)
          (let ((_form11517_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11455
             _stx11515_
             _form11517_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12243_
          (let ((_g12242_ (length _g12243_)))
            (cond ((fx= _g12242_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12243_))
                  ((fx= _g12242_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11455
                          _g12243_))
                  (else (error "No clause matching arguments" _g12243_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11454_)
      (gx#core-compile-top-let-values%__opt-lambda11455
       _stx11454_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11452_)
      (gx#core-compile-top-let-values%__opt-lambda11455
       _stx11452_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11411_)
      (let ((_e1141211422_ _stx11411_))
        (let ((_E1141411426_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1141211422_))))
          (let ((_E1141311448_
                 (lambda ()
                   (if (gx#stx-pair? _e1141211422_)
                       (let ((_e1141511430_ (gx#syntax-e _e1141211422_)))
                         (let ((_hd1141611433_ (##car _e1141511430_))
                               (_tl1141711435_ (##cdr _e1141511430_)))
                           (if (gx#stx-pair? _tl1141711435_)
                               (let ((_e1141811438_
                                      (gx#syntax-e _tl1141711435_)))
                                 (let ((_hd1141911441_ (##car _e1141811438_))
                                       (_tl1142011443_ (##cdr _e1141811438_)))
                                   (let ((_e11446_ _hd1141911441_))
                                     (if (gx#stx-null? _tl1142011443_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11446_)
                                                         '()))
                                             (_E1141411426_))
                                         (_E1141411426_)))))
                               (_E1141411426_))))
                       (_E1141411426_)))))
            (let () (_E1141311448_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11370_)
      (let ((_e1137111381_ _stx11370_))
        (let ((_E1137311385_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1137111381_))))
          (let ((_E1137211407_
                 (lambda ()
                   (if (gx#stx-pair? _e1137111381_)
                       (let ((_e1137411389_ (gx#syntax-e _e1137111381_)))
                         (let ((_hd1137511392_ (##car _e1137411389_))
                               (_tl1137611394_ (##cdr _e1137411389_)))
                           (if (gx#stx-pair? _tl1137611394_)
                               (let ((_e1137711397_
                                      (gx#syntax-e _tl1137611394_)))
                                 (let ((_hd1137811400_ (##car _e1137711397_))
                                       (_tl1137911402_ (##cdr _e1137711397_)))
                                   (let ((_e11405_ _hd1137811400_))
                                     (if (gx#stx-null? _tl1137911402_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11405_)
                                                         '()))
                                             (_E1137311385_))
                                         (_E1137311385_)))))
                               (_E1137311385_))))
                       (_E1137311385_)))))
            (let () (_E1137211407_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11327_)
      (let ((_e1132811338_ _stx11327_))
        (let ((_E1133011342_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1132811338_))))
          (let ((_E1132911366_
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
                                   (let ((_rator11362_ _hd1133511357_))
                                     (let ((_args11364_ _tl1133611359_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11362_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11364_))
                                           (_E1133011342_))))))
                               (_E1133011342_))))
                       (_E1133011342_)))))
            (let () (_E1132911366_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11260_)
      (let ((_e1126111277_ _stx11260_))
        (let ((_E1126311281_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1126111277_))))
          (let ((_E1126211323_
                 (lambda ()
                   (if (gx#stx-pair? _e1126111277_)
                       (let ((_e1126411285_ (gx#syntax-e _e1126111277_)))
                         (let ((_hd1126511288_ (##car _e1126411285_))
                               (_tl1126611290_ (##cdr _e1126411285_)))
                           (if (gx#stx-pair? _tl1126611290_)
                               (let ((_e1126711293_
                                      (gx#syntax-e _tl1126611290_)))
                                 (let ((_hd1126811296_ (##car _e1126711293_))
                                       (_tl1126911298_ (##cdr _e1126711293_)))
                                   (let ((_test11301_ _hd1126811296_))
                                     (if (gx#stx-pair? _tl1126911298_)
                                         (let ((_e1127011303_
                                                (gx#syntax-e _tl1126911298_)))
                                           (let ((_hd1127111306_
                                                  (##car _e1127011303_))
                                                 (_tl1127211308_
                                                  (##cdr _e1127011303_)))
                                             (let ((_K11311_ _hd1127111306_))
                                               (if (gx#stx-pair?
                                                    _tl1127211308_)
                                                   (let ((_e1127311313_
                                                          (gx#syntax-e
                                                           _tl1127211308_)))
                                                     (let ((_hd1127411316_
                                                            (##car _e1127311313_))
                                                           (_tl1127511318_
                                                            (##cdr _e1127311313_)))
                                                       (let ((_E11321_
                                                              _hd1127411316_))
                                                         (if (gx#stx-null?
                                                              _tl1127511318_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11301_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11311_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11321_)
                                                 '()))))
                         (_E1126311281_))
                     (_E1126311281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1126311281_)))))
                                         (_E1126311281_)))))
                               (_E1126311281_))))
                       (_E1126311281_)))))
            (let () (_E1126211323_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11219_)
      (let ((_e1122011230_ _stx11219_))
        (let ((_E1122211234_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1122011230_))))
          (let ((_E1122111256_
                 (lambda ()
                   (if (gx#stx-pair? _e1122011230_)
                       (let ((_e1122311238_ (gx#syntax-e _e1122011230_)))
                         (let ((_hd1122411241_ (##car _e1122311238_))
                               (_tl1122511243_ (##cdr _e1122311238_)))
                           (if (gx#stx-pair? _tl1122511243_)
                               (let ((_e1122611246_
                                      (gx#syntax-e _tl1122511243_)))
                                 (let ((_hd1122711249_ (##car _e1122611246_))
                                       (_tl1122811251_ (##cdr _e1122611246_)))
                                   (let ((_id11254_ _hd1122711249_))
                                     (if (gx#stx-null? _tl1122811251_)
                                         (if (gx#identifier? _id11254_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11254_)
                                                         '()))
                                             (_E1122211234_))
                                         (_E1122211234_)))))
                               (_E1122211234_))))
                       (_E1122211234_)))))
            (let () (_E1122111256_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11165_)
      (let ((_e1116611179_ _stx11165_))
        (let ((_E1116811183_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1116611179_))))
          (let ((_E1116711215_
                 (lambda ()
                   (if (gx#stx-pair? _e1116611179_)
                       (let ((_e1116911187_ (gx#syntax-e _e1116611179_)))
                         (let ((_hd1117011190_ (##car _e1116911187_))
                               (_tl1117111192_ (##cdr _e1116911187_)))
                           (if (gx#stx-pair? _tl1117111192_)
                               (let ((_e1117211195_
                                      (gx#syntax-e _tl1117111192_)))
                                 (let ((_hd1117311198_ (##car _e1117211195_))
                                       (_tl1117411200_ (##cdr _e1117211195_)))
                                   (let ((_id11203_ _hd1117311198_))
                                     (if (gx#stx-pair? _tl1117411200_)
                                         (let ((_e1117511205_
                                                (gx#syntax-e _tl1117411200_)))
                                           (let ((_hd1117611208_
                                                  (##car _e1117511205_))
                                                 (_tl1117711210_
                                                  (##cdr _e1117511205_)))
                                             (let ((_expr11213_
                                                    _hd1117611208_))
                                               (if (gx#stx-null?
                                                    _tl1117711210_)
                                                   (if (gx#identifier?
                                                        _id11203_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11203_)
                           (cons (gx#core-compile-top-syntax _expr11213_)
                                 '())))
               (_E1116811183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1116811183_)))))
                                         (_E1116811183_)))))
                               (_E1116811183_))))
                       (_E1116811183_)))))
            (let () (_E1116711215_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11160_)
      (let ((_$e11162_ (gx#resolve-identifier__0 _id11160_)))
        (if _$e11162_
            (##structure-ref _$e11162_ '1 gx#binding::t '#f)
            _id11160_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11158_)
      (if (gx#identifier? _hd11158_)
          (gx#core-compile-top-runtime-ref _hd11158_)
          '#f))))
