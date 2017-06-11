(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12656_)
      (let ((_e1265712664_ _stx12656_))
        (let ((_E1265912668_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1265712664_))))
          (let ((_E1265812682_
                 (lambda ()
                   (if (gx#stx-pair? _e1265712664_)
                       (let ((_e1266012672_ (gx#syntax-e _e1265712664_)))
                         (let ((_hd1266112675_ (##car _e1266012672_))
                               (_tl1266212677_ (##cdr _e1266012672_)))
                           (let ((_form12680_ _hd1266112675_))
                             (if '#t
                                 (call-method
                                  (gx#syntax-local-e__0 _form12680_)
                                  'compile-top-syntax
                                  _stx12656_)
                                 (_E1265912668_)))))
                       (_E1265912668_)))))
            (let () (_E1265812682_)))))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12616_ _stx12617_)
      (let ((_self1261812626_ _self12616_))
        (let ((_E1262012630_
               (lambda () (error '"No clause matching" _self1261812626_))))
          (let ((_K1262112642_
                 (lambda (_K12633_)
                   (let ((_$e12635_ (gx#stx-source _stx12617_)))
                     (if _$e12635_
                         ((lambda (_g1263712639_)
                            (gx#stx-wrap-source
                             (_K12633_ _stx12617_)
                             _g1263712639_))
                          _$e12635_)
                         (_K12633_ _stx12617_))))))
            (if (##structure-instance-of?
                 _self1261812626_
                 (##type-id gx#core-expander::t))
                (let ((_e1262212645_ (##vector-ref _self1261812626_ '1)))
                  (let ((_e1262312648_ (##vector-ref _self1261812626_ '2)))
                    (let ((_e1262412651_ (##vector-ref _self1261812626_ '3)))
                      (let ((_K12654_ _e1262412651_))
                        (_K1262112642_ _K12654_)))))
                (_E1262012630_)))))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12614_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12614_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12584_)
      (let ((_e1258512592_ _stx12584_))
        (let ((_E1258712596_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1258512592_))))
          (let ((_E1258612610_
                 (lambda ()
                   (if (gx#stx-pair? _e1258512592_)
                       (let ((_e1258812600_ (gx#syntax-e _e1258512592_)))
                         (let ((_hd1258912603_ (##car _e1258812600_))
                               (_tl1259012605_ (##cdr _e1258812600_)))
                           (let ((_body12608_ _tl1259012605_))
                             (if '#t
                                 (cons '%#begin
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12608_))
                                 (_E1258712596_)))))
                       (_E1258712596_)))))
            (let () (_E1258612610_)))))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12553_)
      (let ((_e1255412561_ _stx12553_))
        (let ((_E1255612565_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1255412561_))))
          (let ((_E1255512580_
                 (lambda ()
                   (if (gx#stx-pair? _e1255412561_)
                       (let ((_e1255712569_ (gx#syntax-e _e1255412561_)))
                         (let ((_hd1255812572_ (##car _e1255712569_))
                               (_tl1255912574_ (##cdr _e1255712569_)))
                           (let ((_body12577_ _tl1255912574_))
                             (if '#t
                                 (cons '%#begin-syntax
                                       (call-with-parameters
                                        (lambda ()
                                          (gx#stx-map1
                                           gx#core-compile-top-syntax
                                           _body12577_))
                                        gx#current-expander-phi
                                        (fx+ (gx#current-expander-phi) '1)))
                                 (_E1255612565_)))))
                       (_E1255612565_)))))
            (let () (_E1255512580_)))))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12523_)
      (let ((_e1252412531_ _stx12523_))
        (let ((_E1252612535_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1252412531_))))
          (let ((_E1252512549_
                 (lambda ()
                   (if (gx#stx-pair? _e1252412531_)
                       (let ((_e1252712539_ (gx#syntax-e _e1252412531_)))
                         (let ((_hd1252812542_ (##car _e1252712539_))
                               (_tl1252912544_ (##cdr _e1252712539_)))
                           (let ((_body12547_ _tl1252912544_))
                             (if '#t
                                 (cons '%#begin-foreign _body12547_)
                                 (_E1252612535_)))))
                       (_E1252612535_)))))
            (let () (_E1252512549_)))))))
  (define gx#core-compile-top-import%
    (lambda (_stx12493_)
      (let ((_e1249412501_ _stx12493_))
        (let ((_E1249612505_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1249412501_))))
          (let ((_E1249512519_
                 (lambda ()
                   (if (gx#stx-pair? _e1249412501_)
                       (let ((_e1249712509_ (gx#syntax-e _e1249412501_)))
                         (let ((_hd1249812512_ (##car _e1249712509_))
                               (_tl1249912514_ (##cdr _e1249712509_)))
                           (let ((_body12517_ _tl1249912514_))
                             (if '#t
                                 (cons '%#import (gx#syntax->list _body12517_))
                                 (_E1249612505_)))))
                       (_E1249612505_)))))
            (let () (_E1249512519_)))))))
  (define gx#core-compile-top-module%
    (lambda (_stx12450_)
      (let ((_e1245112461_ _stx12450_))
        (let ((_E1245312465_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1245112461_))))
          (let ((_E1245212489_
                 (lambda ()
                   (if (gx#stx-pair? _e1245112461_)
                       (let ((_e1245412469_ (gx#syntax-e _e1245112461_)))
                         (let ((_hd1245512472_ (##car _e1245412469_))
                               (_tl1245612474_ (##cdr _e1245412469_)))
                           (if (gx#stx-pair? _tl1245612474_)
                               (let ((_e1245712477_
                                      (gx#syntax-e _tl1245612474_)))
                                 (let ((_hd1245812480_ (##car _e1245712477_))
                                       (_tl1245912482_ (##cdr _e1245712477_)))
                                   (let ((_hd12485_ _hd1245812480_))
                                     (let ((_body12487_ _tl1245912482_))
                                       (if '#t
                                           (cons* '%#module
                                                  (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd12485_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body12487_))
                                           (_E1245312465_))))))
                               (_E1245312465_))))
                       (_E1245312465_)))))
            (let () (_E1245212489_)))))))
  (define gx#core-compile-top-export%
    (lambda (_stx12420_)
      (let ((_e1242112428_ _stx12420_))
        (let ((_E1242312432_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1242112428_))))
          (let ((_E1242212446_
                 (lambda ()
                   (if (gx#stx-pair? _e1242112428_)
                       (let ((_e1242412436_ (gx#syntax-e _e1242112428_)))
                         (let ((_hd1242512439_ (##car _e1242412436_))
                               (_tl1242612441_ (##cdr _e1242412436_)))
                           (let ((_body12444_ _tl1242612441_))
                             (if '#t
                                 (cons '%#export (gx#syntax->list _body12444_))
                                 (_E1242312432_)))))
                       (_E1242312432_)))))
            (let () (_E1242212446_)))))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12390_)
      (let ((_e1239112398_ _stx12390_))
        (let ((_E1239312402_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1239112398_))))
          (let ((_E1239212416_
                 (lambda ()
                   (if (gx#stx-pair? _e1239112398_)
                       (let ((_e1239412406_ (gx#syntax-e _e1239112398_)))
                         (let ((_hd1239512409_ (##car _e1239412406_))
                               (_tl1239612411_ (##cdr _e1239412406_)))
                           (let ((_body12414_ _tl1239612411_))
                             (if '#t
                                 (cons '%#provide
                                       (gx#stx-map1
                                        gx#core-quote-syntax
                                        _body12414_))
                                 (_E1239312402_)))))
                       (_E1239312402_)))))
            (let () (_E1239212416_)))))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12315_)
      (let ((_generate12317_
             (lambda (_hd12347_)
               (let ((_e1234812358_ _hd12347_))
                 (let ((_E1235012362_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e1234812358_))))
                   (let ((_E1234912386_
                          (lambda ()
                            (if (gx#stx-pair? _e1234812358_)
                                (let ((_e1235112366_
                                       (gx#syntax-e _e1234812358_)))
                                  (let ((_hd1235212369_ (##car _e1235112366_))
                                        (_tl1235312371_ (##cdr _e1235112366_)))
                                    (let ((_id12374_ _hd1235212369_))
                                      (if (gx#stx-pair? _tl1235312371_)
                                          (let ((_e1235412376_
                                                 (gx#syntax-e _tl1235312371_)))
                                            (let ((_hd1235512379_
                                                   (##car _e1235412376_))
                                                  (_tl1235612381_
                                                   (##cdr _e1235412376_)))
                                              (let ((_eid12384_
                                                     _hd1235512379_))
                                                (if (gx#stx-null?
                                                     _tl1235612381_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12374_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12384_)
                            '()))
                (_E1235012362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1235012362_)))))
                                          (_E1235012362_)))))
                                (_E1235012362_)))))
                     (let () (_E1234912386_))))))))
        (let ((_e1231812325_ _stx12315_))
          (let ((_E1232012329_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1231812325_))))
            (let ((_E1231912343_
                   (lambda ()
                     (if (gx#stx-pair? _e1231812325_)
                         (let ((_e1232112333_ (gx#syntax-e _e1231812325_)))
                           (let ((_hd1232212336_ (##car _e1232112333_))
                                 (_tl1232312338_ (##cdr _e1232112333_)))
                             (let ((_body12341_ _tl1232312338_))
                               (if '#t
                                   (cons '%#extern
                                         (gx#stx-map1
                                          _generate12317_
                                          _body12341_))
                                   (_E1232012329_)))))
                         (_E1232012329_)))))
              (let () (_E1231912343_))))))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12261_)
      (let ((_e1226212275_ _stx12261_))
        (let ((_E1226412279_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1226212275_))))
          (let ((_E1226312311_
                 (lambda ()
                   (if (gx#stx-pair? _e1226212275_)
                       (let ((_e1226512283_ (gx#syntax-e _e1226212275_)))
                         (let ((_hd1226612286_ (##car _e1226512283_))
                               (_tl1226712288_ (##cdr _e1226512283_)))
                           (if (gx#stx-pair? _tl1226712288_)
                               (let ((_e1226812291_
                                      (gx#syntax-e _tl1226712288_)))
                                 (let ((_hd1226912294_ (##car _e1226812291_))
                                       (_tl1227012296_ (##cdr _e1226812291_)))
                                   (let ((_hd12299_ _hd1226912294_))
                                     (if (gx#stx-pair? _tl1227012296_)
                                         (let ((_e1227112301_
                                                (gx#syntax-e _tl1227012296_)))
                                           (let ((_hd1227212304_
                                                  (##car _e1227112301_))
                                                 (_tl1227312306_
                                                  (##cdr _e1227112301_)))
                                             (let ((_expr12309_
                                                    _hd1227212304_))
                                               (if (gx#stx-null?
                                                    _tl1227312306_)
                                                   (if '#t
                                                       (cons '%#define-values
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#core-compile-top-runtime-bind
                            _hd12299_)
                           (cons (gx#core-compile-top-syntax _expr12309_)
                                 '())))
               (_E1226412279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1226412279_)))))
                                         (_E1226412279_)))))
                               (_E1226412279_))))
                       (_E1226412279_)))))
            (let () (_E1226312311_)))))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12206_)
      (let ((_e1220712220_ _stx12206_))
        (let ((_E1220912224_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1220712220_))))
          (let ((_E1220812257_
                 (lambda ()
                   (if (gx#stx-pair? _e1220712220_)
                       (let ((_e1221012228_ (gx#syntax-e _e1220712220_)))
                         (let ((_hd1221112231_ (##car _e1221012228_))
                               (_tl1221212233_ (##cdr _e1221012228_)))
                           (if (gx#stx-pair? _tl1221212233_)
                               (let ((_e1221312236_
                                      (gx#syntax-e _tl1221212233_)))
                                 (let ((_hd1221412239_ (##car _e1221312236_))
                                       (_tl1221512241_ (##cdr _e1221312236_)))
                                   (let ((_hd12244_ _hd1221412239_))
                                     (if (gx#stx-pair? _tl1221512241_)
                                         (let ((_e1221612246_
                                                (gx#syntax-e _tl1221512241_)))
                                           (let ((_hd1221712249_
                                                  (##car _e1221612246_))
                                                 (_tl1221812251_
                                                  (##cdr _e1221612246_)))
                                             (let ((_expr12254_
                                                    _hd1221712249_))
                                               (if (gx#stx-null?
                                                    _tl1221812251_)
                                                   (if '#t
                                                       (cons '%#define-syntax
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12244_)
                           (cons (call-with-parameters
                                  (lambda ()
                                    (gx#core-compile-top-syntax _expr12254_))
                                  gx#current-expander-phi
                                  (fx+ (gx#current-expander-phi) '1))
                                 '())))
               (_E1220912224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1220912224_)))))
                                         (_E1220912224_)))))
                               (_E1220912224_))))
                       (_E1220912224_)))))
            (let () (_E1220812257_)))))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12152_)
      (let ((_e1215312166_ _stx12152_))
        (let ((_E1215512170_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1215312166_))))
          (let ((_E1215412202_
                 (lambda ()
                   (if (gx#stx-pair? _e1215312166_)
                       (let ((_e1215612174_ (gx#syntax-e _e1215312166_)))
                         (let ((_hd1215712177_ (##car _e1215612174_))
                               (_tl1215812179_ (##cdr _e1215612174_)))
                           (if (gx#stx-pair? _tl1215812179_)
                               (let ((_e1215912182_
                                      (gx#syntax-e _tl1215812179_)))
                                 (let ((_hd1216012185_ (##car _e1215912182_))
                                       (_tl1216112187_ (##cdr _e1215912182_)))
                                   (let ((_hd12190_ _hd1216012185_))
                                     (if (gx#stx-pair? _tl1216112187_)
                                         (let ((_e1216212192_
                                                (gx#syntax-e _tl1216112187_)))
                                           (let ((_hd1216312195_
                                                  (##car _e1216212192_))
                                                 (_tl1216412197_
                                                  (##cdr _e1216212192_)))
                                             (let ((_alias-id12200_
                                                    _hd1216312195_))
                                               (if (gx#stx-null?
                                                    _tl1216412197_)
                                                   (if '#t
                                                       (cons '%#define-alias
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd12190_)
                           (cons (gx#core-quote-syntax__0 _alias-id12200_)
                                 '())))
               (_E1215512170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1215512170_)))))
                                         (_E1215512170_)))))
                               (_E1215512170_))))
                       (_E1215512170_)))))
            (let () (_E1215412202_)))))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12098_)
      (let ((_e1209912112_ _stx12098_))
        (let ((_E1210112116_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1209912112_))))
          (let ((_E1210012148_
                 (lambda ()
                   (if (gx#stx-pair? _e1209912112_)
                       (let ((_e1210212120_ (gx#syntax-e _e1209912112_)))
                         (let ((_hd1210312123_ (##car _e1210212120_))
                               (_tl1210412125_ (##cdr _e1210212120_)))
                           (if (gx#stx-pair? _tl1210412125_)
                               (let ((_e1210512128_
                                      (gx#syntax-e _tl1210412125_)))
                                 (let ((_hd1210612131_ (##car _e1210512128_))
                                       (_tl1210712133_ (##cdr _e1210512128_)))
                                   (let ((_id12136_ _hd1210612131_))
                                     (if (gx#stx-pair? _tl1210712133_)
                                         (let ((_e1210812138_
                                                (gx#syntax-e _tl1210712133_)))
                                           (let ((_hd1210912141_
                                                  (##car _e1210812138_))
                                                 (_tl1211012143_
                                                  (##cdr _e1210812138_)))
                                             (let ((_binding-id12146_
                                                    _hd1210912141_))
                                               (if (gx#stx-null?
                                                    _tl1211012143_)
                                                   (if '#t
                                                       (cons '%#define-runtime
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id12136_)
                           (cons (gx#core-quote-syntax__0 _binding-id12146_)
                                 '())))
               (_E1210112116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1210112116_)))))
                                         (_E1210112116_)))))
                               (_E1210112116_))))
                       (_E1210112116_)))))
            (let () (_E1210012148_)))))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12068_)
      (let ((_e1206912076_ _stx12068_))
        (let ((_E1207112080_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1206912076_))))
          (let ((_E1207012094_
                 (lambda ()
                   (if (gx#stx-pair? _e1206912076_)
                       (let ((_e1207212084_ (gx#syntax-e _e1206912076_)))
                         (let ((_hd1207312087_ (##car _e1207212084_))
                               (_tl1207412089_ (##cdr _e1207212084_)))
                           (let ((_decls12092_ _tl1207412089_))
                             (if '#t
                                 (cons '%#declare _decls12092_)
                                 (_E1207112080_)))))
                       (_E1207112080_)))))
            (let () (_E1207012094_)))))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12038_)
      (let ((_e1203912046_ _stx12038_))
        (let ((_E1204112050_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1203912046_))))
          (let ((_E1204012064_
                 (lambda ()
                   (if (gx#stx-pair? _e1203912046_)
                       (let ((_e1204212054_ (gx#syntax-e _e1203912046_)))
                         (let ((_hd1204312057_ (##car _e1204212054_))
                               (_tl1204412059_ (##cdr _e1204212054_)))
                           (let ((_clause12062_ _tl1204412059_))
                             (if '#t
                                 (cons '%#lambda
                                       (gx#core-compile-top-lambda-clause
                                        _clause12062_))
                                 (_E1204112050_)))))
                       (_E1204112050_)))))
            (let () (_E1204012064_)))))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11995_)
      (let ((_e1199612006_ _stx11995_))
        (let ((_E1199812010_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1199612006_))))
          (let ((_E1199712034_
                 (lambda ()
                   (if (gx#stx-pair? _e1199612006_)
                       (let ((_e1199912014_ (gx#syntax-e _e1199612006_)))
                         (let ((_hd1200012017_ (##car _e1199912014_))
                               (_tl1200112019_ (##cdr _e1199912014_)))
                           (let ((_hd12022_ _hd1200012017_))
                             (if (gx#stx-pair? _tl1200112019_)
                                 (let ((_e1200212024_
                                        (gx#syntax-e _tl1200112019_)))
                                   (let ((_hd1200312027_ (##car _e1200212024_))
                                         (_tl1200412029_
                                          (##cdr _e1200212024_)))
                                     (let ((_body12032_ _hd1200312027_))
                                       (if (gx#stx-null? _tl1200412029_)
                                           (if '#t
                                               (cons (gx#stx-map1
                                                      gx#core-compile-top-runtime-bind
                                                      _hd12022_)
                                                     (cons (gx#core-compile-top-syntax
                                                            _body12032_)
                                                           '()))
                                               (_E1199812010_))
                                           (_E1199812010_)))))
                                 (_E1199812010_)))))
                       (_E1199812010_)))))
            (let () (_E1199712034_)))))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11965_)
      (let ((_e1196611973_ _stx11965_))
        (let ((_E1196811977_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1196611973_))))
          (let ((_E1196711991_
                 (lambda ()
                   (if (gx#stx-pair? _e1196611973_)
                       (let ((_e1196911981_ (gx#syntax-e _e1196611973_)))
                         (let ((_hd1197011984_ (##car _e1196911981_))
                               (_tl1197111986_ (##cdr _e1196911981_)))
                           (let ((_clauses11989_ _tl1197111986_))
                             (if '#t
                                 (cons '%#case-lambda
                                       (gx#stx-map1
                                        gx#core-compile-top-lambda-clause
                                        _clauses11989_))
                                 (_E1196811977_)))))
                       (_E1196811977_)))))
            (let () (_E1196711991_)))))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11898
      (lambda (_stx11900_ _form11901_)
        (let ((_e1190211915_ _stx11900_))
          (let ((_E1190411919_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1190211915_))))
            (let ((_E1190311951_
                   (lambda ()
                     (if (gx#stx-pair? _e1190211915_)
                         (let ((_e1190511923_ (gx#syntax-e _e1190211915_)))
                           (let ((_hd1190611926_ (##car _e1190511923_))
                                 (_tl1190711928_ (##cdr _e1190511923_)))
                             (if (gx#stx-pair? _tl1190711928_)
                                 (let ((_e1190811931_
                                        (gx#syntax-e _tl1190711928_)))
                                   (let ((_hd1190911934_ (##car _e1190811931_))
                                         (_tl1191011936_
                                          (##cdr _e1190811931_)))
                                     (let ((_hd11939_ _hd1190911934_))
                                       (if (gx#stx-pair? _tl1191011936_)
                                           (let ((_e1191111941_
                                                  (gx#syntax-e
                                                   _tl1191011936_)))
                                             (let ((_hd1191211944_
                                                    (##car _e1191111941_))
                                                   (_tl1191311946_
                                                    (##cdr _e1191111941_)))
                                               (let ((_body11949_
                                                      _hd1191211944_))
                                                 (if (gx#stx-null?
                                                      _tl1191311946_)
                                                     (if '#t
                                                         (cons _form11901_
                                                               (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#core-compile-top-lambda-clause
                              _hd11939_)
                             (cons (gx#core-compile-top-syntax _body11949_)
                                   '())))
                 (_E1190411919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1190411919_)))))
                                           (_E1190411919_)))))
                                 (_E1190411919_))))
                         (_E1190411919_)))))
              (let () (_E1190311951_)))))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11958_)
          (let ((_form11960_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11898
             _stx11958_
             _form11960_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12686_
          (let ((_g12685_ (length _g12686_)))
            (cond ((fx= _g12685_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12686_))
                  ((fx= _g12685_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11898
                          _g12686_))
                  (else (error "No clause matching arguments" _g12686_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11897_)
      (gx#core-compile-top-let-values%__opt-lambda11898
       _stx11897_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11895_)
      (gx#core-compile-top-let-values%__opt-lambda11898
       _stx11895_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11854_)
      (let ((_e1185511865_ _stx11854_))
        (let ((_E1185711869_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1185511865_))))
          (let ((_E1185611891_
                 (lambda ()
                   (if (gx#stx-pair? _e1185511865_)
                       (let ((_e1185811873_ (gx#syntax-e _e1185511865_)))
                         (let ((_hd1185911876_ (##car _e1185811873_))
                               (_tl1186011878_ (##cdr _e1185811873_)))
                           (if (gx#stx-pair? _tl1186011878_)
                               (let ((_e1186111881_
                                      (gx#syntax-e _tl1186011878_)))
                                 (let ((_hd1186211884_ (##car _e1186111881_))
                                       (_tl1186311886_ (##cdr _e1186111881_)))
                                   (let ((_e11889_ _hd1186211884_))
                                     (if (gx#stx-null? _tl1186311886_)
                                         (if '#t
                                             (cons '%#quote
                                                   (cons (gx#syntax->datum
                                                          _e11889_)
                                                         '()))
                                             (_E1185711869_))
                                         (_E1185711869_)))))
                               (_E1185711869_))))
                       (_E1185711869_)))))
            (let () (_E1185611891_)))))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11813_)
      (let ((_e1181411824_ _stx11813_))
        (let ((_E1181611828_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1181411824_))))
          (let ((_E1181511850_
                 (lambda ()
                   (if (gx#stx-pair? _e1181411824_)
                       (let ((_e1181711832_ (gx#syntax-e _e1181411824_)))
                         (let ((_hd1181811835_ (##car _e1181711832_))
                               (_tl1181911837_ (##cdr _e1181711832_)))
                           (if (gx#stx-pair? _tl1181911837_)
                               (let ((_e1182011840_
                                      (gx#syntax-e _tl1181911837_)))
                                 (let ((_hd1182111843_ (##car _e1182011840_))
                                       (_tl1182211845_ (##cdr _e1182011840_)))
                                   (let ((_e11848_ _hd1182111843_))
                                     (if (gx#stx-null? _tl1182211845_)
                                         (if '#t
                                             (cons '%#quote-syntax
                                                   (cons (gx#core-quote-syntax__0
                                                          _e11848_)
                                                         '()))
                                             (_E1181611828_))
                                         (_E1181611828_)))))
                               (_E1181611828_))))
                       (_E1181611828_)))))
            (let () (_E1181511850_)))))))
  (define gx#core-compile-top-call%
    (lambda (_stx11770_)
      (let ((_e1177111781_ _stx11770_))
        (let ((_E1177311785_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1177111781_))))
          (let ((_E1177211809_
                 (lambda ()
                   (if (gx#stx-pair? _e1177111781_)
                       (let ((_e1177411789_ (gx#syntax-e _e1177111781_)))
                         (let ((_hd1177511792_ (##car _e1177411789_))
                               (_tl1177611794_ (##cdr _e1177411789_)))
                           (if (gx#stx-pair? _tl1177611794_)
                               (let ((_e1177711797_
                                      (gx#syntax-e _tl1177611794_)))
                                 (let ((_hd1177811800_ (##car _e1177711797_))
                                       (_tl1177911802_ (##cdr _e1177711797_)))
                                   (let ((_rator11805_ _hd1177811800_))
                                     (let ((_args11807_ _tl1177911802_))
                                       (if '#t
                                           (cons* '%#call
                                                  (gx#core-compile-top-syntax
                                                   _rator11805_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args11807_))
                                           (_E1177311785_))))))
                               (_E1177311785_))))
                       (_E1177311785_)))))
            (let () (_E1177211809_)))))))
  (define gx#core-compile-top-if%
    (lambda (_stx11703_)
      (let ((_e1170411720_ _stx11703_))
        (let ((_E1170611724_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1170411720_))))
          (let ((_E1170511766_
                 (lambda ()
                   (if (gx#stx-pair? _e1170411720_)
                       (let ((_e1170711728_ (gx#syntax-e _e1170411720_)))
                         (let ((_hd1170811731_ (##car _e1170711728_))
                               (_tl1170911733_ (##cdr _e1170711728_)))
                           (if (gx#stx-pair? _tl1170911733_)
                               (let ((_e1171011736_
                                      (gx#syntax-e _tl1170911733_)))
                                 (let ((_hd1171111739_ (##car _e1171011736_))
                                       (_tl1171211741_ (##cdr _e1171011736_)))
                                   (let ((_test11744_ _hd1171111739_))
                                     (if (gx#stx-pair? _tl1171211741_)
                                         (let ((_e1171311746_
                                                (gx#syntax-e _tl1171211741_)))
                                           (let ((_hd1171411749_
                                                  (##car _e1171311746_))
                                                 (_tl1171511751_
                                                  (##cdr _e1171311746_)))
                                             (let ((_K11754_ _hd1171411749_))
                                               (if (gx#stx-pair?
                                                    _tl1171511751_)
                                                   (let ((_e1171611756_
                                                          (gx#syntax-e
                                                           _tl1171511751_)))
                                                     (let ((_hd1171711759_
                                                            (##car _e1171611756_))
                                                           (_tl1171811761_
                                                            (##cdr _e1171611756_)))
                                                       (let ((_E11764_
                                                              _hd1171711759_))
                                                         (if (gx#stx-null?
                                                              _tl1171811761_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#if
                               (cons (gx#core-compile-top-syntax _test11744_)
                                     (cons (gx#core-compile-top-syntax
                                            _K11754_)
                                           (cons (gx#core-compile-top-syntax
                                                  _E11764_)
                                                 '()))))
                         (_E1170611724_))
                     (_E1170611724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1170611724_)))))
                                         (_E1170611724_)))))
                               (_E1170611724_))))
                       (_E1170611724_)))))
            (let () (_E1170511766_)))))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11662_)
      (let ((_e1166311673_ _stx11662_))
        (let ((_E1166511677_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1166311673_))))
          (let ((_E1166411699_
                 (lambda ()
                   (if (gx#stx-pair? _e1166311673_)
                       (let ((_e1166611681_ (gx#syntax-e _e1166311673_)))
                         (let ((_hd1166711684_ (##car _e1166611681_))
                               (_tl1166811686_ (##cdr _e1166611681_)))
                           (if (gx#stx-pair? _tl1166811686_)
                               (let ((_e1166911689_
                                      (gx#syntax-e _tl1166811686_)))
                                 (let ((_hd1167011692_ (##car _e1166911689_))
                                       (_tl1167111694_ (##cdr _e1166911689_)))
                                   (let ((_id11697_ _hd1167011692_))
                                     (if (gx#stx-null? _tl1167111694_)
                                         (if (gx#identifier? _id11697_)
                                             (cons '%#ref
                                                   (cons (gx#core-compile-top-runtime-ref
                                                          _id11697_)
                                                         '()))
                                             (_E1166511677_))
                                         (_E1166511677_)))))
                               (_E1166511677_))))
                       (_E1166511677_)))))
            (let () (_E1166411699_)))))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11608_)
      (let ((_e1160911622_ _stx11608_))
        (let ((_E1161111626_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e1160911622_))))
          (let ((_E1161011658_
                 (lambda ()
                   (if (gx#stx-pair? _e1160911622_)
                       (let ((_e1161211630_ (gx#syntax-e _e1160911622_)))
                         (let ((_hd1161311633_ (##car _e1161211630_))
                               (_tl1161411635_ (##cdr _e1161211630_)))
                           (if (gx#stx-pair? _tl1161411635_)
                               (let ((_e1161511638_
                                      (gx#syntax-e _tl1161411635_)))
                                 (let ((_hd1161611641_ (##car _e1161511638_))
                                       (_tl1161711643_ (##cdr _e1161511638_)))
                                   (let ((_id11646_ _hd1161611641_))
                                     (if (gx#stx-pair? _tl1161711643_)
                                         (let ((_e1161811648_
                                                (gx#syntax-e _tl1161711643_)))
                                           (let ((_hd1161911651_
                                                  (##car _e1161811648_))
                                                 (_tl1162011653_
                                                  (##cdr _e1161811648_)))
                                             (let ((_expr11656_
                                                    _hd1161911651_))
                                               (if (gx#stx-null?
                                                    _tl1162011653_)
                                                   (if (gx#identifier?
                                                        _id11646_)
                                                       (cons '%#set!
                                                             (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11646_)
                           (cons (gx#core-compile-top-syntax _expr11656_)
                                 '())))
               (_E1161111626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1161111626_)))))
                                         (_E1161111626_)))))
                               (_E1161111626_))))
                       (_E1161111626_)))))
            (let () (_E1161011658_)))))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11603_)
      (let ((_$e11605_ (gx#resolve-identifier__0 _id11603_)))
        (if _$e11605_
            (##structure-ref _$e11605_ '1 gx#binding::t '#f)
            _id11603_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11601_)
      (if (gx#identifier? _hd11601_)
          (gx#core-compile-top-runtime-ref _hd11601_)
          '#f))))
