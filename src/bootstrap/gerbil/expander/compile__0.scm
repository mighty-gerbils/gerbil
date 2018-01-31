(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15552_)
      (let* ((_e1555315560_ _stx15552_)
             (_E1555515564_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1555315560_)))
             (_E1555415578_
              (lambda ()
                (if (gx#stx-pair? _e1555315560_)
                    (let ((_e1555615568_ (gx#syntax-e _e1555315560_)))
                      (let ((_hd1555715571_ (##car _e1555615568_))
                            (_tl1555815573_ (##cdr _e1555615568_)))
                        (let ((_form15576_ _hd1555715571_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15576_)
                               'compile-top-syntax
                               _stx15552_)
                              (_E1555515564_)))))
                    (_E1555515564_)))))
        (_E1555415578_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15512_ _stx15513_)
      (let* ((_self1551415522_ _self15512_)
             (_E1551615526_
              (lambda () (error '"No clause matching" _self1551415522_)))
             (_K1551715538_
              (lambda (_K15529_)
                (let ((_$e15531_ (gx#stx-source _stx15513_)))
                  (if _$e15531_
                      ((lambda (_g1553315535_)
                         (gx#stx-wrap-source
                          (_K15529_ _stx15513_)
                          _g1553315535_))
                       _$e15531_)
                      (_K15529_ _stx15513_))))))
        (if (##structure-instance-of?
             _self1551415522_
             (##type-id gx#core-expander::t))
            (let* ((_e1551815541_ (##vector-ref _self1551415522_ '1))
                   (_e1551915544_ (##vector-ref _self1551415522_ '2))
                   (_e1552015547_ (##vector-ref _self1551415522_ '3))
                   (_K15550_ _e1552015547_))
              (_K1551715538_ _K15550_))
            (_E1551615526_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15386_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15386_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15356_)
      (let* ((_e1535715364_ _stx15356_)
             (_E1535915368_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1535715364_)))
             (_E1535815382_
              (lambda ()
                (if (gx#stx-pair? _e1535715364_)
                    (let ((_e1536015372_ (gx#syntax-e _e1535715364_)))
                      (let ((_hd1536115375_ (##car _e1536015372_))
                            (_tl1536215377_ (##cdr _e1536015372_)))
                        (let ((_body15380_ _tl1536215377_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15380_))
                              (_E1535915368_)))))
                    (_E1535915368_)))))
        (_E1535815382_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15325_)
      (let* ((_e1532615333_ _stx15325_)
             (_E1532815337_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1532615333_)))
             (_E1532715352_
              (lambda ()
                (if (gx#stx-pair? _e1532615333_)
                    (let ((_e1532915341_ (gx#syntax-e _e1532615333_)))
                      (let ((_hd1533015344_ (##car _e1532915341_))
                            (_tl1533115346_ (##cdr _e1532915341_)))
                        (let ((_body15349_ _tl1533115346_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15349_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1532815337_)))))
                    (_E1532815337_)))))
        (_E1532715352_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15295_)
      (let* ((_e1529615303_ _stx15295_)
             (_E1529815307_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1529615303_)))
             (_E1529715321_
              (lambda ()
                (if (gx#stx-pair? _e1529615303_)
                    (let ((_e1529915311_ (gx#syntax-e _e1529615303_)))
                      (let ((_hd1530015314_ (##car _e1529915311_))
                            (_tl1530115316_ (##cdr _e1529915311_)))
                        (let ((_body15319_ _tl1530115316_))
                          (if '#t
                              (cons '%#begin-foreign _body15319_)
                              (_E1529815307_)))))
                    (_E1529815307_)))))
        (_E1529715321_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15241_)
      (let* ((_e1524215255_ _stx15241_)
             (_E1524415259_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1524215255_)))
             (_E1524315291_
              (lambda ()
                (if (gx#stx-pair? _e1524215255_)
                    (let ((_e1524515263_ (gx#syntax-e _e1524215255_)))
                      (let ((_hd1524615266_ (##car _e1524515263_))
                            (_tl1524715268_ (##cdr _e1524515263_)))
                        (if (gx#stx-pair? _tl1524715268_)
                            (let ((_e1524815271_ (gx#syntax-e _tl1524715268_)))
                              (let ((_hd1524915274_ (##car _e1524815271_))
                                    (_tl1525015276_ (##cdr _e1524815271_)))
                                (let ((_ann15279_ _hd1524915274_))
                                  (if (gx#stx-pair? _tl1525015276_)
                                      (let ((_e1525115281_
                                             (gx#syntax-e _tl1525015276_)))
                                        (let ((_hd1525215284_
                                               (##car _e1525115281_))
                                              (_tl1525315286_
                                               (##cdr _e1525115281_)))
                                          (let ((_expr15289_ _hd1525215284_))
                                            (if (gx#stx-null? _tl1525315286_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15289_)
                                                    (_E1524415259_))
                                                (_E1524415259_)))))
                                      (_E1524415259_)))))
                            (_E1524415259_))))
                    (_E1524415259_)))))
        (_E1524315291_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15211_)
      (let* ((_e1521215219_ _stx15211_)
             (_E1521415223_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1521215219_)))
             (_E1521315237_
              (lambda ()
                (if (gx#stx-pair? _e1521215219_)
                    (let ((_e1521515227_ (gx#syntax-e _e1521215219_)))
                      (let ((_hd1521615230_ (##car _e1521515227_))
                            (_tl1521715232_ (##cdr _e1521515227_)))
                        (let ((_body15235_ _tl1521715232_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15235_))
                              (_E1521415223_)))))
                    (_E1521415223_)))))
        (_E1521315237_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15168_)
      (let* ((_e1516915179_ _stx15168_)
             (_E1517115183_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1516915179_)))
             (_E1517015207_
              (lambda ()
                (if (gx#stx-pair? _e1516915179_)
                    (let ((_e1517215187_ (gx#syntax-e _e1516915179_)))
                      (let ((_hd1517315190_ (##car _e1517215187_))
                            (_tl1517415192_ (##cdr _e1517215187_)))
                        (if (gx#stx-pair? _tl1517415192_)
                            (let ((_e1517515195_ (gx#syntax-e _tl1517415192_)))
                              (let ((_hd1517615198_ (##car _e1517515195_))
                                    (_tl1517715200_ (##cdr _e1517515195_)))
                                (let* ((_hd15203_ _hd1517615198_)
                                       (_body15205_ _tl1517715200_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd15203_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body15205_))
                                      (_E1517115183_)))))
                            (_E1517115183_))))
                    (_E1517115183_)))))
        (_E1517015207_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15138_)
      (let* ((_e1513915146_ _stx15138_)
             (_E1514115150_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1513915146_)))
             (_E1514015164_
              (lambda ()
                (if (gx#stx-pair? _e1513915146_)
                    (let ((_e1514215154_ (gx#syntax-e _e1513915146_)))
                      (let ((_hd1514315157_ (##car _e1514215154_))
                            (_tl1514415159_ (##cdr _e1514215154_)))
                        (let ((_body15162_ _tl1514415159_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15162_))
                              (_E1514115150_)))))
                    (_E1514115150_)))))
        (_E1514015164_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15108_)
      (let* ((_e1510915116_ _stx15108_)
             (_E1511115120_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1510915116_)))
             (_E1511015134_
              (lambda ()
                (if (gx#stx-pair? _e1510915116_)
                    (let ((_e1511215124_ (gx#syntax-e _e1510915116_)))
                      (let ((_hd1511315127_ (##car _e1511215124_))
                            (_tl1511415129_ (##cdr _e1511215124_)))
                        (let ((_body15132_ _tl1511415129_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15132_))
                              (_E1511115120_)))))
                    (_E1511115120_)))))
        (_E1511015134_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15033_)
      (letrec ((_generate15035_
                (lambda (_hd15065_)
                  (let* ((_e1506615076_ _hd15065_)
                         (_E1506815080_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1506615076_)))
                         (_E1506715104_
                          (lambda ()
                            (if (gx#stx-pair? _e1506615076_)
                                (let ((_e1506915084_
                                       (gx#syntax-e _e1506615076_)))
                                  (let ((_hd1507015087_ (##car _e1506915084_))
                                        (_tl1507115089_ (##cdr _e1506915084_)))
                                    (let ((_id15092_ _hd1507015087_))
                                      (if (gx#stx-pair? _tl1507115089_)
                                          (let ((_e1507215094_
                                                 (gx#syntax-e _tl1507115089_)))
                                            (let ((_hd1507315097_
                                                   (##car _e1507215094_))
                                                  (_tl1507415099_
                                                   (##cdr _e1507215094_)))
                                              (let ((_eid15102_
                                                     _hd1507315097_))
                                                (if (gx#stx-null?
                                                     _tl1507415099_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15092_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15102_)
                            '()))
                (_E1506815080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1506815080_)))))
                                          (_E1506815080_)))))
                                (_E1506815080_)))))
                    (_E1506715104_)))))
        (let* ((_e1503615043_ _stx15033_)
               (_E1503815047_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1503615043_)))
               (_E1503715061_
                (lambda ()
                  (if (gx#stx-pair? _e1503615043_)
                      (let ((_e1503915051_ (gx#syntax-e _e1503615043_)))
                        (let ((_hd1504015054_ (##car _e1503915051_))
                              (_tl1504115056_ (##cdr _e1503915051_)))
                          (let ((_body15059_ _tl1504115056_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15035_
                                       _body15059_))
                                (_E1503815047_)))))
                      (_E1503815047_)))))
          (_E1503715061_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx14979_)
      (let* ((_e1498014993_ _stx14979_)
             (_E1498214997_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1498014993_)))
             (_E1498115029_
              (lambda ()
                (if (gx#stx-pair? _e1498014993_)
                    (let ((_e1498315001_ (gx#syntax-e _e1498014993_)))
                      (let ((_hd1498415004_ (##car _e1498315001_))
                            (_tl1498515006_ (##cdr _e1498315001_)))
                        (if (gx#stx-pair? _tl1498515006_)
                            (let ((_e1498615009_ (gx#syntax-e _tl1498515006_)))
                              (let ((_hd1498715012_ (##car _e1498615009_))
                                    (_tl1498815014_ (##cdr _e1498615009_)))
                                (let ((_hd15017_ _hd1498715012_))
                                  (if (gx#stx-pair? _tl1498815014_)
                                      (let ((_e1498915019_
                                             (gx#syntax-e _tl1498815014_)))
                                        (let ((_hd1499015022_
                                               (##car _e1498915019_))
                                              (_tl1499115024_
                                               (##cdr _e1498915019_)))
                                          (let ((_expr15027_ _hd1499015022_))
                                            (if (gx#stx-null? _tl1499115024_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15017_)
                        (cons (gx#core-compile-top-syntax _expr15027_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1498214997_))
                                                (_E1498214997_)))))
                                      (_E1498214997_)))))
                            (_E1498214997_))))
                    (_E1498214997_)))))
        (_E1498115029_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14924_)
      (let* ((_e1492514938_ _stx14924_)
             (_E1492714942_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1492514938_)))
             (_E1492614975_
              (lambda ()
                (if (gx#stx-pair? _e1492514938_)
                    (let ((_e1492814946_ (gx#syntax-e _e1492514938_)))
                      (let ((_hd1492914949_ (##car _e1492814946_))
                            (_tl1493014951_ (##cdr _e1492814946_)))
                        (if (gx#stx-pair? _tl1493014951_)
                            (let ((_e1493114954_ (gx#syntax-e _tl1493014951_)))
                              (let ((_hd1493214957_ (##car _e1493114954_))
                                    (_tl1493314959_ (##cdr _e1493114954_)))
                                (let ((_hd14962_ _hd1493214957_))
                                  (if (gx#stx-pair? _tl1493314959_)
                                      (let ((_e1493414964_
                                             (gx#syntax-e _tl1493314959_)))
                                        (let ((_hd1493514967_
                                               (##car _e1493414964_))
                                              (_tl1493614969_
                                               (##cdr _e1493414964_)))
                                          (let ((_expr14972_ _hd1493514967_))
                                            (if (gx#stx-null? _tl1493614969_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14962_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr14972_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1492714942_))
                                                (_E1492714942_)))))
                                      (_E1492714942_)))))
                            (_E1492714942_))))
                    (_E1492714942_)))))
        (_E1492614975_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14870_)
      (let* ((_e1487114884_ _stx14870_)
             (_E1487314888_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1487114884_)))
             (_E1487214920_
              (lambda ()
                (if (gx#stx-pair? _e1487114884_)
                    (let ((_e1487414892_ (gx#syntax-e _e1487114884_)))
                      (let ((_hd1487514895_ (##car _e1487414892_))
                            (_tl1487614897_ (##cdr _e1487414892_)))
                        (if (gx#stx-pair? _tl1487614897_)
                            (let ((_e1487714900_ (gx#syntax-e _tl1487614897_)))
                              (let ((_hd1487814903_ (##car _e1487714900_))
                                    (_tl1487914905_ (##cdr _e1487714900_)))
                                (let ((_hd14908_ _hd1487814903_))
                                  (if (gx#stx-pair? _tl1487914905_)
                                      (let ((_e1488014910_
                                             (gx#syntax-e _tl1487914905_)))
                                        (let ((_hd1488114913_
                                               (##car _e1488014910_))
                                              (_tl1488214915_
                                               (##cdr _e1488014910_)))
                                          (let ((_alias-id14918_
                                                 _hd1488114913_))
                                            (if (gx#stx-null? _tl1488214915_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14908_)
                        (cons (gx#core-quote-syntax__0 _alias-id14918_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1487314888_))
                                                (_E1487314888_)))))
                                      (_E1487314888_)))))
                            (_E1487314888_))))
                    (_E1487314888_)))))
        (_E1487214920_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14816_)
      (let* ((_e1481714830_ _stx14816_)
             (_E1481914834_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1481714830_)))
             (_E1481814866_
              (lambda ()
                (if (gx#stx-pair? _e1481714830_)
                    (let ((_e1482014838_ (gx#syntax-e _e1481714830_)))
                      (let ((_hd1482114841_ (##car _e1482014838_))
                            (_tl1482214843_ (##cdr _e1482014838_)))
                        (if (gx#stx-pair? _tl1482214843_)
                            (let ((_e1482314846_ (gx#syntax-e _tl1482214843_)))
                              (let ((_hd1482414849_ (##car _e1482314846_))
                                    (_tl1482514851_ (##cdr _e1482314846_)))
                                (let ((_id14854_ _hd1482414849_))
                                  (if (gx#stx-pair? _tl1482514851_)
                                      (let ((_e1482614856_
                                             (gx#syntax-e _tl1482514851_)))
                                        (let ((_hd1482714859_
                                               (##car _e1482614856_))
                                              (_tl1482814861_
                                               (##cdr _e1482614856_)))
                                          (let ((_binding-id14864_
                                                 _hd1482714859_))
                                            (if (gx#stx-null? _tl1482814861_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14854_)
                        (cons (gx#core-quote-syntax__0 _binding-id14864_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1481914834_))
                                                (_E1481914834_)))))
                                      (_E1481914834_)))))
                            (_E1481914834_))))
                    (_E1481914834_)))))
        (_E1481814866_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14786_)
      (let* ((_e1478714794_ _stx14786_)
             (_E1478914798_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1478714794_)))
             (_E1478814812_
              (lambda ()
                (if (gx#stx-pair? _e1478714794_)
                    (let ((_e1479014802_ (gx#syntax-e _e1478714794_)))
                      (let ((_hd1479114805_ (##car _e1479014802_))
                            (_tl1479214807_ (##cdr _e1479014802_)))
                        (let ((_decls14810_ _tl1479214807_))
                          (if '#t
                              (cons '%#declare _decls14810_)
                              (_E1478914798_)))))
                    (_E1478914798_)))))
        (_E1478814812_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx14756_)
      (let* ((_e1475714764_ _stx14756_)
             (_E1475914768_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1475714764_)))
             (_E1475814782_
              (lambda ()
                (if (gx#stx-pair? _e1475714764_)
                    (let ((_e1476014772_ (gx#syntax-e _e1475714764_)))
                      (let ((_hd1476114775_ (##car _e1476014772_))
                            (_tl1476214777_ (##cdr _e1476014772_)))
                        (let ((_clause14780_ _tl1476214777_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14780_))
                              (_E1475914768_)))))
                    (_E1475914768_)))))
        (_E1475814782_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14713_)
      (let* ((_e1471414724_ _stx14713_)
             (_E1471614728_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1471414724_)))
             (_E1471514752_
              (lambda ()
                (if (gx#stx-pair? _e1471414724_)
                    (let ((_e1471714732_ (gx#syntax-e _e1471414724_)))
                      (let ((_hd1471814735_ (##car _e1471714732_))
                            (_tl1471914737_ (##cdr _e1471714732_)))
                        (let ((_hd14740_ _hd1471814735_))
                          (if (gx#stx-pair? _tl1471914737_)
                              (let ((_e1472014742_
                                     (gx#syntax-e _tl1471914737_)))
                                (let ((_hd1472114745_ (##car _e1472014742_))
                                      (_tl1472214747_ (##cdr _e1472014742_)))
                                  (let ((_body14750_ _hd1472114745_))
                                    (if (gx#stx-null? _tl1472214747_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14740_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14750_)
                                                        '()))
                                            (_E1471614728_))
                                        (_E1471614728_)))))
                              (_E1471614728_)))))
                    (_E1471614728_)))))
        (_E1471514752_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14683_)
      (let* ((_e1468414691_ _stx14683_)
             (_E1468614695_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1468414691_)))
             (_E1468514709_
              (lambda ()
                (if (gx#stx-pair? _e1468414691_)
                    (let ((_e1468714699_ (gx#syntax-e _e1468414691_)))
                      (let ((_hd1468814702_ (##car _e1468714699_))
                            (_tl1468914704_ (##cdr _e1468714699_)))
                        (let ((_clauses14707_ _tl1468914704_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14707_))
                              (_E1468614695_)))))
                    (_E1468614695_)))))
        (_E1468514709_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda14616
      (lambda (_stx14618_ _form14619_)
        (let* ((_e1462014633_ _stx14618_)
               (_E1462214637_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1462014633_)))
               (_E1462114669_
                (lambda ()
                  (if (gx#stx-pair? _e1462014633_)
                      (let ((_e1462314641_ (gx#syntax-e _e1462014633_)))
                        (let ((_hd1462414644_ (##car _e1462314641_))
                              (_tl1462514646_ (##cdr _e1462314641_)))
                          (if (gx#stx-pair? _tl1462514646_)
                              (let ((_e1462614649_
                                     (gx#syntax-e _tl1462514646_)))
                                (let ((_hd1462714652_ (##car _e1462614649_))
                                      (_tl1462814654_ (##cdr _e1462614649_)))
                                  (let ((_hd14657_ _hd1462714652_))
                                    (if (gx#stx-pair? _tl1462814654_)
                                        (let ((_e1462914659_
                                               (gx#syntax-e _tl1462814654_)))
                                          (let ((_hd1463014662_
                                                 (##car _e1462914659_))
                                                (_tl1463114664_
                                                 (##cdr _e1462914659_)))
                                            (let ((_body14667_ _hd1463014662_))
                                              (if (gx#stx-null? _tl1463114664_)
                                                  (if '#t
                                                      (cons _form14619_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14657_)
                          (cons (gx#core-compile-top-syntax _body14667_) '())))
              (_E1462214637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1462214637_)))))
                                        (_E1462214637_)))))
                              (_E1462214637_))))
                      (_E1462214637_)))))
          (_E1462114669_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14676_)
          (let ((_form14678_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda14616
             _stx14676_
             _form14678_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15582_
          (let ((_g15581_ (length _g15582_)))
            (cond ((fx= _g15581_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15582_))
                  ((fx= _g15581_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda14616
                          _g15582_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15582_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14615_)
      (gx#core-compile-top-let-values%__opt-lambda14616
       _stx14615_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14613_)
      (gx#core-compile-top-let-values%__opt-lambda14616
       _stx14613_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14572_)
      (let* ((_e1457314583_ _stx14572_)
             (_E1457514587_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1457314583_)))
             (_E1457414609_
              (lambda ()
                (if (gx#stx-pair? _e1457314583_)
                    (let ((_e1457614591_ (gx#syntax-e _e1457314583_)))
                      (let ((_hd1457714594_ (##car _e1457614591_))
                            (_tl1457814596_ (##cdr _e1457614591_)))
                        (if (gx#stx-pair? _tl1457814596_)
                            (let ((_e1457914599_ (gx#syntax-e _tl1457814596_)))
                              (let ((_hd1458014602_ (##car _e1457914599_))
                                    (_tl1458114604_ (##cdr _e1457914599_)))
                                (let ((_e14607_ _hd1458014602_))
                                  (if (gx#stx-null? _tl1458114604_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14607_)
                                                      '()))
                                          (_E1457514587_))
                                      (_E1457514587_)))))
                            (_E1457514587_))))
                    (_E1457514587_)))))
        (_E1457414609_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14531_)
      (let* ((_e1453214542_ _stx14531_)
             (_E1453414546_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1453214542_)))
             (_E1453314568_
              (lambda ()
                (if (gx#stx-pair? _e1453214542_)
                    (let ((_e1453514550_ (gx#syntax-e _e1453214542_)))
                      (let ((_hd1453614553_ (##car _e1453514550_))
                            (_tl1453714555_ (##cdr _e1453514550_)))
                        (if (gx#stx-pair? _tl1453714555_)
                            (let ((_e1453814558_ (gx#syntax-e _tl1453714555_)))
                              (let ((_hd1453914561_ (##car _e1453814558_))
                                    (_tl1454014563_ (##cdr _e1453814558_)))
                                (let ((_e14566_ _hd1453914561_))
                                  (if (gx#stx-null? _tl1454014563_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14566_)
                                                      '()))
                                          (_E1453414546_))
                                      (_E1453414546_)))))
                            (_E1453414546_))))
                    (_E1453414546_)))))
        (_E1453314568_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14488_)
      (let* ((_e1448914499_ _stx14488_)
             (_E1449114503_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1448914499_)))
             (_E1449014527_
              (lambda ()
                (if (gx#stx-pair? _e1448914499_)
                    (let ((_e1449214507_ (gx#syntax-e _e1448914499_)))
                      (let ((_hd1449314510_ (##car _e1449214507_))
                            (_tl1449414512_ (##cdr _e1449214507_)))
                        (if (gx#stx-pair? _tl1449414512_)
                            (let ((_e1449514515_ (gx#syntax-e _tl1449414512_)))
                              (let ((_hd1449614518_ (##car _e1449514515_))
                                    (_tl1449714520_ (##cdr _e1449514515_)))
                                (let* ((_rator14523_ _hd1449614518_)
                                       (_args14525_ _tl1449714520_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14523_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14525_))
                                      (_E1449114503_)))))
                            (_E1449114503_))))
                    (_E1449114503_)))))
        (_E1449014527_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14421_)
      (let* ((_e1442214438_ _stx14421_)
             (_E1442414442_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1442214438_)))
             (_E1442314484_
              (lambda ()
                (if (gx#stx-pair? _e1442214438_)
                    (let ((_e1442514446_ (gx#syntax-e _e1442214438_)))
                      (let ((_hd1442614449_ (##car _e1442514446_))
                            (_tl1442714451_ (##cdr _e1442514446_)))
                        (if (gx#stx-pair? _tl1442714451_)
                            (let ((_e1442814454_ (gx#syntax-e _tl1442714451_)))
                              (let ((_hd1442914457_ (##car _e1442814454_))
                                    (_tl1443014459_ (##cdr _e1442814454_)))
                                (let ((_test14462_ _hd1442914457_))
                                  (if (gx#stx-pair? _tl1443014459_)
                                      (let ((_e1443114464_
                                             (gx#syntax-e _tl1443014459_)))
                                        (let ((_hd1443214467_
                                               (##car _e1443114464_))
                                              (_tl1443314469_
                                               (##cdr _e1443114464_)))
                                          (let ((_K14472_ _hd1443214467_))
                                            (if (gx#stx-pair? _tl1443314469_)
                                                (let ((_e1443414474_
                                                       (gx#syntax-e
                                                        _tl1443314469_)))
                                                  (let ((_hd1443514477_
                                                         (##car _e1443414474_))
                                                        (_tl1443614479_
                                                         (##cdr _e1443414474_)))
                                                    (let ((_E14482_
                                                           _hd1443514477_))
                                                      (if (gx#stx-null?
                                                           _tl1443614479_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14462_)
                                  (cons (gx#core-compile-top-syntax _K14472_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14482_)
                                              '()))))
                      (_E1442414442_))
                  (_E1442414442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1442414442_)))))
                                      (_E1442414442_)))))
                            (_E1442414442_))))
                    (_E1442414442_)))))
        (_E1442314484_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14380_)
      (let* ((_e1438114391_ _stx14380_)
             (_E1438314395_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1438114391_)))
             (_E1438214417_
              (lambda ()
                (if (gx#stx-pair? _e1438114391_)
                    (let ((_e1438414399_ (gx#syntax-e _e1438114391_)))
                      (let ((_hd1438514402_ (##car _e1438414399_))
                            (_tl1438614404_ (##cdr _e1438414399_)))
                        (if (gx#stx-pair? _tl1438614404_)
                            (let ((_e1438714407_ (gx#syntax-e _tl1438614404_)))
                              (let ((_hd1438814410_ (##car _e1438714407_))
                                    (_tl1438914412_ (##cdr _e1438714407_)))
                                (let ((_id14415_ _hd1438814410_))
                                  (if (gx#stx-null? _tl1438914412_)
                                      (if (gx#identifier? _id14415_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14415_)
                                                      '()))
                                          (_E1438314395_))
                                      (_E1438314395_)))))
                            (_E1438314395_))))
                    (_E1438314395_)))))
        (_E1438214417_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14326_)
      (let* ((_e1432714340_ _stx14326_)
             (_E1432914344_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1432714340_)))
             (_E1432814376_
              (lambda ()
                (if (gx#stx-pair? _e1432714340_)
                    (let ((_e1433014348_ (gx#syntax-e _e1432714340_)))
                      (let ((_hd1433114351_ (##car _e1433014348_))
                            (_tl1433214353_ (##cdr _e1433014348_)))
                        (if (gx#stx-pair? _tl1433214353_)
                            (let ((_e1433314356_ (gx#syntax-e _tl1433214353_)))
                              (let ((_hd1433414359_ (##car _e1433314356_))
                                    (_tl1433514361_ (##cdr _e1433314356_)))
                                (let ((_id14364_ _hd1433414359_))
                                  (if (gx#stx-pair? _tl1433514361_)
                                      (let ((_e1433614366_
                                             (gx#syntax-e _tl1433514361_)))
                                        (let ((_hd1433714369_
                                               (##car _e1433614366_))
                                              (_tl1433814371_
                                               (##cdr _e1433614366_)))
                                          (let ((_expr14374_ _hd1433714369_))
                                            (if (gx#stx-null? _tl1433814371_)
                                                (if (gx#identifier? _id14364_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14364_)
                        (cons (gx#core-compile-top-syntax _expr14374_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1432914344_))
                                                (_E1432914344_)))))
                                      (_E1432914344_)))))
                            (_E1432914344_))))
                    (_E1432914344_)))))
        (_E1432814376_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14321_)
      (let ((_$e14323_ (gx#resolve-identifier__0 _id14321_)))
        (if _$e14323_
            (##structure-ref _$e14323_ '1 gx#binding::t '#f)
            _id14321_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14319_)
      (if (gx#identifier? _hd14319_)
          (gx#core-compile-top-runtime-ref _hd14319_)
          '#f))))
