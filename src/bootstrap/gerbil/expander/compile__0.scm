(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15889_)
      (let* ((_e1589015897_ _stx15889_)
             (_E1589215901_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1589015897_)))
             (_E1589115915_
              (lambda ()
                (if (gx#stx-pair? _e1589015897_)
                    (let ((_e1589315905_ (gx#syntax-e _e1589015897_)))
                      (let ((_hd1589415908_ (##car _e1589315905_))
                            (_tl1589515910_ (##cdr _e1589315905_)))
                        (let ((_form15913_ _hd1589415908_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15913_)
                               'compile-top-syntax
                               _stx15889_)
                              (_E1589215901_)))))
                    (_E1589215901_)))))
        (_E1589115915_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15849_ _stx15850_)
      (let* ((_self1585115859_ _self15849_)
             (_E1585315863_
              (lambda () (error '"No clause matching" _self1585115859_)))
             (_K1585415875_
              (lambda (_K15866_)
                (let ((_$e15868_ (gx#stx-source _stx15850_)))
                  (if _$e15868_
                      ((lambda (_g1587015872_)
                         (gx#stx-wrap-source
                          (_K15866_ _stx15850_)
                          _g1587015872_))
                       _$e15868_)
                      (_K15866_ _stx15850_))))))
        (if (##structure-instance-of? _self1585115859_ 'gx#core-expander::t)
            (let* ((_e1585515878_ (##vector-ref _self1585115859_ '1))
                   (_e1585615881_ (##vector-ref _self1585115859_ '2))
                   (_e1585715884_ (##vector-ref _self1585115859_ '3))
                   (_K15887_ _e1585715884_))
              (_K1585415875_ _K15887_))
            (_E1585315863_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15723_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15723_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15693_)
      (let* ((_e1569415701_ _stx15693_)
             (_E1569615705_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1569415701_)))
             (_E1569515719_
              (lambda ()
                (if (gx#stx-pair? _e1569415701_)
                    (let ((_e1569715709_ (gx#syntax-e _e1569415701_)))
                      (let ((_hd1569815712_ (##car _e1569715709_))
                            (_tl1569915714_ (##cdr _e1569715709_)))
                        (let ((_body15717_ _tl1569915714_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15717_))
                              (_E1569615705_)))))
                    (_E1569615705_)))))
        (_E1569515719_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15662_)
      (let* ((_e1566315670_ _stx15662_)
             (_E1566515674_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1566315670_)))
             (_E1566415689_
              (lambda ()
                (if (gx#stx-pair? _e1566315670_)
                    (let ((_e1566615678_ (gx#syntax-e _e1566315670_)))
                      (let ((_hd1566715681_ (##car _e1566615678_))
                            (_tl1566815683_ (##cdr _e1566615678_)))
                        (let ((_body15686_ _tl1566815683_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15686_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1566515674_)))))
                    (_E1566515674_)))))
        (_E1566415689_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15632_)
      (let* ((_e1563315640_ _stx15632_)
             (_E1563515644_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1563315640_)))
             (_E1563415658_
              (lambda ()
                (if (gx#stx-pair? _e1563315640_)
                    (let ((_e1563615648_ (gx#syntax-e _e1563315640_)))
                      (let ((_hd1563715651_ (##car _e1563615648_))
                            (_tl1563815653_ (##cdr _e1563615648_)))
                        (let ((_body15656_ _tl1563815653_))
                          (if '#t
                              (cons '%#begin-foreign _body15656_)
                              (_E1563515644_)))))
                    (_E1563515644_)))))
        (_E1563415658_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15578_)
      (let* ((_e1557915592_ _stx15578_)
             (_E1558115596_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1557915592_)))
             (_E1558015628_
              (lambda ()
                (if (gx#stx-pair? _e1557915592_)
                    (let ((_e1558215600_ (gx#syntax-e _e1557915592_)))
                      (let ((_hd1558315603_ (##car _e1558215600_))
                            (_tl1558415605_ (##cdr _e1558215600_)))
                        (if (gx#stx-pair? _tl1558415605_)
                            (let ((_e1558515608_ (gx#syntax-e _tl1558415605_)))
                              (let ((_hd1558615611_ (##car _e1558515608_))
                                    (_tl1558715613_ (##cdr _e1558515608_)))
                                (let ((_ann15616_ _hd1558615611_))
                                  (if (gx#stx-pair? _tl1558715613_)
                                      (let ((_e1558815618_
                                             (gx#syntax-e _tl1558715613_)))
                                        (let ((_hd1558915621_
                                               (##car _e1558815618_))
                                              (_tl1559015623_
                                               (##cdr _e1558815618_)))
                                          (let ((_expr15626_ _hd1558915621_))
                                            (if (gx#stx-null? _tl1559015623_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15626_)
                                                    (_E1558115596_))
                                                (_E1558115596_)))))
                                      (_E1558115596_)))))
                            (_E1558115596_))))
                    (_E1558115596_)))))
        (_E1558015628_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15548_)
      (let* ((_e1554915556_ _stx15548_)
             (_E1555115560_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1554915556_)))
             (_E1555015574_
              (lambda ()
                (if (gx#stx-pair? _e1554915556_)
                    (let ((_e1555215564_ (gx#syntax-e _e1554915556_)))
                      (let ((_hd1555315567_ (##car _e1555215564_))
                            (_tl1555415569_ (##cdr _e1555215564_)))
                        (let ((_body15572_ _tl1555415569_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15572_))
                              (_E1555115560_)))))
                    (_E1555115560_)))))
        (_E1555015574_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15505_)
      (let* ((_e1550615516_ _stx15505_)
             (_E1550815520_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1550615516_)))
             (_E1550715544_
              (lambda ()
                (if (gx#stx-pair? _e1550615516_)
                    (let ((_e1550915524_ (gx#syntax-e _e1550615516_)))
                      (let ((_hd1551015527_ (##car _e1550915524_))
                            (_tl1551115529_ (##cdr _e1550915524_)))
                        (if (gx#stx-pair? _tl1551115529_)
                            (let ((_e1551215532_ (gx#syntax-e _tl1551115529_)))
                              (let ((_hd1551315535_ (##car _e1551215532_))
                                    (_tl1551415537_ (##cdr _e1551215532_)))
                                (let* ((_hd15540_ _hd1551315535_)
                                       (_body15542_ _tl1551415537_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd15540_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body15542_)))
                                      (_E1550815520_)))))
                            (_E1550815520_))))
                    (_E1550815520_)))))
        (_E1550715544_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15475_)
      (let* ((_e1547615483_ _stx15475_)
             (_E1547815487_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1547615483_)))
             (_E1547715501_
              (lambda ()
                (if (gx#stx-pair? _e1547615483_)
                    (let ((_e1547915491_ (gx#syntax-e _e1547615483_)))
                      (let ((_hd1548015494_ (##car _e1547915491_))
                            (_tl1548115496_ (##cdr _e1547915491_)))
                        (let ((_body15499_ _tl1548115496_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15499_))
                              (_E1547815487_)))))
                    (_E1547815487_)))))
        (_E1547715501_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15445_)
      (let* ((_e1544615453_ _stx15445_)
             (_E1544815457_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1544615453_)))
             (_E1544715471_
              (lambda ()
                (if (gx#stx-pair? _e1544615453_)
                    (let ((_e1544915461_ (gx#syntax-e _e1544615453_)))
                      (let ((_hd1545015464_ (##car _e1544915461_))
                            (_tl1545115466_ (##cdr _e1544915461_)))
                        (let ((_body15469_ _tl1545115466_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15469_))
                              (_E1544815457_)))))
                    (_E1544815457_)))))
        (_E1544715471_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15370_)
      (letrec ((_generate15372_
                (lambda (_hd15402_)
                  (let* ((_e1540315413_ _hd15402_)
                         (_E1540515417_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1540315413_)))
                         (_E1540415441_
                          (lambda ()
                            (if (gx#stx-pair? _e1540315413_)
                                (let ((_e1540615421_
                                       (gx#syntax-e _e1540315413_)))
                                  (let ((_hd1540715424_ (##car _e1540615421_))
                                        (_tl1540815426_ (##cdr _e1540615421_)))
                                    (let ((_id15429_ _hd1540715424_))
                                      (if (gx#stx-pair? _tl1540815426_)
                                          (let ((_e1540915431_
                                                 (gx#syntax-e _tl1540815426_)))
                                            (let ((_hd1541015434_
                                                   (##car _e1540915431_))
                                                  (_tl1541115436_
                                                   (##cdr _e1540915431_)))
                                              (let ((_eid15439_
                                                     _hd1541015434_))
                                                (if (gx#stx-null?
                                                     _tl1541115436_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15429_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15439_)
                            '()))
                (_E1540515417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1540515417_)))))
                                          (_E1540515417_)))))
                                (_E1540515417_)))))
                    (_E1540415441_)))))
        (let* ((_e1537315380_ _stx15370_)
               (_E1537515384_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1537315380_)))
               (_E1537415398_
                (lambda ()
                  (if (gx#stx-pair? _e1537315380_)
                      (let ((_e1537615388_ (gx#syntax-e _e1537315380_)))
                        (let ((_hd1537715391_ (##car _e1537615388_))
                              (_tl1537815393_ (##cdr _e1537615388_)))
                          (let ((_body15396_ _tl1537815393_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15372_
                                       _body15396_))
                                (_E1537515384_)))))
                      (_E1537515384_)))))
          (_E1537415398_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15316_)
      (let* ((_e1531715330_ _stx15316_)
             (_E1531915334_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1531715330_)))
             (_E1531815366_
              (lambda ()
                (if (gx#stx-pair? _e1531715330_)
                    (let ((_e1532015338_ (gx#syntax-e _e1531715330_)))
                      (let ((_hd1532115341_ (##car _e1532015338_))
                            (_tl1532215343_ (##cdr _e1532015338_)))
                        (if (gx#stx-pair? _tl1532215343_)
                            (let ((_e1532315346_ (gx#syntax-e _tl1532215343_)))
                              (let ((_hd1532415349_ (##car _e1532315346_))
                                    (_tl1532515351_ (##cdr _e1532315346_)))
                                (let ((_hd15354_ _hd1532415349_))
                                  (if (gx#stx-pair? _tl1532515351_)
                                      (let ((_e1532615356_
                                             (gx#syntax-e _tl1532515351_)))
                                        (let ((_hd1532715359_
                                               (##car _e1532615356_))
                                              (_tl1532815361_
                                               (##cdr _e1532615356_)))
                                          (let ((_expr15364_ _hd1532715359_))
                                            (if (gx#stx-null? _tl1532815361_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15354_)
                        (cons (gx#core-compile-top-syntax _expr15364_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1531915334_))
                                                (_E1531915334_)))))
                                      (_E1531915334_)))))
                            (_E1531915334_))))
                    (_E1531915334_)))))
        (_E1531815366_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx15261_)
      (let* ((_e1526215275_ _stx15261_)
             (_E1526415279_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1526215275_)))
             (_E1526315312_
              (lambda ()
                (if (gx#stx-pair? _e1526215275_)
                    (let ((_e1526515283_ (gx#syntax-e _e1526215275_)))
                      (let ((_hd1526615286_ (##car _e1526515283_))
                            (_tl1526715288_ (##cdr _e1526515283_)))
                        (if (gx#stx-pair? _tl1526715288_)
                            (let ((_e1526815291_ (gx#syntax-e _tl1526715288_)))
                              (let ((_hd1526915294_ (##car _e1526815291_))
                                    (_tl1527015296_ (##cdr _e1526815291_)))
                                (let ((_hd15299_ _hd1526915294_))
                                  (if (gx#stx-pair? _tl1527015296_)
                                      (let ((_e1527115301_
                                             (gx#syntax-e _tl1527015296_)))
                                        (let ((_hd1527215304_
                                               (##car _e1527115301_))
                                              (_tl1527315306_
                                               (##cdr _e1527115301_)))
                                          (let ((_expr15309_ _hd1527215304_))
                                            (if (gx#stx-null? _tl1527315306_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15299_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15309_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1526415279_))
                                                (_E1526415279_)))))
                                      (_E1526415279_)))))
                            (_E1526415279_))))
                    (_E1526415279_)))))
        (_E1526315312_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx15207_)
      (let* ((_e1520815221_ _stx15207_)
             (_E1521015225_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1520815221_)))
             (_E1520915257_
              (lambda ()
                (if (gx#stx-pair? _e1520815221_)
                    (let ((_e1521115229_ (gx#syntax-e _e1520815221_)))
                      (let ((_hd1521215232_ (##car _e1521115229_))
                            (_tl1521315234_ (##cdr _e1521115229_)))
                        (if (gx#stx-pair? _tl1521315234_)
                            (let ((_e1521415237_ (gx#syntax-e _tl1521315234_)))
                              (let ((_hd1521515240_ (##car _e1521415237_))
                                    (_tl1521615242_ (##cdr _e1521415237_)))
                                (let ((_hd15245_ _hd1521515240_))
                                  (if (gx#stx-pair? _tl1521615242_)
                                      (let ((_e1521715247_
                                             (gx#syntax-e _tl1521615242_)))
                                        (let ((_hd1521815250_
                                               (##car _e1521715247_))
                                              (_tl1521915252_
                                               (##cdr _e1521715247_)))
                                          (let ((_alias-id15255_
                                                 _hd1521815250_))
                                            (if (gx#stx-null? _tl1521915252_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15245_)
                        (cons (gx#core-quote-syntax__0 _alias-id15255_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1521015225_))
                                                (_E1521015225_)))))
                                      (_E1521015225_)))))
                            (_E1521015225_))))
                    (_E1521015225_)))))
        (_E1520915257_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx15153_)
      (let* ((_e1515415167_ _stx15153_)
             (_E1515615171_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1515415167_)))
             (_E1515515203_
              (lambda ()
                (if (gx#stx-pair? _e1515415167_)
                    (let ((_e1515715175_ (gx#syntax-e _e1515415167_)))
                      (let ((_hd1515815178_ (##car _e1515715175_))
                            (_tl1515915180_ (##cdr _e1515715175_)))
                        (if (gx#stx-pair? _tl1515915180_)
                            (let ((_e1516015183_ (gx#syntax-e _tl1515915180_)))
                              (let ((_hd1516115186_ (##car _e1516015183_))
                                    (_tl1516215188_ (##cdr _e1516015183_)))
                                (let ((_id15191_ _hd1516115186_))
                                  (if (gx#stx-pair? _tl1516215188_)
                                      (let ((_e1516315193_
                                             (gx#syntax-e _tl1516215188_)))
                                        (let ((_hd1516415196_
                                               (##car _e1516315193_))
                                              (_tl1516515198_
                                               (##cdr _e1516315193_)))
                                          (let ((_binding-id15201_
                                                 _hd1516415196_))
                                            (if (gx#stx-null? _tl1516515198_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15191_)
                        (cons (gx#core-quote-syntax__0 _binding-id15201_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1515615171_))
                                                (_E1515615171_)))))
                                      (_E1515615171_)))))
                            (_E1515615171_))))
                    (_E1515615171_)))))
        (_E1515515203_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx15123_)
      (let* ((_e1512415131_ _stx15123_)
             (_E1512615135_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1512415131_)))
             (_E1512515149_
              (lambda ()
                (if (gx#stx-pair? _e1512415131_)
                    (let ((_e1512715139_ (gx#syntax-e _e1512415131_)))
                      (let ((_hd1512815142_ (##car _e1512715139_))
                            (_tl1512915144_ (##cdr _e1512715139_)))
                        (let ((_decls15147_ _tl1512915144_))
                          (if '#t
                              (cons '%#declare _decls15147_)
                              (_E1512615135_)))))
                    (_E1512615135_)))))
        (_E1512515149_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx15093_)
      (let* ((_e1509415101_ _stx15093_)
             (_E1509615105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1509415101_)))
             (_E1509515119_
              (lambda ()
                (if (gx#stx-pair? _e1509415101_)
                    (let ((_e1509715109_ (gx#syntax-e _e1509415101_)))
                      (let ((_hd1509815112_ (##car _e1509715109_))
                            (_tl1509915114_ (##cdr _e1509715109_)))
                        (let ((_clause15117_ _tl1509915114_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause15117_))
                              (_E1509615105_)))))
                    (_E1509615105_)))))
        (_E1509515119_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx15050_)
      (let* ((_e1505115061_ _stx15050_)
             (_E1505315065_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1505115061_)))
             (_E1505215089_
              (lambda ()
                (if (gx#stx-pair? _e1505115061_)
                    (let ((_e1505415069_ (gx#syntax-e _e1505115061_)))
                      (let ((_hd1505515072_ (##car _e1505415069_))
                            (_tl1505615074_ (##cdr _e1505415069_)))
                        (let ((_hd15077_ _hd1505515072_))
                          (if (gx#stx-pair? _tl1505615074_)
                              (let ((_e1505715079_
                                     (gx#syntax-e _tl1505615074_)))
                                (let ((_hd1505815082_ (##car _e1505715079_))
                                      (_tl1505915084_ (##cdr _e1505715079_)))
                                  (let ((_body15087_ _hd1505815082_))
                                    (if (gx#stx-null? _tl1505915084_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd15077_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body15087_)
                                                        '()))
                                            (_E1505315065_))
                                        (_E1505315065_)))))
                              (_E1505315065_)))))
                    (_E1505315065_)))))
        (_E1505215089_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx15020_)
      (let* ((_e1502115028_ _stx15020_)
             (_E1502315032_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1502115028_)))
             (_E1502215046_
              (lambda ()
                (if (gx#stx-pair? _e1502115028_)
                    (let ((_e1502415036_ (gx#syntax-e _e1502115028_)))
                      (let ((_hd1502515039_ (##car _e1502415036_))
                            (_tl1502615041_ (##cdr _e1502415036_)))
                        (let ((_clauses15044_ _tl1502615041_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses15044_))
                              (_E1502315032_)))))
                    (_E1502315032_)))))
        (_E1502215046_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx14955_ _form14956_)
        (let* ((_e1495714970_ _stx14955_)
               (_E1495914974_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1495714970_)))
               (_E1495815006_
                (lambda ()
                  (if (gx#stx-pair? _e1495714970_)
                      (let ((_e1496014978_ (gx#syntax-e _e1495714970_)))
                        (let ((_hd1496114981_ (##car _e1496014978_))
                              (_tl1496214983_ (##cdr _e1496014978_)))
                          (if (gx#stx-pair? _tl1496214983_)
                              (let ((_e1496314986_
                                     (gx#syntax-e _tl1496214983_)))
                                (let ((_hd1496414989_ (##car _e1496314986_))
                                      (_tl1496514991_ (##cdr _e1496314986_)))
                                  (let ((_hd14994_ _hd1496414989_))
                                    (if (gx#stx-pair? _tl1496514991_)
                                        (let ((_e1496614996_
                                               (gx#syntax-e _tl1496514991_)))
                                          (let ((_hd1496714999_
                                                 (##car _e1496614996_))
                                                (_tl1496815001_
                                                 (##cdr _e1496614996_)))
                                            (let ((_body15004_ _hd1496714999_))
                                              (if (gx#stx-null? _tl1496815001_)
                                                  (if '#t
                                                      (cons _form14956_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14994_)
                          (cons (gx#core-compile-top-syntax _body15004_) '())))
              (_E1495914974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1495914974_)))))
                                        (_E1495914974_)))))
                              (_E1495914974_))))
                      (_E1495914974_)))))
          (_E1495815006_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx15013_)
          (let ((_form15015_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx15013_ _form15015_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15919_
          (let ((_g15918_ (length _g15919_)))
            (cond ((##fx= _g15918_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15919_))
                  ((##fx= _g15918_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15919_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15919_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14952_)
      (gx#core-compile-top-let-values%__% _stx14952_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14950_)
      (gx#core-compile-top-let-values%__% _stx14950_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14909_)
      (let* ((_e1491014920_ _stx14909_)
             (_E1491214924_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1491014920_)))
             (_E1491114946_
              (lambda ()
                (if (gx#stx-pair? _e1491014920_)
                    (let ((_e1491314928_ (gx#syntax-e _e1491014920_)))
                      (let ((_hd1491414931_ (##car _e1491314928_))
                            (_tl1491514933_ (##cdr _e1491314928_)))
                        (if (gx#stx-pair? _tl1491514933_)
                            (let ((_e1491614936_ (gx#syntax-e _tl1491514933_)))
                              (let ((_hd1491714939_ (##car _e1491614936_))
                                    (_tl1491814941_ (##cdr _e1491614936_)))
                                (let ((_e14944_ _hd1491714939_))
                                  (if (gx#stx-null? _tl1491814941_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14944_)
                                                      '()))
                                          (_E1491214924_))
                                      (_E1491214924_)))))
                            (_E1491214924_))))
                    (_E1491214924_)))))
        (_E1491114946_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14868_)
      (let* ((_e1486914879_ _stx14868_)
             (_E1487114883_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1486914879_)))
             (_E1487014905_
              (lambda ()
                (if (gx#stx-pair? _e1486914879_)
                    (let ((_e1487214887_ (gx#syntax-e _e1486914879_)))
                      (let ((_hd1487314890_ (##car _e1487214887_))
                            (_tl1487414892_ (##cdr _e1487214887_)))
                        (if (gx#stx-pair? _tl1487414892_)
                            (let ((_e1487514895_ (gx#syntax-e _tl1487414892_)))
                              (let ((_hd1487614898_ (##car _e1487514895_))
                                    (_tl1487714900_ (##cdr _e1487514895_)))
                                (let ((_e14903_ _hd1487614898_))
                                  (if (gx#stx-null? _tl1487714900_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14903_)
                                                      '()))
                                          (_E1487114883_))
                                      (_E1487114883_)))))
                            (_E1487114883_))))
                    (_E1487114883_)))))
        (_E1487014905_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14825_)
      (let* ((_e1482614836_ _stx14825_)
             (_E1482814840_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1482614836_)))
             (_E1482714864_
              (lambda ()
                (if (gx#stx-pair? _e1482614836_)
                    (let ((_e1482914844_ (gx#syntax-e _e1482614836_)))
                      (let ((_hd1483014847_ (##car _e1482914844_))
                            (_tl1483114849_ (##cdr _e1482914844_)))
                        (if (gx#stx-pair? _tl1483114849_)
                            (let ((_e1483214852_ (gx#syntax-e _tl1483114849_)))
                              (let ((_hd1483314855_ (##car _e1483214852_))
                                    (_tl1483414857_ (##cdr _e1483214852_)))
                                (let* ((_rator14860_ _hd1483314855_)
                                       (_args14862_ _tl1483414857_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator14860_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args14862_)))
                                      (_E1482814840_)))))
                            (_E1482814840_))))
                    (_E1482814840_)))))
        (_E1482714864_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14758_)
      (let* ((_e1475914775_ _stx14758_)
             (_E1476114779_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1475914775_)))
             (_E1476014821_
              (lambda ()
                (if (gx#stx-pair? _e1475914775_)
                    (let ((_e1476214783_ (gx#syntax-e _e1475914775_)))
                      (let ((_hd1476314786_ (##car _e1476214783_))
                            (_tl1476414788_ (##cdr _e1476214783_)))
                        (if (gx#stx-pair? _tl1476414788_)
                            (let ((_e1476514791_ (gx#syntax-e _tl1476414788_)))
                              (let ((_hd1476614794_ (##car _e1476514791_))
                                    (_tl1476714796_ (##cdr _e1476514791_)))
                                (let ((_test14799_ _hd1476614794_))
                                  (if (gx#stx-pair? _tl1476714796_)
                                      (let ((_e1476814801_
                                             (gx#syntax-e _tl1476714796_)))
                                        (let ((_hd1476914804_
                                               (##car _e1476814801_))
                                              (_tl1477014806_
                                               (##cdr _e1476814801_)))
                                          (let ((_K14809_ _hd1476914804_))
                                            (if (gx#stx-pair? _tl1477014806_)
                                                (let ((_e1477114811_
                                                       (gx#syntax-e
                                                        _tl1477014806_)))
                                                  (let ((_hd1477214814_
                                                         (##car _e1477114811_))
                                                        (_tl1477314816_
                                                         (##cdr _e1477114811_)))
                                                    (let ((_E14819_
                                                           _hd1477214814_))
                                                      (if (gx#stx-null?
                                                           _tl1477314816_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14799_)
                                  (cons (gx#core-compile-top-syntax _K14809_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14819_)
                                              '()))))
                      (_E1476114779_))
                  (_E1476114779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1476114779_)))))
                                      (_E1476114779_)))))
                            (_E1476114779_))))
                    (_E1476114779_)))))
        (_E1476014821_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14717_)
      (let* ((_e1471814728_ _stx14717_)
             (_E1472014732_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1471814728_)))
             (_E1471914754_
              (lambda ()
                (if (gx#stx-pair? _e1471814728_)
                    (let ((_e1472114736_ (gx#syntax-e _e1471814728_)))
                      (let ((_hd1472214739_ (##car _e1472114736_))
                            (_tl1472314741_ (##cdr _e1472114736_)))
                        (if (gx#stx-pair? _tl1472314741_)
                            (let ((_e1472414744_ (gx#syntax-e _tl1472314741_)))
                              (let ((_hd1472514747_ (##car _e1472414744_))
                                    (_tl1472614749_ (##cdr _e1472414744_)))
                                (let ((_id14752_ _hd1472514747_))
                                  (if (gx#stx-null? _tl1472614749_)
                                      (if (gx#identifier? _id14752_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14752_)
                                                      '()))
                                          (_E1472014732_))
                                      (_E1472014732_)))))
                            (_E1472014732_))))
                    (_E1472014732_)))))
        (_E1471914754_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14663_)
      (let* ((_e1466414677_ _stx14663_)
             (_E1466614681_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1466414677_)))
             (_E1466514713_
              (lambda ()
                (if (gx#stx-pair? _e1466414677_)
                    (let ((_e1466714685_ (gx#syntax-e _e1466414677_)))
                      (let ((_hd1466814688_ (##car _e1466714685_))
                            (_tl1466914690_ (##cdr _e1466714685_)))
                        (if (gx#stx-pair? _tl1466914690_)
                            (let ((_e1467014693_ (gx#syntax-e _tl1466914690_)))
                              (let ((_hd1467114696_ (##car _e1467014693_))
                                    (_tl1467214698_ (##cdr _e1467014693_)))
                                (let ((_id14701_ _hd1467114696_))
                                  (if (gx#stx-pair? _tl1467214698_)
                                      (let ((_e1467314703_
                                             (gx#syntax-e _tl1467214698_)))
                                        (let ((_hd1467414706_
                                               (##car _e1467314703_))
                                              (_tl1467514708_
                                               (##cdr _e1467314703_)))
                                          (let ((_expr14711_ _hd1467414706_))
                                            (if (gx#stx-null? _tl1467514708_)
                                                (if (gx#identifier? _id14701_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14701_)
                        (cons (gx#core-compile-top-syntax _expr14711_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1466614681_))
                                                (_E1466614681_)))))
                                      (_E1466614681_)))))
                            (_E1466614681_))))
                    (_E1466614681_)))))
        (_E1466514713_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14658_)
      (let ((_$e14660_ (gx#resolve-identifier__0 _id14658_)))
        (if _$e14660_
            (##structure-ref _$e14660_ '1 gx#binding::t '#f)
            _id14658_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14656_)
      (if (gx#identifier? _hd14656_)
          (gx#core-compile-top-runtime-ref _hd14656_)
          '#f))))
