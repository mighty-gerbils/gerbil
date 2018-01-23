(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15346_)
      (let* ((_e1534715354_ _stx15346_)
             (_E1534915358_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1534715354_)))
             (_E1534815372_
              (lambda ()
                (if (gx#stx-pair? _e1534715354_)
                    (let ((_e1535015362_ (gx#syntax-e _e1534715354_)))
                      (let ((_hd1535115365_ (##car _e1535015362_))
                            (_tl1535215367_ (##cdr _e1535015362_)))
                        (let ((_form15370_ _hd1535115365_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15370_)
                               'compile-top-syntax
                               _stx15346_)
                              (_E1534915358_)))))
                    (_E1534915358_)))))
        (_E1534815372_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15306_ _stx15307_)
      (let* ((_self1530815316_ _self15306_)
             (_E1531015320_
              (lambda () (error '"No clause matching" _self1530815316_)))
             (_K1531115332_
              (lambda (_K15323_)
                (let ((_$e15325_ (gx#stx-source _stx15307_)))
                  (if _$e15325_
                      ((lambda (_g1532715329_)
                         (gx#stx-wrap-source
                          (_K15323_ _stx15307_)
                          _g1532715329_))
                       _$e15325_)
                      (_K15323_ _stx15307_))))))
        (if (##structure-instance-of?
             _self1530815316_
             (##type-id gx#core-expander::t))
            (let* ((_e1531215335_ (##vector-ref _self1530815316_ '1))
                   (_e1531315338_ (##vector-ref _self1530815316_ '2))
                   (_e1531415341_ (##vector-ref _self1530815316_ '3))
                   (_K15344_ _e1531415341_))
              (_K1531115332_ _K15344_))
            (_E1531015320_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15180_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15180_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15150_)
      (let* ((_e1515115158_ _stx15150_)
             (_E1515315162_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1515115158_)))
             (_E1515215176_
              (lambda ()
                (if (gx#stx-pair? _e1515115158_)
                    (let ((_e1515415166_ (gx#syntax-e _e1515115158_)))
                      (let ((_hd1515515169_ (##car _e1515415166_))
                            (_tl1515615171_ (##cdr _e1515415166_)))
                        (let ((_body15174_ _tl1515615171_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15174_))
                              (_E1515315162_)))))
                    (_E1515315162_)))))
        (_E1515215176_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15119_)
      (let* ((_e1512015127_ _stx15119_)
             (_E1512215131_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1512015127_)))
             (_E1512115146_
              (lambda ()
                (if (gx#stx-pair? _e1512015127_)
                    (let ((_e1512315135_ (gx#syntax-e _e1512015127_)))
                      (let ((_hd1512415138_ (##car _e1512315135_))
                            (_tl1512515140_ (##cdr _e1512315135_)))
                        (let ((_body15143_ _tl1512515140_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15143_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1512215131_)))))
                    (_E1512215131_)))))
        (_E1512115146_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15089_)
      (let* ((_e1509015097_ _stx15089_)
             (_E1509215101_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1509015097_)))
             (_E1509115115_
              (lambda ()
                (if (gx#stx-pair? _e1509015097_)
                    (let ((_e1509315105_ (gx#syntax-e _e1509015097_)))
                      (let ((_hd1509415108_ (##car _e1509315105_))
                            (_tl1509515110_ (##cdr _e1509315105_)))
                        (let ((_body15113_ _tl1509515110_))
                          (if '#t
                              (cons '%#begin-foreign _body15113_)
                              (_E1509215101_)))))
                    (_E1509215101_)))))
        (_E1509115115_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15035_)
      (let* ((_e1503615049_ _stx15035_)
             (_E1503815053_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1503615049_)))
             (_E1503715085_
              (lambda ()
                (if (gx#stx-pair? _e1503615049_)
                    (let ((_e1503915057_ (gx#syntax-e _e1503615049_)))
                      (let ((_hd1504015060_ (##car _e1503915057_))
                            (_tl1504115062_ (##cdr _e1503915057_)))
                        (if (gx#stx-pair? _tl1504115062_)
                            (let ((_e1504215065_ (gx#syntax-e _tl1504115062_)))
                              (let ((_hd1504315068_ (##car _e1504215065_))
                                    (_tl1504415070_ (##cdr _e1504215065_)))
                                (let ((_ann15073_ _hd1504315068_))
                                  (if (gx#stx-pair? _tl1504415070_)
                                      (let ((_e1504515075_
                                             (gx#syntax-e _tl1504415070_)))
                                        (let ((_hd1504615078_
                                               (##car _e1504515075_))
                                              (_tl1504715080_
                                               (##cdr _e1504515075_)))
                                          (let ((_expr15083_ _hd1504615078_))
                                            (if (gx#stx-null? _tl1504715080_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15083_)
                                                    (_E1503815053_))
                                                (_E1503815053_)))))
                                      (_E1503815053_)))))
                            (_E1503815053_))))
                    (_E1503815053_)))))
        (_E1503715085_))))
  (define gx#core-compile-top-import%
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
                              (cons '%#import (gx#syntax->list _body15029_))
                              (_E1500815017_)))))
                    (_E1500815017_)))))
        (_E1500715031_))))
  (define gx#core-compile-top-module%
    (lambda (_stx14962_)
      (let* ((_e1496314973_ _stx14962_)
             (_E1496514977_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1496314973_)))
             (_E1496415001_
              (lambda ()
                (if (gx#stx-pair? _e1496314973_)
                    (let ((_e1496614981_ (gx#syntax-e _e1496314973_)))
                      (let ((_hd1496714984_ (##car _e1496614981_))
                            (_tl1496814986_ (##cdr _e1496614981_)))
                        (if (gx#stx-pair? _tl1496814986_)
                            (let ((_e1496914989_ (gx#syntax-e _tl1496814986_)))
                              (let ((_hd1497014992_ (##car _e1496914989_))
                                    (_tl1497114994_ (##cdr _e1496914989_)))
                                (let* ((_hd14997_ _hd1497014992_)
                                       (_body14999_ _tl1497114994_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd14997_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body14999_))
                                      (_E1496514977_)))))
                            (_E1496514977_))))
                    (_E1496514977_)))))
        (_E1496415001_))))
  (define gx#core-compile-top-export%
    (lambda (_stx14932_)
      (let* ((_e1493314940_ _stx14932_)
             (_E1493514944_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1493314940_)))
             (_E1493414958_
              (lambda ()
                (if (gx#stx-pair? _e1493314940_)
                    (let ((_e1493614948_ (gx#syntax-e _e1493314940_)))
                      (let ((_hd1493714951_ (##car _e1493614948_))
                            (_tl1493814953_ (##cdr _e1493614948_)))
                        (let ((_body14956_ _tl1493814953_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body14956_))
                              (_E1493514944_)))))
                    (_E1493514944_)))))
        (_E1493414958_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx14902_)
      (let* ((_e1490314910_ _stx14902_)
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
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body14926_))
                              (_E1490514914_)))))
                    (_E1490514914_)))))
        (_E1490414928_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx14827_)
      (letrec ((_generate14829_
                (lambda (_hd14859_)
                  (let* ((_e1486014870_ _hd14859_)
                         (_E1486214874_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1486014870_)))
                         (_E1486114898_
                          (lambda ()
                            (if (gx#stx-pair? _e1486014870_)
                                (let ((_e1486314878_
                                       (gx#syntax-e _e1486014870_)))
                                  (let ((_hd1486414881_ (##car _e1486314878_))
                                        (_tl1486514883_ (##cdr _e1486314878_)))
                                    (let ((_id14886_ _hd1486414881_))
                                      (if (gx#stx-pair? _tl1486514883_)
                                          (let ((_e1486614888_
                                                 (gx#syntax-e _tl1486514883_)))
                                            (let ((_hd1486714891_
                                                   (##car _e1486614888_))
                                                  (_tl1486814893_
                                                   (##cdr _e1486614888_)))
                                              (let ((_eid14896_
                                                     _hd1486714891_))
                                                (if (gx#stx-null?
                                                     _tl1486814893_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id14886_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid14896_)
                            '()))
                (_E1486214874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1486214874_)))))
                                          (_E1486214874_)))))
                                (_E1486214874_)))))
                    (_E1486114898_)))))
        (let* ((_e1483014837_ _stx14827_)
               (_E1483214841_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1483014837_)))
               (_E1483114855_
                (lambda ()
                  (if (gx#stx-pair? _e1483014837_)
                      (let ((_e1483314845_ (gx#syntax-e _e1483014837_)))
                        (let ((_hd1483414848_ (##car _e1483314845_))
                              (_tl1483514850_ (##cdr _e1483314845_)))
                          (let ((_body14853_ _tl1483514850_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate14829_
                                       _body14853_))
                                (_E1483214841_)))))
                      (_E1483214841_)))))
          (_E1483114855_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx14773_)
      (let* ((_e1477414787_ _stx14773_)
             (_E1477614791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1477414787_)))
             (_E1477514823_
              (lambda ()
                (if (gx#stx-pair? _e1477414787_)
                    (let ((_e1477714795_ (gx#syntax-e _e1477414787_)))
                      (let ((_hd1477814798_ (##car _e1477714795_))
                            (_tl1477914800_ (##cdr _e1477714795_)))
                        (if (gx#stx-pair? _tl1477914800_)
                            (let ((_e1478014803_ (gx#syntax-e _tl1477914800_)))
                              (let ((_hd1478114806_ (##car _e1478014803_))
                                    (_tl1478214808_ (##cdr _e1478014803_)))
                                (let ((_hd14811_ _hd1478114806_))
                                  (if (gx#stx-pair? _tl1478214808_)
                                      (let ((_e1478314813_
                                             (gx#syntax-e _tl1478214808_)))
                                        (let ((_hd1478414816_
                                               (##car _e1478314813_))
                                              (_tl1478514818_
                                               (##cdr _e1478314813_)))
                                          (let ((_expr14821_ _hd1478414816_))
                                            (if (gx#stx-null? _tl1478514818_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd14811_)
                        (cons (gx#core-compile-top-syntax _expr14821_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1477614791_))
                                                (_E1477614791_)))))
                                      (_E1477614791_)))))
                            (_E1477614791_))))
                    (_E1477614791_)))))
        (_E1477514823_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14718_)
      (let* ((_e1471914732_ _stx14718_)
             (_E1472114736_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1471914732_)))
             (_E1472014769_
              (lambda ()
                (if (gx#stx-pair? _e1471914732_)
                    (let ((_e1472214740_ (gx#syntax-e _e1471914732_)))
                      (let ((_hd1472314743_ (##car _e1472214740_))
                            (_tl1472414745_ (##cdr _e1472214740_)))
                        (if (gx#stx-pair? _tl1472414745_)
                            (let ((_e1472514748_ (gx#syntax-e _tl1472414745_)))
                              (let ((_hd1472614751_ (##car _e1472514748_))
                                    (_tl1472714753_ (##cdr _e1472514748_)))
                                (let ((_hd14756_ _hd1472614751_))
                                  (if (gx#stx-pair? _tl1472714753_)
                                      (let ((_e1472814758_
                                             (gx#syntax-e _tl1472714753_)))
                                        (let ((_hd1472914761_
                                               (##car _e1472814758_))
                                              (_tl1473014763_
                                               (##cdr _e1472814758_)))
                                          (let ((_expr14766_ _hd1472914761_))
                                            (if (gx#stx-null? _tl1473014763_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14756_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr14766_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1472114736_))
                                                (_E1472114736_)))))
                                      (_E1472114736_)))))
                            (_E1472114736_))))
                    (_E1472114736_)))))
        (_E1472014769_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14664_)
      (let* ((_e1466514678_ _stx14664_)
             (_E1466714682_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1466514678_)))
             (_E1466614714_
              (lambda ()
                (if (gx#stx-pair? _e1466514678_)
                    (let ((_e1466814686_ (gx#syntax-e _e1466514678_)))
                      (let ((_hd1466914689_ (##car _e1466814686_))
                            (_tl1467014691_ (##cdr _e1466814686_)))
                        (if (gx#stx-pair? _tl1467014691_)
                            (let ((_e1467114694_ (gx#syntax-e _tl1467014691_)))
                              (let ((_hd1467214697_ (##car _e1467114694_))
                                    (_tl1467314699_ (##cdr _e1467114694_)))
                                (let ((_hd14702_ _hd1467214697_))
                                  (if (gx#stx-pair? _tl1467314699_)
                                      (let ((_e1467414704_
                                             (gx#syntax-e _tl1467314699_)))
                                        (let ((_hd1467514707_
                                               (##car _e1467414704_))
                                              (_tl1467614709_
                                               (##cdr _e1467414704_)))
                                          (let ((_alias-id14712_
                                                 _hd1467514707_))
                                            (if (gx#stx-null? _tl1467614709_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14702_)
                        (cons (gx#core-quote-syntax__0 _alias-id14712_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1466714682_))
                                                (_E1466714682_)))))
                                      (_E1466714682_)))))
                            (_E1466714682_))))
                    (_E1466714682_)))))
        (_E1466614714_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14610_)
      (let* ((_e1461114624_ _stx14610_)
             (_E1461314628_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1461114624_)))
             (_E1461214660_
              (lambda ()
                (if (gx#stx-pair? _e1461114624_)
                    (let ((_e1461414632_ (gx#syntax-e _e1461114624_)))
                      (let ((_hd1461514635_ (##car _e1461414632_))
                            (_tl1461614637_ (##cdr _e1461414632_)))
                        (if (gx#stx-pair? _tl1461614637_)
                            (let ((_e1461714640_ (gx#syntax-e _tl1461614637_)))
                              (let ((_hd1461814643_ (##car _e1461714640_))
                                    (_tl1461914645_ (##cdr _e1461714640_)))
                                (let ((_id14648_ _hd1461814643_))
                                  (if (gx#stx-pair? _tl1461914645_)
                                      (let ((_e1462014650_
                                             (gx#syntax-e _tl1461914645_)))
                                        (let ((_hd1462114653_
                                               (##car _e1462014650_))
                                              (_tl1462214655_
                                               (##cdr _e1462014650_)))
                                          (let ((_binding-id14658_
                                                 _hd1462114653_))
                                            (if (gx#stx-null? _tl1462214655_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14648_)
                        (cons (gx#core-quote-syntax__0 _binding-id14658_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1461314628_))
                                                (_E1461314628_)))))
                                      (_E1461314628_)))))
                            (_E1461314628_))))
                    (_E1461314628_)))))
        (_E1461214660_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14580_)
      (let* ((_e1458114588_ _stx14580_)
             (_E1458314592_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1458114588_)))
             (_E1458214606_
              (lambda ()
                (if (gx#stx-pair? _e1458114588_)
                    (let ((_e1458414596_ (gx#syntax-e _e1458114588_)))
                      (let ((_hd1458514599_ (##car _e1458414596_))
                            (_tl1458614601_ (##cdr _e1458414596_)))
                        (let ((_decls14604_ _tl1458614601_))
                          (if '#t
                              (cons '%#declare _decls14604_)
                              (_E1458314592_)))))
                    (_E1458314592_)))))
        (_E1458214606_))))
  (define gx#core-compile-top-lambda%
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
                        (let ((_clause14574_ _tl1455614571_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14574_))
                              (_E1455314562_)))))
                    (_E1455314562_)))))
        (_E1455214576_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14507_)
      (let* ((_e1450814518_ _stx14507_)
             (_E1451014522_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1450814518_)))
             (_E1450914546_
              (lambda ()
                (if (gx#stx-pair? _e1450814518_)
                    (let ((_e1451114526_ (gx#syntax-e _e1450814518_)))
                      (let ((_hd1451214529_ (##car _e1451114526_))
                            (_tl1451314531_ (##cdr _e1451114526_)))
                        (let ((_hd14534_ _hd1451214529_))
                          (if (gx#stx-pair? _tl1451314531_)
                              (let ((_e1451414536_
                                     (gx#syntax-e _tl1451314531_)))
                                (let ((_hd1451514539_ (##car _e1451414536_))
                                      (_tl1451614541_ (##cdr _e1451414536_)))
                                  (let ((_body14544_ _hd1451514539_))
                                    (if (gx#stx-null? _tl1451614541_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14534_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14544_)
                                                        '()))
                                            (_E1451014522_))
                                        (_E1451014522_)))))
                              (_E1451014522_)))))
                    (_E1451014522_)))))
        (_E1450914546_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14477_)
      (let* ((_e1447814485_ _stx14477_)
             (_E1448014489_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1447814485_)))
             (_E1447914503_
              (lambda ()
                (if (gx#stx-pair? _e1447814485_)
                    (let ((_e1448114493_ (gx#syntax-e _e1447814485_)))
                      (let ((_hd1448214496_ (##car _e1448114493_))
                            (_tl1448314498_ (##cdr _e1448114493_)))
                        (let ((_clauses14501_ _tl1448314498_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14501_))
                              (_E1448014489_)))))
                    (_E1448014489_)))))
        (_E1447914503_))))
  (begin
    (define gx#core-compile-top-let-values%__opt-lambda14410
      (lambda (_stx14412_ _form14413_)
        (let* ((_e1441414427_ _stx14412_)
               (_E1441614431_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1441414427_)))
               (_E1441514463_
                (lambda ()
                  (if (gx#stx-pair? _e1441414427_)
                      (let ((_e1441714435_ (gx#syntax-e _e1441414427_)))
                        (let ((_hd1441814438_ (##car _e1441714435_))
                              (_tl1441914440_ (##cdr _e1441714435_)))
                          (if (gx#stx-pair? _tl1441914440_)
                              (let ((_e1442014443_
                                     (gx#syntax-e _tl1441914440_)))
                                (let ((_hd1442114446_ (##car _e1442014443_))
                                      (_tl1442214448_ (##cdr _e1442014443_)))
                                  (let ((_hd14451_ _hd1442114446_))
                                    (if (gx#stx-pair? _tl1442214448_)
                                        (let ((_e1442314453_
                                               (gx#syntax-e _tl1442214448_)))
                                          (let ((_hd1442414456_
                                                 (##car _e1442314453_))
                                                (_tl1442514458_
                                                 (##cdr _e1442314453_)))
                                            (let ((_body14461_ _hd1442414456_))
                                              (if (gx#stx-null? _tl1442514458_)
                                                  (if '#t
                                                      (cons _form14413_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14451_)
                          (cons (gx#core-compile-top-syntax _body14461_) '())))
              (_E1441614431_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1441614431_)))))
                                        (_E1441614431_)))))
                              (_E1441614431_))))
                      (_E1441614431_)))))
          (_E1441514463_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14470_)
          (let ((_form14472_ '%#let-values))
            (gx#core-compile-top-let-values%__opt-lambda14410
             _stx14470_
             _form14472_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15376_
          (let ((_g15375_ (length _g15376_)))
            (cond ((fx= _g15375_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15376_))
                  ((fx= _g15375_ 2)
                   (apply gx#core-compile-top-let-values%__opt-lambda14410
                          _g15376_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15376_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14409_)
      (gx#core-compile-top-let-values%__opt-lambda14410
       _stx14409_
       '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14407_)
      (gx#core-compile-top-let-values%__opt-lambda14410
       _stx14407_
       '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14366_)
      (let* ((_e1436714377_ _stx14366_)
             (_E1436914381_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1436714377_)))
             (_E1436814403_
              (lambda ()
                (if (gx#stx-pair? _e1436714377_)
                    (let ((_e1437014385_ (gx#syntax-e _e1436714377_)))
                      (let ((_hd1437114388_ (##car _e1437014385_))
                            (_tl1437214390_ (##cdr _e1437014385_)))
                        (if (gx#stx-pair? _tl1437214390_)
                            (let ((_e1437314393_ (gx#syntax-e _tl1437214390_)))
                              (let ((_hd1437414396_ (##car _e1437314393_))
                                    (_tl1437514398_ (##cdr _e1437314393_)))
                                (let ((_e14401_ _hd1437414396_))
                                  (if (gx#stx-null? _tl1437514398_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14401_)
                                                      '()))
                                          (_E1436914381_))
                                      (_E1436914381_)))))
                            (_E1436914381_))))
                    (_E1436914381_)))))
        (_E1436814403_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14325_)
      (let* ((_e1432614336_ _stx14325_)
             (_E1432814340_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1432614336_)))
             (_E1432714362_
              (lambda ()
                (if (gx#stx-pair? _e1432614336_)
                    (let ((_e1432914344_ (gx#syntax-e _e1432614336_)))
                      (let ((_hd1433014347_ (##car _e1432914344_))
                            (_tl1433114349_ (##cdr _e1432914344_)))
                        (if (gx#stx-pair? _tl1433114349_)
                            (let ((_e1433214352_ (gx#syntax-e _tl1433114349_)))
                              (let ((_hd1433314355_ (##car _e1433214352_))
                                    (_tl1433414357_ (##cdr _e1433214352_)))
                                (let ((_e14360_ _hd1433314355_))
                                  (if (gx#stx-null? _tl1433414357_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14360_)
                                                      '()))
                                          (_E1432814340_))
                                      (_E1432814340_)))))
                            (_E1432814340_))))
                    (_E1432814340_)))))
        (_E1432714362_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14282_)
      (let* ((_e1428314293_ _stx14282_)
             (_E1428514297_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1428314293_)))
             (_E1428414321_
              (lambda ()
                (if (gx#stx-pair? _e1428314293_)
                    (let ((_e1428614301_ (gx#syntax-e _e1428314293_)))
                      (let ((_hd1428714304_ (##car _e1428614301_))
                            (_tl1428814306_ (##cdr _e1428614301_)))
                        (if (gx#stx-pair? _tl1428814306_)
                            (let ((_e1428914309_ (gx#syntax-e _tl1428814306_)))
                              (let ((_hd1429014312_ (##car _e1428914309_))
                                    (_tl1429114314_ (##cdr _e1428914309_)))
                                (let* ((_rator14317_ _hd1429014312_)
                                       (_args14319_ _tl1429114314_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14317_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14319_))
                                      (_E1428514297_)))))
                            (_E1428514297_))))
                    (_E1428514297_)))))
        (_E1428414321_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14215_)
      (let* ((_e1421614232_ _stx14215_)
             (_E1421814236_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1421614232_)))
             (_E1421714278_
              (lambda ()
                (if (gx#stx-pair? _e1421614232_)
                    (let ((_e1421914240_ (gx#syntax-e _e1421614232_)))
                      (let ((_hd1422014243_ (##car _e1421914240_))
                            (_tl1422114245_ (##cdr _e1421914240_)))
                        (if (gx#stx-pair? _tl1422114245_)
                            (let ((_e1422214248_ (gx#syntax-e _tl1422114245_)))
                              (let ((_hd1422314251_ (##car _e1422214248_))
                                    (_tl1422414253_ (##cdr _e1422214248_)))
                                (let ((_test14256_ _hd1422314251_))
                                  (if (gx#stx-pair? _tl1422414253_)
                                      (let ((_e1422514258_
                                             (gx#syntax-e _tl1422414253_)))
                                        (let ((_hd1422614261_
                                               (##car _e1422514258_))
                                              (_tl1422714263_
                                               (##cdr _e1422514258_)))
                                          (let ((_K14266_ _hd1422614261_))
                                            (if (gx#stx-pair? _tl1422714263_)
                                                (let ((_e1422814268_
                                                       (gx#syntax-e
                                                        _tl1422714263_)))
                                                  (let ((_hd1422914271_
                                                         (##car _e1422814268_))
                                                        (_tl1423014273_
                                                         (##cdr _e1422814268_)))
                                                    (let ((_E14276_
                                                           _hd1422914271_))
                                                      (if (gx#stx-null?
                                                           _tl1423014273_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14256_)
                                  (cons (gx#core-compile-top-syntax _K14266_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14276_)
                                              '()))))
                      (_E1421814236_))
                  (_E1421814236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1421814236_)))))
                                      (_E1421814236_)))))
                            (_E1421814236_))))
                    (_E1421814236_)))))
        (_E1421714278_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14174_)
      (let* ((_e1417514185_ _stx14174_)
             (_E1417714189_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1417514185_)))
             (_E1417614211_
              (lambda ()
                (if (gx#stx-pair? _e1417514185_)
                    (let ((_e1417814193_ (gx#syntax-e _e1417514185_)))
                      (let ((_hd1417914196_ (##car _e1417814193_))
                            (_tl1418014198_ (##cdr _e1417814193_)))
                        (if (gx#stx-pair? _tl1418014198_)
                            (let ((_e1418114201_ (gx#syntax-e _tl1418014198_)))
                              (let ((_hd1418214204_ (##car _e1418114201_))
                                    (_tl1418314206_ (##cdr _e1418114201_)))
                                (let ((_id14209_ _hd1418214204_))
                                  (if (gx#stx-null? _tl1418314206_)
                                      (if (gx#identifier? _id14209_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14209_)
                                                      '()))
                                          (_E1417714189_))
                                      (_E1417714189_)))))
                            (_E1417714189_))))
                    (_E1417714189_)))))
        (_E1417614211_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14120_)
      (let* ((_e1412114134_ _stx14120_)
             (_E1412314138_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1412114134_)))
             (_E1412214170_
              (lambda ()
                (if (gx#stx-pair? _e1412114134_)
                    (let ((_e1412414142_ (gx#syntax-e _e1412114134_)))
                      (let ((_hd1412514145_ (##car _e1412414142_))
                            (_tl1412614147_ (##cdr _e1412414142_)))
                        (if (gx#stx-pair? _tl1412614147_)
                            (let ((_e1412714150_ (gx#syntax-e _tl1412614147_)))
                              (let ((_hd1412814153_ (##car _e1412714150_))
                                    (_tl1412914155_ (##cdr _e1412714150_)))
                                (let ((_id14158_ _hd1412814153_))
                                  (if (gx#stx-pair? _tl1412914155_)
                                      (let ((_e1413014160_
                                             (gx#syntax-e _tl1412914155_)))
                                        (let ((_hd1413114163_
                                               (##car _e1413014160_))
                                              (_tl1413214165_
                                               (##cdr _e1413014160_)))
                                          (let ((_expr14168_ _hd1413114163_))
                                            (if (gx#stx-null? _tl1413214165_)
                                                (if (gx#identifier? _id14158_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14158_)
                        (cons (gx#core-compile-top-syntax _expr14168_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1412314138_))
                                                (_E1412314138_)))))
                                      (_E1412314138_)))))
                            (_E1412314138_))))
                    (_E1412314138_)))))
        (_E1412214170_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14115_)
      (let ((_$e14117_ (gx#resolve-identifier__0 _id14115_)))
        (if _$e14117_
            (##structure-ref _$e14117_ '1 gx#binding::t '#f)
            _id14115_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14113_)
      (if (gx#identifier? _hd14113_)
          (gx#core-compile-top-runtime-ref _hd14113_)
          '#f))))
