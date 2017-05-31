(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12646_)
      (let ((_e1264712654_ _stx12646_))
        (let ((_E1264912658_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1264712654_))))
          (let ((_E1264812672_
                 (lambda ()
                   (if (gx#stx-pair? _e1264712654_)
                       (let ((_e1265012662_ (gx#syntax-e _e1264712654_)))
                         (let ((_hd1265112665_ (##car _e1265012662_))
                               (_tl1265212667_ (##cdr _e1265012662_)))
                           (let ((_form12670_ _hd1265112665_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12670_)
                                  'compile-top-syntax
                                  _stx12646_)
                                 (_E1264912658_)))))
                       (_E1264912658_)))))
            (let () (_E1264812672_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12606_ _stx12607_)
      (let ((_self1260812616_ _self12606_))
        (let ((_E1261012620_
               (lambda () (error '"No clause matching" _self1260812616_))))
          (let ((_K1261112632_
                 (lambda (_K12623_)
                   (let ((_$e12625_ (gx#stx-source _stx12607_)))
                     (if _$e12625_
                         ((lambda (_g1262712629_)
                            (gx#stx-wrap-source
                             (_K12623_ _stx12607_)
                             _g1262712629_))
                          _$e12625_)
                         (_K12623_ _stx12607_))))))
            (if (##structure-instance-of?
                 _self1260812616_
                 (##type-id gx#core-expander::t))
                (let ((_e1261212635_ (##vector-ref _self1260812616_ '1)))
                  (let ((_e1261312638_ (##vector-ref _self1260812616_ '2)))
                    (let ((_e1261412641_ (##vector-ref _self1260812616_ '3)))
                      (let ((_K12644_ _e1261412641_))
                        (_K1261112632_ _K12644_)))))
                (_E1261012620_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12604_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12604_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12574_)
      (let ((_e1257512582_ _stx12574_))
        (let ((_E1257712586_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1257512582_))))
          (let ((_E1257612600_
                 (lambda ()
                   (if (gx#stx-pair? _e1257512582_)
                       (let ((_e1257812590_ (gx#syntax-e _e1257512582_)))
                         (let ((_hd1257912593_ (##car _e1257812590_))
                               (_tl1258012595_ (##cdr _e1257812590_)))
                           (let ((_body12598_ _tl1258012595_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12598_))
                                 (_E1257712586_)))))
                       (_E1257712586_)))))
            (let () (_E1257612600_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12543_)
      (let ((_e1254412551_ _stx12543_))
        (let ((_E1254612555_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1254412551_))))
          (let ((_E1254512570_
                 (lambda ()
                   (if (gx#stx-pair? _e1254412551_)
                       (let ((_e1254712559_ (gx#syntax-e _e1254412551_)))
                         (let ((_hd1254812562_ (##car _e1254712559_))
                               (_tl1254912564_ (##cdr _e1254712559_)))
                           (let ((_body12567_ _tl1254912564_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12567_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1254612555_)))))
                       (_E1254612555_)))))
            (let () (_E1254512570_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12513_)
      (let ((_e1251412521_ _stx12513_))
        (let ((_E1251612525_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1251412521_))))
          (let ((_E1251512539_
                 (lambda ()
                   (if (gx#stx-pair? _e1251412521_)
                       (let ((_e1251712529_ (gx#syntax-e _e1251412521_)))
                         (let ((_hd1251812532_ (##car _e1251712529_))
                               (_tl1251912534_ (##cdr _e1251712529_)))
                           (let ((_body12537_ _tl1251912534_))
                             (if '#t
                                 (cons '%#begin-foreign _body12537_)
                                 (_E1251612525_)))))
                       (_E1251612525_)))))
            (let () (_E1251512539_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12483_)
      (let ((_e1248412491_ _stx12483_))
        (let ((_E1248612495_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1248412491_))))
          (let ((_E1248512509_
                 (lambda ()
                   (if (gx#stx-pair? _e1248412491_)
                       (let ((_e1248712499_ (gx#syntax-e _e1248412491_)))
                         (let ((_hd1248812502_ (##car _e1248712499_))
                               (_tl1248912504_ (##cdr _e1248712499_)))
                           (let ((_body12507_ _tl1248912504_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12507_))
                                 (_E1248612495_)))))
                       (_E1248612495_)))))
            (let () (_E1248512509_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12440_)
      (let ((_e1244112451_ _stx12440_))
        (let ((_E1244312455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1244112451_))))
          (let ((_E1244212479_
                 (lambda ()
                   (if (gx#stx-pair? _e1244112451_)
                       (let ((_e1244412459_ (gx#syntax-e _e1244112451_)))
                         (let ((_hd1244512462_ (##car _e1244412459_))
                               (_tl1244612464_ (##cdr _e1244412459_)))
                           (if (gx#stx-pair? _tl1244612464_)
                               (let ((_e1244712467_
                                      (gx#syntax-e _tl1244612464_)))
                                 (let ((_hd1244812470_ (##car _e1244712467_))
                                       (_tl1244912472_ (##cdr _e1244712467_)))
                                   (let ((_hd12475_ _hd1244812470_))
                                     (let ((_body12477_ _tl1244912472_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12475_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12477_))
                                           (_E1244312455_))))))
                               (_E1244312455_))))
                       (_E1244312455_)))))
            (let () (_E1244212479_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12410_)
      (let ((_e1241112418_ _stx12410_))
        (let ((_E1241312422_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1241112418_))))
          (let ((_E1241212436_
                 (lambda ()
                   (if (gx#stx-pair? _e1241112418_)
                       (let ((_e1241412426_ (gx#syntax-e _e1241112418_)))
                         (let ((_hd1241512429_ (##car _e1241412426_))
                               (_tl1241612431_ (##cdr _e1241412426_)))
                           (let ((_body12434_ _tl1241612431_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12434_))
                                 (_E1241312422_)))))
                       (_E1241312422_)))))
            (let () (_E1241212436_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12380_)
      (let ((_e1238112388_ _stx12380_))
        (let ((_E1238312392_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238112388_))))
          (let ((_E1238212406_
                 (lambda ()
                   (if (gx#stx-pair? _e1238112388_)
                       (let ((_e1238412396_ (gx#syntax-e _e1238112388_)))
                         (let ((_hd1238512399_ (##car _e1238412396_))
                               (_tl1238612401_ (##cdr _e1238412396_)))
                           (let ((_body12404_ _tl1238612401_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12404_))
                                 (_E1238312392_)))))
                       (_E1238312392_)))))
            (let () (_E1238212406_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12305_)
      (let ((_generate12307_
             (lambda (_hd12337_)
               (let ((_e1233812348_ _hd12337_))
                 (let ((_E1234012352_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1233812348_))))
                   (let ((_E1233912376_
                          (lambda ()
                            (if (gx#stx-pair? _e1233812348_)
                                (let ((_e1234112356_
                                       (gx#syntax-e _e1233812348_)))
                                  (let ((_hd1234212359_ (##car _e1234112356_))
                                        (_tl1234312361_ (##cdr _e1234112356_)))
                                    (let ((_id12364_ _hd1234212359_))
                                      (if (gx#stx-pair? _tl1234312361_)
                                          (let ((_e1234412366_
                                                 (gx#syntax-e _tl1234312361_)))
                                            (let ((_hd1234512369_
                                                   (##car _e1234412366_))
                                                  (_tl1234612371_
                                                   (##cdr _e1234412366_)))
                                              (let ((_eid12374_
                                                     _hd1234512369_))
                                                (if (gx#stx-null?
                                                     _tl1234612371_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12364_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12374_)
                            '()))
                (_E1234012352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234012352_)))))
                                          (_E1234012352_)))))
                                (_E1234012352_)))))
                     (let () (_E1233912376_))))))))
        (let ((_e1230812315_ _stx12305_))
          (let ((_E1231012319_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1230812315_))))
            (let ((_E1230912333_
                   (lambda ()
                     (if (gx#stx-pair? _e1230812315_)
                         (let ((_e1231112323_ (gx#syntax-e _e1230812315_)))
                           (let ((_hd1231212326_ (##car _e1231112323_))
                                 (_tl1231312328_ (##cdr _e1231112323_)))
                             (let ((_body12331_ _tl1231312328_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12307_
                                          _body12331_))
                                   (_E1231012319_)))))
                         (_E1231012319_)))))
              (let () (_E1230912333_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12251_)
      (let ((_e1225212265_ _stx12251_))
        (let ((_E1225412269_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225212265_))))
          (let ((_E1225312301_
                 (lambda ()
                   (if (gx#stx-pair? _e1225212265_)
                       (let ((_e1225512273_ (gx#syntax-e _e1225212265_)))
                         (let ((_hd1225612276_ (##car _e1225512273_))
                               (_tl1225712278_ (##cdr _e1225512273_)))
                           (if (gx#stx-pair? _tl1225712278_)
                               (let ((_e1225812281_
                                      (gx#syntax-e _tl1225712278_)))
                                 (let ((_hd1225912284_ (##car _e1225812281_))
                                       (_tl1226012286_ (##cdr _e1225812281_)))
                                   (let ((_hd12289_ _hd1225912284_))
                                     (if (gx#stx-pair? _tl1226012286_)
                                         (let ((_e1226112291_
                                                (gx#syntax-e _tl1226012286_)))
                                           (let ((_hd1226212294_
                                                  (##car _e1226112291_))
                                                 (_tl1226312296_
                                                  (##cdr _e1226112291_)))
                                             (let ((_expr12299_
                                                    _hd1226212294_))
                                               (if (gx#stx-null?
                                                    _tl1226312296_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12289_)
                           (cons (gx#core-compile-top-syntax _expr12299_)
                                 '())))
               (_E1225412269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1225412269_)))))
                                         (_E1225412269_)))))
                               (_E1225412269_))))
                       (_E1225412269_)))))
            (let () (_E1225312301_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12196_)
      (let ((_e1219712210_ _stx12196_))
        (let ((_E1219912214_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1219712210_))))
          (let ((_E1219812247_
                 (lambda ()
                   (if (gx#stx-pair? _e1219712210_)
                       (let ((_e1220012218_ (gx#syntax-e _e1219712210_)))
                         (let ((_hd1220112221_ (##car _e1220012218_))
                               (_tl1220212223_ (##cdr _e1220012218_)))
                           (if (gx#stx-pair? _tl1220212223_)
                               (let ((_e1220312226_
                                      (gx#syntax-e _tl1220212223_)))
                                 (let ((_hd1220412229_ (##car _e1220312226_))
                                       (_tl1220512231_ (##cdr _e1220312226_)))
                                   (let ((_hd12234_ _hd1220412229_))
                                     (if (gx#stx-pair? _tl1220512231_)
                                         (let ((_e1220612236_
                                                (gx#syntax-e _tl1220512231_)))
                                           (let ((_hd1220712239_
                                                  (##car _e1220612236_))
                                                 (_tl1220812241_
                                                  (##cdr _e1220612236_)))
                                             (let ((_expr12244_
                                                    _hd1220712239_))
                                               (if (gx#stx-null?
                                                    _tl1220812241_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12234_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12244_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1219912214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1219912214_)))))
                                         (_E1219912214_)))))
                               (_E1219912214_))))
                       (_E1219912214_)))))
            (let () (_E1219812247_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12142_)
      (let ((_e1214312156_ _stx12142_))
        (let ((_E1214512160_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1214312156_))))
          (let ((_E1214412192_
                 (lambda ()
                   (if (gx#stx-pair? _e1214312156_)
                       (let ((_e1214612164_ (gx#syntax-e _e1214312156_)))
                         (let ((_hd1214712167_ (##car _e1214612164_))
                               (_tl1214812169_ (##cdr _e1214612164_)))
                           (if (gx#stx-pair? _tl1214812169_)
                               (let ((_e1214912172_
                                      (gx#syntax-e _tl1214812169_)))
                                 (let ((_hd1215012175_ (##car _e1214912172_))
                                       (_tl1215112177_ (##cdr _e1214912172_)))
                                   (let ((_hd12180_ _hd1215012175_))
                                     (if (gx#stx-pair? _tl1215112177_)
                                         (let ((_e1215212182_
                                                (gx#syntax-e _tl1215112177_)))
                                           (let ((_hd1215312185_
                                                  (##car _e1215212182_))
                                                 (_tl1215412187_
                                                  (##cdr _e1215212182_)))
                                             (let ((_alias-id12190_
                                                    _hd1215312185_))
                                               (if (gx#stx-null?
                                                    _tl1215412187_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12180_)
                           (cons (gx#core-quote-syntax__0 _alias-id12190_)
                                 '())))
               (_E1214512160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1214512160_)))))
                                         (_E1214512160_)))))
                               (_E1214512160_))))
                       (_E1214512160_)))))
            (let () (_E1214412192_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12088_)
      (let ((_e1208912102_ _stx12088_))
        (let ((_E1209112106_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1208912102_))))
          (let ((_E1209012138_
                 (lambda ()
                   (if (gx#stx-pair? _e1208912102_)
                       (let ((_e1209212110_ (gx#syntax-e _e1208912102_)))
                         (let ((_hd1209312113_ (##car _e1209212110_))
                               (_tl1209412115_ (##cdr _e1209212110_)))
                           (if (gx#stx-pair? _tl1209412115_)
                               (let ((_e1209512118_
                                      (gx#syntax-e _tl1209412115_)))
                                 (let ((_hd1209612121_ (##car _e1209512118_))
                                       (_tl1209712123_ (##cdr _e1209512118_)))
                                   (let ((_id12126_ _hd1209612121_))
                                     (if (gx#stx-pair? _tl1209712123_)
                                         (let ((_e1209812128_
                                                (gx#syntax-e _tl1209712123_)))
                                           (let ((_hd1209912131_
                                                  (##car _e1209812128_))
                                                 (_tl1210012133_
                                                  (##cdr _e1209812128_)))
                                             (let ((_binding-id12136_
                                                    _hd1209912131_))
                                               (if (gx#stx-null?
                                                    _tl1210012133_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12126_)
                           (cons (gx#core-quote-syntax__0 _binding-id12136_)
                                 '())))
               (_E1209112106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1209112106_)))))
                                         (_E1209112106_)))))
                               (_E1209112106_))))
                       (_E1209112106_)))))
            (let () (_E1209012138_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12058_)
      (let ((_e1205912066_ _stx12058_))
        (let ((_E1206112070_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1205912066_))))
          (let ((_E1206012084_
                 (lambda ()
                   (if (gx#stx-pair? _e1205912066_)
                       (let ((_e1206212074_ (gx#syntax-e _e1205912066_)))
                         (let ((_hd1206312077_ (##car _e1206212074_))
                               (_tl1206412079_ (##cdr _e1206212074_)))
                           (let ((_decls12082_ _tl1206412079_))
                             (if '#t
                                 (cons '%#declare _decls12082_)
                                 (_E1206112070_)))))
                       (_E1206112070_)))))
            (let () (_E1206012084_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12028_)
      (let ((_e1202912036_ _stx12028_))
        (let ((_E1203112040_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1202912036_))))
          (let ((_E1203012054_
                 (lambda ()
                   (if (gx#stx-pair? _e1202912036_)
                       (let ((_e1203212044_ (gx#syntax-e _e1202912036_)))
                         (let ((_hd1203312047_ (##car _e1203212044_))
                               (_tl1203412049_ (##cdr _e1203212044_)))
                           (let ((_clause12052_ _tl1203412049_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12052_))
                                 (_E1203112040_)))))
                       (_E1203112040_)))))
            (let () (_E1203012054_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11985_)
      (let ((_e1198611996_ _stx11985_))
        (let ((_E1198812000_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1198611996_))))
          (let ((_E1198712024_
                 (lambda ()
                   (if (gx#stx-pair? _e1198611996_)
                       (let ((_e1198912004_ (gx#syntax-e _e1198611996_)))
                         (let ((_hd1199012007_ (##car _e1198912004_))
                               (_tl1199112009_ (##cdr _e1198912004_)))
                           (let ((_hd12012_ _hd1199012007_))
                             (if (gx#stx-pair? _tl1199112009_)
                                 (let ((_e1199212014_
                                        (gx#syntax-e _tl1199112009_)))
                                   (let ((_hd1199312017_ (##car _e1199212014_))
                                         (_tl1199412019_
                                          (##cdr _e1199212014_)))
                                     (let ((_body12022_ _hd1199312017_))
                                       (if (gx#stx-null? _tl1199412019_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12012_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12022_)
                                                           '()))
                                               (_E1198812000_))
                                           (_E1198812000_)))))
                                 (_E1198812000_)))))
                       (_E1198812000_)))))
            (let () (_E1198712024_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11955_)
      (let ((_e1195611963_ _stx11955_))
        (let ((_E1195811967_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1195611963_))))
          (let ((_E1195711981_
                 (lambda ()
                   (if (gx#stx-pair? _e1195611963_)
                       (let ((_e1195911971_ (gx#syntax-e _e1195611963_)))
                         (let ((_hd1196011974_ (##car _e1195911971_))
                               (_tl1196111976_ (##cdr _e1195911971_)))
                           (let ((_clauses11979_ _tl1196111976_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11979_))
                                 (_E1195811967_)))))
                       (_E1195811967_)))))
            (let () (_E1195711981_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11888
      (lambda (_stx11890_ _form11891_)
        (let ((_e1189211905_ _stx11890_))
          (let ((_E1189411909_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1189211905_))))
            (let ((_E1189311941_
                   (lambda ()
                     (if (gx#stx-pair? _e1189211905_)
                         (let ((_e1189511913_ (gx#syntax-e _e1189211905_)))
                           (let ((_hd1189611916_ (##car _e1189511913_))
                                 (_tl1189711918_ (##cdr _e1189511913_)))
                             (if (gx#stx-pair? _tl1189711918_)
                                 (let ((_e1189811921_
                                        (gx#syntax-e _tl1189711918_)))
                                   (let ((_hd1189911924_ (##car _e1189811921_))
                                         (_tl1190011926_
                                          (##cdr _e1189811921_)))
                                     (let ((_hd11929_ _hd1189911924_))
                                       (if (gx#stx-pair? _tl1190011926_)
                                           (let ((_e1190111931_
                                                  (gx#syntax-e
                                                   _tl1190011926_)))
                                             (let ((_hd1190211934_
                                                    (##car _e1190111931_))
                                                   (_tl1190311936_
                                                    (##cdr _e1190111931_)))
                                               (let ((_body11939_
                                                      _hd1190211934_))
                                                 (if (gx#stx-null?
                                                      _tl1190311936_)
                                                     (if '#t
                                                         (cons _form11891_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11929_)
                             (cons (gx#core-compile-top-syntax _body11939_)
                                   '())))
                 (_E1189411909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1189411909_)))))
                                           (_E1189411909_)))))
                                 (_E1189411909_))))
                         (_E1189411909_)))))
              (let () (_E1189311941_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11948_)
          (let ((_form11950_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11888
             _stx11948_
             _form11950_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12676_
          (let ((_g12675_ (length _g12676_)))
            (cond ((fx= _g12675_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12676_))
                  ((fx= _g12675_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11888
                          _g12676_))
                  (else (error "No clause matching arguments" _g12676_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11887_)
      (gx#core-compile-top-let-values%__opt-lambda11888
       _stx11887_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11885_)
      (gx#core-compile-top-let-values%__opt-lambda11888
       _stx11885_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11844_)
      (let ((_e1184511855_ _stx11844_))
        (let ((_E1184711859_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1184511855_))))
          (let ((_E1184611881_
                 (lambda ()
                   (if (gx#stx-pair? _e1184511855_)
                       (let ((_e1184811863_ (gx#syntax-e _e1184511855_)))
                         (let ((_hd1184911866_ (##car _e1184811863_))
                               (_tl1185011868_ (##cdr _e1184811863_)))
                           (if (gx#stx-pair? _tl1185011868_)
                               (let ((_e1185111871_
                                      (gx#syntax-e _tl1185011868_)))
                                 (let ((_hd1185211874_ (##car _e1185111871_))
                                       (_tl1185311876_ (##cdr _e1185111871_)))
                                   (let ((_e11879_ _hd1185211874_))
                                     (if (gx#stx-null? _tl1185311876_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11879_)
                                                         '()))
                                             (_E1184711859_))
                                         (_E1184711859_)))))
                               (_E1184711859_))))
                       (_E1184711859_)))))
            (let () (_E1184611881_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11803_)
      (let ((_e1180411814_ _stx11803_))
        (let ((_E1180611818_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1180411814_))))
          (let ((_E1180511840_
                 (lambda ()
                   (if (gx#stx-pair? _e1180411814_)
                       (let ((_e1180711822_ (gx#syntax-e _e1180411814_)))
                         (let ((_hd1180811825_ (##car _e1180711822_))
                               (_tl1180911827_ (##cdr _e1180711822_)))
                           (if (gx#stx-pair? _tl1180911827_)
                               (let ((_e1181011830_
                                      (gx#syntax-e _tl1180911827_)))
                                 (let ((_hd1181111833_ (##car _e1181011830_))
                                       (_tl1181211835_ (##cdr _e1181011830_)))
                                   (let ((_e11838_ _hd1181111833_))
                                     (if (gx#stx-null? _tl1181211835_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11838_)
                                                         '()))
                                             (_E1180611818_))
                                         (_E1180611818_)))))
                               (_E1180611818_))))
                       (_E1180611818_)))))
            (let () (_E1180511840_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11760_)
      (let ((_e1176111771_ _stx11760_))
        (let ((_E1176311775_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176111771_))))
          (let ((_E1176211799_
                 (lambda ()
                   (if (gx#stx-pair? _e1176111771_)
                       (let ((_e1176411779_ (gx#syntax-e _e1176111771_)))
                         (let ((_hd1176511782_ (##car _e1176411779_))
                               (_tl1176611784_ (##cdr _e1176411779_)))
                           (if (gx#stx-pair? _tl1176611784_)
                               (let ((_e1176711787_
                                      (gx#syntax-e _tl1176611784_)))
                                 (let ((_hd1176811790_ (##car _e1176711787_))
                                       (_tl1176911792_ (##cdr _e1176711787_)))
                                   (let ((_rator11795_ _hd1176811790_))
                                     (let ((_args11797_ _tl1176911792_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11795_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11797_))
                                           (_E1176311775_))))))
                               (_E1176311775_))))
                       (_E1176311775_)))))
            (let () (_E1176211799_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11693_)
      (let ((_e1169411710_ _stx11693_))
        (let ((_E1169611714_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169411710_))))
          (let ((_E1169511756_
                 (lambda ()
                   (if (gx#stx-pair? _e1169411710_)
                       (let ((_e1169711718_ (gx#syntax-e _e1169411710_)))
                         (let ((_hd1169811721_ (##car _e1169711718_))
                               (_tl1169911723_ (##cdr _e1169711718_)))
                           (if (gx#stx-pair? _tl1169911723_)
                               (let ((_e1170011726_
                                      (gx#syntax-e _tl1169911723_)))
                                 (let ((_hd1170111729_ (##car _e1170011726_))
                                       (_tl1170211731_ (##cdr _e1170011726_)))
                                   (let ((_test11734_ _hd1170111729_))
                                     (if (gx#stx-pair? _tl1170211731_)
                                         (let ((_e1170311736_
                                                (gx#syntax-e _tl1170211731_)))
                                           (let ((_hd1170411739_
                                                  (##car _e1170311736_))
                                                 (_tl1170511741_
                                                  (##cdr _e1170311736_)))
                                             (let ((_K11744_ _hd1170411739_))
                                               (if (gx#stx-pair?
                                                    _tl1170511741_)
                                                   (let ((_e1170611746_
                                                          (gx#syntax-e
                                                           _tl1170511741_)))
                                                     (let ((_hd1170711749_
                                                            (##car _e1170611746_))
                                                           (_tl1170811751_
                                                            (##cdr _e1170611746_)))
                                                       (let ((_E11754_
                                                              _hd1170711749_))
                                                         (if (gx#stx-null?
                                                              _tl1170811751_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11734_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11744_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11754_)
                                                 '()))))
                         (_E1169611714_))
                     (_E1169611714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1169611714_)))))
                                         (_E1169611714_)))))
                               (_E1169611714_))))
                       (_E1169611714_)))))
            (let () (_E1169511756_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11652_)
      (let ((_e1165311663_ _stx11652_))
        (let ((_E1165511667_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165311663_))))
          (let ((_E1165411689_
                 (lambda ()
                   (if (gx#stx-pair? _e1165311663_)
                       (let ((_e1165611671_ (gx#syntax-e _e1165311663_)))
                         (let ((_hd1165711674_ (##car _e1165611671_))
                               (_tl1165811676_ (##cdr _e1165611671_)))
                           (if (gx#stx-pair? _tl1165811676_)
                               (let ((_e1165911679_
                                      (gx#syntax-e _tl1165811676_)))
                                 (let ((_hd1166011682_ (##car _e1165911679_))
                                       (_tl1166111684_ (##cdr _e1165911679_)))
                                   (let ((_id11687_ _hd1166011682_))
                                     (if (gx#stx-null? _tl1166111684_)
                                         (if (gx#identifier? _id11687_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11687_)
                                                         '()))
                                             (_E1165511667_))
                                         (_E1165511667_)))))
                               (_E1165511667_))))
                       (_E1165511667_)))))
            (let () (_E1165411689_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11598_)
      (let ((_e1159911612_ _stx11598_))
        (let ((_E1160111616_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1159911612_))))
          (let ((_E1160011648_
                 (lambda ()
                   (if (gx#stx-pair? _e1159911612_)
                       (let ((_e1160211620_ (gx#syntax-e _e1159911612_)))
                         (let ((_hd1160311623_ (##car _e1160211620_))
                               (_tl1160411625_ (##cdr _e1160211620_)))
                           (if (gx#stx-pair? _tl1160411625_)
                               (let ((_e1160511628_
                                      (gx#syntax-e _tl1160411625_)))
                                 (let ((_hd1160611631_ (##car _e1160511628_))
                                       (_tl1160711633_ (##cdr _e1160511628_)))
                                   (let ((_id11636_ _hd1160611631_))
                                     (if (gx#stx-pair? _tl1160711633_)
                                         (let ((_e1160811638_
                                                (gx#syntax-e _tl1160711633_)))
                                           (let ((_hd1160911641_
                                                  (##car _e1160811638_))
                                                 (_tl1161011643_
                                                  (##cdr _e1160811638_)))
                                             (let ((_expr11646_
                                                    _hd1160911641_))
                                               (if (gx#stx-null?
                                                    _tl1161011643_)
                                                   (if (gx#identifier?
                                                        _id11636_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11636_)
                           (cons (gx#core-compile-top-syntax _expr11646_)
                                 '())))
               (_E1160111616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1160111616_)))))
                                         (_E1160111616_)))))
                               (_E1160111616_))))
                       (_E1160111616_)))))
            (let () (_E1160011648_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11593_)
      (let ((_$e11595_ (gx#resolve-identifier__0 _id11593_)))
        (if _$e11595_
            (##structure-ref _$e11595_ '1 gx#binding::t '#f)
            _id11593_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11591_)
      (if (gx#identifier? _hd11591_)
          (gx#core-compile-top-runtime-ref _hd11591_)
          '#f))))
