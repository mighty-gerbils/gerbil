(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12658_)
      (let* ((_e1265912666_ _stx12658_)
             (_E1266112670_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1265912666_)))
             (_E1266012684_
              (lambda ()
                (if (gx#stx-pair? _e1265912666_)
                    (let ((_e1266212674_ (gx#syntax-e _e1265912666_)))
                      (let ((_hd1266312677_ (##car _e1266212674_))
                            (_tl1266412679_ (##cdr _e1266212674_)))
                        (let ((_form12682_ _hd1266312677_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12682_)
                               'compile-top-syntax
                               _stx12658_)
                              (_E1266112670_)))))
                    (_E1266112670_)))))
        (_E1266012684_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12618_ _stx12619_)
      (let* ((_self1262012628_ _self12618_)
             (_E1262212632_
              (lambda () (error '"No clause matching" _self1262012628_)))
             (_K1262312644_
              (lambda (_K12635_)
                (let ((_$e12637_ (gx#stx-source _stx12619_)))
                  (if _$e12637_
                      ((lambda (_g1263912641_)
                         (gx#stx-wrap-source
                          (_K12635_ _stx12619_)
                          _g1263912641_))
                       _$e12637_)
                      (_K12635_ _stx12619_))))))
        (if (##structure-instance-of?
             _self1262012628_
             (##type-id gx#core-expander::t))
            (let* ((_e1262412647_ (##vector-ref _self1262012628_ '1))
                   (_e1262512650_ (##vector-ref _self1262012628_ '2))
                   (_e1262612653_ (##vector-ref _self1262012628_ '3))
                   (_K12656_ _e1262612653_))
              (_K1262312644_ _K12656_))
            (_E1262212632_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12616_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12616_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12586_)
      (let* ((_e1258712594_ _stx12586_)
             (_E1258912598_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1258712594_)))
             (_E1258812612_
              (lambda ()
                (if (gx#stx-pair? _e1258712594_)
                    (let ((_e1259012602_ (gx#syntax-e _e1258712594_)))
                      (let ((_hd1259112605_ (##car _e1259012602_))
                            (_tl1259212607_ (##cdr _e1259012602_)))
                        (let ((_body12610_ _tl1259212607_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12610_))
                              (_E1258912598_)))))
                    (_E1258912598_)))))
        (_E1258812612_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12555_)
      (let* ((_e1255612563_ _stx12555_)
             (_E1255812567_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1255612563_)))
             (_E1255712582_
              (lambda ()
                (if (gx#stx-pair? _e1255612563_)
                    (let ((_e1255912571_ (gx#syntax-e _e1255612563_)))
                      (let ((_hd1256012574_ (##car _e1255912571_))
                            (_tl1256112576_ (##cdr _e1255912571_)))
                        (let ((_body12579_ _tl1256112576_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12579_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1255812567_)))))
                    (_E1255812567_)))))
        (_E1255712582_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12525_)
      (let* ((_e1252612533_ _stx12525_)
             (_E1252812537_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1252612533_)))
             (_E1252712551_
              (lambda ()
                (if (gx#stx-pair? _e1252612533_)
                    (let ((_e1252912541_ (gx#syntax-e _e1252612533_)))
                      (let ((_hd1253012544_ (##car _e1252912541_))
                            (_tl1253112546_ (##cdr _e1252912541_)))
                        (let ((_body12549_ _tl1253112546_))
                          (if '#t
                              (cons '%#begin-foreign _body12549_)
                              (_E1252812537_)))))
                    (_E1252812537_)))))
        (_E1252712551_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12495_)
      (let* ((_e1249612503_ _stx12495_)
             (_E1249812507_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1249612503_)))
             (_E1249712521_
              (lambda ()
                (if (gx#stx-pair? _e1249612503_)
                    (let ((_e1249912511_ (gx#syntax-e _e1249612503_)))
                      (let ((_hd1250012514_ (##car _e1249912511_))
                            (_tl1250112516_ (##cdr _e1249912511_)))
                        (let ((_body12519_ _tl1250112516_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12519_))
                              (_E1249812507_)))))
                    (_E1249812507_)))))
        (_E1249712521_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12452_)
      (let* ((_e1245312463_ _stx12452_)
             (_E1245512467_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1245312463_)))
             (_E1245412491_
              (lambda ()
                (if (gx#stx-pair? _e1245312463_)
                    (let ((_e1245612471_ (gx#syntax-e _e1245312463_)))
                      (let ((_hd1245712474_ (##car _e1245612471_))
                            (_tl1245812476_ (##cdr _e1245612471_)))
                        (if (gx#stx-pair? _tl1245812476_)
                            (let ((_e1245912479_ (gx#syntax-e _tl1245812476_)))
                              (let ((_hd1246012482_ (##car _e1245912479_))
                                    (_tl1246112484_ (##cdr _e1245912479_)))
                                (let* ((_hd12487_ _hd1246012482_)
                                       (_body12489_ _tl1246112484_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12487_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12489_))
                                      (_E1245512467_)))))
                            (_E1245512467_))))
                    (_E1245512467_)))))
        (_E1245412491_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12422_)
      (let* ((_e1242312430_ _stx12422_)
             (_E1242512434_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1242312430_)))
             (_E1242412448_
              (lambda ()
                (if (gx#stx-pair? _e1242312430_)
                    (let ((_e1242612438_ (gx#syntax-e _e1242312430_)))
                      (let ((_hd1242712441_ (##car _e1242612438_))
                            (_tl1242812443_ (##cdr _e1242612438_)))
                        (let ((_body12446_ _tl1242812443_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12446_))
                              (_E1242512434_)))))
                    (_E1242512434_)))))
        (_E1242412448_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12392_)
      (let* ((_e1239312400_ _stx12392_)
             (_E1239512404_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1239312400_)))
             (_E1239412418_
              (lambda ()
                (if (gx#stx-pair? _e1239312400_)
                    (let ((_e1239612408_ (gx#syntax-e _e1239312400_)))
                      (let ((_hd1239712411_ (##car _e1239612408_))
                            (_tl1239812413_ (##cdr _e1239612408_)))
                        (let ((_body12416_ _tl1239812413_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12416_))
                              (_E1239512404_)))))
                    (_E1239512404_)))))
        (_E1239412418_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12317_)
      (letrec ((_generate12319_
                (lambda (_hd12349_)
                  (let* ((_e1235012360_ _hd12349_)
                         (_E1235212364_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1235012360_)))
                         (_E1235112388_
                          (lambda ()
                            (if (gx#stx-pair? _e1235012360_)
                                (let ((_e1235312368_
                                       (gx#syntax-e _e1235012360_)))
                                  (let ((_hd1235412371_ (##car _e1235312368_))
                                        (_tl1235512373_ (##cdr _e1235312368_)))
                                    (let ((_id12376_ _hd1235412371_))
                                      (if (gx#stx-pair? _tl1235512373_)
                                          (let ((_e1235612378_
                                                 (gx#syntax-e _tl1235512373_)))
                                            (let ((_hd1235712381_
                                                   (##car _e1235612378_))
                                                  (_tl1235812383_
                                                   (##cdr _e1235612378_)))
                                              (let ((_eid12386_
                                                     _hd1235712381_))
                                                (if (gx#stx-null?
                                                     _tl1235812383_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12376_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12386_)
                            '()))
                (_E1235212364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1235212364_)))))
                                          (_E1235212364_)))))
                                (_E1235212364_)))))
                    (_E1235112388_)))))
        (let* ((_e1232012327_ _stx12317_)
               (_E1232212331_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1232012327_)))
               (_E1232112345_
                (lambda ()
                  (if (gx#stx-pair? _e1232012327_)
                      (let ((_e1232312335_ (gx#syntax-e _e1232012327_)))
                        (let ((_hd1232412338_ (##car _e1232312335_))
                              (_tl1232512340_ (##cdr _e1232312335_)))
                          (let ((_body12343_ _tl1232512340_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12319_
                                       _body12343_))
                                (_E1232212331_)))))
                      (_E1232212331_)))))
          (_E1232112345_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12263_)
      (let* ((_e1226412277_ _stx12263_)
             (_E1226612281_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1226412277_)))
             (_E1226512313_
              (lambda ()
                (if (gx#stx-pair? _e1226412277_)
                    (let ((_e1226712285_ (gx#syntax-e _e1226412277_)))
                      (let ((_hd1226812288_ (##car _e1226712285_))
                            (_tl1226912290_ (##cdr _e1226712285_)))
                        (if (gx#stx-pair? _tl1226912290_)
                            (let ((_e1227012293_ (gx#syntax-e _tl1226912290_)))
                              (let ((_hd1227112296_ (##car _e1227012293_))
                                    (_tl1227212298_ (##cdr _e1227012293_)))
                                (let ((_hd12301_ _hd1227112296_))
                                  (if (gx#stx-pair? _tl1227212298_)
                                      (let ((_e1227312303_
                                             (gx#syntax-e _tl1227212298_)))
                                        (let ((_hd1227412306_
                                               (##car _e1227312303_))
                                              (_tl1227512308_
                                               (##cdr _e1227312303_)))
                                          (let ((_expr12311_ _hd1227412306_))
                                            (if (gx#stx-null? _tl1227512308_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12301_)
                        (cons (gx#core-compile-top-syntax _expr12311_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1226612281_))
                                                (_E1226612281_)))))
                                      (_E1226612281_)))))
                            (_E1226612281_))))
                    (_E1226612281_)))))
        (_E1226512313_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12208_)
      (let* ((_e1220912222_ _stx12208_)
             (_E1221112226_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1220912222_)))
             (_E1221012259_
              (lambda ()
                (if (gx#stx-pair? _e1220912222_)
                    (let ((_e1221212230_ (gx#syntax-e _e1220912222_)))
                      (let ((_hd1221312233_ (##car _e1221212230_))
                            (_tl1221412235_ (##cdr _e1221212230_)))
                        (if (gx#stx-pair? _tl1221412235_)
                            (let ((_e1221512238_ (gx#syntax-e _tl1221412235_)))
                              (let ((_hd1221612241_ (##car _e1221512238_))
                                    (_tl1221712243_ (##cdr _e1221512238_)))
                                (let ((_hd12246_ _hd1221612241_))
                                  (if (gx#stx-pair? _tl1221712243_)
                                      (let ((_e1221812248_
                                             (gx#syntax-e _tl1221712243_)))
                                        (let ((_hd1221912251_
                                               (##car _e1221812248_))
                                              (_tl1222012253_
                                               (##cdr _e1221812248_)))
                                          (let ((_expr12256_ _hd1221912251_))
                                            (if (gx#stx-null? _tl1222012253_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12246_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12256_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1221112226_))
                                                (_E1221112226_)))))
                                      (_E1221112226_)))))
                            (_E1221112226_))))
                    (_E1221112226_)))))
        (_E1221012259_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12154_)
      (let* ((_e1215512168_ _stx12154_)
             (_E1215712172_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215512168_)))
             (_E1215612204_
              (lambda ()
                (if (gx#stx-pair? _e1215512168_)
                    (let ((_e1215812176_ (gx#syntax-e _e1215512168_)))
                      (let ((_hd1215912179_ (##car _e1215812176_))
                            (_tl1216012181_ (##cdr _e1215812176_)))
                        (if (gx#stx-pair? _tl1216012181_)
                            (let ((_e1216112184_ (gx#syntax-e _tl1216012181_)))
                              (let ((_hd1216212187_ (##car _e1216112184_))
                                    (_tl1216312189_ (##cdr _e1216112184_)))
                                (let ((_hd12192_ _hd1216212187_))
                                  (if (gx#stx-pair? _tl1216312189_)
                                      (let ((_e1216412194_
                                             (gx#syntax-e _tl1216312189_)))
                                        (let ((_hd1216512197_
                                               (##car _e1216412194_))
                                              (_tl1216612199_
                                               (##cdr _e1216412194_)))
                                          (let ((_alias-id12202_
                                                 _hd1216512197_))
                                            (if (gx#stx-null? _tl1216612199_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12192_)
                        (cons (gx#core-quote-syntax__0 _alias-id12202_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1215712172_))
                                                (_E1215712172_)))))
                                      (_E1215712172_)))))
                            (_E1215712172_))))
                    (_E1215712172_)))))
        (_E1215612204_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12100_)
      (let* ((_e1210112114_ _stx12100_)
             (_E1210312118_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1210112114_)))
             (_E1210212150_
              (lambda ()
                (if (gx#stx-pair? _e1210112114_)
                    (let ((_e1210412122_ (gx#syntax-e _e1210112114_)))
                      (let ((_hd1210512125_ (##car _e1210412122_))
                            (_tl1210612127_ (##cdr _e1210412122_)))
                        (if (gx#stx-pair? _tl1210612127_)
                            (let ((_e1210712130_ (gx#syntax-e _tl1210612127_)))
                              (let ((_hd1210812133_ (##car _e1210712130_))
                                    (_tl1210912135_ (##cdr _e1210712130_)))
                                (let ((_id12138_ _hd1210812133_))
                                  (if (gx#stx-pair? _tl1210912135_)
                                      (let ((_e1211012140_
                                             (gx#syntax-e _tl1210912135_)))
                                        (let ((_hd1211112143_
                                               (##car _e1211012140_))
                                              (_tl1211212145_
                                               (##cdr _e1211012140_)))
                                          (let ((_binding-id12148_
                                                 _hd1211112143_))
                                            (if (gx#stx-null? _tl1211212145_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12138_)
                        (cons (gx#core-quote-syntax__0 _binding-id12148_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1210312118_))
                                                (_E1210312118_)))))
                                      (_E1210312118_)))))
                            (_E1210312118_))))
                    (_E1210312118_)))))
        (_E1210212150_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12070_)
      (let* ((_e1207112078_ _stx12070_)
             (_E1207312082_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1207112078_)))
             (_E1207212096_
              (lambda ()
                (if (gx#stx-pair? _e1207112078_)
                    (let ((_e1207412086_ (gx#syntax-e _e1207112078_)))
                      (let ((_hd1207512089_ (##car _e1207412086_))
                            (_tl1207612091_ (##cdr _e1207412086_)))
                        (let ((_decls12094_ _tl1207612091_))
                          (if '#t
                              (cons '%#declare _decls12094_)
                              (_E1207312082_)))))
                    (_E1207312082_)))))
        (_E1207212096_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12040_)
      (let* ((_e1204112048_ _stx12040_)
             (_E1204312052_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1204112048_)))
             (_E1204212066_
              (lambda ()
                (if (gx#stx-pair? _e1204112048_)
                    (let ((_e1204412056_ (gx#syntax-e _e1204112048_)))
                      (let ((_hd1204512059_ (##car _e1204412056_))
                            (_tl1204612061_ (##cdr _e1204412056_)))
                        (let ((_clause12064_ _tl1204612061_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12064_))
                              (_E1204312052_)))))
                    (_E1204312052_)))))
        (_E1204212066_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11997_)
      (let* ((_e1199812008_ _stx11997_)
             (_E1200012012_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1199812008_)))
             (_E1199912036_
              (lambda ()
                (if (gx#stx-pair? _e1199812008_)
                    (let ((_e1200112016_ (gx#syntax-e _e1199812008_)))
                      (let ((_hd1200212019_ (##car _e1200112016_))
                            (_tl1200312021_ (##cdr _e1200112016_)))
                        (let ((_hd12024_ _hd1200212019_))
                          (if (gx#stx-pair? _tl1200312021_)
                              (let ((_e1200412026_
                                     (gx#syntax-e _tl1200312021_)))
                                (let ((_hd1200512029_ (##car _e1200412026_))
                                      (_tl1200612031_ (##cdr _e1200412026_)))
                                  (let ((_body12034_ _hd1200512029_))
                                    (if (gx#stx-null? _tl1200612031_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12024_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12034_)
                                                        '()))
                                            (_E1200012012_))
                                        (_E1200012012_)))))
                              (_E1200012012_)))))
                    (_E1200012012_)))))
        (_E1199912036_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11967_)
      (let* ((_e1196811975_ _stx11967_)
             (_E1197011979_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1196811975_)))
             (_E1196911993_
              (lambda ()
                (if (gx#stx-pair? _e1196811975_)
                    (let ((_e1197111983_ (gx#syntax-e _e1196811975_)))
                      (let ((_hd1197211986_ (##car _e1197111983_))
                            (_tl1197311988_ (##cdr _e1197111983_)))
                        (let ((_clauses11991_ _tl1197311988_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses11991_))
                              (_E1197011979_)))))
                    (_E1197011979_)))))
        (_E1196911993_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11900
      (lambda (_stx11902_ _form11903_)
        (let* ((_e1190411917_ _stx11902_)
               (_E1190611921_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1190411917_)))
               (_E1190511953_
                (lambda ()
                  (if (gx#stx-pair? _e1190411917_)
                      (let ((_e1190711925_ (gx#syntax-e _e1190411917_)))
                        (let ((_hd1190811928_ (##car _e1190711925_))
                              (_tl1190911930_ (##cdr _e1190711925_)))
                          (if (gx#stx-pair? _tl1190911930_)
                              (let ((_e1191011933_
                                     (gx#syntax-e _tl1190911930_)))
                                (let ((_hd1191111936_ (##car _e1191011933_))
                                      (_tl1191211938_ (##cdr _e1191011933_)))
                                  (let ((_hd11941_ _hd1191111936_))
                                    (if (gx#stx-pair? _tl1191211938_)
                                        (let ((_e1191311943_
                                               (gx#syntax-e _tl1191211938_)))
                                          (let ((_hd1191411946_
                                                 (##car _e1191311943_))
                                                (_tl1191511948_
                                                 (##cdr _e1191311943_)))
                                            (let ((_body11951_ _hd1191411946_))
                                              (if (gx#stx-null? _tl1191511948_)
                                                  (if '#t
                                                      (cons _form11903_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd11941_)
                          (cons (gx#core-compile-top-syntax _body11951_) '())))
              (_E1190611921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1190611921_)))))
                                        (_E1190611921_)))))
                              (_E1190611921_))))
                      (_E1190611921_)))))
          (_E1190511953_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11960_)
          (let ((_form11962_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11900
             _stx11960_
             _form11962_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12688_
          (let ((_g12687_ (length _g12688_)))
            (cond ((fx= _g12687_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12688_))
                  ((fx= _g12687_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11900
                          _g12688_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12688_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11899_)
      (gx#core-compile-top-let-values%__opt-lambda11900
       _stx11899_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11897_)
      (gx#core-compile-top-let-values%__opt-lambda11900
       _stx11897_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11856_)
      (let* ((_e1185711867_ _stx11856_)
             (_E1185911871_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1185711867_)))
             (_E1185811893_
              (lambda ()
                (if (gx#stx-pair? _e1185711867_)
                    (let ((_e1186011875_ (gx#syntax-e _e1185711867_)))
                      (let ((_hd1186111878_ (##car _e1186011875_))
                            (_tl1186211880_ (##cdr _e1186011875_)))
                        (if (gx#stx-pair? _tl1186211880_)
                            (let ((_e1186311883_ (gx#syntax-e _tl1186211880_)))
                              (let ((_hd1186411886_ (##car _e1186311883_))
                                    (_tl1186511888_ (##cdr _e1186311883_)))
                                (let ((_e11891_ _hd1186411886_))
                                  (if (gx#stx-null? _tl1186511888_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e11891_)
                                                      '()))
                                          (_E1185911871_))
                                      (_E1185911871_)))))
                            (_E1185911871_))))
                    (_E1185911871_)))))
        (_E1185811893_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11815_)
      (let* ((_e1181611826_ _stx11815_)
             (_E1181811830_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1181611826_)))
             (_E1181711852_
              (lambda ()
                (if (gx#stx-pair? _e1181611826_)
                    (let ((_e1181911834_ (gx#syntax-e _e1181611826_)))
                      (let ((_hd1182011837_ (##car _e1181911834_))
                            (_tl1182111839_ (##cdr _e1181911834_)))
                        (if (gx#stx-pair? _tl1182111839_)
                            (let ((_e1182211842_ (gx#syntax-e _tl1182111839_)))
                              (let ((_hd1182311845_ (##car _e1182211842_))
                                    (_tl1182411847_ (##cdr _e1182211842_)))
                                (let ((_e11850_ _hd1182311845_))
                                  (if (gx#stx-null? _tl1182411847_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e11850_)
                                                      '()))
                                          (_E1181811830_))
                                      (_E1181811830_)))))
                            (_E1181811830_))))
                    (_E1181811830_)))))
        (_E1181711852_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11772_)
      (let* ((_e1177311783_ _stx11772_)
             (_E1177511787_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1177311783_)))
             (_E1177411811_
              (lambda ()
                (if (gx#stx-pair? _e1177311783_)
                    (let ((_e1177611791_ (gx#syntax-e _e1177311783_)))
                      (let ((_hd1177711794_ (##car _e1177611791_))
                            (_tl1177811796_ (##cdr _e1177611791_)))
                        (if (gx#stx-pair? _tl1177811796_)
                            (let ((_e1177911799_ (gx#syntax-e _tl1177811796_)))
                              (let ((_hd1178011802_ (##car _e1177911799_))
                                    (_tl1178111804_ (##cdr _e1177911799_)))
                                (let* ((_rator11807_ _hd1178011802_)
                                       (_args11809_ _tl1178111804_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator11807_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args11809_))
                                      (_E1177511787_)))))
                            (_E1177511787_))))
                    (_E1177511787_)))))
        (_E1177411811_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11705_)
      (let* ((_e1170611722_ _stx11705_)
             (_E1170811726_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1170611722_)))
             (_E1170711768_
              (lambda ()
                (if (gx#stx-pair? _e1170611722_)
                    (let ((_e1170911730_ (gx#syntax-e _e1170611722_)))
                      (let ((_hd1171011733_ (##car _e1170911730_))
                            (_tl1171111735_ (##cdr _e1170911730_)))
                        (if (gx#stx-pair? _tl1171111735_)
                            (let ((_e1171211738_ (gx#syntax-e _tl1171111735_)))
                              (let ((_hd1171311741_ (##car _e1171211738_))
                                    (_tl1171411743_ (##cdr _e1171211738_)))
                                (let ((_test11746_ _hd1171311741_))
                                  (if (gx#stx-pair? _tl1171411743_)
                                      (let ((_e1171511748_
                                             (gx#syntax-e _tl1171411743_)))
                                        (let ((_hd1171611751_
                                               (##car _e1171511748_))
                                              (_tl1171711753_
                                               (##cdr _e1171511748_)))
                                          (let ((_K11756_ _hd1171611751_))
                                            (if (gx#stx-pair? _tl1171711753_)
                                                (let ((_e1171811758_
                                                       (gx#syntax-e
                                                        _tl1171711753_)))
                                                  (let ((_hd1171911761_
                                                         (##car _e1171811758_))
                                                        (_tl1172011763_
                                                         (##cdr _e1171811758_)))
                                                    (let ((_E11766_
                                                           _hd1171911761_))
                                                      (if (gx#stx-null?
                                                           _tl1172011763_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11746_)
                                  (cons (gx#core-compile-top-syntax _K11756_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11766_)
                                              '()))))
                      (_E1170811726_))
                  (_E1170811726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1170811726_)))))
                                      (_E1170811726_)))))
                            (_E1170811726_))))
                    (_E1170811726_)))))
        (_E1170711768_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11664_)
      (let* ((_e1166511675_ _stx11664_)
             (_E1166711679_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166511675_)))
             (_E1166611701_
              (lambda ()
                (if (gx#stx-pair? _e1166511675_)
                    (let ((_e1166811683_ (gx#syntax-e _e1166511675_)))
                      (let ((_hd1166911686_ (##car _e1166811683_))
                            (_tl1167011688_ (##cdr _e1166811683_)))
                        (if (gx#stx-pair? _tl1167011688_)
                            (let ((_e1167111691_ (gx#syntax-e _tl1167011688_)))
                              (let ((_hd1167211694_ (##car _e1167111691_))
                                    (_tl1167311696_ (##cdr _e1167111691_)))
                                (let ((_id11699_ _hd1167211694_))
                                  (if (gx#stx-null? _tl1167311696_)
                                      (if (gx#identifier? _id11699_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11699_)
                                                      '()))
                                          (_E1166711679_))
                                      (_E1166711679_)))))
                            (_E1166711679_))))
                    (_E1166711679_)))))
        (_E1166611701_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11610_)
      (let* ((_e1161111624_ _stx11610_)
             (_E1161311628_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1161111624_)))
             (_E1161211660_
              (lambda ()
                (if (gx#stx-pair? _e1161111624_)
                    (let ((_e1161411632_ (gx#syntax-e _e1161111624_)))
                      (let ((_hd1161511635_ (##car _e1161411632_))
                            (_tl1161611637_ (##cdr _e1161411632_)))
                        (if (gx#stx-pair? _tl1161611637_)
                            (let ((_e1161711640_ (gx#syntax-e _tl1161611637_)))
                              (let ((_hd1161811643_ (##car _e1161711640_))
                                    (_tl1161911645_ (##cdr _e1161711640_)))
                                (let ((_id11648_ _hd1161811643_))
                                  (if (gx#stx-pair? _tl1161911645_)
                                      (let ((_e1162011650_
                                             (gx#syntax-e _tl1161911645_)))
                                        (let ((_hd1162111653_
                                               (##car _e1162011650_))
                                              (_tl1162211655_
                                               (##cdr _e1162011650_)))
                                          (let ((_expr11658_ _hd1162111653_))
                                            (if (gx#stx-null? _tl1162211655_)
                                                (if (gx#identifier? _id11648_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11648_)
                        (cons (gx#core-compile-top-syntax _expr11658_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1161311628_))
                                                (_E1161311628_)))))
                                      (_E1161311628_)))))
                            (_E1161311628_))))
                    (_E1161311628_)))))
        (_E1161211660_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11605_)
      (let ((_$e11607_ (gx#resolve-identifier__0 _id11605_)))
        (if _$e11607_
            (##structure-ref _$e11607_ '1 gx#binding::t '#f)
            _id11605_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11603_)
      (if (gx#identifier? _hd11603_)
          (gx#core-compile-top-runtime-ref _hd11603_)
          '#f))))
