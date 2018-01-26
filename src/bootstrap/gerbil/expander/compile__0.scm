(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15419_)
      (let* ((_e1542015427_ _stx15419_)
             (_E1542215431_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1542015427_)))
             (_E1542115445_
              (lambda ()
                (if (gx#stx-pair? _e1542015427_)
                    (let ((_e1542315435_ (gx#syntax-e _e1542015427_)))
                      (let ((_hd1542415438_ (##car _e1542315435_))
                            (_tl1542515440_ (##cdr _e1542315435_)))
                        (let ((_form15443_ _hd1542415438_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15443_)
                               'compile-top-syntax
                               _stx15419_)
                              (_E1542215431_)))))
                    (_E1542215431_)))))
        (_E1542115445_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15379_ _stx15380_)
      (let* ((_self1538115389_ _self15379_)
             (_E1538315393_
              (lambda () (error '"No clause matching" _self1538115389_)))
             (_K1538415405_
              (lambda (_K15396_)
                (let ((_$e15398_ (gx#stx-source _stx15380_)))
                  (if _$e15398_
                      ((lambda (_g1540015402_)
                         (gx#stx-wrap-source
                          (_K15396_ _stx15380_)
                          _g1540015402_))
                       _$e15398_)
                      (_K15396_ _stx15380_))))))
        (if (##structure-instance-of?
             _self1538115389_
             (##type-id gx#core-expander::t))
            (let* ((_e1538515408_ (##vector-ref _self1538115389_ '1))
                   (_e1538615411_ (##vector-ref _self1538115389_ '2))
                   (_e1538715414_ (##vector-ref _self1538115389_ '3))
                   (_K15417_ _e1538715414_))
              (_K1538415405_ _K15417_))
            (_E1538315393_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15253_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15253_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15223_)
      (let* ((_e1522415231_ _stx15223_)
             (_E1522615235_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1522415231_)))
             (_E1522515249_
              (lambda ()
                (if (gx#stx-pair? _e1522415231_)
                    (let ((_e1522715239_ (gx#syntax-e _e1522415231_)))
                      (let ((_hd1522815242_ (##car _e1522715239_))
                            (_tl1522915244_ (##cdr _e1522715239_)))
                        (let ((_body15247_ _tl1522915244_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15247_))
                              (_E1522615235_)))))
                    (_E1522615235_)))))
        (_E1522515249_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15192_)
      (let* ((_e1519315200_ _stx15192_)
             (_E1519515204_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1519315200_)))
             (_E1519415219_
              (lambda ()
                (if (gx#stx-pair? _e1519315200_)
                    (let ((_e1519615208_ (gx#syntax-e _e1519315200_)))
                      (let ((_hd1519715211_ (##car _e1519615208_))
                            (_tl1519815213_ (##cdr _e1519615208_)))
                        (let ((_body15216_ _tl1519815213_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15216_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1519515204_)))))
                    (_E1519515204_)))))
        (_E1519415219_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15162_)
      (let* ((_e1516315170_ _stx15162_)
             (_E1516515174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1516315170_)))
             (_E1516415188_
              (lambda ()
                (if (gx#stx-pair? _e1516315170_)
                    (let ((_e1516615178_ (gx#syntax-e _e1516315170_)))
                      (let ((_hd1516715181_ (##car _e1516615178_))
                            (_tl1516815183_ (##cdr _e1516615178_)))
                        (let ((_body15186_ _tl1516815183_))
                          (if '#t
                              (cons '%#begin-foreign _body15186_)
                              (_E1516515174_)))))
                    (_E1516515174_)))))
        (_E1516415188_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15108_)
      (let* ((_e1510915122_ _stx15108_)
             (_E1511115126_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1510915122_)))
             (_E1511015158_
              (lambda ()
                (if (gx#stx-pair? _e1510915122_)
                    (let ((_e1511215130_ (gx#syntax-e _e1510915122_)))
                      (let ((_hd1511315133_ (##car _e1511215130_))
                            (_tl1511415135_ (##cdr _e1511215130_)))
                        (if (gx#stx-pair? _tl1511415135_)
                            (let ((_e1511515138_ (gx#syntax-e _tl1511415135_)))
                              (let ((_hd1511615141_ (##car _e1511515138_))
                                    (_tl1511715143_ (##cdr _e1511515138_)))
                                (let ((_ann15146_ _hd1511615141_))
                                  (if (gx#stx-pair? _tl1511715143_)
                                      (let ((_e1511815148_
                                             (gx#syntax-e _tl1511715143_)))
                                        (let ((_hd1511915151_
                                               (##car _e1511815148_))
                                              (_tl1512015153_
                                               (##cdr _e1511815148_)))
                                          (let ((_expr15156_ _hd1511915151_))
                                            (if (gx#stx-null? _tl1512015153_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15156_)
                                                    (_E1511115126_))
                                                (_E1511115126_)))))
                                      (_E1511115126_)))))
                            (_E1511115126_))))
                    (_E1511115126_)))))
        (_E1511015158_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15078_)
      (let* ((_e1507915086_ _stx15078_)
             (_E1508115090_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1507915086_)))
             (_E1508015104_
              (lambda ()
                (if (gx#stx-pair? _e1507915086_)
                    (let ((_e1508215094_ (gx#syntax-e _e1507915086_)))
                      (let ((_hd1508315097_ (##car _e1508215094_))
                            (_tl1508415099_ (##cdr _e1508215094_)))
                        (let ((_body15102_ _tl1508415099_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15102_))
                              (_E1508115090_)))))
                    (_E1508115090_)))))
        (_E1508015104_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15035_)
      (let* ((_e1503615046_ _stx15035_)
             (_E1503815050_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1503615046_)))
             (_E1503715074_
              (lambda ()
                (if (gx#stx-pair? _e1503615046_)
                    (let ((_e1503915054_ (gx#syntax-e _e1503615046_)))
                      (let ((_hd1504015057_ (##car _e1503915054_))
                            (_tl1504115059_ (##cdr _e1503915054_)))
                        (if (gx#stx-pair? _tl1504115059_)
                            (let ((_e1504215062_ (gx#syntax-e _tl1504115059_)))
                              (let ((_hd1504315065_ (##car _e1504215062_))
                                    (_tl1504415067_ (##cdr _e1504215062_)))
                                (let* ((_hd15070_ _hd1504315065_)
                                       (_body15072_ _tl1504415067_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd15070_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body15072_))
                                      (_E1503815050_)))))
                            (_E1503815050_))))
                    (_E1503815050_)))))
        (_E1503715074_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15005_)
      (let* ((_e1500615013_ _stx15005_)
             (_E1500815017_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1500615013_)))
             (_E1500715031_
              (lambda ()
                (if (gx#stx-pair? _e1500615013_)
                    (let ((_e1500915021_ (gx#syntax-e _e1500615013_)))
                      (let ((_hd1501015024_ (##car _e1500915021_))
                            (_tl1501115026_ (##cdr _e1500915021_)))
                        (let ((_body15029_ _tl1501115026_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15029_))
                              (_E1500815017_)))))
                    (_E1500815017_)))))
        (_E1500715031_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx14975_)
      (let* ((_e1497614983_ _stx14975_)
             (_E1497814987_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1497614983_)))
             (_E1497715001_
              (lambda ()
                (if (gx#stx-pair? _e1497614983_)
                    (let ((_e1497914991_ (gx#syntax-e _e1497614983_)))
                      (let ((_hd1498014994_ (##car _e1497914991_))
                            (_tl1498114996_ (##cdr _e1497914991_)))
                        (let ((_body14999_ _tl1498114996_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body14999_))
                              (_E1497814987_)))))
                    (_E1497814987_)))))
        (_E1497715001_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx14900_)
      (letrec ((_generate14902_
                (lambda (_hd14932_)
                  (let* ((_e1493314943_ _hd14932_)
                         (_E1493514947_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1493314943_)))
                         (_E1493414971_
                          (lambda ()
                            (if (gx#stx-pair? _e1493314943_)
                                (let ((_e1493614951_
                                       (gx#syntax-e _e1493314943_)))
                                  (let ((_hd1493714954_ (##car _e1493614951_))
                                        (_tl1493814956_ (##cdr _e1493614951_)))
                                    (let ((_id14959_ _hd1493714954_))
                                      (if (gx#stx-pair? _tl1493814956_)
                                          (let ((_e1493914961_
                                                 (gx#syntax-e _tl1493814956_)))
                                            (let ((_hd1494014964_
                                                   (##car _e1493914961_))
                                                  (_tl1494114966_
                                                   (##cdr _e1493914961_)))
                                              (let ((_eid14969_
                                                     _hd1494014964_))
                                                (if (gx#stx-null?
                                                     _tl1494114966_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id14959_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid14969_)
                            '()))
                (_E1493514947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1493514947_)))))
                                          (_E1493514947_)))))
                                (_E1493514947_)))))
                    (_E1493414971_)))))
        (let* ((_e1490314910_ _stx14900_)
               (_E1490514914_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1490314910_)))
               (_E1490414928_
                (lambda ()
                  (if (gx#stx-pair? _e1490314910_)
                      (let ((_e1490614918_ (gx#syntax-e _e1490314910_)))
                        (let ((_hd1490714921_ (##car _e1490614918_))
                              (_tl1490814923_ (##cdr _e1490614918_)))
                          (let ((_body14926_ _tl1490814923_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate14902_
                                       _body14926_))
                                (_E1490514914_)))))
                      (_E1490514914_)))))
          (_E1490414928_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx14846_)
      (let* ((_e1484714860_ _stx14846_)
             (_E1484914864_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1484714860_)))
             (_E1484814896_
              (lambda ()
                (if (gx#stx-pair? _e1484714860_)
                    (let ((_e1485014868_ (gx#syntax-e _e1484714860_)))
                      (let ((_hd1485114871_ (##car _e1485014868_))
                            (_tl1485214873_ (##cdr _e1485014868_)))
                        (if (gx#stx-pair? _tl1485214873_)
                            (let ((_e1485314876_ (gx#syntax-e _tl1485214873_)))
                              (let ((_hd1485414879_ (##car _e1485314876_))
                                    (_tl1485514881_ (##cdr _e1485314876_)))
                                (let ((_hd14884_ _hd1485414879_))
                                  (if (gx#stx-pair? _tl1485514881_)
                                      (let ((_e1485614886_
                                             (gx#syntax-e _tl1485514881_)))
                                        (let ((_hd1485714889_
                                               (##car _e1485614886_))
                                              (_tl1485814891_
                                               (##cdr _e1485614886_)))
                                          (let ((_expr14894_ _hd1485714889_))
                                            (if (gx#stx-null? _tl1485814891_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd14884_)
                        (cons (gx#core-compile-top-syntax _expr14894_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1484914864_))
                                                (_E1484914864_)))))
                                      (_E1484914864_)))))
                            (_E1484914864_))))
                    (_E1484914864_)))))
        (_E1484814896_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14791_)
      (let* ((_e1479214805_ _stx14791_)
             (_E1479414809_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1479214805_)))
             (_E1479314842_
              (lambda ()
                (if (gx#stx-pair? _e1479214805_)
                    (let ((_e1479514813_ (gx#syntax-e _e1479214805_)))
                      (let ((_hd1479614816_ (##car _e1479514813_))
                            (_tl1479714818_ (##cdr _e1479514813_)))
                        (if (gx#stx-pair? _tl1479714818_)
                            (let ((_e1479814821_ (gx#syntax-e _tl1479714818_)))
                              (let ((_hd1479914824_ (##car _e1479814821_))
                                    (_tl1480014826_ (##cdr _e1479814821_)))
                                (let ((_hd14829_ _hd1479914824_))
                                  (if (gx#stx-pair? _tl1480014826_)
                                      (let ((_e1480114831_
                                             (gx#syntax-e _tl1480014826_)))
                                        (let ((_hd1480214834_
                                               (##car _e1480114831_))
                                              (_tl1480314836_
                                               (##cdr _e1480114831_)))
                                          (let ((_expr14839_ _hd1480214834_))
                                            (if (gx#stx-null? _tl1480314836_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14829_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr14839_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1479414809_))
                                                (_E1479414809_)))))
                                      (_E1479414809_)))))
                            (_E1479414809_))))
                    (_E1479414809_)))))
        (_E1479314842_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14737_)
      (let* ((_e1473814751_ _stx14737_)
             (_E1474014755_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1473814751_)))
             (_E1473914787_
              (lambda ()
                (if (gx#stx-pair? _e1473814751_)
                    (let ((_e1474114759_ (gx#syntax-e _e1473814751_)))
                      (let ((_hd1474214762_ (##car _e1474114759_))
                            (_tl1474314764_ (##cdr _e1474114759_)))
                        (if (gx#stx-pair? _tl1474314764_)
                            (let ((_e1474414767_ (gx#syntax-e _tl1474314764_)))
                              (let ((_hd1474514770_ (##car _e1474414767_))
                                    (_tl1474614772_ (##cdr _e1474414767_)))
                                (let ((_hd14775_ _hd1474514770_))
                                  (if (gx#stx-pair? _tl1474614772_)
                                      (let ((_e1474714777_
                                             (gx#syntax-e _tl1474614772_)))
                                        (let ((_hd1474814780_
                                               (##car _e1474714777_))
                                              (_tl1474914782_
                                               (##cdr _e1474714777_)))
                                          (let ((_alias-id14785_
                                                 _hd1474814780_))
                                            (if (gx#stx-null? _tl1474914782_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14775_)
                        (cons (gx#core-quote-syntax__0 _alias-id14785_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1474014755_))
                                                (_E1474014755_)))))
                                      (_E1474014755_)))))
                            (_E1474014755_))))
                    (_E1474014755_)))))
        (_E1473914787_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14683_)
      (let* ((_e1468414697_ _stx14683_)
             (_E1468614701_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1468414697_)))
             (_E1468514733_
              (lambda ()
                (if (gx#stx-pair? _e1468414697_)
                    (let ((_e1468714705_ (gx#syntax-e _e1468414697_)))
                      (let ((_hd1468814708_ (##car _e1468714705_))
                            (_tl1468914710_ (##cdr _e1468714705_)))
                        (if (gx#stx-pair? _tl1468914710_)
                            (let ((_e1469014713_ (gx#syntax-e _tl1468914710_)))
                              (let ((_hd1469114716_ (##car _e1469014713_))
                                    (_tl1469214718_ (##cdr _e1469014713_)))
                                (let ((_id14721_ _hd1469114716_))
                                  (if (gx#stx-pair? _tl1469214718_)
                                      (let ((_e1469314723_
                                             (gx#syntax-e _tl1469214718_)))
                                        (let ((_hd1469414726_
                                               (##car _e1469314723_))
                                              (_tl1469514728_
                                               (##cdr _e1469314723_)))
                                          (let ((_binding-id14731_
                                                 _hd1469414726_))
                                            (if (gx#stx-null? _tl1469514728_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14721_)
                        (cons (gx#core-quote-syntax__0 _binding-id14731_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1468614701_))
                                                (_E1468614701_)))))
                                      (_E1468614701_)))))
                            (_E1468614701_))))
                    (_E1468614701_)))))
        (_E1468514733_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14653_)
      (let* ((_e1465414661_ _stx14653_)
             (_E1465614665_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1465414661_)))
             (_E1465514679_
              (lambda ()
                (if (gx#stx-pair? _e1465414661_)
                    (let ((_e1465714669_ (gx#syntax-e _e1465414661_)))
                      (let ((_hd1465814672_ (##car _e1465714669_))
                            (_tl1465914674_ (##cdr _e1465714669_)))
                        (let ((_decls14677_ _tl1465914674_))
                          (if '#t
                              (cons '%#declare _decls14677_)
                              (_E1465614665_)))))
                    (_E1465614665_)))))
        (_E1465514679_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx14623_)
      (let* ((_e1462414631_ _stx14623_)
             (_E1462614635_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1462414631_)))
             (_E1462514649_
              (lambda ()
                (if (gx#stx-pair? _e1462414631_)
                    (let ((_e1462714639_ (gx#syntax-e _e1462414631_)))
                      (let ((_hd1462814642_ (##car _e1462714639_))
                            (_tl1462914644_ (##cdr _e1462714639_)))
                        (let ((_clause14647_ _tl1462914644_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14647_))
                              (_E1462614635_)))))
                    (_E1462614635_)))))
        (_E1462514649_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14580_)
      (let* ((_e1458114591_ _stx14580_)
             (_E1458314595_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1458114591_)))
             (_E1458214619_
              (lambda ()
                (if (gx#stx-pair? _e1458114591_)
                    (let ((_e1458414599_ (gx#syntax-e _e1458114591_)))
                      (let ((_hd1458514602_ (##car _e1458414599_))
                            (_tl1458614604_ (##cdr _e1458414599_)))
                        (let ((_hd14607_ _hd1458514602_))
                          (if (gx#stx-pair? _tl1458614604_)
                              (let ((_e1458714609_
                                     (gx#syntax-e _tl1458614604_)))
                                (let ((_hd1458814612_ (##car _e1458714609_))
                                      (_tl1458914614_ (##cdr _e1458714609_)))
                                  (let ((_body14617_ _hd1458814612_))
                                    (if (gx#stx-null? _tl1458914614_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14607_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14617_)
                                                        '()))
                                            (_E1458314595_))
                                        (_E1458314595_)))))
                              (_E1458314595_)))))
                    (_E1458314595_)))))
        (_E1458214619_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14550_)
      (let* ((_e1455114558_ _stx14550_)
             (_E1455314562_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1455114558_)))
             (_E1455214576_
              (lambda ()
                (if (gx#stx-pair? _e1455114558_)
                    (let ((_e1455414566_ (gx#syntax-e _e1455114558_)))
                      (let ((_hd1455514569_ (##car _e1455414566_))
                            (_tl1455614571_ (##cdr _e1455414566_)))
                        (let ((_clauses14574_ _tl1455614571_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14574_))
                              (_E1455314562_)))))
                    (_E1455314562_)))))
        (_E1455214576_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda14483
      (lambda (_stx14485_ _form14486_)
        (let* ((_e1448714500_ _stx14485_)
               (_E1448914504_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1448714500_)))
               (_E1448814536_
                (lambda ()
                  (if (gx#stx-pair? _e1448714500_)
                      (let ((_e1449014508_ (gx#syntax-e _e1448714500_)))
                        (let ((_hd1449114511_ (##car _e1449014508_))
                              (_tl1449214513_ (##cdr _e1449014508_)))
                          (if (gx#stx-pair? _tl1449214513_)
                              (let ((_e1449314516_
                                     (gx#syntax-e _tl1449214513_)))
                                (let ((_hd1449414519_ (##car _e1449314516_))
                                      (_tl1449514521_ (##cdr _e1449314516_)))
                                  (let ((_hd14524_ _hd1449414519_))
                                    (if (gx#stx-pair? _tl1449514521_)
                                        (let ((_e1449614526_
                                               (gx#syntax-e _tl1449514521_)))
                                          (let ((_hd1449714529_
                                                 (##car _e1449614526_))
                                                (_tl1449814531_
                                                 (##cdr _e1449614526_)))
                                            (let ((_body14534_ _hd1449714529_))
                                              (if (gx#stx-null? _tl1449814531_)
                                                  (if '#t
                                                      (cons _form14486_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14524_)
                          (cons (gx#core-compile-top-syntax _body14534_) '())))
              (_E1448914504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1448914504_)))))
                                        (_E1448914504_)))))
                              (_E1448914504_))))
                      (_E1448914504_)))))
          (_E1448814536_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14543_)
          (let ((_form14545_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda14483
             _stx14543_
             _form14545_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15449_
          (let ((_g15448_ (length _g15449_)))
            (cond ((fx= _g15448_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15449_))
                  ((fx= _g15448_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda14483
                          _g15449_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15449_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14482_)
      (gx#core-compile-top-let-values%__opt-lambda14483
       _stx14482_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14480_)
      (gx#core-compile-top-let-values%__opt-lambda14483
       _stx14480_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14439_)
      (let* ((_e1444014450_ _stx14439_)
             (_E1444214454_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1444014450_)))
             (_E1444114476_
              (lambda ()
                (if (gx#stx-pair? _e1444014450_)
                    (let ((_e1444314458_ (gx#syntax-e _e1444014450_)))
                      (let ((_hd1444414461_ (##car _e1444314458_))
                            (_tl1444514463_ (##cdr _e1444314458_)))
                        (if (gx#stx-pair? _tl1444514463_)
                            (let ((_e1444614466_ (gx#syntax-e _tl1444514463_)))
                              (let ((_hd1444714469_ (##car _e1444614466_))
                                    (_tl1444814471_ (##cdr _e1444614466_)))
                                (let ((_e14474_ _hd1444714469_))
                                  (if (gx#stx-null? _tl1444814471_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14474_)
                                                      '()))
                                          (_E1444214454_))
                                      (_E1444214454_)))))
                            (_E1444214454_))))
                    (_E1444214454_)))))
        (_E1444114476_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14398_)
      (let* ((_e1439914409_ _stx14398_)
             (_E1440114413_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1439914409_)))
             (_E1440014435_
              (lambda ()
                (if (gx#stx-pair? _e1439914409_)
                    (let ((_e1440214417_ (gx#syntax-e _e1439914409_)))
                      (let ((_hd1440314420_ (##car _e1440214417_))
                            (_tl1440414422_ (##cdr _e1440214417_)))
                        (if (gx#stx-pair? _tl1440414422_)
                            (let ((_e1440514425_ (gx#syntax-e _tl1440414422_)))
                              (let ((_hd1440614428_ (##car _e1440514425_))
                                    (_tl1440714430_ (##cdr _e1440514425_)))
                                (let ((_e14433_ _hd1440614428_))
                                  (if (gx#stx-null? _tl1440714430_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14433_)
                                                      '()))
                                          (_E1440114413_))
                                      (_E1440114413_)))))
                            (_E1440114413_))))
                    (_E1440114413_)))))
        (_E1440014435_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14355_)
      (let* ((_e1435614366_ _stx14355_)
             (_E1435814370_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1435614366_)))
             (_E1435714394_
              (lambda ()
                (if (gx#stx-pair? _e1435614366_)
                    (let ((_e1435914374_ (gx#syntax-e _e1435614366_)))
                      (let ((_hd1436014377_ (##car _e1435914374_))
                            (_tl1436114379_ (##cdr _e1435914374_)))
                        (if (gx#stx-pair? _tl1436114379_)
                            (let ((_e1436214382_ (gx#syntax-e _tl1436114379_)))
                              (let ((_hd1436314385_ (##car _e1436214382_))
                                    (_tl1436414387_ (##cdr _e1436214382_)))
                                (let* ((_rator14390_ _hd1436314385_)
                                       (_args14392_ _tl1436414387_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14390_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14392_))
                                      (_E1435814370_)))))
                            (_E1435814370_))))
                    (_E1435814370_)))))
        (_E1435714394_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14288_)
      (let* ((_e1428914305_ _stx14288_)
             (_E1429114309_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1428914305_)))
             (_E1429014351_
              (lambda ()
                (if (gx#stx-pair? _e1428914305_)
                    (let ((_e1429214313_ (gx#syntax-e _e1428914305_)))
                      (let ((_hd1429314316_ (##car _e1429214313_))
                            (_tl1429414318_ (##cdr _e1429214313_)))
                        (if (gx#stx-pair? _tl1429414318_)
                            (let ((_e1429514321_ (gx#syntax-e _tl1429414318_)))
                              (let ((_hd1429614324_ (##car _e1429514321_))
                                    (_tl1429714326_ (##cdr _e1429514321_)))
                                (let ((_test14329_ _hd1429614324_))
                                  (if (gx#stx-pair? _tl1429714326_)
                                      (let ((_e1429814331_
                                             (gx#syntax-e _tl1429714326_)))
                                        (let ((_hd1429914334_
                                               (##car _e1429814331_))
                                              (_tl1430014336_
                                               (##cdr _e1429814331_)))
                                          (let ((_K14339_ _hd1429914334_))
                                            (if (gx#stx-pair? _tl1430014336_)
                                                (let ((_e1430114341_
                                                       (gx#syntax-e
                                                        _tl1430014336_)))
                                                  (let ((_hd1430214344_
                                                         (##car _e1430114341_))
                                                        (_tl1430314346_
                                                         (##cdr _e1430114341_)))
                                                    (let ((_E14349_
                                                           _hd1430214344_))
                                                      (if (gx#stx-null?
                                                           _tl1430314346_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14329_)
                                  (cons (gx#core-compile-top-syntax _K14339_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14349_)
                                              '()))))
                      (_E1429114309_))
                  (_E1429114309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1429114309_)))))
                                      (_E1429114309_)))))
                            (_E1429114309_))))
                    (_E1429114309_)))))
        (_E1429014351_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14247_)
      (let* ((_e1424814258_ _stx14247_)
             (_E1425014262_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1424814258_)))
             (_E1424914284_
              (lambda ()
                (if (gx#stx-pair? _e1424814258_)
                    (let ((_e1425114266_ (gx#syntax-e _e1424814258_)))
                      (let ((_hd1425214269_ (##car _e1425114266_))
                            (_tl1425314271_ (##cdr _e1425114266_)))
                        (if (gx#stx-pair? _tl1425314271_)
                            (let ((_e1425414274_ (gx#syntax-e _tl1425314271_)))
                              (let ((_hd1425514277_ (##car _e1425414274_))
                                    (_tl1425614279_ (##cdr _e1425414274_)))
                                (let ((_id14282_ _hd1425514277_))
                                  (if (gx#stx-null? _tl1425614279_)
                                      (if (gx#identifier? _id14282_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14282_)
                                                      '()))
                                          (_E1425014262_))
                                      (_E1425014262_)))))
                            (_E1425014262_))))
                    (_E1425014262_)))))
        (_E1424914284_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14193_)
      (let* ((_e1419414207_ _stx14193_)
             (_E1419614211_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1419414207_)))
             (_E1419514243_
              (lambda ()
                (if (gx#stx-pair? _e1419414207_)
                    (let ((_e1419714215_ (gx#syntax-e _e1419414207_)))
                      (let ((_hd1419814218_ (##car _e1419714215_))
                            (_tl1419914220_ (##cdr _e1419714215_)))
                        (if (gx#stx-pair? _tl1419914220_)
                            (let ((_e1420014223_ (gx#syntax-e _tl1419914220_)))
                              (let ((_hd1420114226_ (##car _e1420014223_))
                                    (_tl1420214228_ (##cdr _e1420014223_)))
                                (let ((_id14231_ _hd1420114226_))
                                  (if (gx#stx-pair? _tl1420214228_)
                                      (let ((_e1420314233_
                                             (gx#syntax-e _tl1420214228_)))
                                        (let ((_hd1420414236_
                                               (##car _e1420314233_))
                                              (_tl1420514238_
                                               (##cdr _e1420314233_)))
                                          (let ((_expr14241_ _hd1420414236_))
                                            (if (gx#stx-null? _tl1420514238_)
                                                (if (gx#identifier? _id14231_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14231_)
                        (cons (gx#core-compile-top-syntax _expr14241_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1419614211_))
                                                (_E1419614211_)))))
                                      (_E1419614211_)))))
                            (_E1419614211_))))
                    (_E1419614211_)))))
        (_E1419514243_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14188_)
      (let ((_$e14190_ (gx#resolve-identifier__0 _id14188_)))
        (if _$e14190_
            (##structure-ref _$e14190_ '1 gx#binding::t '#f)
            _id14188_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14186_)
      (if (gx#identifier? _hd14186_)
          (gx#core-compile-top-runtime-ref _hd14186_)
          '#f))))
