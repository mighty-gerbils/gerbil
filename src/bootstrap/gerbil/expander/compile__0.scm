(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12649_)
      (let ((_e1265012657_ _stx12649_))
        (let ((_E1265212661_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1265012657_))))
          (let ((_E1265112675_
                 (lambda ()
                   (if (gx#stx-pair? _e1265012657_)
                       (let ((_e1265312665_ (gx#syntax-e _e1265012657_)))
                         (let ((_hd1265412668_ (##car _e1265312665_))
                               (_tl1265512670_ (##cdr _e1265312665_)))
                           (let ((_form12673_ _hd1265412668_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12673_)
                                  'compile-top-syntax
                                  _stx12649_)
                                 (_E1265212661_)))))
                       (_E1265212661_)))))
            (let () (_E1265112675_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12609_ _stx12610_)
      (let ((_self1261112619_ _self12609_))
        (let ((_E1261312623_
               (lambda () (error '"No clause matching" _self1261112619_))))
          (let ((_K1261412635_
                 (lambda (_K12626_)
                   (let ((_$e12628_ (gx#stx-source _stx12610_)))
                     (if _$e12628_
                         ((lambda (_g1263012632_)
                            (gx#stx-wrap-source
                             (_K12626_ _stx12610_)
                             _g1263012632_))
                          _$e12628_)
                         (_K12626_ _stx12610_))))))
            (if (##structure-instance-of?
                 _self1261112619_
                 (##type-id gx#core-expander::t))
                (let ((_e1261512638_ (##vector-ref _self1261112619_ '1)))
                  (let ((_e1261612641_ (##vector-ref _self1261112619_ '2)))
                    (let ((_e1261712644_ (##vector-ref _self1261112619_ '3)))
                      (let ((_K12647_ _e1261712644_))
                        (_K1261412635_ _K12647_)))))
                (_E1261312623_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12607_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12607_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12577_)
      (let ((_e1257812585_ _stx12577_))
        (let ((_E1258012589_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1257812585_))))
          (let ((_E1257912603_
                 (lambda ()
                   (if (gx#stx-pair? _e1257812585_)
                       (let ((_e1258112593_ (gx#syntax-e _e1257812585_)))
                         (let ((_hd1258212596_ (##car _e1258112593_))
                               (_tl1258312598_ (##cdr _e1258112593_)))
                           (let ((_body12601_ _tl1258312598_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12601_))
                                 (_E1258012589_)))))
                       (_E1258012589_)))))
            (let () (_E1257912603_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12546_)
      (let ((_e1254712554_ _stx12546_))
        (let ((_E1254912558_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1254712554_))))
          (let ((_E1254812573_
                 (lambda ()
                   (if (gx#stx-pair? _e1254712554_)
                       (let ((_e1255012562_ (gx#syntax-e _e1254712554_)))
                         (let ((_hd1255112565_ (##car _e1255012562_))
                               (_tl1255212567_ (##cdr _e1255012562_)))
                           (let ((_body12570_ _tl1255212567_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12570_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1254912558_)))))
                       (_E1254912558_)))))
            (let () (_E1254812573_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12516_)
      (let ((_e1251712524_ _stx12516_))
        (let ((_E1251912528_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1251712524_))))
          (let ((_E1251812542_
                 (lambda ()
                   (if (gx#stx-pair? _e1251712524_)
                       (let ((_e1252012532_ (gx#syntax-e _e1251712524_)))
                         (let ((_hd1252112535_ (##car _e1252012532_))
                               (_tl1252212537_ (##cdr _e1252012532_)))
                           (let ((_body12540_ _tl1252212537_))
                             (if '#t
                                 (cons '%#begin-foreign _body12540_)
                                 (_E1251912528_)))))
                       (_E1251912528_)))))
            (let () (_E1251812542_)))))))
  (define gx#core-compile-top-import%
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
                           (let ((_body12510_ _tl1249212507_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12510_))
                                 (_E1248912498_)))))
                       (_E1248912498_)))))
            (let () (_E1248812512_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12443_)
      (let ((_e1244412454_ _stx12443_))
        (let ((_E1244612458_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1244412454_))))
          (let ((_E1244512482_
                 (lambda ()
                   (if (gx#stx-pair? _e1244412454_)
                       (let ((_e1244712462_ (gx#syntax-e _e1244412454_)))
                         (let ((_hd1244812465_ (##car _e1244712462_))
                               (_tl1244912467_ (##cdr _e1244712462_)))
                           (if (gx#stx-pair? _tl1244912467_)
                               (let ((_e1245012470_
                                      (gx#syntax-e _tl1244912467_)))
                                 (let ((_hd1245112473_ (##car _e1245012470_))
                                       (_tl1245212475_ (##cdr _e1245012470_)))
                                   (let ((_hd12478_ _hd1245112473_))
                                     (let ((_body12480_ _tl1245212475_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12478_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12480_))
                                           (_E1244612458_))))))
                               (_E1244612458_))))
                       (_E1244612458_)))))
            (let () (_E1244512482_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12413_)
      (let ((_e1241412421_ _stx12413_))
        (let ((_E1241612425_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1241412421_))))
          (let ((_E1241512439_
                 (lambda ()
                   (if (gx#stx-pair? _e1241412421_)
                       (let ((_e1241712429_ (gx#syntax-e _e1241412421_)))
                         (let ((_hd1241812432_ (##car _e1241712429_))
                               (_tl1241912434_ (##cdr _e1241712429_)))
                           (let ((_body12437_ _tl1241912434_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12437_))
                                 (_E1241612425_)))))
                       (_E1241612425_)))))
            (let () (_E1241512439_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12383_)
      (let ((_e1238412391_ _stx12383_))
        (let ((_E1238612395_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1238412391_))))
          (let ((_E1238512409_
                 (lambda ()
                   (if (gx#stx-pair? _e1238412391_)
                       (let ((_e1238712399_ (gx#syntax-e _e1238412391_)))
                         (let ((_hd1238812402_ (##car _e1238712399_))
                               (_tl1238912404_ (##cdr _e1238712399_)))
                           (let ((_body12407_ _tl1238912404_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12407_))
                                 (_E1238612395_)))))
                       (_E1238612395_)))))
            (let () (_E1238512409_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12308_)
      (let ((_generate12310_
             (lambda (_hd12340_)
               (let ((_e1234112351_ _hd12340_))
                 (let ((_E1234312355_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1234112351_))))
                   (let ((_E1234212379_
                          (lambda ()
                            (if (gx#stx-pair? _e1234112351_)
                                (let ((_e1234412359_
                                       (gx#syntax-e _e1234112351_)))
                                  (let ((_hd1234512362_ (##car _e1234412359_))
                                        (_tl1234612364_ (##cdr _e1234412359_)))
                                    (let ((_id12367_ _hd1234512362_))
                                      (if (gx#stx-pair? _tl1234612364_)
                                          (let ((_e1234712369_
                                                 (gx#syntax-e _tl1234612364_)))
                                            (let ((_hd1234812372_
                                                   (##car _e1234712369_))
                                                  (_tl1234912374_
                                                   (##cdr _e1234712369_)))
                                              (let ((_eid12377_
                                                     _hd1234812372_))
                                                (if (gx#stx-null?
                                                     _tl1234912374_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12367_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12377_)
                            '()))
                (_E1234312355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234312355_)))))
                                          (_E1234312355_)))))
                                (_E1234312355_)))))
                     (let () (_E1234212379_))))))))
        (let ((_e1231112318_ _stx12308_))
          (let ((_E1231312322_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1231112318_))))
            (let ((_E1231212336_
                   (lambda ()
                     (if (gx#stx-pair? _e1231112318_)
                         (let ((_e1231412326_ (gx#syntax-e _e1231112318_)))
                           (let ((_hd1231512329_ (##car _e1231412326_))
                                 (_tl1231612331_ (##cdr _e1231412326_)))
                             (let ((_body12334_ _tl1231612331_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12310_
                                          _body12334_))
                                   (_E1231312322_)))))
                         (_E1231312322_)))))
              (let () (_E1231212336_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12254_)
      (let ((_e1225512268_ _stx12254_))
        (let ((_E1225712272_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1225512268_))))
          (let ((_E1225612304_
                 (lambda ()
                   (if (gx#stx-pair? _e1225512268_)
                       (let ((_e1225812276_ (gx#syntax-e _e1225512268_)))
                         (let ((_hd1225912279_ (##car _e1225812276_))
                               (_tl1226012281_ (##cdr _e1225812276_)))
                           (if (gx#stx-pair? _tl1226012281_)
                               (let ((_e1226112284_
                                      (gx#syntax-e _tl1226012281_)))
                                 (let ((_hd1226212287_ (##car _e1226112284_))
                                       (_tl1226312289_ (##cdr _e1226112284_)))
                                   (let ((_hd12292_ _hd1226212287_))
                                     (if (gx#stx-pair? _tl1226312289_)
                                         (let ((_e1226412294_
                                                (gx#syntax-e _tl1226312289_)))
                                           (let ((_hd1226512297_
                                                  (##car _e1226412294_))
                                                 (_tl1226612299_
                                                  (##cdr _e1226412294_)))
                                             (let ((_expr12302_
                                                    _hd1226512297_))
                                               (if (gx#stx-null?
                                                    _tl1226612299_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12292_)
                           (cons (gx#core-compile-top-syntax _expr12302_)
                                 '())))
               (_E1225712272_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1225712272_)))))
                                         (_E1225712272_)))))
                               (_E1225712272_))))
                       (_E1225712272_)))))
            (let () (_E1225612304_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12199_)
      (let ((_e1220012213_ _stx12199_))
        (let ((_E1220212217_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1220012213_))))
          (let ((_E1220112250_
                 (lambda ()
                   (if (gx#stx-pair? _e1220012213_)
                       (let ((_e1220312221_ (gx#syntax-e _e1220012213_)))
                         (let ((_hd1220412224_ (##car _e1220312221_))
                               (_tl1220512226_ (##cdr _e1220312221_)))
                           (if (gx#stx-pair? _tl1220512226_)
                               (let ((_e1220612229_
                                      (gx#syntax-e _tl1220512226_)))
                                 (let ((_hd1220712232_ (##car _e1220612229_))
                                       (_tl1220812234_ (##cdr _e1220612229_)))
                                   (let ((_hd12237_ _hd1220712232_))
                                     (if (gx#stx-pair? _tl1220812234_)
                                         (let ((_e1220912239_
                                                (gx#syntax-e _tl1220812234_)))
                                           (let ((_hd1221012242_
                                                  (##car _e1220912239_))
                                                 (_tl1221112244_
                                                  (##cdr _e1220912239_)))
                                             (let ((_expr12247_
                                                    _hd1221012242_))
                                               (if (gx#stx-null?
                                                    _tl1221112244_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12237_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12247_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1220212217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1220212217_)))))
                                         (_E1220212217_)))))
                               (_E1220212217_))))
                       (_E1220212217_)))))
            (let () (_E1220112250_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12145_)
      (let ((_e1214612159_ _stx12145_))
        (let ((_E1214812163_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1214612159_))))
          (let ((_E1214712195_
                 (lambda ()
                   (if (gx#stx-pair? _e1214612159_)
                       (let ((_e1214912167_ (gx#syntax-e _e1214612159_)))
                         (let ((_hd1215012170_ (##car _e1214912167_))
                               (_tl1215112172_ (##cdr _e1214912167_)))
                           (if (gx#stx-pair? _tl1215112172_)
                               (let ((_e1215212175_
                                      (gx#syntax-e _tl1215112172_)))
                                 (let ((_hd1215312178_ (##car _e1215212175_))
                                       (_tl1215412180_ (##cdr _e1215212175_)))
                                   (let ((_hd12183_ _hd1215312178_))
                                     (if (gx#stx-pair? _tl1215412180_)
                                         (let ((_e1215512185_
                                                (gx#syntax-e _tl1215412180_)))
                                           (let ((_hd1215612188_
                                                  (##car _e1215512185_))
                                                 (_tl1215712190_
                                                  (##cdr _e1215512185_)))
                                             (let ((_alias-id12193_
                                                    _hd1215612188_))
                                               (if (gx#stx-null?
                                                    _tl1215712190_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12183_)
                           (cons (gx#core-quote-syntax__0 _alias-id12193_)
                                 '())))
               (_E1214812163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1214812163_)))))
                                         (_E1214812163_)))))
                               (_E1214812163_))))
                       (_E1214812163_)))))
            (let () (_E1214712195_)))))))
  (define gx#core-compile-top-define-runtime%
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
                                   (let ((_id12129_ _hd1209912124_))
                                     (if (gx#stx-pair? _tl1210012126_)
                                         (let ((_e1210112131_
                                                (gx#syntax-e _tl1210012126_)))
                                           (let ((_hd1210212134_
                                                  (##car _e1210112131_))
                                                 (_tl1210312136_
                                                  (##cdr _e1210112131_)))
                                             (let ((_binding-id12139_
                                                    _hd1210212134_))
                                               (if (gx#stx-null?
                                                    _tl1210312136_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12129_)
                           (cons (gx#core-quote-syntax__0 _binding-id12139_)
                                 '())))
               (_E1209412109_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1209412109_)))))
                                         (_E1209412109_)))))
                               (_E1209412109_))))
                       (_E1209412109_)))))
            (let () (_E1209312141_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12061_)
      (let ((_e1206212069_ _stx12061_))
        (let ((_E1206412073_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1206212069_))))
          (let ((_E1206312087_
                 (lambda ()
                   (if (gx#stx-pair? _e1206212069_)
                       (let ((_e1206512077_ (gx#syntax-e _e1206212069_)))
                         (let ((_hd1206612080_ (##car _e1206512077_))
                               (_tl1206712082_ (##cdr _e1206512077_)))
                           (let ((_decls12085_ _tl1206712082_))
                             (if '#t
                                 (cons '%#declare _decls12085_)
                                 (_E1206412073_)))))
                       (_E1206412073_)))))
            (let () (_E1206312087_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12031_)
      (let ((_e1203212039_ _stx12031_))
        (let ((_E1203412043_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203212039_))))
          (let ((_E1203312057_
                 (lambda ()
                   (if (gx#stx-pair? _e1203212039_)
                       (let ((_e1203512047_ (gx#syntax-e _e1203212039_)))
                         (let ((_hd1203612050_ (##car _e1203512047_))
                               (_tl1203712052_ (##cdr _e1203512047_)))
                           (let ((_clause12055_ _tl1203712052_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12055_))
                                 (_E1203412043_)))))
                       (_E1203412043_)))))
            (let () (_E1203312057_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11988_)
      (let ((_e1198911999_ _stx11988_))
        (let ((_E1199112003_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1198911999_))))
          (let ((_E1199012027_
                 (lambda ()
                   (if (gx#stx-pair? _e1198911999_)
                       (let ((_e1199212007_ (gx#syntax-e _e1198911999_)))
                         (let ((_hd1199312010_ (##car _e1199212007_))
                               (_tl1199412012_ (##cdr _e1199212007_)))
                           (let ((_hd12015_ _hd1199312010_))
                             (if (gx#stx-pair? _tl1199412012_)
                                 (let ((_e1199512017_
                                        (gx#syntax-e _tl1199412012_)))
                                   (let ((_hd1199612020_ (##car _e1199512017_))
                                         (_tl1199712022_
                                          (##cdr _e1199512017_)))
                                     (let ((_body12025_ _hd1199612020_))
                                       (if (gx#stx-null? _tl1199712022_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12015_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12025_)
                                                           '()))
                                               (_E1199112003_))
                                           (_E1199112003_)))))
                                 (_E1199112003_)))))
                       (_E1199112003_)))))
            (let () (_E1199012027_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11958_)
      (let ((_e1195911966_ _stx11958_))
        (let ((_E1196111970_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1195911966_))))
          (let ((_E1196011984_
                 (lambda ()
                   (if (gx#stx-pair? _e1195911966_)
                       (let ((_e1196211974_ (gx#syntax-e _e1195911966_)))
                         (let ((_hd1196311977_ (##car _e1196211974_))
                               (_tl1196411979_ (##cdr _e1196211974_)))
                           (let ((_clauses11982_ _tl1196411979_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11982_))
                                 (_E1196111970_)))))
                       (_E1196111970_)))))
            (let () (_E1196011984_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11891
      (lambda (_stx11893_ _form11894_)
        (let ((_e1189511908_ _stx11893_))
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
                                         (_tl1190311929_
                                          (##cdr _e1190111924_)))
                                     (let ((_hd11932_ _hd1190211927_))
                                       (if (gx#stx-pair? _tl1190311929_)
                                           (let ((_e1190411934_
                                                  (gx#syntax-e
                                                   _tl1190311929_)))
                                             (let ((_hd1190511937_
                                                    (##car _e1190411934_))
                                                   (_tl1190611939_
                                                    (##cdr _e1190411934_)))
                                               (let ((_body11942_
                                                      _hd1190511937_))
                                                 (if (gx#stx-null?
                                                      _tl1190611939_)
                                                     (if '#t
                                                         (cons _form11894_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11932_)
                             (cons (gx#core-compile-top-syntax _body11942_)
                                   '())))
                 (_E1189711912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1189711912_)))))
                                           (_E1189711912_)))))
                                 (_E1189711912_))))
                         (_E1189711912_)))))
              (let () (_E1189611944_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11951_)
          (let ((_form11953_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11891
             _stx11951_
             _form11953_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12679_
          (let ((_g12678_ (length _g12679_)))
            (cond ((fx= _g12678_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12679_))
                  ((fx= _g12678_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11891
                          _g12679_))
                  (else (error "No clause matching arguments" _g12679_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11890_)
      (gx#core-compile-top-let-values%__opt-lambda11891
       _stx11890_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11888_)
      (gx#core-compile-top-let-values%__opt-lambda11891
       _stx11888_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11847_)
      (let ((_e1184811858_ _stx11847_))
        (let ((_E1185011862_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1184811858_))))
          (let ((_E1184911884_
                 (lambda ()
                   (if (gx#stx-pair? _e1184811858_)
                       (let ((_e1185111866_ (gx#syntax-e _e1184811858_)))
                         (let ((_hd1185211869_ (##car _e1185111866_))
                               (_tl1185311871_ (##cdr _e1185111866_)))
                           (if (gx#stx-pair? _tl1185311871_)
                               (let ((_e1185411874_
                                      (gx#syntax-e _tl1185311871_)))
                                 (let ((_hd1185511877_ (##car _e1185411874_))
                                       (_tl1185611879_ (##cdr _e1185411874_)))
                                   (let ((_e11882_ _hd1185511877_))
                                     (if (gx#stx-null? _tl1185611879_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11882_)
                                                         '()))
                                             (_E1185011862_))
                                         (_E1185011862_)))))
                               (_E1185011862_))))
                       (_E1185011862_)))))
            (let () (_E1184911884_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11806_)
      (let ((_e1180711817_ _stx11806_))
        (let ((_E1180911821_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1180711817_))))
          (let ((_E1180811843_
                 (lambda ()
                   (if (gx#stx-pair? _e1180711817_)
                       (let ((_e1181011825_ (gx#syntax-e _e1180711817_)))
                         (let ((_hd1181111828_ (##car _e1181011825_))
                               (_tl1181211830_ (##cdr _e1181011825_)))
                           (if (gx#stx-pair? _tl1181211830_)
                               (let ((_e1181311833_
                                      (gx#syntax-e _tl1181211830_)))
                                 (let ((_hd1181411836_ (##car _e1181311833_))
                                       (_tl1181511838_ (##cdr _e1181311833_)))
                                   (let ((_e11841_ _hd1181411836_))
                                     (if (gx#stx-null? _tl1181511838_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11841_)
                                                         '()))
                                             (_E1180911821_))
                                         (_E1180911821_)))))
                               (_E1180911821_))))
                       (_E1180911821_)))))
            (let () (_E1180811843_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11763_)
      (let ((_e1176411774_ _stx11763_))
        (let ((_E1176611778_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1176411774_))))
          (let ((_E1176511802_
                 (lambda ()
                   (if (gx#stx-pair? _e1176411774_)
                       (let ((_e1176711782_ (gx#syntax-e _e1176411774_)))
                         (let ((_hd1176811785_ (##car _e1176711782_))
                               (_tl1176911787_ (##cdr _e1176711782_)))
                           (if (gx#stx-pair? _tl1176911787_)
                               (let ((_e1177011790_
                                      (gx#syntax-e _tl1176911787_)))
                                 (let ((_hd1177111793_ (##car _e1177011790_))
                                       (_tl1177211795_ (##cdr _e1177011790_)))
                                   (let ((_rator11798_ _hd1177111793_))
                                     (let ((_args11800_ _tl1177211795_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11798_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11800_))
                                           (_E1176611778_))))))
                               (_E1176611778_))))
                       (_E1176611778_)))))
            (let () (_E1176511802_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11696_)
      (let ((_e1169711713_ _stx11696_))
        (let ((_E1169911717_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1169711713_))))
          (let ((_E1169811759_
                 (lambda ()
                   (if (gx#stx-pair? _e1169711713_)
                       (let ((_e1170011721_ (gx#syntax-e _e1169711713_)))
                         (let ((_hd1170111724_ (##car _e1170011721_))
                               (_tl1170211726_ (##cdr _e1170011721_)))
                           (if (gx#stx-pair? _tl1170211726_)
                               (let ((_e1170311729_
                                      (gx#syntax-e _tl1170211726_)))
                                 (let ((_hd1170411732_ (##car _e1170311729_))
                                       (_tl1170511734_ (##cdr _e1170311729_)))
                                   (let ((_test11737_ _hd1170411732_))
                                     (if (gx#stx-pair? _tl1170511734_)
                                         (let ((_e1170611739_
                                                (gx#syntax-e _tl1170511734_)))
                                           (let ((_hd1170711742_
                                                  (##car _e1170611739_))
                                                 (_tl1170811744_
                                                  (##cdr _e1170611739_)))
                                             (let ((_K11747_ _hd1170711742_))
                                               (if (gx#stx-pair?
                                                    _tl1170811744_)
                                                   (let ((_e1170911749_
                                                          (gx#syntax-e
                                                           _tl1170811744_)))
                                                     (let ((_hd1171011752_
                                                            (##car _e1170911749_))
                                                           (_tl1171111754_
                                                            (##cdr _e1170911749_)))
                                                       (let ((_E11757_
                                                              _hd1171011752_))
                                                         (if (gx#stx-null?
                                                              _tl1171111754_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11737_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11747_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11757_)
                                                 '()))))
                         (_E1169911717_))
                     (_E1169911717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1169911717_)))))
                                         (_E1169911717_)))))
                               (_E1169911717_))))
                       (_E1169911717_)))))
            (let () (_E1169811759_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11655_)
      (let ((_e1165611666_ _stx11655_))
        (let ((_E1165811670_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1165611666_))))
          (let ((_E1165711692_
                 (lambda ()
                   (if (gx#stx-pair? _e1165611666_)
                       (let ((_e1165911674_ (gx#syntax-e _e1165611666_)))
                         (let ((_hd1166011677_ (##car _e1165911674_))
                               (_tl1166111679_ (##cdr _e1165911674_)))
                           (if (gx#stx-pair? _tl1166111679_)
                               (let ((_e1166211682_
                                      (gx#syntax-e _tl1166111679_)))
                                 (let ((_hd1166311685_ (##car _e1166211682_))
                                       (_tl1166411687_ (##cdr _e1166211682_)))
                                   (let ((_id11690_ _hd1166311685_))
                                     (if (gx#stx-null? _tl1166411687_)
                                         (if (gx#identifier? _id11690_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11690_)
                                                         '()))
                                             (_E1165811670_))
                                         (_E1165811670_)))))
                               (_E1165811670_))))
                       (_E1165811670_)))))
            (let () (_E1165711692_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11601_)
      (let ((_e1160211615_ _stx11601_))
        (let ((_E1160411619_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160211615_))))
          (let ((_E1160311651_
                 (lambda ()
                   (if (gx#stx-pair? _e1160211615_)
                       (let ((_e1160511623_ (gx#syntax-e _e1160211615_)))
                         (let ((_hd1160611626_ (##car _e1160511623_))
                               (_tl1160711628_ (##cdr _e1160511623_)))
                           (if (gx#stx-pair? _tl1160711628_)
                               (let ((_e1160811631_
                                      (gx#syntax-e _tl1160711628_)))
                                 (let ((_hd1160911634_ (##car _e1160811631_))
                                       (_tl1161011636_ (##cdr _e1160811631_)))
                                   (let ((_id11639_ _hd1160911634_))
                                     (if (gx#stx-pair? _tl1161011636_)
                                         (let ((_e1161111641_
                                                (gx#syntax-e _tl1161011636_)))
                                           (let ((_hd1161211644_
                                                  (##car _e1161111641_))
                                                 (_tl1161311646_
                                                  (##cdr _e1161111641_)))
                                             (let ((_expr11649_
                                                    _hd1161211644_))
                                               (if (gx#stx-null?
                                                    _tl1161311646_)
                                                   (if (gx#identifier?
                                                        _id11639_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11639_)
                           (cons (gx#core-compile-top-syntax _expr11649_)
                                 '())))
               (_E1160411619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1160411619_)))))
                                         (_E1160411619_)))))
                               (_E1160411619_))))
                       (_E1160411619_)))))
            (let () (_E1160311651_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11596_)
      (let ((_$e11598_ (gx#resolve-identifier__0 _id11596_)))
        (if _$e11598_
            (##structure-ref _$e11598_ '1 gx#binding::t '#f)
            _id11596_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11594_)
      (if (gx#identifier? _hd11594_)
          (gx#core-compile-top-runtime-ref _hd11594_)
          '#f))))
