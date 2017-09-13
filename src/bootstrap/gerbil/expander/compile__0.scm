(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx12655_)
      (let* ((_e1265612663_ _stx12655_)
             (_E1265812667_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1265612663_)))
             (_E1265712681_
              (lambda ()
                (if (gx#stx-pair? _e1265612663_)
                    (let ((_e1265912671_ (gx#syntax-e _e1265612663_)))
                      (let ((_hd1266012674_ (##car _e1265912671_))
                            (_tl1266112676_ (##cdr _e1265912671_)))
                        (let ((_form12679_ _hd1266012674_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form12679_)
                               'compile-top-syntax
                               _stx12655_)
                              (_E1265812667_)))))
                    (_E1265812667_)))))
        (_E1265712681_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self12615_ _stx12616_)
      (let* ((_self1261712625_ _self12615_)
             (_E1261912629_
              (lambda () (error '"No clause matching" _self1261712625_)))
             (_K1262012641_
              (lambda (_K12632_)
                (let ((_$e12634_ (gx#stx-source _stx12616_)))
                  (if _$e12634_
                      ((lambda (_g1263612638_)
                         (gx#stx-wrap-source
                          (_K12632_ _stx12616_)
                          _g1263612638_))
                       _$e12634_)
                      (_K12632_ _stx12616_))))))
        (if (##structure-instance-of?
             _self1261712625_
             (##type-id gx#core-expander::t))
            (let* ((_e1262112644_ (##vector-ref _self1261712625_ '1))
                   (_e1262212647_ (##vector-ref _self1261712625_ '2))
                   (_e1262312650_ (##vector-ref _self1261712625_ '3))
                   (_K12653_ _e1262312650_))
              (_K1262012641_ _K12653_))
            (_E1261912629_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx12613_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx12613_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx12583_)
      (let* ((_e1258412591_ _stx12583_)
             (_E1258612595_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1258412591_)))
             (_E1258512609_
              (lambda ()
                (if (gx#stx-pair? _e1258412591_)
                    (let ((_e1258712599_ (gx#syntax-e _e1258412591_)))
                      (let ((_hd1258812602_ (##car _e1258712599_))
                            (_tl1258912604_ (##cdr _e1258712599_)))
                        (let ((_body12607_ _tl1258912604_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body12607_))
                              (_E1258612595_)))))
                    (_E1258612595_)))))
        (_E1258512609_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx12552_)
      (let* ((_e1255312560_ _stx12552_)
             (_E1255512564_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1255312560_)))
             (_E1255412579_
              (lambda ()
                (if (gx#stx-pair? _e1255312560_)
                    (let ((_e1255612568_ (gx#syntax-e _e1255312560_)))
                      (let ((_hd1255712571_ (##car _e1255612568_))
                            (_tl1255812573_ (##cdr _e1255612568_)))
                        (let ((_body12576_ _tl1255812573_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body12576_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1255512564_)))))
                    (_E1255512564_)))))
        (_E1255412579_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx12522_)
      (let* ((_e1252312530_ _stx12522_)
             (_E1252512534_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1252312530_)))
             (_E1252412548_
              (lambda ()
                (if (gx#stx-pair? _e1252312530_)
                    (let ((_e1252612538_ (gx#syntax-e _e1252312530_)))
                      (let ((_hd1252712541_ (##car _e1252612538_))
                            (_tl1252812543_ (##cdr _e1252612538_)))
                        (let ((_body12546_ _tl1252812543_))
                          (if '#t
                              (cons '%#begin-foreign _body12546_)
                              (_E1252512534_)))))
                    (_E1252512534_)))))
        (_E1252412548_))))
  (define gx#core-compile-top-import%
    (lambda (_stx12492_)
      (let* ((_e1249312500_ _stx12492_)
             (_E1249512504_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1249312500_)))
             (_E1249412518_
              (lambda ()
                (if (gx#stx-pair? _e1249312500_)
                    (let ((_e1249612508_ (gx#syntax-e _e1249312500_)))
                      (let ((_hd1249712511_ (##car _e1249612508_))
                            (_tl1249812513_ (##cdr _e1249612508_)))
                        (let ((_body12516_ _tl1249812513_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body12516_))
                              (_E1249512504_)))))
                    (_E1249512504_)))))
        (_E1249412518_))))
  (define gx#core-compile-top-module%
    (lambda (_stx12449_)
      (let* ((_e1245012460_ _stx12449_)
             (_E1245212464_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1245012460_)))
             (_E1245112488_
              (lambda ()
                (if (gx#stx-pair? _e1245012460_)
                    (let ((_e1245312468_ (gx#syntax-e _e1245012460_)))
                      (let ((_hd1245412471_ (##car _e1245312468_))
                            (_tl1245512473_ (##cdr _e1245312468_)))
                        (if (gx#stx-pair? _tl1245512473_)
                            (let ((_e1245612476_ (gx#syntax-e _tl1245512473_)))
                              (let ((_hd1245712479_ (##car _e1245612476_))
                                    (_tl1245812481_ (##cdr _e1245612476_)))
                                (let* ((_hd12484_ _hd1245712479_)
                                       (_body12486_ _tl1245812481_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd12484_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body12486_))
                                      (_E1245212464_)))))
                            (_E1245212464_))))
                    (_E1245212464_)))))
        (_E1245112488_))))
  (define gx#core-compile-top-export%
    (lambda (_stx12419_)
      (let* ((_e1242012427_ _stx12419_)
             (_E1242212431_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1242012427_)))
             (_E1242112445_
              (lambda ()
                (if (gx#stx-pair? _e1242012427_)
                    (let ((_e1242312435_ (gx#syntax-e _e1242012427_)))
                      (let ((_hd1242412438_ (##car _e1242312435_))
                            (_tl1242512440_ (##cdr _e1242312435_)))
                        (let ((_body12443_ _tl1242512440_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body12443_))
                              (_E1242212431_)))))
                    (_E1242212431_)))))
        (_E1242112445_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx12389_)
      (let* ((_e1239012397_ _stx12389_)
             (_E1239212401_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1239012397_)))
             (_E1239112415_
              (lambda ()
                (if (gx#stx-pair? _e1239012397_)
                    (let ((_e1239312405_ (gx#syntax-e _e1239012397_)))
                      (let ((_hd1239412408_ (##car _e1239312405_))
                            (_tl1239512410_ (##cdr _e1239312405_)))
                        (let ((_body12413_ _tl1239512410_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12413_))
                              (_E1239212401_)))))
                    (_E1239212401_)))))
        (_E1239112415_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx12314_)
      (letrec ((_generate12316_
                (lambda (_hd12346_)
                  (let* ((_e1234712357_ _hd12346_)
                         (_E1234912361_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1234712357_)))
                         (_E1234812385_
                          (lambda ()
                            (if (gx#stx-pair? _e1234712357_)
                                (let ((_e1235012365_
                                       (gx#syntax-e _e1234712357_)))
                                  (let ((_hd1235112368_ (##car _e1235012365_))
                                        (_tl1235212370_ (##cdr _e1235012365_)))
                                    (let ((_id12373_ _hd1235112368_))
                                      (if (gx#stx-pair? _tl1235212370_)
                                          (let ((_e1235312375_
                                                 (gx#syntax-e _tl1235212370_)))
                                            (let ((_hd1235412378_
                                                   (##car _e1235312375_))
                                                  (_tl1235512380_
                                                   (##cdr _e1235312375_)))
                                              (let ((_eid12383_
                                                     _hd1235412378_))
                                                (if (gx#stx-null?
                                                     _tl1235512380_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id12373_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid12383_)
                            '()))
                (_E1234912361_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1234912361_)))))
                                          (_E1234912361_)))))
                                (_E1234912361_)))))
                    (_E1234812385_)))))
        (let* ((_e1231712324_ _stx12314_)
               (_E1231912328_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1231712324_)))
               (_E1231812342_
                (lambda ()
                  (if (gx#stx-pair? _e1231712324_)
                      (let ((_e1232012332_ (gx#syntax-e _e1231712324_)))
                        (let ((_hd1232112335_ (##car _e1232012332_))
                              (_tl1232212337_ (##cdr _e1232012332_)))
                          (let ((_body12340_ _tl1232212337_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate12316_
                                       _body12340_))
                                (_E1231912328_)))))
                      (_E1231912328_)))))
          (_E1231812342_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx12260_)
      (let* ((_e1226112274_ _stx12260_)
             (_E1226312278_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1226112274_)))
             (_E1226212310_
              (lambda ()
                (if (gx#stx-pair? _e1226112274_)
                    (let ((_e1226412282_ (gx#syntax-e _e1226112274_)))
                      (let ((_hd1226512285_ (##car _e1226412282_))
                            (_tl1226612287_ (##cdr _e1226412282_)))
                        (if (gx#stx-pair? _tl1226612287_)
                            (let ((_e1226712290_ (gx#syntax-e _tl1226612287_)))
                              (let ((_hd1226812293_ (##car _e1226712290_))
                                    (_tl1226912295_ (##cdr _e1226712290_)))
                                (let ((_hd12298_ _hd1226812293_))
                                  (if (gx#stx-pair? _tl1226912295_)
                                      (let ((_e1227012300_
                                             (gx#syntax-e _tl1226912295_)))
                                        (let ((_hd1227112303_
                                               (##car _e1227012300_))
                                              (_tl1227212305_
                                               (##cdr _e1227012300_)))
                                          (let ((_expr12308_ _hd1227112303_))
                                            (if (gx#stx-null? _tl1227212305_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd12298_)
                        (cons (gx#core-compile-top-syntax _expr12308_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1226312278_))
                                                (_E1226312278_)))))
                                      (_E1226312278_)))))
                            (_E1226312278_))))
                    (_E1226312278_)))))
        (_E1226212310_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx12205_)
      (let* ((_e1220612219_ _stx12205_)
             (_E1220812223_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1220612219_)))
             (_E1220712256_
              (lambda ()
                (if (gx#stx-pair? _e1220612219_)
                    (let ((_e1220912227_ (gx#syntax-e _e1220612219_)))
                      (let ((_hd1221012230_ (##car _e1220912227_))
                            (_tl1221112232_ (##cdr _e1220912227_)))
                        (if (gx#stx-pair? _tl1221112232_)
                            (let ((_e1221212235_ (gx#syntax-e _tl1221112232_)))
                              (let ((_hd1221312238_ (##car _e1221212235_))
                                    (_tl1221412240_ (##cdr _e1221212235_)))
                                (let ((_hd12243_ _hd1221312238_))
                                  (if (gx#stx-pair? _tl1221412240_)
                                      (let ((_e1221512245_
                                             (gx#syntax-e _tl1221412240_)))
                                        (let ((_hd1221612248_
                                               (##car _e1221512245_))
                                              (_tl1221712250_
                                               (##cdr _e1221512245_)))
                                          (let ((_expr12253_ _hd1221612248_))
                                            (if (gx#stx-null? _tl1221712250_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12243_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr12253_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1220812223_))
                                                (_E1220812223_)))))
                                      (_E1220812223_)))))
                            (_E1220812223_))))
                    (_E1220812223_)))))
        (_E1220712256_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx12151_)
      (let* ((_e1215212165_ _stx12151_)
             (_E1215412169_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1215212165_)))
             (_E1215312201_
              (lambda ()
                (if (gx#stx-pair? _e1215212165_)
                    (let ((_e1215512173_ (gx#syntax-e _e1215212165_)))
                      (let ((_hd1215612176_ (##car _e1215512173_))
                            (_tl1215712178_ (##cdr _e1215512173_)))
                        (if (gx#stx-pair? _tl1215712178_)
                            (let ((_e1215812181_ (gx#syntax-e _tl1215712178_)))
                              (let ((_hd1215912184_ (##car _e1215812181_))
                                    (_tl1216012186_ (##cdr _e1215812181_)))
                                (let ((_hd12189_ _hd1215912184_))
                                  (if (gx#stx-pair? _tl1216012186_)
                                      (let ((_e1216112191_
                                             (gx#syntax-e _tl1216012186_)))
                                        (let ((_hd1216212194_
                                               (##car _e1216112191_))
                                              (_tl1216312196_
                                               (##cdr _e1216112191_)))
                                          (let ((_alias-id12199_
                                                 _hd1216212194_))
                                            (if (gx#stx-null? _tl1216312196_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd12189_)
                        (cons (gx#core-quote-syntax__0 _alias-id12199_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1215412169_))
                                                (_E1215412169_)))))
                                      (_E1215412169_)))))
                            (_E1215412169_))))
                    (_E1215412169_)))))
        (_E1215312201_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx12097_)
      (let* ((_e1209812111_ _stx12097_)
             (_E1210012115_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1209812111_)))
             (_E1209912147_
              (lambda ()
                (if (gx#stx-pair? _e1209812111_)
                    (let ((_e1210112119_ (gx#syntax-e _e1209812111_)))
                      (let ((_hd1210212122_ (##car _e1210112119_))
                            (_tl1210312124_ (##cdr _e1210112119_)))
                        (if (gx#stx-pair? _tl1210312124_)
                            (let ((_e1210412127_ (gx#syntax-e _tl1210312124_)))
                              (let ((_hd1210512130_ (##car _e1210412127_))
                                    (_tl1210612132_ (##cdr _e1210412127_)))
                                (let ((_id12135_ _hd1210512130_))
                                  (if (gx#stx-pair? _tl1210612132_)
                                      (let ((_e1210712137_
                                             (gx#syntax-e _tl1210612132_)))
                                        (let ((_hd1210812140_
                                               (##car _e1210712137_))
                                              (_tl1210912142_
                                               (##cdr _e1210712137_)))
                                          (let ((_binding-id12145_
                                                 _hd1210812140_))
                                            (if (gx#stx-null? _tl1210912142_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id12135_)
                        (cons (gx#core-quote-syntax__0 _binding-id12145_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1210012115_))
                                                (_E1210012115_)))))
                                      (_E1210012115_)))))
                            (_E1210012115_))))
                    (_E1210012115_)))))
        (_E1209912147_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx12067_)
      (let* ((_e1206812075_ _stx12067_)
             (_E1207012079_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1206812075_)))
             (_E1206912093_
              (lambda ()
                (if (gx#stx-pair? _e1206812075_)
                    (let ((_e1207112083_ (gx#syntax-e _e1206812075_)))
                      (let ((_hd1207212086_ (##car _e1207112083_))
                            (_tl1207312088_ (##cdr _e1207112083_)))
                        (let ((_decls12091_ _tl1207312088_))
                          (if '#t
                              (cons '%#declare _decls12091_)
                              (_E1207012079_)))))
                    (_E1207012079_)))))
        (_E1206912093_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx12037_)
      (let* ((_e1203812045_ _stx12037_)
             (_E1204012049_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1203812045_)))
             (_E1203912063_
              (lambda ()
                (if (gx#stx-pair? _e1203812045_)
                    (let ((_e1204112053_ (gx#syntax-e _e1203812045_)))
                      (let ((_hd1204212056_ (##car _e1204112053_))
                            (_tl1204312058_ (##cdr _e1204112053_)))
                        (let ((_clause12061_ _tl1204312058_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause12061_))
                              (_E1204012049_)))))
                    (_E1204012049_)))))
        (_E1203912063_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx11994_)
      (let* ((_e1199512005_ _stx11994_)
             (_E1199712009_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1199512005_)))
             (_E1199612033_
              (lambda ()
                (if (gx#stx-pair? _e1199512005_)
                    (let ((_e1199812013_ (gx#syntax-e _e1199512005_)))
                      (let ((_hd1199912016_ (##car _e1199812013_))
                            (_tl1200012018_ (##cdr _e1199812013_)))
                        (let ((_hd12021_ _hd1199912016_))
                          (if (gx#stx-pair? _tl1200012018_)
                              (let ((_e1200112023_
                                     (gx#syntax-e _tl1200012018_)))
                                (let ((_hd1200212026_ (##car _e1200112023_))
                                      (_tl1200312028_ (##cdr _e1200112023_)))
                                  (let ((_body12031_ _hd1200212026_))
                                    (if (gx#stx-null? _tl1200312028_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd12021_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body12031_)
                                                        '()))
                                            (_E1199712009_))
                                        (_E1199712009_)))))
                              (_E1199712009_)))))
                    (_E1199712009_)))))
        (_E1199612033_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx11964_)
      (let* ((_e1196511972_ _stx11964_)
             (_E1196711976_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1196511972_)))
             (_E1196611990_
              (lambda ()
                (if (gx#stx-pair? _e1196511972_)
                    (let ((_e1196811980_ (gx#syntax-e _e1196511972_)))
                      (let ((_hd1196911983_ (##car _e1196811980_))
                            (_tl1197011985_ (##cdr _e1196811980_)))
                        (let ((_clauses11988_ _tl1197011985_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses11988_))
                              (_E1196711976_)))))
                    (_E1196711976_)))))
        (_E1196611990_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda11897
      (lambda (_stx11899_ _form11900_)
        (let* ((_e1190111914_ _stx11899_)
               (_E1190311918_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1190111914_)))
               (_E1190211950_
                (lambda ()
                  (if (gx#stx-pair? _e1190111914_)
                      (let ((_e1190411922_ (gx#syntax-e _e1190111914_)))
                        (let ((_hd1190511925_ (##car _e1190411922_))
                              (_tl1190611927_ (##cdr _e1190411922_)))
                          (if (gx#stx-pair? _tl1190611927_)
                              (let ((_e1190711930_
                                     (gx#syntax-e _tl1190611927_)))
                                (let ((_hd1190811933_ (##car _e1190711930_))
                                      (_tl1190911935_ (##cdr _e1190711930_)))
                                  (let ((_hd11938_ _hd1190811933_))
                                    (if (gx#stx-pair? _tl1190911935_)
                                        (let ((_e1191011940_
                                               (gx#syntax-e _tl1190911935_)))
                                          (let ((_hd1191111943_
                                                 (##car _e1191011940_))
                                                (_tl1191211945_
                                                 (##cdr _e1191011940_)))
                                            (let ((_body11948_ _hd1191111943_))
                                              (if (gx#stx-null? _tl1191211945_)
                                                  (if '#t
                                                      (cons _form11900_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd11938_)
                          (cons (gx#core-compile-top-syntax _body11948_) '())))
              (_E1190311918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1190311918_)))))
                                        (_E1190311918_)))))
                              (_E1190311918_))))
                      (_E1190311918_)))))
          (_E1190211950_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx11957_)
          (let ((_form11959_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda11897
             _stx11957_
             _form11959_))))
      (define gx#core-compile-top-let-values%
        (lambda _g12685_
          (let ((_g12684_ (length _g12685_)))
            (cond ((fx= _g12684_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g12685_))
                  ((fx= _g12684_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda11897
                          _g12685_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g12685_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx11896_)
      (gx#core-compile-top-let-values%__opt-lambda11897
       _stx11896_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx11894_)
      (gx#core-compile-top-let-values%__opt-lambda11897
       _stx11894_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx11853_)
      (let* ((_e1185411864_ _stx11853_)
             (_E1185611868_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1185411864_)))
             (_E1185511890_
              (lambda ()
                (if (gx#stx-pair? _e1185411864_)
                    (let ((_e1185711872_ (gx#syntax-e _e1185411864_)))
                      (let ((_hd1185811875_ (##car _e1185711872_))
                            (_tl1185911877_ (##cdr _e1185711872_)))
                        (if (gx#stx-pair? _tl1185911877_)
                            (let ((_e1186011880_ (gx#syntax-e _tl1185911877_)))
                              (let ((_hd1186111883_ (##car _e1186011880_))
                                    (_tl1186211885_ (##cdr _e1186011880_)))
                                (let ((_e11888_ _hd1186111883_))
                                  (if (gx#stx-null? _tl1186211885_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e11888_)
                                                      '()))
                                          (_E1185611868_))
                                      (_E1185611868_)))))
                            (_E1185611868_))))
                    (_E1185611868_)))))
        (_E1185511890_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx11812_)
      (let* ((_e1181311823_ _stx11812_)
             (_E1181511827_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1181311823_)))
             (_E1181411849_
              (lambda ()
                (if (gx#stx-pair? _e1181311823_)
                    (let ((_e1181611831_ (gx#syntax-e _e1181311823_)))
                      (let ((_hd1181711834_ (##car _e1181611831_))
                            (_tl1181811836_ (##cdr _e1181611831_)))
                        (if (gx#stx-pair? _tl1181811836_)
                            (let ((_e1181911839_ (gx#syntax-e _tl1181811836_)))
                              (let ((_hd1182011842_ (##car _e1181911839_))
                                    (_tl1182111844_ (##cdr _e1181911839_)))
                                (let ((_e11847_ _hd1182011842_))
                                  (if (gx#stx-null? _tl1182111844_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e11847_)
                                                      '()))
                                          (_E1181511827_))
                                      (_E1181511827_)))))
                            (_E1181511827_))))
                    (_E1181511827_)))))
        (_E1181411849_))))
  (define gx#core-compile-top-call%
    (lambda (_stx11769_)
      (let* ((_e1177011780_ _stx11769_)
             (_E1177211784_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1177011780_)))
             (_E1177111808_
              (lambda ()
                (if (gx#stx-pair? _e1177011780_)
                    (let ((_e1177311788_ (gx#syntax-e _e1177011780_)))
                      (let ((_hd1177411791_ (##car _e1177311788_))
                            (_tl1177511793_ (##cdr _e1177311788_)))
                        (if (gx#stx-pair? _tl1177511793_)
                            (let ((_e1177611796_ (gx#syntax-e _tl1177511793_)))
                              (let ((_hd1177711799_ (##car _e1177611796_))
                                    (_tl1177811801_ (##cdr _e1177611796_)))
                                (let* ((_rator11804_ _hd1177711799_)
                                       (_args11806_ _tl1177811801_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator11804_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args11806_))
                                      (_E1177211784_)))))
                            (_E1177211784_))))
                    (_E1177211784_)))))
        (_E1177111808_))))
  (define gx#core-compile-top-if%
    (lambda (_stx11702_)
      (let* ((_e1170311719_ _stx11702_)
             (_E1170511723_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1170311719_)))
             (_E1170411765_
              (lambda ()
                (if (gx#stx-pair? _e1170311719_)
                    (let ((_e1170611727_ (gx#syntax-e _e1170311719_)))
                      (let ((_hd1170711730_ (##car _e1170611727_))
                            (_tl1170811732_ (##cdr _e1170611727_)))
                        (if (gx#stx-pair? _tl1170811732_)
                            (let ((_e1170911735_ (gx#syntax-e _tl1170811732_)))
                              (let ((_hd1171011738_ (##car _e1170911735_))
                                    (_tl1171111740_ (##cdr _e1170911735_)))
                                (let ((_test11743_ _hd1171011738_))
                                  (if (gx#stx-pair? _tl1171111740_)
                                      (let ((_e1171211745_
                                             (gx#syntax-e _tl1171111740_)))
                                        (let ((_hd1171311748_
                                               (##car _e1171211745_))
                                              (_tl1171411750_
                                               (##cdr _e1171211745_)))
                                          (let ((_K11753_ _hd1171311748_))
                                            (if (gx#stx-pair? _tl1171411750_)
                                                (let ((_e1171511755_
                                                       (gx#syntax-e
                                                        _tl1171411750_)))
                                                  (let ((_hd1171611758_
                                                         (##car _e1171511755_))
                                                        (_tl1171711760_
                                                         (##cdr _e1171511755_)))
                                                    (let ((_E11763_
                                                           _hd1171611758_))
                                                      (if (gx#stx-null?
                                                           _tl1171711760_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test11743_)
                                  (cons (gx#core-compile-top-syntax _K11753_)
                                        (cons (gx#core-compile-top-syntax
                                               _E11763_)
                                              '()))))
                      (_E1170511723_))
                  (_E1170511723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1170511723_)))))
                                      (_E1170511723_)))))
                            (_E1170511723_))))
                    (_E1170511723_)))))
        (_E1170411765_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx11661_)
      (let* ((_e1166211672_ _stx11661_)
             (_E1166411676_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166211672_)))
             (_E1166311698_
              (lambda ()
                (if (gx#stx-pair? _e1166211672_)
                    (let ((_e1166511680_ (gx#syntax-e _e1166211672_)))
                      (let ((_hd1166611683_ (##car _e1166511680_))
                            (_tl1166711685_ (##cdr _e1166511680_)))
                        (if (gx#stx-pair? _tl1166711685_)
                            (let ((_e1166811688_ (gx#syntax-e _tl1166711685_)))
                              (let ((_hd1166911691_ (##car _e1166811688_))
                                    (_tl1167011693_ (##cdr _e1166811688_)))
                                (let ((_id11696_ _hd1166911691_))
                                  (if (gx#stx-null? _tl1167011693_)
                                      (if (gx#identifier? _id11696_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id11696_)
                                                      '()))
                                          (_E1166411676_))
                                      (_E1166411676_)))))
                            (_E1166411676_))))
                    (_E1166411676_)))))
        (_E1166311698_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx11607_)
      (let* ((_e1160811621_ _stx11607_)
             (_E1161011625_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1160811621_)))
             (_E1160911657_
              (lambda ()
                (if (gx#stx-pair? _e1160811621_)
                    (let ((_e1161111629_ (gx#syntax-e _e1160811621_)))
                      (let ((_hd1161211632_ (##car _e1161111629_))
                            (_tl1161311634_ (##cdr _e1161111629_)))
                        (if (gx#stx-pair? _tl1161311634_)
                            (let ((_e1161411637_ (gx#syntax-e _tl1161311634_)))
                              (let ((_hd1161511640_ (##car _e1161411637_))
                                    (_tl1161611642_ (##cdr _e1161411637_)))
                                (let ((_id11645_ _hd1161511640_))
                                  (if (gx#stx-pair? _tl1161611642_)
                                      (let ((_e1161711647_
                                             (gx#syntax-e _tl1161611642_)))
                                        (let ((_hd1161811650_
                                               (##car _e1161711647_))
                                              (_tl1161911652_
                                               (##cdr _e1161711647_)))
                                          (let ((_expr11655_ _hd1161811650_))
                                            (if (gx#stx-null? _tl1161911652_)
                                                (if (gx#identifier? _id11645_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id11645_)
                        (cons (gx#core-compile-top-syntax _expr11655_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1161011625_))
                                                (_E1161011625_)))))
                                      (_E1161011625_)))))
                            (_E1161011625_))))
                    (_E1161011625_)))))
        (_E1160911657_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id11602_)
      (let ((_$e11604_ (gx#resolve-identifier__0 _id11602_)))
        (if _$e11604_
            (##structure-ref _$e11604_ '1 gx#binding::t '#f)
            _id11602_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd11600_)
      (if (gx#identifier? _hd11600_)
          (gx#core-compile-top-runtime-ref _hd11600_)
          '#f))))
