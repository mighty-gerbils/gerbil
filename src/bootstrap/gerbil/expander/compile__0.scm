(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15969_)
      (let* ((_e1597015977_ _stx15969_)
             (_E1597215981_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1597015977_)))
             (_E1597115995_
              (lambda ()
                (if (gx#stx-pair? _e1597015977_)
                    (let ((_e1597315985_ (gx#syntax-e _e1597015977_)))
                      (let ((_hd1597415988_ (##car _e1597315985_))
                            (_tl1597515990_ (##cdr _e1597315985_)))
                        (let ((_form15993_ _hd1597415988_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15993_)
                               'compile-top-syntax
                               _stx15969_)
                              (_E1597215981_)))))
                    (_E1597215981_)))))
        (_E1597115995_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15929_ _stx15930_)
      (let* ((_self1593115939_ _self15929_)
             (_E1593315943_
              (lambda () (error '"No clause matching" _self1593115939_)))
             (_K1593415955_
              (lambda (_K15946_)
                (let ((_$e15948_ (gx#stx-source _stx15930_)))
                  (if _$e15948_
                      ((lambda (_g1595015952_)
                         (gx#stx-wrap-source
                          (_K15946_ _stx15930_)
                          _g1595015952_))
                       _$e15948_)
                      (_K15946_ _stx15930_))))))
        (if (##structure-instance-of? _self1593115939_ 'gx#core-expander::t)
            (let* ((_e1593515958_ (##vector-ref _self1593115939_ '1))
                   (_e1593615961_ (##vector-ref _self1593115939_ '2))
                   (_e1593715964_ (##vector-ref _self1593115939_ '3))
                   (_K15967_ _e1593715964_))
              (_K1593415955_ _K15967_))
            (_E1593315943_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15803_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15803_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15773_)
      (let* ((_e1577415781_ _stx15773_)
             (_E1577615785_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1577415781_)))
             (_E1577515799_
              (lambda ()
                (if (gx#stx-pair? _e1577415781_)
                    (let ((_e1577715789_ (gx#syntax-e _e1577415781_)))
                      (let ((_hd1577815792_ (##car _e1577715789_))
                            (_tl1577915794_ (##cdr _e1577715789_)))
                        (let ((_body15797_ _tl1577915794_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15797_))
                              (_E1577615785_)))))
                    (_E1577615785_)))))
        (_E1577515799_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15742_)
      (let* ((_e1574315750_ _stx15742_)
             (_E1574515754_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1574315750_)))
             (_E1574415769_
              (lambda ()
                (if (gx#stx-pair? _e1574315750_)
                    (let ((_e1574615758_ (gx#syntax-e _e1574315750_)))
                      (let ((_hd1574715761_ (##car _e1574615758_))
                            (_tl1574815763_ (##cdr _e1574615758_)))
                        (let ((_body15766_ _tl1574815763_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15766_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1574515754_)))))
                    (_E1574515754_)))))
        (_E1574415769_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15712_)
      (let* ((_e1571315720_ _stx15712_)
             (_E1571515724_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1571315720_)))
             (_E1571415738_
              (lambda ()
                (if (gx#stx-pair? _e1571315720_)
                    (let ((_e1571615728_ (gx#syntax-e _e1571315720_)))
                      (let ((_hd1571715731_ (##car _e1571615728_))
                            (_tl1571815733_ (##cdr _e1571615728_)))
                        (let ((_body15736_ _tl1571815733_))
                          (if '#t
                              (cons '%#begin-foreign _body15736_)
                              (_E1571515724_)))))
                    (_E1571515724_)))))
        (_E1571415738_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15658_)
      (let* ((_e1565915672_ _stx15658_)
             (_E1566115676_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1565915672_)))
             (_E1566015708_
              (lambda ()
                (if (gx#stx-pair? _e1565915672_)
                    (let ((_e1566215680_ (gx#syntax-e _e1565915672_)))
                      (let ((_hd1566315683_ (##car _e1566215680_))
                            (_tl1566415685_ (##cdr _e1566215680_)))
                        (if (gx#stx-pair? _tl1566415685_)
                            (let ((_e1566515688_ (gx#syntax-e _tl1566415685_)))
                              (let ((_hd1566615691_ (##car _e1566515688_))
                                    (_tl1566715693_ (##cdr _e1566515688_)))
                                (let ((_ann15696_ _hd1566615691_))
                                  (if (gx#stx-pair? _tl1566715693_)
                                      (let ((_e1566815698_
                                             (gx#syntax-e _tl1566715693_)))
                                        (let ((_hd1566915701_
                                               (##car _e1566815698_))
                                              (_tl1567015703_
                                               (##cdr _e1566815698_)))
                                          (let ((_expr15706_ _hd1566915701_))
                                            (if (gx#stx-null? _tl1567015703_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15706_)
                                                    (_E1566115676_))
                                                (_E1566115676_)))))
                                      (_E1566115676_)))))
                            (_E1566115676_))))
                    (_E1566115676_)))))
        (_E1566015708_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15628_)
      (let* ((_e1562915636_ _stx15628_)
             (_E1563115640_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1562915636_)))
             (_E1563015654_
              (lambda ()
                (if (gx#stx-pair? _e1562915636_)
                    (let ((_e1563215644_ (gx#syntax-e _e1562915636_)))
                      (let ((_hd1563315647_ (##car _e1563215644_))
                            (_tl1563415649_ (##cdr _e1563215644_)))
                        (let ((_body15652_ _tl1563415649_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15652_))
                              (_E1563115640_)))))
                    (_E1563115640_)))))
        (_E1563015654_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15585_)
      (let* ((_e1558615596_ _stx15585_)
             (_E1558815600_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1558615596_)))
             (_E1558715624_
              (lambda ()
                (if (gx#stx-pair? _e1558615596_)
                    (let ((_e1558915604_ (gx#syntax-e _e1558615596_)))
                      (let ((_hd1559015607_ (##car _e1558915604_))
                            (_tl1559115609_ (##cdr _e1558915604_)))
                        (if (gx#stx-pair? _tl1559115609_)
                            (let ((_e1559215612_ (gx#syntax-e _tl1559115609_)))
                              (let ((_hd1559315615_ (##car _e1559215612_))
                                    (_tl1559415617_ (##cdr _e1559215612_)))
                                (let* ((_hd15620_ _hd1559315615_)
                                       (_body15622_ _tl1559415617_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd15620_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body15622_)))
                                      (_E1558815600_)))))
                            (_E1558815600_))))
                    (_E1558815600_)))))
        (_E1558715624_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15555_)
      (let* ((_e1555615563_ _stx15555_)
             (_E1555815567_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1555615563_)))
             (_E1555715581_
              (lambda ()
                (if (gx#stx-pair? _e1555615563_)
                    (let ((_e1555915571_ (gx#syntax-e _e1555615563_)))
                      (let ((_hd1556015574_ (##car _e1555915571_))
                            (_tl1556115576_ (##cdr _e1555915571_)))
                        (let ((_body15579_ _tl1556115576_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15579_))
                              (_E1555815567_)))))
                    (_E1555815567_)))))
        (_E1555715581_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15525_)
      (let* ((_e1552615533_ _stx15525_)
             (_E1552815537_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1552615533_)))
             (_E1552715551_
              (lambda ()
                (if (gx#stx-pair? _e1552615533_)
                    (let ((_e1552915541_ (gx#syntax-e _e1552615533_)))
                      (let ((_hd1553015544_ (##car _e1552915541_))
                            (_tl1553115546_ (##cdr _e1552915541_)))
                        (let ((_body15549_ _tl1553115546_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15549_))
                              (_E1552815537_)))))
                    (_E1552815537_)))))
        (_E1552715551_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15450_)
      (letrec ((_generate15452_
                (lambda (_hd15482_)
                  (let* ((_e1548315493_ _hd15482_)
                         (_E1548515497_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1548315493_)))
                         (_E1548415521_
                          (lambda ()
                            (if (gx#stx-pair? _e1548315493_)
                                (let ((_e1548615501_
                                       (gx#syntax-e _e1548315493_)))
                                  (let ((_hd1548715504_ (##car _e1548615501_))
                                        (_tl1548815506_ (##cdr _e1548615501_)))
                                    (let ((_id15509_ _hd1548715504_))
                                      (if (gx#stx-pair? _tl1548815506_)
                                          (let ((_e1548915511_
                                                 (gx#syntax-e _tl1548815506_)))
                                            (let ((_hd1549015514_
                                                   (##car _e1548915511_))
                                                  (_tl1549115516_
                                                   (##cdr _e1548915511_)))
                                              (let ((_eid15519_
                                                     _hd1549015514_))
                                                (if (gx#stx-null?
                                                     _tl1549115516_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15509_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15519_)
                            '()))
                (_E1548515497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1548515497_)))))
                                          (_E1548515497_)))))
                                (_E1548515497_)))))
                    (_E1548415521_)))))
        (let* ((_e1545315460_ _stx15450_)
               (_E1545515464_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1545315460_)))
               (_E1545415478_
                (lambda ()
                  (if (gx#stx-pair? _e1545315460_)
                      (let ((_e1545615468_ (gx#syntax-e _e1545315460_)))
                        (let ((_hd1545715471_ (##car _e1545615468_))
                              (_tl1545815473_ (##cdr _e1545615468_)))
                          (let ((_body15476_ _tl1545815473_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15452_
                                       _body15476_))
                                (_E1545515464_)))))
                      (_E1545515464_)))))
          (_E1545415478_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15396_)
      (let* ((_e1539715410_ _stx15396_)
             (_E1539915414_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1539715410_)))
             (_E1539815446_
              (lambda ()
                (if (gx#stx-pair? _e1539715410_)
                    (let ((_e1540015418_ (gx#syntax-e _e1539715410_)))
                      (let ((_hd1540115421_ (##car _e1540015418_))
                            (_tl1540215423_ (##cdr _e1540015418_)))
                        (if (gx#stx-pair? _tl1540215423_)
                            (let ((_e1540315426_ (gx#syntax-e _tl1540215423_)))
                              (let ((_hd1540415429_ (##car _e1540315426_))
                                    (_tl1540515431_ (##cdr _e1540315426_)))
                                (let ((_hd15434_ _hd1540415429_))
                                  (if (gx#stx-pair? _tl1540515431_)
                                      (let ((_e1540615436_
                                             (gx#syntax-e _tl1540515431_)))
                                        (let ((_hd1540715439_
                                               (##car _e1540615436_))
                                              (_tl1540815441_
                                               (##cdr _e1540615436_)))
                                          (let ((_expr15444_ _hd1540715439_))
                                            (if (gx#stx-null? _tl1540815441_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15434_)
                        (cons (gx#core-compile-top-syntax _expr15444_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1539915414_))
                                                (_E1539915414_)))))
                                      (_E1539915414_)))))
                            (_E1539915414_))))
                    (_E1539915414_)))))
        (_E1539815446_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx15341_)
      (let* ((_e1534215355_ _stx15341_)
             (_E1534415359_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1534215355_)))
             (_E1534315392_
              (lambda ()
                (if (gx#stx-pair? _e1534215355_)
                    (let ((_e1534515363_ (gx#syntax-e _e1534215355_)))
                      (let ((_hd1534615366_ (##car _e1534515363_))
                            (_tl1534715368_ (##cdr _e1534515363_)))
                        (if (gx#stx-pair? _tl1534715368_)
                            (let ((_e1534815371_ (gx#syntax-e _tl1534715368_)))
                              (let ((_hd1534915374_ (##car _e1534815371_))
                                    (_tl1535015376_ (##cdr _e1534815371_)))
                                (let ((_hd15379_ _hd1534915374_))
                                  (if (gx#stx-pair? _tl1535015376_)
                                      (let ((_e1535115381_
                                             (gx#syntax-e _tl1535015376_)))
                                        (let ((_hd1535215384_
                                               (##car _e1535115381_))
                                              (_tl1535315386_
                                               (##cdr _e1535115381_)))
                                          (let ((_expr15389_ _hd1535215384_))
                                            (if (gx#stx-null? _tl1535315386_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15379_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15389_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1534415359_))
                                                (_E1534415359_)))))
                                      (_E1534415359_)))))
                            (_E1534415359_))))
                    (_E1534415359_)))))
        (_E1534315392_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx15287_)
      (let* ((_e1528815301_ _stx15287_)
             (_E1529015305_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1528815301_)))
             (_E1528915337_
              (lambda ()
                (if (gx#stx-pair? _e1528815301_)
                    (let ((_e1529115309_ (gx#syntax-e _e1528815301_)))
                      (let ((_hd1529215312_ (##car _e1529115309_))
                            (_tl1529315314_ (##cdr _e1529115309_)))
                        (if (gx#stx-pair? _tl1529315314_)
                            (let ((_e1529415317_ (gx#syntax-e _tl1529315314_)))
                              (let ((_hd1529515320_ (##car _e1529415317_))
                                    (_tl1529615322_ (##cdr _e1529415317_)))
                                (let ((_hd15325_ _hd1529515320_))
                                  (if (gx#stx-pair? _tl1529615322_)
                                      (let ((_e1529715327_
                                             (gx#syntax-e _tl1529615322_)))
                                        (let ((_hd1529815330_
                                               (##car _e1529715327_))
                                              (_tl1529915332_
                                               (##cdr _e1529715327_)))
                                          (let ((_alias-id15335_
                                                 _hd1529815330_))
                                            (if (gx#stx-null? _tl1529915332_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15325_)
                        (cons (gx#core-quote-syntax__0 _alias-id15335_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1529015305_))
                                                (_E1529015305_)))))
                                      (_E1529015305_)))))
                            (_E1529015305_))))
                    (_E1529015305_)))))
        (_E1528915337_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx15233_)
      (let* ((_e1523415247_ _stx15233_)
             (_E1523615251_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1523415247_)))
             (_E1523515283_
              (lambda ()
                (if (gx#stx-pair? _e1523415247_)
                    (let ((_e1523715255_ (gx#syntax-e _e1523415247_)))
                      (let ((_hd1523815258_ (##car _e1523715255_))
                            (_tl1523915260_ (##cdr _e1523715255_)))
                        (if (gx#stx-pair? _tl1523915260_)
                            (let ((_e1524015263_ (gx#syntax-e _tl1523915260_)))
                              (let ((_hd1524115266_ (##car _e1524015263_))
                                    (_tl1524215268_ (##cdr _e1524015263_)))
                                (let ((_id15271_ _hd1524115266_))
                                  (if (gx#stx-pair? _tl1524215268_)
                                      (let ((_e1524315273_
                                             (gx#syntax-e _tl1524215268_)))
                                        (let ((_hd1524415276_
                                               (##car _e1524315273_))
                                              (_tl1524515278_
                                               (##cdr _e1524315273_)))
                                          (let ((_binding-id15281_
                                                 _hd1524415276_))
                                            (if (gx#stx-null? _tl1524515278_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15271_)
                        (cons (gx#core-quote-syntax__0 _binding-id15281_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1523615251_))
                                                (_E1523615251_)))))
                                      (_E1523615251_)))))
                            (_E1523615251_))))
                    (_E1523615251_)))))
        (_E1523515283_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx15203_)
      (let* ((_e1520415211_ _stx15203_)
             (_E1520615215_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1520415211_)))
             (_E1520515229_
              (lambda ()
                (if (gx#stx-pair? _e1520415211_)
                    (let ((_e1520715219_ (gx#syntax-e _e1520415211_)))
                      (let ((_hd1520815222_ (##car _e1520715219_))
                            (_tl1520915224_ (##cdr _e1520715219_)))
                        (let ((_decls15227_ _tl1520915224_))
                          (if '#t
                              (cons '%#declare _decls15227_)
                              (_E1520615215_)))))
                    (_E1520615215_)))))
        (_E1520515229_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx15173_)
      (let* ((_e1517415181_ _stx15173_)
             (_E1517615185_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1517415181_)))
             (_E1517515199_
              (lambda ()
                (if (gx#stx-pair? _e1517415181_)
                    (let ((_e1517715189_ (gx#syntax-e _e1517415181_)))
                      (let ((_hd1517815192_ (##car _e1517715189_))
                            (_tl1517915194_ (##cdr _e1517715189_)))
                        (let ((_clause15197_ _tl1517915194_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause15197_))
                              (_E1517615185_)))))
                    (_E1517615185_)))))
        (_E1517515199_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx15130_)
      (let* ((_e1513115141_ _stx15130_)
             (_E1513315145_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1513115141_)))
             (_E1513215169_
              (lambda ()
                (if (gx#stx-pair? _e1513115141_)
                    (let ((_e1513415149_ (gx#syntax-e _e1513115141_)))
                      (let ((_hd1513515152_ (##car _e1513415149_))
                            (_tl1513615154_ (##cdr _e1513415149_)))
                        (let ((_hd15157_ _hd1513515152_))
                          (if (gx#stx-pair? _tl1513615154_)
                              (let ((_e1513715159_
                                     (gx#syntax-e _tl1513615154_)))
                                (let ((_hd1513815162_ (##car _e1513715159_))
                                      (_tl1513915164_ (##cdr _e1513715159_)))
                                  (let ((_body15167_ _hd1513815162_))
                                    (if (gx#stx-null? _tl1513915164_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd15157_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body15167_)
                                                        '()))
                                            (_E1513315145_))
                                        (_E1513315145_)))))
                              (_E1513315145_)))))
                    (_E1513315145_)))))
        (_E1513215169_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx15100_)
      (let* ((_e1510115108_ _stx15100_)
             (_E1510315112_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1510115108_)))
             (_E1510215126_
              (lambda ()
                (if (gx#stx-pair? _e1510115108_)
                    (let ((_e1510415116_ (gx#syntax-e _e1510115108_)))
                      (let ((_hd1510515119_ (##car _e1510415116_))
                            (_tl1510615121_ (##cdr _e1510415116_)))
                        (let ((_clauses15124_ _tl1510615121_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses15124_))
                              (_E1510315112_)))))
                    (_E1510315112_)))))
        (_E1510215126_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx15035_ _form15036_)
        (let* ((_e1503715050_ _stx15035_)
               (_E1503915054_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1503715050_)))
               (_E1503815086_
                (lambda ()
                  (if (gx#stx-pair? _e1503715050_)
                      (let ((_e1504015058_ (gx#syntax-e _e1503715050_)))
                        (let ((_hd1504115061_ (##car _e1504015058_))
                              (_tl1504215063_ (##cdr _e1504015058_)))
                          (if (gx#stx-pair? _tl1504215063_)
                              (let ((_e1504315066_
                                     (gx#syntax-e _tl1504215063_)))
                                (let ((_hd1504415069_ (##car _e1504315066_))
                                      (_tl1504515071_ (##cdr _e1504315066_)))
                                  (let ((_hd15074_ _hd1504415069_))
                                    (if (gx#stx-pair? _tl1504515071_)
                                        (let ((_e1504615076_
                                               (gx#syntax-e _tl1504515071_)))
                                          (let ((_hd1504715079_
                                                 (##car _e1504615076_))
                                                (_tl1504815081_
                                                 (##cdr _e1504615076_)))
                                            (let ((_body15084_ _hd1504715079_))
                                              (if (gx#stx-null? _tl1504815081_)
                                                  (if '#t
                                                      (cons _form15036_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd15074_)
                          (cons (gx#core-compile-top-syntax _body15084_) '())))
              (_E1503915054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1503915054_)))))
                                        (_E1503915054_)))))
                              (_E1503915054_))))
                      (_E1503915054_)))))
          (_E1503815086_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx15093_)
          (let ((_form15095_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx15093_ _form15095_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15999_
          (let ((_g15998_ (length _g15999_)))
            (cond ((##fx= _g15998_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15999_))
                  ((##fx= _g15998_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15999_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15999_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx15032_)
      (gx#core-compile-top-let-values%__% _stx15032_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx15030_)
      (gx#core-compile-top-let-values%__% _stx15030_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14989_)
      (let* ((_e1499015000_ _stx14989_)
             (_E1499215004_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1499015000_)))
             (_E1499115026_
              (lambda ()
                (if (gx#stx-pair? _e1499015000_)
                    (let ((_e1499315008_ (gx#syntax-e _e1499015000_)))
                      (let ((_hd1499415011_ (##car _e1499315008_))
                            (_tl1499515013_ (##cdr _e1499315008_)))
                        (if (gx#stx-pair? _tl1499515013_)
                            (let ((_e1499615016_ (gx#syntax-e _tl1499515013_)))
                              (let ((_hd1499715019_ (##car _e1499615016_))
                                    (_tl1499815021_ (##cdr _e1499615016_)))
                                (let ((_e15024_ _hd1499715019_))
                                  (if (gx#stx-null? _tl1499815021_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e15024_)
                                                      '()))
                                          (_E1499215004_))
                                      (_E1499215004_)))))
                            (_E1499215004_))))
                    (_E1499215004_)))))
        (_E1499115026_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14948_)
      (let* ((_e1494914959_ _stx14948_)
             (_E1495114963_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1494914959_)))
             (_E1495014985_
              (lambda ()
                (if (gx#stx-pair? _e1494914959_)
                    (let ((_e1495214967_ (gx#syntax-e _e1494914959_)))
                      (let ((_hd1495314970_ (##car _e1495214967_))
                            (_tl1495414972_ (##cdr _e1495214967_)))
                        (if (gx#stx-pair? _tl1495414972_)
                            (let ((_e1495514975_ (gx#syntax-e _tl1495414972_)))
                              (let ((_hd1495614978_ (##car _e1495514975_))
                                    (_tl1495714980_ (##cdr _e1495514975_)))
                                (let ((_e14983_ _hd1495614978_))
                                  (if (gx#stx-null? _tl1495714980_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14983_)
                                                      '()))
                                          (_E1495114963_))
                                      (_E1495114963_)))))
                            (_E1495114963_))))
                    (_E1495114963_)))))
        (_E1495014985_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14905_)
      (let* ((_e1490614916_ _stx14905_)
             (_E1490814920_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1490614916_)))
             (_E1490714944_
              (lambda ()
                (if (gx#stx-pair? _e1490614916_)
                    (let ((_e1490914924_ (gx#syntax-e _e1490614916_)))
                      (let ((_hd1491014927_ (##car _e1490914924_))
                            (_tl1491114929_ (##cdr _e1490914924_)))
                        (if (gx#stx-pair? _tl1491114929_)
                            (let ((_e1491214932_ (gx#syntax-e _tl1491114929_)))
                              (let ((_hd1491314935_ (##car _e1491214932_))
                                    (_tl1491414937_ (##cdr _e1491214932_)))
                                (let* ((_rator14940_ _hd1491314935_)
                                       (_args14942_ _tl1491414937_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator14940_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args14942_)))
                                      (_E1490814920_)))))
                            (_E1490814920_))))
                    (_E1490814920_)))))
        (_E1490714944_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14838_)
      (let* ((_e1483914855_ _stx14838_)
             (_E1484114859_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1483914855_)))
             (_E1484014901_
              (lambda ()
                (if (gx#stx-pair? _e1483914855_)
                    (let ((_e1484214863_ (gx#syntax-e _e1483914855_)))
                      (let ((_hd1484314866_ (##car _e1484214863_))
                            (_tl1484414868_ (##cdr _e1484214863_)))
                        (if (gx#stx-pair? _tl1484414868_)
                            (let ((_e1484514871_ (gx#syntax-e _tl1484414868_)))
                              (let ((_hd1484614874_ (##car _e1484514871_))
                                    (_tl1484714876_ (##cdr _e1484514871_)))
                                (let ((_test14879_ _hd1484614874_))
                                  (if (gx#stx-pair? _tl1484714876_)
                                      (let ((_e1484814881_
                                             (gx#syntax-e _tl1484714876_)))
                                        (let ((_hd1484914884_
                                               (##car _e1484814881_))
                                              (_tl1485014886_
                                               (##cdr _e1484814881_)))
                                          (let ((_K14889_ _hd1484914884_))
                                            (if (gx#stx-pair? _tl1485014886_)
                                                (let ((_e1485114891_
                                                       (gx#syntax-e
                                                        _tl1485014886_)))
                                                  (let ((_hd1485214894_
                                                         (##car _e1485114891_))
                                                        (_tl1485314896_
                                                         (##cdr _e1485114891_)))
                                                    (let ((_E14899_
                                                           _hd1485214894_))
                                                      (if (gx#stx-null?
                                                           _tl1485314896_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14879_)
                                  (cons (gx#core-compile-top-syntax _K14889_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14899_)
                                              '()))))
                      (_E1484114859_))
                  (_E1484114859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1484114859_)))))
                                      (_E1484114859_)))))
                            (_E1484114859_))))
                    (_E1484114859_)))))
        (_E1484014901_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14797_)
      (let* ((_e1479814808_ _stx14797_)
             (_E1480014812_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1479814808_)))
             (_E1479914834_
              (lambda ()
                (if (gx#stx-pair? _e1479814808_)
                    (let ((_e1480114816_ (gx#syntax-e _e1479814808_)))
                      (let ((_hd1480214819_ (##car _e1480114816_))
                            (_tl1480314821_ (##cdr _e1480114816_)))
                        (if (gx#stx-pair? _tl1480314821_)
                            (let ((_e1480414824_ (gx#syntax-e _tl1480314821_)))
                              (let ((_hd1480514827_ (##car _e1480414824_))
                                    (_tl1480614829_ (##cdr _e1480414824_)))
                                (let ((_id14832_ _hd1480514827_))
                                  (if (gx#stx-null? _tl1480614829_)
                                      (if (gx#identifier? _id14832_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14832_)
                                                      '()))
                                          (_E1480014812_))
                                      (_E1480014812_)))))
                            (_E1480014812_))))
                    (_E1480014812_)))))
        (_E1479914834_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14743_)
      (let* ((_e1474414757_ _stx14743_)
             (_E1474614761_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1474414757_)))
             (_E1474514793_
              (lambda ()
                (if (gx#stx-pair? _e1474414757_)
                    (let ((_e1474714765_ (gx#syntax-e _e1474414757_)))
                      (let ((_hd1474814768_ (##car _e1474714765_))
                            (_tl1474914770_ (##cdr _e1474714765_)))
                        (if (gx#stx-pair? _tl1474914770_)
                            (let ((_e1475014773_ (gx#syntax-e _tl1474914770_)))
                              (let ((_hd1475114776_ (##car _e1475014773_))
                                    (_tl1475214778_ (##cdr _e1475014773_)))
                                (let ((_id14781_ _hd1475114776_))
                                  (if (gx#stx-pair? _tl1475214778_)
                                      (let ((_e1475314783_
                                             (gx#syntax-e _tl1475214778_)))
                                        (let ((_hd1475414786_
                                               (##car _e1475314783_))
                                              (_tl1475514788_
                                               (##cdr _e1475314783_)))
                                          (let ((_expr14791_ _hd1475414786_))
                                            (if (gx#stx-null? _tl1475514788_)
                                                (if (gx#identifier? _id14781_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14781_)
                        (cons (gx#core-compile-top-syntax _expr14791_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1474614761_))
                                                (_E1474614761_)))))
                                      (_E1474614761_)))))
                            (_E1474614761_))))
                    (_E1474614761_)))))
        (_E1474514793_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14738_)
      (let ((_$e14740_ (gx#resolve-identifier__0 _id14738_)))
        (if _$e14740_
            (##structure-ref _$e14740_ '1 gx#binding::t '#f)
            _id14738_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14736_)
      (if (gx#identifier? _hd14736_)
          (gx#core-compile-top-runtime-ref _hd14736_)
          '#f))))
