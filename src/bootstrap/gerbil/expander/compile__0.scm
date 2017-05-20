(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12486_)
      (let ((_e1248712494_ _stx12486_))
        (let ((_E1248912498_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1248712494_))))
          (let ((_E1248812512_
                 (lambda ()
                   (if (gx#stx-pair? _e1248712494_)
                       (let ((_e1249012502_ (gx#syntax-e _e1248712494_)))
                         (let ((_hd1249112505_ (##car _e1249012502_))
                               (_tl1249212507_ (##cdr _e1249012502_)))
                           (let ((_form12510_ _hd1249112505_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12510_)
                                  'compile-top-syntax
                                  _stx12486_)
                                 (_E1248912498_)))))
                       (_E1248912498_)))))
            (let () (_E1248812512_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12446_ _stx12447_)
      (let ((_self1244812456_ _self12446_))
        (let ((_E1245012460_
               (lambda () (error '"No clause matching" _self1244812456_))))
          (let ((_K1245112472_
                 (lambda (_K12463_)
                   (let ((_$e12465_ (gx#stx-source _stx12447_)))
                     (if _$e12465_
                         ((lambda (_g1246712469_)
                            (gx#stx-wrap-source
                             (_K12463_ _stx12447_)
                             _g1246712469_))
                          _$e12465_)
                         (_K12463_ _stx12447_))))))
            (if (struct-instance? gx#core-expander::t _self1244812456_)
                (let ((_e1245212475_ (##vector-ref _self1244812456_ '1)))
                  (let ((_e1245312478_ (##vector-ref _self1244812456_ '2)))
                    (let ((_e1245412481_ (##vector-ref _self1244812456_ '3)))
                      (let ((_K12484_ _e1245412481_))
                        (_K1245112472_ _K12484_)))))
                (_E1245012460_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12444_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12444_)))
  (define gx#core-compile-top-begin%
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
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12438_))
                                 (_E1241712426_)))))
                       (_E1241712426_)))))
            (let () (_E1241612440_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12383_)
      (let ((_e1238412391_ _stx12383_))
        (let ((_E1238612395_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238412391_))))
          (let ((_E1238512410_
                 (lambda ()
                   (if (gx#stx-pair? _e1238412391_)
                       (let ((_e1238712399_ (gx#syntax-e _e1238412391_)))
                         (let ((_hd1238812402_ (##car _e1238712399_))
                               (_tl1238912404_ (##cdr _e1238712399_)))
                           (let ((_body12407_ _tl1238912404_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12407_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1238612395_)))))
                       (_E1238612395_)))))
            (let () (_E1238512410_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12353_)
      (let ((_e1235412361_ _stx12353_))
        (let ((_E1235612365_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1235412361_))))
          (let ((_E1235512379_
                 (lambda ()
                   (if (gx#stx-pair? _e1235412361_)
                       (let ((_e1235712369_ (gx#syntax-e _e1235412361_)))
                         (let ((_hd1235812372_ (##car _e1235712369_))
                               (_tl1235912374_ (##cdr _e1235712369_)))
                           (let ((_body12377_ _tl1235912374_))
                             (if '#t
                                 (cons '%#begin-foreign _body12377_)
                                 (_E1235612365_)))))
                       (_E1235612365_)))))
            (let () (_E1235512379_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12323_)
      (let ((_e1232412331_ _stx12323_))
        (let ((_E1232612335_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1232412331_))))
          (let ((_E1232512349_
                 (lambda ()
                   (if (gx#stx-pair? _e1232412331_)
                       (let ((_e1232712339_ (gx#syntax-e _e1232412331_)))
                         (let ((_hd1232812342_ (##car _e1232712339_))
                               (_tl1232912344_ (##cdr _e1232712339_)))
                           (let ((_body12347_ _tl1232912344_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12347_))
                                 (_E1232612335_)))))
                       (_E1232612335_)))))
            (let () (_E1232512349_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12280_)
      (let ((_e1228112291_ _stx12280_))
        (let ((_E1228312295_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1228112291_))))
          (let ((_E1228212319_
                 (lambda ()
                   (if (gx#stx-pair? _e1228112291_)
                       (let ((_e1228412299_ (gx#syntax-e _e1228112291_)))
                         (let ((_hd1228512302_ (##car _e1228412299_))
                               (_tl1228612304_ (##cdr _e1228412299_)))
                           (if (gx#stx-pair? _tl1228612304_)
                               (let ((_e1228712307_
                                      (gx#syntax-e _tl1228612304_)))
                                 (let ((_hd1228812310_ (##car _e1228712307_))
                                       (_tl1228912312_ (##cdr _e1228712307_)))
                                   (let ((_hd12315_ _hd1228812310_))
                                     (let ((_body12317_ _tl1228912312_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12315_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12317_))
                                           (_E1228312295_))))))
                               (_E1228312295_))))
                       (_E1228312295_)))))
            (let () (_E1228212319_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12250_)
      (let ((_e1225112258_ _stx12250_))
        (let ((_E1225312262_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225112258_))))
          (let ((_E1225212276_
                 (lambda ()
                   (if (gx#stx-pair? _e1225112258_)
                       (let ((_e1225412266_ (gx#syntax-e _e1225112258_)))
                         (let ((_hd1225512269_ (##car _e1225412266_))
                               (_tl1225612271_ (##cdr _e1225412266_)))
                           (let ((_body12274_ _tl1225612271_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12274_))
                                 (_E1225312262_)))))
                       (_E1225312262_)))))
            (let () (_E1225212276_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12220_)
      (let ((_e1222112228_ _stx12220_))
        (let ((_E1222312232_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1222112228_))))
          (let ((_E1222212246_
                 (lambda ()
                   (if (gx#stx-pair? _e1222112228_)
                       (let ((_e1222412236_ (gx#syntax-e _e1222112228_)))
                         (let ((_hd1222512239_ (##car _e1222412236_))
                               (_tl1222612241_ (##cdr _e1222412236_)))
                           (let ((_body12244_ _tl1222612241_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12244_))
                                 (_E1222312232_)))))
                       (_E1222312232_)))))
            (let () (_E1222212246_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12145_)
      (let ((_generate12147_
             (lambda (_hd12177_)
               (let ((_e1217812188_ _hd12177_))
                 (let ((_E1218012192_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1217812188_))))
                   (let ((_E1217912216_
                          (lambda ()
                            (if (gx#stx-pair? _e1217812188_)
                                (let ((_e1218112196_
                                       (gx#syntax-e _e1217812188_)))
                                  (let ((_hd1218212199_ (##car _e1218112196_))
                                        (_tl1218312201_ (##cdr _e1218112196_)))
                                    (let ((_id12204_ _hd1218212199_))
                                      (if (gx#stx-pair? _tl1218312201_)
                                          (let ((_e1218412206_
                                                 (gx#syntax-e _tl1218312201_)))
                                            (let ((_hd1218512209_
                                                   (##car _e1218412206_))
                                                  (_tl1218612211_
                                                   (##cdr _e1218412206_)))
                                              (let ((_eid12214_
                                                     _hd1218512209_))
                                                (if (gx#stx-null?
                                                     _tl1218612211_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12204_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12214_)
                            '()))
                (_E1218012192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1218012192_)))))
                                          (_E1218012192_)))))
                                (_E1218012192_)))))
                     (let () (_E1217912216_))))))))
        (let ((_e1214812155_ _stx12145_))
          (let ((_E1215012159_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1214812155_))))
            (let ((_E1214912173_
                   (lambda ()
                     (if (gx#stx-pair? _e1214812155_)
                         (let ((_e1215112163_ (gx#syntax-e _e1214812155_)))
                           (let ((_hd1215212166_ (##car _e1215112163_))
                                 (_tl1215312168_ (##cdr _e1215112163_)))
                             (let ((_body12171_ _tl1215312168_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12147_
                                          _body12171_))
                                   (_E1215012159_)))))
                         (_E1215012159_)))))
              (let () (_E1214912173_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12091_)
      (let ((_e1209212105_ _stx12091_))
        (let ((_E1209412109_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1209212105_))))
          (let ((_E1209312141_
                 (lambda ()
                   (if (gx#stx-pair? _e1209212105_)
                       (let ((_e1209512113_ (gx#syntax-e _e1209212105_)))
                         (let ((_hd1209612116_ (##car _e1209512113_))
                               (_tl1209712118_ (##cdr _e1209512113_)))
                           (if (gx#stx-pair? _tl1209712118_)
                               (let ((_e1209812121_
                                      (gx#syntax-e _tl1209712118_)))
                                 (let ((_hd1209912124_ (##car _e1209812121_))
                                       (_tl1210012126_ (##cdr _e1209812121_)))
                                   (let ((_hd12129_ _hd1209912124_))
                                     (if (gx#stx-pair? _tl1210012126_)
                                         (let ((_e1210112131_
                                                (gx#syntax-e _tl1210012126_)))
                                           (let ((_hd1210212134_
                                                  (##car _e1210112131_))
                                                 (_tl1210312136_
                                                  (##cdr _e1210112131_)))
                                             (let ((_expr12139_
                                                    _hd1210212134_))
                                               (if (gx#stx-null?
                                                    _tl1210312136_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12129_)
                           (cons (gx#core-compile-top-syntax _expr12139_)
                                 '())))
               (_E1209412109_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1209412109_)))))
                                         (_E1209412109_)))))
                               (_E1209412109_))))
                       (_E1209412109_)))))
            (let () (_E1209312141_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12036_)
      (let ((_e1203712050_ _stx12036_))
        (let ((_E1203912054_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203712050_))))
          (let ((_E1203812087_
                 (lambda ()
                   (if (gx#stx-pair? _e1203712050_)
                       (let ((_e1204012058_ (gx#syntax-e _e1203712050_)))
                         (let ((_hd1204112061_ (##car _e1204012058_))
                               (_tl1204212063_ (##cdr _e1204012058_)))
                           (if (gx#stx-pair? _tl1204212063_)
                               (let ((_e1204312066_
                                      (gx#syntax-e _tl1204212063_)))
                                 (let ((_hd1204412069_ (##car _e1204312066_))
                                       (_tl1204512071_ (##cdr _e1204312066_)))
                                   (let ((_hd12074_ _hd1204412069_))
                                     (if (gx#stx-pair? _tl1204512071_)
                                         (let ((_e1204612076_
                                                (gx#syntax-e _tl1204512071_)))
                                           (let ((_hd1204712079_
                                                  (##car _e1204612076_))
                                                 (_tl1204812081_
                                                  (##cdr _e1204612076_)))
                                             (let ((_expr12084_
                                                    _hd1204712079_))
                                               (if (gx#stx-null?
                                                    _tl1204812081_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12074_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12084_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1203912054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1203912054_)))))
                                         (_E1203912054_)))))
                               (_E1203912054_))))
                       (_E1203912054_)))))
            (let () (_E1203812087_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx11982_)
      (let ((_e1198311996_ _stx11982_))
        (let ((_E1198512000_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1198311996_))))
          (let ((_E1198412032_
                 (lambda ()
                   (if (gx#stx-pair? _e1198311996_)
                       (let ((_e1198612004_ (gx#syntax-e _e1198311996_)))
                         (let ((_hd1198712007_ (##car _e1198612004_))
                               (_tl1198812009_ (##cdr _e1198612004_)))
                           (if (gx#stx-pair? _tl1198812009_)
                               (let ((_e1198912012_
                                      (gx#syntax-e _tl1198812009_)))
                                 (let ((_hd1199012015_ (##car _e1198912012_))
                                       (_tl1199112017_ (##cdr _e1198912012_)))
                                   (let ((_hd12020_ _hd1199012015_))
                                     (if (gx#stx-pair? _tl1199112017_)
                                         (let ((_e1199212022_
                                                (gx#syntax-e _tl1199112017_)))
                                           (let ((_hd1199312025_
                                                  (##car _e1199212022_))
                                                 (_tl1199412027_
                                                  (##cdr _e1199212022_)))
                                             (let ((_alias-id12030_
                                                    _hd1199312025_))
                                               (if (gx#stx-null?
                                                    _tl1199412027_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12020_)
                           (cons (gx#core-quote-syntax__0 _alias-id12030_)
                                 '())))
               (_E1198512000_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1198512000_)))))
                                         (_E1198512000_)))))
                               (_E1198512000_))))
                       (_E1198512000_)))))
            (let () (_E1198412032_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx11928_)
      (let ((_e1192911942_ _stx11928_))
        (let ((_E1193111946_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1192911942_))))
          (let ((_E1193011978_
                 (lambda ()
                   (if (gx#stx-pair? _e1192911942_)
                       (let ((_e1193211950_ (gx#syntax-e _e1192911942_)))
                         (let ((_hd1193311953_ (##car _e1193211950_))
                               (_tl1193411955_ (##cdr _e1193211950_)))
                           (if (gx#stx-pair? _tl1193411955_)
                               (let ((_e1193511958_
                                      (gx#syntax-e _tl1193411955_)))
                                 (let ((_hd1193611961_ (##car _e1193511958_))
                                       (_tl1193711963_ (##cdr _e1193511958_)))
                                   (let ((_id11966_ _hd1193611961_))
                                     (if (gx#stx-pair? _tl1193711963_)
                                         (let ((_e1193811968_
                                                (gx#syntax-e _tl1193711963_)))
                                           (let ((_hd1193911971_
                                                  (##car _e1193811968_))
                                                 (_tl1194011973_
                                                  (##cdr _e1193811968_)))
                                             (let ((_binding-id11976_
                                                    _hd1193911971_))
                                               (if (gx#stx-null?
                                                    _tl1194011973_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11966_)
                           (cons (gx#core-quote-syntax__0 _binding-id11976_)
                                 '())))
               (_E1193111946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1193111946_)))))
                                         (_E1193111946_)))))
                               (_E1193111946_))))
                       (_E1193111946_)))))
            (let () (_E1193011978_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx11898_)
      (let ((_e1189911906_ _stx11898_))
        (let ((_E1190111910_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1189911906_))))
          (let ((_E1190011924_
                 (lambda ()
                   (if (gx#stx-pair? _e1189911906_)
                       (let ((_e1190211914_ (gx#syntax-e _e1189911906_)))
                         (let ((_hd1190311917_ (##car _e1190211914_))
                               (_tl1190411919_ (##cdr _e1190211914_)))
                           (let ((_decls11922_ _tl1190411919_))
                             (if '#t
                                 (cons '%#declare _decls11922_)
                                 (_E1190111910_)))))
                       (_E1190111910_)))))
            (let () (_E1190011924_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx11868_)
      (let ((_e1186911876_ _stx11868_))
        (let ((_E1187111880_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1186911876_))))
          (let ((_E1187011894_
                 (lambda ()
                   (if (gx#stx-pair? _e1186911876_)
                       (let ((_e1187211884_ (gx#syntax-e _e1186911876_)))
                         (let ((_hd1187311887_ (##car _e1187211884_))
                               (_tl1187411889_ (##cdr _e1187211884_)))
                           (let ((_clause11892_ _tl1187411889_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause11892_))
                                 (_E1187111880_)))))
                       (_E1187111880_)))))
            (let () (_E1187011894_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11825_)
      (let ((_e1182611836_ _stx11825_))
        (let ((_E1182811840_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1182611836_))))
          (let ((_E1182711864_
                 (lambda ()
                   (if (gx#stx-pair? _e1182611836_)
                       (let ((_e1182911844_ (gx#syntax-e _e1182611836_)))
                         (let ((_hd1183011847_ (##car _e1182911844_))
                               (_tl1183111849_ (##cdr _e1182911844_)))
                           (let ((_hd11852_ _hd1183011847_))
                             (if (gx#stx-pair? _tl1183111849_)
                                 (let ((_e1183211854_
                                        (gx#syntax-e _tl1183111849_)))
                                   (let ((_hd1183311857_ (##car _e1183211854_))
                                         (_tl1183411859_
                                          (##cdr _e1183211854_)))
                                     (let ((_body11862_ _hd1183311857_))
                                       (if (gx#stx-null? _tl1183411859_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd11852_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body11862_)
                                                           '()))
                                               (_E1182811840_))
                                           (_E1182811840_)))))
                                 (_E1182811840_)))))
                       (_E1182811840_)))))
            (let () (_E1182711864_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11795_)
      (let ((_e1179611803_ _stx11795_))
        (let ((_E1179811807_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1179611803_))))
          (let ((_E1179711821_
                 (lambda ()
                   (if (gx#stx-pair? _e1179611803_)
                       (let ((_e1179911811_ (gx#syntax-e _e1179611803_)))
                         (let ((_hd1180011814_ (##car _e1179911811_))
                               (_tl1180111816_ (##cdr _e1179911811_)))
                           (let ((_clauses11819_ _tl1180111816_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11819_))
                                 (_E1179811807_)))))
                       (_E1179811807_)))))
            (let () (_E1179711821_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11728
      (lambda (_stx11730_ _form11731_)
        (let ((_e1173211745_ _stx11730_))
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
                                         (_tl1174011766_
                                          (##cdr _e1173811761_)))
                                     (let ((_hd11769_ _hd1173911764_))
                                       (if (gx#stx-pair? _tl1174011766_)
                                           (let ((_e1174111771_
                                                  (gx#syntax-e
                                                   _tl1174011766_)))
                                             (let ((_hd1174211774_
                                                    (##car _e1174111771_))
                                                   (_tl1174311776_
                                                    (##cdr _e1174111771_)))
                                               (let ((_body11779_
                                                      _hd1174211774_))
                                                 (if (gx#stx-null?
                                                      _tl1174311776_)
                                                     (if '#t
                                                         (cons _form11731_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11769_)
                             (cons (gx#core-compile-top-syntax _body11779_)
                                   '())))
                 (_E1173411749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1173411749_)))))
                                           (_E1173411749_)))))
                                 (_E1173411749_))))
                         (_E1173411749_)))))
              (let () (_E1173311781_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11788_)
          (let ((_form11790_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11728
             _stx11788_
             _form11790_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12516_
          (let ((_g12515_ (length _g12516_)))
            (cond ((fx= _g12515_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12516_))
                  ((fx= _g12515_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11728
                          _g12516_))
                  (else (error "No clause matching arguments" _g12516_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11727_)
      (gx#core-compile-top-let-values%__opt-lambda11728
       _stx11727_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11725_)
      (gx#core-compile-top-let-values%__opt-lambda11728
       _stx11725_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11684_)
      (let ((_e1168511695_ _stx11684_))
        (let ((_E1168711699_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1168511695_))))
          (let ((_E1168611721_
                 (lambda ()
                   (if (gx#stx-pair? _e1168511695_)
                       (let ((_e1168811703_ (gx#syntax-e _e1168511695_)))
                         (let ((_hd1168911706_ (##car _e1168811703_))
                               (_tl1169011708_ (##cdr _e1168811703_)))
                           (if (gx#stx-pair? _tl1169011708_)
                               (let ((_e1169111711_
                                      (gx#syntax-e _tl1169011708_)))
                                 (let ((_hd1169211714_ (##car _e1169111711_))
                                       (_tl1169311716_ (##cdr _e1169111711_)))
                                   (let ((_e11719_ _hd1169211714_))
                                     (if (gx#stx-null? _tl1169311716_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11719_)
                                                         '()))
                                             (_E1168711699_))
                                         (_E1168711699_)))))
                               (_E1168711699_))))
                       (_E1168711699_)))))
            (let () (_E1168611721_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11643_)
      (let ((_e1164411654_ _stx11643_))
        (let ((_E1164611658_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1164411654_))))
          (let ((_E1164511680_
                 (lambda ()
                   (if (gx#stx-pair? _e1164411654_)
                       (let ((_e1164711662_ (gx#syntax-e _e1164411654_)))
                         (let ((_hd1164811665_ (##car _e1164711662_))
                               (_tl1164911667_ (##cdr _e1164711662_)))
                           (if (gx#stx-pair? _tl1164911667_)
                               (let ((_e1165011670_
                                      (gx#syntax-e _tl1164911667_)))
                                 (let ((_hd1165111673_ (##car _e1165011670_))
                                       (_tl1165211675_ (##cdr _e1165011670_)))
                                   (let ((_e11678_ _hd1165111673_))
                                     (if (gx#stx-null? _tl1165211675_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11678_)
                                                         '()))
                                             (_E1164611658_))
                                         (_E1164611658_)))))
                               (_E1164611658_))))
                       (_E1164611658_)))))
            (let () (_E1164511680_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11600_)
      (let ((_e1160111611_ _stx11600_))
        (let ((_E1160311615_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160111611_))))
          (let ((_E1160211639_
                 (lambda ()
                   (if (gx#stx-pair? _e1160111611_)
                       (let ((_e1160411619_ (gx#syntax-e _e1160111611_)))
                         (let ((_hd1160511622_ (##car _e1160411619_))
                               (_tl1160611624_ (##cdr _e1160411619_)))
                           (if (gx#stx-pair? _tl1160611624_)
                               (let ((_e1160711627_
                                      (gx#syntax-e _tl1160611624_)))
                                 (let ((_hd1160811630_ (##car _e1160711627_))
                                       (_tl1160911632_ (##cdr _e1160711627_)))
                                   (let ((_rator11635_ _hd1160811630_))
                                     (let ((_args11637_ _tl1160911632_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11635_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11637_))
                                           (_E1160311615_))))))
                               (_E1160311615_))))
                       (_E1160311615_)))))
            (let () (_E1160211639_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11533_)
      (let ((_e1153411550_ _stx11533_))
        (let ((_E1153611554_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1153411550_))))
          (let ((_E1153511596_
                 (lambda ()
                   (if (gx#stx-pair? _e1153411550_)
                       (let ((_e1153711558_ (gx#syntax-e _e1153411550_)))
                         (let ((_hd1153811561_ (##car _e1153711558_))
                               (_tl1153911563_ (##cdr _e1153711558_)))
                           (if (gx#stx-pair? _tl1153911563_)
                               (let ((_e1154011566_
                                      (gx#syntax-e _tl1153911563_)))
                                 (let ((_hd1154111569_ (##car _e1154011566_))
                                       (_tl1154211571_ (##cdr _e1154011566_)))
                                   (let ((_test11574_ _hd1154111569_))
                                     (if (gx#stx-pair? _tl1154211571_)
                                         (let ((_e1154311576_
                                                (gx#syntax-e _tl1154211571_)))
                                           (let ((_hd1154411579_
                                                  (##car _e1154311576_))
                                                 (_tl1154511581_
                                                  (##cdr _e1154311576_)))
                                             (let ((_K11584_ _hd1154411579_))
                                               (if (gx#stx-pair?
                                                    _tl1154511581_)
                                                   (let ((_e1154611586_
                                                          (gx#syntax-e
                                                           _tl1154511581_)))
                                                     (let ((_hd1154711589_
                                                            (##car _e1154611586_))
                                                           (_tl1154811591_
                                                            (##cdr _e1154611586_)))
                                                       (let ((_E11594_
                                                              _hd1154711589_))
                                                         (if (gx#stx-null?
                                                              _tl1154811591_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11574_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11584_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11594_)
                                                 '()))))
                         (_E1153611554_))
                     (_E1153611554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1153611554_)))))
                                         (_E1153611554_)))))
                               (_E1153611554_))))
                       (_E1153611554_)))))
            (let () (_E1153511596_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11492_)
      (let ((_e1149311503_ _stx11492_))
        (let ((_E1149511507_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1149311503_))))
          (let ((_E1149411529_
                 (lambda ()
                   (if (gx#stx-pair? _e1149311503_)
                       (let ((_e1149611511_ (gx#syntax-e _e1149311503_)))
                         (let ((_hd1149711514_ (##car _e1149611511_))
                               (_tl1149811516_ (##cdr _e1149611511_)))
                           (if (gx#stx-pair? _tl1149811516_)
                               (let ((_e1149911519_
                                      (gx#syntax-e _tl1149811516_)))
                                 (let ((_hd1150011522_ (##car _e1149911519_))
                                       (_tl1150111524_ (##cdr _e1149911519_)))
                                   (let ((_id11527_ _hd1150011522_))
                                     (if (gx#stx-null? _tl1150111524_)
                                         (if (gx#identifier? _id11527_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11527_)
                                                         '()))
                                             (_E1149511507_))
                                         (_E1149511507_)))))
                               (_E1149511507_))))
                       (_E1149511507_)))))
            (let () (_E1149411529_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11438_)
      (let ((_e1143911452_ _stx11438_))
        (let ((_E1144111456_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1143911452_))))
          (let ((_E1144011488_
                 (lambda ()
                   (if (gx#stx-pair? _e1143911452_)
                       (let ((_e1144211460_ (gx#syntax-e _e1143911452_)))
                         (let ((_hd1144311463_ (##car _e1144211460_))
                               (_tl1144411465_ (##cdr _e1144211460_)))
                           (if (gx#stx-pair? _tl1144411465_)
                               (let ((_e1144511468_
                                      (gx#syntax-e _tl1144411465_)))
                                 (let ((_hd1144611471_ (##car _e1144511468_))
                                       (_tl1144711473_ (##cdr _e1144511468_)))
                                   (let ((_id11476_ _hd1144611471_))
                                     (if (gx#stx-pair? _tl1144711473_)
                                         (let ((_e1144811478_
                                                (gx#syntax-e _tl1144711473_)))
                                           (let ((_hd1144911481_
                                                  (##car _e1144811478_))
                                                 (_tl1145011483_
                                                  (##cdr _e1144811478_)))
                                             (let ((_expr11486_
                                                    _hd1144911481_))
                                               (if (gx#stx-null?
                                                    _tl1145011483_)
                                                   (if (gx#identifier?
                                                        _id11476_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11476_)
                           (cons (gx#core-compile-top-syntax _expr11486_)
                                 '())))
               (_E1144111456_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1144111456_)))))
                                         (_E1144111456_)))))
                               (_E1144111456_))))
                       (_E1144111456_)))))
            (let () (_E1144011488_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11433_)
      (let ((_$e11435_ (gx#resolve-identifier__0 _id11433_)))
        (if _$e11435_
            (##structure-ref _$e11435_ '1 gx#binding::t '#f)
            _id11433_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11431_)
      (if (gx#identifier? _hd11431_)
          (gx#core-compile-top-runtime-ref _hd11431_)
          '#f))))
