(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12657_)
      (let ((_e1265812665_ _stx12657_))
        (let ((_E1266012669_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1265812665_))))
          (let ((_E1265912683_
                 (lambda ()
                   (if (gx#stx-pair? _e1265812665_)
                       (let ((_e1266112673_ (gx#syntax-e _e1265812665_)))
                         (let ((_hd1266212676_ (##car _e1266112673_))
                               (_tl1266312678_ (##cdr _e1266112673_)))
                           (let ((_form12681_ _hd1266212676_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12681_)
                                  'compile-top-syntax
                                  _stx12657_)
                                 (_E1266012669_)))))
                       (_E1266012669_)))))
            (let () (_E1265912683_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12617_ _stx12618_)
      (let ((_self1261912627_ _self12617_))
        (let ((_E1262112631_
               (lambda () (error '"No clause matching" _self1261912627_))))
          (let ((_K1262212643_
                 (lambda (_K12634_)
                   (let ((_$e12636_ (gx#stx-source _stx12618_)))
                     (if _$e12636_
                         ((lambda (_g1263812640_)
                            (gx#stx-wrap-source
                             (_K12634_ _stx12618_)
                             _g1263812640_))
                          _$e12636_)
                         (_K12634_ _stx12618_))))))
            (if (##structure-instance-of?
                 _self1261912627_
                 (##type-id gx#core-expander::t))
                (let ((_e1262312646_ (##vector-ref _self1261912627_ '1)))
                  (let ((_e1262412649_ (##vector-ref _self1261912627_ '2)))
                    (let ((_e1262512652_ (##vector-ref _self1261912627_ '3)))
                      (let ((_K12655_ _e1262512652_))
                        (_K1262212643_ _K12655_)))))
                (_E1262112631_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12615_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12615_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12585_)
      (let ((_e1258612593_ _stx12585_))
        (let ((_E1258812597_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1258612593_))))
          (let ((_E1258712611_
                 (lambda ()
                   (if (gx#stx-pair? _e1258612593_)
                       (let ((_e1258912601_ (gx#syntax-e _e1258612593_)))
                         (let ((_hd1259012604_ (##car _e1258912601_))
                               (_tl1259112606_ (##cdr _e1258912601_)))
                           (let ((_body12609_ _tl1259112606_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12609_))
                                 (_E1258812597_)))))
                       (_E1258812597_)))))
            (let () (_E1258712611_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12554_)
      (let ((_e1255512562_ _stx12554_))
        (let ((_E1255712566_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1255512562_))))
          (let ((_E1255612581_
                 (lambda ()
                   (if (gx#stx-pair? _e1255512562_)
                       (let ((_e1255812570_ (gx#syntax-e _e1255512562_)))
                         (let ((_hd1255912573_ (##car _e1255812570_))
                               (_tl1256012575_ (##cdr _e1255812570_)))
                           (let ((_body12578_ _tl1256012575_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12578_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1255712566_)))))
                       (_E1255712566_)))))
            (let () (_E1255612581_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12524_)
      (let ((_e1252512532_ _stx12524_))
        (let ((_E1252712536_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1252512532_))))
          (let ((_E1252612550_
                 (lambda ()
                   (if (gx#stx-pair? _e1252512532_)
                       (let ((_e1252812540_ (gx#syntax-e _e1252512532_)))
                         (let ((_hd1252912543_ (##car _e1252812540_))
                               (_tl1253012545_ (##cdr _e1252812540_)))
                           (let ((_body12548_ _tl1253012545_))
                             (if '#t
                                 (cons '%#begin-foreign _body12548_)
                                 (_E1252712536_)))))
                       (_E1252712536_)))))
            (let () (_E1252612550_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12494_)
      (let ((_e1249512502_ _stx12494_))
        (let ((_E1249712506_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1249512502_))))
          (let ((_E1249612520_
                 (lambda ()
                   (if (gx#stx-pair? _e1249512502_)
                       (let ((_e1249812510_ (gx#syntax-e _e1249512502_)))
                         (let ((_hd1249912513_ (##car _e1249812510_))
                               (_tl1250012515_ (##cdr _e1249812510_)))
                           (let ((_body12518_ _tl1250012515_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12518_))
                                 (_E1249712506_)))))
                       (_E1249712506_)))))
            (let () (_E1249612520_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12451_)
      (let ((_e1245212462_ _stx12451_))
        (let ((_E1245412466_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1245212462_))))
          (let ((_E1245312490_
                 (lambda ()
                   (if (gx#stx-pair? _e1245212462_)
                       (let ((_e1245512470_ (gx#syntax-e _e1245212462_)))
                         (let ((_hd1245612473_ (##car _e1245512470_))
                               (_tl1245712475_ (##cdr _e1245512470_)))
                           (if (gx#stx-pair? _tl1245712475_)
                               (let ((_e1245812478_
                                      (gx#syntax-e _tl1245712475_)))
                                 (let ((_hd1245912481_ (##car _e1245812478_))
                                       (_tl1246012483_ (##cdr _e1245812478_)))
                                   (let ((_hd12486_ _hd1245912481_))
                                     (let ((_body12488_ _tl1246012483_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12486_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12488_))
                                           (_E1245412466_))))))
                               (_E1245412466_))))
                       (_E1245412466_)))))
            (let () (_E1245312490_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12421_)
      (let ((_e1242212429_ _stx12421_))
        (let ((_E1242412433_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1242212429_))))
          (let ((_E1242312447_
                 (lambda ()
                   (if (gx#stx-pair? _e1242212429_)
                       (let ((_e1242512437_ (gx#syntax-e _e1242212429_)))
                         (let ((_hd1242612440_ (##car _e1242512437_))
                               (_tl1242712442_ (##cdr _e1242512437_)))
                           (let ((_body12445_ _tl1242712442_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12445_))
                                 (_E1242412433_)))))
                       (_E1242412433_)))))
            (let () (_E1242312447_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12391_)
      (let ((_e1239212399_ _stx12391_))
        (let ((_E1239412403_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1239212399_))))
          (let ((_E1239312417_
                 (lambda ()
                   (if (gx#stx-pair? _e1239212399_)
                       (let ((_e1239512407_ (gx#syntax-e _e1239212399_)))
                         (let ((_hd1239612410_ (##car _e1239512407_))
                               (_tl1239712412_ (##cdr _e1239512407_)))
                           (let ((_body12415_ _tl1239712412_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12415_))
                                 (_E1239412403_)))))
                       (_E1239412403_)))))
            (let () (_E1239312417_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12316_)
      (let ((_generate12318_
             (lambda (_hd12348_)
               (let ((_e1234912359_ _hd12348_))
                 (let ((_E1235112363_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1234912359_))))
                   (let ((_E1235012387_
                          (lambda ()
                            (if (gx#stx-pair? _e1234912359_)
                                (let ((_e1235212367_
                                       (gx#syntax-e _e1234912359_)))
                                  (let ((_hd1235312370_ (##car _e1235212367_))
                                        (_tl1235412372_ (##cdr _e1235212367_)))
                                    (let ((_id12375_ _hd1235312370_))
                                      (if (gx#stx-pair? _tl1235412372_)
                                          (let ((_e1235512377_
                                                 (gx#syntax-e _tl1235412372_)))
                                            (let ((_hd1235612380_
                                                   (##car _e1235512377_))
                                                  (_tl1235712382_
                                                   (##cdr _e1235512377_)))
                                              (let ((_eid12385_
                                                     _hd1235612380_))
                                                (if (gx#stx-null?
                                                     _tl1235712382_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12375_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12385_)
                            '()))
                (_E1235112363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1235112363_)))))
                                          (_E1235112363_)))))
                                (_E1235112363_)))))
                     (let () (_E1235012387_))))))))
        (let ((_e1231912326_ _stx12316_))
          (let ((_E1232112330_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1231912326_))))
            (let ((_E1232012344_
                   (lambda ()
                     (if (gx#stx-pair? _e1231912326_)
                         (let ((_e1232212334_ (gx#syntax-e _e1231912326_)))
                           (let ((_hd1232312337_ (##car _e1232212334_))
                                 (_tl1232412339_ (##cdr _e1232212334_)))
                             (let ((_body12342_ _tl1232412339_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12318_
                                          _body12342_))
                                   (_E1232112330_)))))
                         (_E1232112330_)))))
              (let () (_E1232012344_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12262_)
      (let ((_e1226312276_ _stx12262_))
        (let ((_E1226512280_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1226312276_))))
          (let ((_E1226412312_
                 (lambda ()
                   (if (gx#stx-pair? _e1226312276_)
                       (let ((_e1226612284_ (gx#syntax-e _e1226312276_)))
                         (let ((_hd1226712287_ (##car _e1226612284_))
                               (_tl1226812289_ (##cdr _e1226612284_)))
                           (if (gx#stx-pair? _tl1226812289_)
                               (let ((_e1226912292_
                                      (gx#syntax-e _tl1226812289_)))
                                 (let ((_hd1227012295_ (##car _e1226912292_))
                                       (_tl1227112297_ (##cdr _e1226912292_)))
                                   (let ((_hd12300_ _hd1227012295_))
                                     (if (gx#stx-pair? _tl1227112297_)
                                         (let ((_e1227212302_
                                                (gx#syntax-e _tl1227112297_)))
                                           (let ((_hd1227312305_
                                                  (##car _e1227212302_))
                                                 (_tl1227412307_
                                                  (##cdr _e1227212302_)))
                                             (let ((_expr12310_
                                                    _hd1227312305_))
                                               (if (gx#stx-null?
                                                    _tl1227412307_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12300_)
                           (cons (gx#core-compile-top-syntax _expr12310_)
                                 '())))
               (_E1226512280_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1226512280_)))))
                                         (_E1226512280_)))))
                               (_E1226512280_))))
                       (_E1226512280_)))))
            (let () (_E1226412312_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12207_)
      (let ((_e1220812221_ _stx12207_))
        (let ((_E1221012225_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1220812221_))))
          (let ((_E1220912258_
                 (lambda ()
                   (if (gx#stx-pair? _e1220812221_)
                       (let ((_e1221112229_ (gx#syntax-e _e1220812221_)))
                         (let ((_hd1221212232_ (##car _e1221112229_))
                               (_tl1221312234_ (##cdr _e1221112229_)))
                           (if (gx#stx-pair? _tl1221312234_)
                               (let ((_e1221412237_
                                      (gx#syntax-e _tl1221312234_)))
                                 (let ((_hd1221512240_ (##car _e1221412237_))
                                       (_tl1221612242_ (##cdr _e1221412237_)))
                                   (let ((_hd12245_ _hd1221512240_))
                                     (if (gx#stx-pair? _tl1221612242_)
                                         (let ((_e1221712247_
                                                (gx#syntax-e _tl1221612242_)))
                                           (let ((_hd1221812250_
                                                  (##car _e1221712247_))
                                                 (_tl1221912252_
                                                  (##cdr _e1221712247_)))
                                             (let ((_expr12255_
                                                    _hd1221812250_))
                                               (if (gx#stx-null?
                                                    _tl1221912252_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12245_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12255_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1221012225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1221012225_)))))
                                         (_E1221012225_)))))
                               (_E1221012225_))))
                       (_E1221012225_)))))
            (let () (_E1220912258_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12153_)
      (let ((_e1215412167_ _stx12153_))
        (let ((_E1215612171_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215412167_))))
          (let ((_E1215512203_
                 (lambda ()
                   (if (gx#stx-pair? _e1215412167_)
                       (let ((_e1215712175_ (gx#syntax-e _e1215412167_)))
                         (let ((_hd1215812178_ (##car _e1215712175_))
                               (_tl1215912180_ (##cdr _e1215712175_)))
                           (if (gx#stx-pair? _tl1215912180_)
                               (let ((_e1216012183_
                                      (gx#syntax-e _tl1215912180_)))
                                 (let ((_hd1216112186_ (##car _e1216012183_))
                                       (_tl1216212188_ (##cdr _e1216012183_)))
                                   (let ((_hd12191_ _hd1216112186_))
                                     (if (gx#stx-pair? _tl1216212188_)
                                         (let ((_e1216312193_
                                                (gx#syntax-e _tl1216212188_)))
                                           (let ((_hd1216412196_
                                                  (##car _e1216312193_))
                                                 (_tl1216512198_
                                                  (##cdr _e1216312193_)))
                                             (let ((_alias-id12201_
                                                    _hd1216412196_))
                                               (if (gx#stx-null?
                                                    _tl1216512198_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12191_)
                           (cons (gx#core-quote-syntax__0 _alias-id12201_)
                                 '())))
               (_E1215612171_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1215612171_)))))
                                         (_E1215612171_)))))
                               (_E1215612171_))))
                       (_E1215612171_)))))
            (let () (_E1215512203_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12099_)
      (let ((_e1210012113_ _stx12099_))
        (let ((_E1210212117_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1210012113_))))
          (let ((_E1210112149_
                 (lambda ()
                   (if (gx#stx-pair? _e1210012113_)
                       (let ((_e1210312121_ (gx#syntax-e _e1210012113_)))
                         (let ((_hd1210412124_ (##car _e1210312121_))
                               (_tl1210512126_ (##cdr _e1210312121_)))
                           (if (gx#stx-pair? _tl1210512126_)
                               (let ((_e1210612129_
                                      (gx#syntax-e _tl1210512126_)))
                                 (let ((_hd1210712132_ (##car _e1210612129_))
                                       (_tl1210812134_ (##cdr _e1210612129_)))
                                   (let ((_id12137_ _hd1210712132_))
                                     (if (gx#stx-pair? _tl1210812134_)
                                         (let ((_e1210912139_
                                                (gx#syntax-e _tl1210812134_)))
                                           (let ((_hd1211012142_
                                                  (##car _e1210912139_))
                                                 (_tl1211112144_
                                                  (##cdr _e1210912139_)))
                                             (let ((_binding-id12147_
                                                    _hd1211012142_))
                                               (if (gx#stx-null?
                                                    _tl1211112144_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12137_)
                           (cons (gx#core-quote-syntax__0 _binding-id12147_)
                                 '())))
               (_E1210212117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1210212117_)))))
                                         (_E1210212117_)))))
                               (_E1210212117_))))
                       (_E1210212117_)))))
            (let () (_E1210112149_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12069_)
      (let ((_e1207012077_ _stx12069_))
        (let ((_E1207212081_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1207012077_))))
          (let ((_E1207112095_
                 (lambda ()
                   (if (gx#stx-pair? _e1207012077_)
                       (let ((_e1207312085_ (gx#syntax-e _e1207012077_)))
                         (let ((_hd1207412088_ (##car _e1207312085_))
                               (_tl1207512090_ (##cdr _e1207312085_)))
                           (let ((_decls12093_ _tl1207512090_))
                             (if '#t
                                 (cons '%#declare _decls12093_)
                                 (_E1207212081_)))))
                       (_E1207212081_)))))
            (let () (_E1207112095_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12039_)
      (let ((_e1204012047_ _stx12039_))
        (let ((_E1204212051_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1204012047_))))
          (let ((_E1204112065_
                 (lambda ()
                   (if (gx#stx-pair? _e1204012047_)
                       (let ((_e1204312055_ (gx#syntax-e _e1204012047_)))
                         (let ((_hd1204412058_ (##car _e1204312055_))
                               (_tl1204512060_ (##cdr _e1204312055_)))
                           (let ((_clause12063_ _tl1204512060_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12063_))
                                 (_E1204212051_)))))
                       (_E1204212051_)))))
            (let () (_E1204112065_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11996_)
      (let ((_e1199712007_ _stx11996_))
        (let ((_E1199912011_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1199712007_))))
          (let ((_E1199812035_
                 (lambda ()
                   (if (gx#stx-pair? _e1199712007_)
                       (let ((_e1200012015_ (gx#syntax-e _e1199712007_)))
                         (let ((_hd1200112018_ (##car _e1200012015_))
                               (_tl1200212020_ (##cdr _e1200012015_)))
                           (let ((_hd12023_ _hd1200112018_))
                             (if (gx#stx-pair? _tl1200212020_)
                                 (let ((_e1200312025_
                                        (gx#syntax-e _tl1200212020_)))
                                   (let ((_hd1200412028_ (##car _e1200312025_))
                                         (_tl1200512030_
                                          (##cdr _e1200312025_)))
                                     (let ((_body12033_ _hd1200412028_))
                                       (if (gx#stx-null? _tl1200512030_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12023_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12033_)
                                                           '()))
                                               (_E1199912011_))
                                           (_E1199912011_)))))
                                 (_E1199912011_)))))
                       (_E1199912011_)))))
            (let () (_E1199812035_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11966_)
      (let ((_e1196711974_ _stx11966_))
        (let ((_E1196911978_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1196711974_))))
          (let ((_E1196811992_
                 (lambda ()
                   (if (gx#stx-pair? _e1196711974_)
                       (let ((_e1197011982_ (gx#syntax-e _e1196711974_)))
                         (let ((_hd1197111985_ (##car _e1197011982_))
                               (_tl1197211987_ (##cdr _e1197011982_)))
                           (let ((_clauses11990_ _tl1197211987_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11990_))
                                 (_E1196911978_)))))
                       (_E1196911978_)))))
            (let () (_E1196811992_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11899
      (lambda (_stx11901_ _form11902_)
        (let ((_e1190311916_ _stx11901_))
          (let ((_E1190511920_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1190311916_))))
            (let ((_E1190411952_
                   (lambda ()
                     (if (gx#stx-pair? _e1190311916_)
                         (let ((_e1190611924_ (gx#syntax-e _e1190311916_)))
                           (let ((_hd1190711927_ (##car _e1190611924_))
                                 (_tl1190811929_ (##cdr _e1190611924_)))
                             (if (gx#stx-pair? _tl1190811929_)
                                 (let ((_e1190911932_
                                        (gx#syntax-e _tl1190811929_)))
                                   (let ((_hd1191011935_ (##car _e1190911932_))
                                         (_tl1191111937_
                                          (##cdr _e1190911932_)))
                                     (let ((_hd11940_ _hd1191011935_))
                                       (if (gx#stx-pair? _tl1191111937_)
                                           (let ((_e1191211942_
                                                  (gx#syntax-e
                                                   _tl1191111937_)))
                                             (let ((_hd1191311945_
                                                    (##car _e1191211942_))
                                                   (_tl1191411947_
                                                    (##cdr _e1191211942_)))
                                               (let ((_body11950_
                                                      _hd1191311945_))
                                                 (if (gx#stx-null?
                                                      _tl1191411947_)
                                                     (if '#t
                                                         (cons _form11902_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11940_)
                             (cons (gx#core-compile-top-syntax _body11950_)
                                   '())))
                 (_E1190511920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1190511920_)))))
                                           (_E1190511920_)))))
                                 (_E1190511920_))))
                         (_E1190511920_)))))
              (let () (_E1190411952_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11959_)
          (let ((_form11961_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11899
             _stx11959_
             _form11961_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12687_
          (let ((_g12686_ (length _g12687_)))
            (cond ((fx= _g12686_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12687_))
                  ((fx= _g12686_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11899
                          _g12687_))
                  (else (error "No clause matching arguments" _g12687_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11898_)
      (gx#core-compile-top-let-values%__opt-lambda11899
       _stx11898_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11896_)
      (gx#core-compile-top-let-values%__opt-lambda11899
       _stx11896_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11855_)
      (let ((_e1185611866_ _stx11855_))
        (let ((_E1185811870_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1185611866_))))
          (let ((_E1185711892_
                 (lambda ()
                   (if (gx#stx-pair? _e1185611866_)
                       (let ((_e1185911874_ (gx#syntax-e _e1185611866_)))
                         (let ((_hd1186011877_ (##car _e1185911874_))
                               (_tl1186111879_ (##cdr _e1185911874_)))
                           (if (gx#stx-pair? _tl1186111879_)
                               (let ((_e1186211882_
                                      (gx#syntax-e _tl1186111879_)))
                                 (let ((_hd1186311885_ (##car _e1186211882_))
                                       (_tl1186411887_ (##cdr _e1186211882_)))
                                   (let ((_e11890_ _hd1186311885_))
                                     (if (gx#stx-null? _tl1186411887_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11890_)
                                                         '()))
                                             (_E1185811870_))
                                         (_E1185811870_)))))
                               (_E1185811870_))))
                       (_E1185811870_)))))
            (let () (_E1185711892_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11814_)
      (let ((_e1181511825_ _stx11814_))
        (let ((_E1181711829_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1181511825_))))
          (let ((_E1181611851_
                 (lambda ()
                   (if (gx#stx-pair? _e1181511825_)
                       (let ((_e1181811833_ (gx#syntax-e _e1181511825_)))
                         (let ((_hd1181911836_ (##car _e1181811833_))
                               (_tl1182011838_ (##cdr _e1181811833_)))
                           (if (gx#stx-pair? _tl1182011838_)
                               (let ((_e1182111841_
                                      (gx#syntax-e _tl1182011838_)))
                                 (let ((_hd1182211844_ (##car _e1182111841_))
                                       (_tl1182311846_ (##cdr _e1182111841_)))
                                   (let ((_e11849_ _hd1182211844_))
                                     (if (gx#stx-null? _tl1182311846_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11849_)
                                                         '()))
                                             (_E1181711829_))
                                         (_E1181711829_)))))
                               (_E1181711829_))))
                       (_E1181711829_)))))
            (let () (_E1181611851_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11771_)
      (let ((_e1177211782_ _stx11771_))
        (let ((_E1177411786_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1177211782_))))
          (let ((_E1177311810_
                 (lambda ()
                   (if (gx#stx-pair? _e1177211782_)
                       (let ((_e1177511790_ (gx#syntax-e _e1177211782_)))
                         (let ((_hd1177611793_ (##car _e1177511790_))
                               (_tl1177711795_ (##cdr _e1177511790_)))
                           (if (gx#stx-pair? _tl1177711795_)
                               (let ((_e1177811798_
                                      (gx#syntax-e _tl1177711795_)))
                                 (let ((_hd1177911801_ (##car _e1177811798_))
                                       (_tl1178011803_ (##cdr _e1177811798_)))
                                   (let ((_rator11806_ _hd1177911801_))
                                     (let ((_args11808_ _tl1178011803_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11806_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11808_))
                                           (_E1177411786_))))))
                               (_E1177411786_))))
                       (_E1177411786_)))))
            (let () (_E1177311810_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11704_)
      (let ((_e1170511721_ _stx11704_))
        (let ((_E1170711725_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170511721_))))
          (let ((_E1170611767_
                 (lambda ()
                   (if (gx#stx-pair? _e1170511721_)
                       (let ((_e1170811729_ (gx#syntax-e _e1170511721_)))
                         (let ((_hd1170911732_ (##car _e1170811729_))
                               (_tl1171011734_ (##cdr _e1170811729_)))
                           (if (gx#stx-pair? _tl1171011734_)
                               (let ((_e1171111737_
                                      (gx#syntax-e _tl1171011734_)))
                                 (let ((_hd1171211740_ (##car _e1171111737_))
                                       (_tl1171311742_ (##cdr _e1171111737_)))
                                   (let ((_test11745_ _hd1171211740_))
                                     (if (gx#stx-pair? _tl1171311742_)
                                         (let ((_e1171411747_
                                                (gx#syntax-e _tl1171311742_)))
                                           (let ((_hd1171511750_
                                                  (##car _e1171411747_))
                                                 (_tl1171611752_
                                                  (##cdr _e1171411747_)))
                                             (let ((_K11755_ _hd1171511750_))
                                               (if (gx#stx-pair?
                                                    _tl1171611752_)
                                                   (let ((_e1171711757_
                                                          (gx#syntax-e
                                                           _tl1171611752_)))
                                                     (let ((_hd1171811760_
                                                            (##car _e1171711757_))
                                                           (_tl1171911762_
                                                            (##cdr _e1171711757_)))
                                                       (let ((_E11765_
                                                              _hd1171811760_))
                                                         (if (gx#stx-null?
                                                              _tl1171911762_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11745_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11755_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11765_)
                                                 '()))))
                         (_E1170711725_))
                     (_E1170711725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1170711725_)))))
                                         (_E1170711725_)))))
                               (_E1170711725_))))
                       (_E1170711725_)))))
            (let () (_E1170611767_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11663_)
      (let ((_e1166411674_ _stx11663_))
        (let ((_E1166611678_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166411674_))))
          (let ((_E1166511700_
                 (lambda ()
                   (if (gx#stx-pair? _e1166411674_)
                       (let ((_e1166711682_ (gx#syntax-e _e1166411674_)))
                         (let ((_hd1166811685_ (##car _e1166711682_))
                               (_tl1166911687_ (##cdr _e1166711682_)))
                           (if (gx#stx-pair? _tl1166911687_)
                               (let ((_e1167011690_
                                      (gx#syntax-e _tl1166911687_)))
                                 (let ((_hd1167111693_ (##car _e1167011690_))
                                       (_tl1167211695_ (##cdr _e1167011690_)))
                                   (let ((_id11698_ _hd1167111693_))
                                     (if (gx#stx-null? _tl1167211695_)
                                         (if (gx#identifier? _id11698_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11698_)
                                                         '()))
                                             (_E1166611678_))
                                         (_E1166611678_)))))
                               (_E1166611678_))))
                       (_E1166611678_)))))
            (let () (_E1166511700_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11609_)
      (let ((_e1161011623_ _stx11609_))
        (let ((_E1161211627_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1161011623_))))
          (let ((_E1161111659_
                 (lambda ()
                   (if (gx#stx-pair? _e1161011623_)
                       (let ((_e1161311631_ (gx#syntax-e _e1161011623_)))
                         (let ((_hd1161411634_ (##car _e1161311631_))
                               (_tl1161511636_ (##cdr _e1161311631_)))
                           (if (gx#stx-pair? _tl1161511636_)
                               (let ((_e1161611639_
                                      (gx#syntax-e _tl1161511636_)))
                                 (let ((_hd1161711642_ (##car _e1161611639_))
                                       (_tl1161811644_ (##cdr _e1161611639_)))
                                   (let ((_id11647_ _hd1161711642_))
                                     (if (gx#stx-pair? _tl1161811644_)
                                         (let ((_e1161911649_
                                                (gx#syntax-e _tl1161811644_)))
                                           (let ((_hd1162011652_
                                                  (##car _e1161911649_))
                                                 (_tl1162111654_
                                                  (##cdr _e1161911649_)))
                                             (let ((_expr11657_
                                                    _hd1162011652_))
                                               (if (gx#stx-null?
                                                    _tl1162111654_)
                                                   (if (gx#identifier?
                                                        _id11647_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11647_)
                           (cons (gx#core-compile-top-syntax _expr11657_)
                                 '())))
               (_E1161211627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1161211627_)))))
                                         (_E1161211627_)))))
                               (_E1161211627_))))
                       (_E1161211627_)))))
            (let () (_E1161111659_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11604_)
      (let ((_$e11606_ (gx#resolve-identifier__0 _id11604_)))
        (if _$e11606_
            (##structure-ref _$e11606_ '1 gx#binding::t '#f)
            _id11604_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11602_)
      (if (gx#identifier? _hd11602_)
          (gx#core-compile-top-runtime-ref _hd11602_)
          '#f))))
