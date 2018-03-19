(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx16058_)
      (let* ((_e1605916066_ _stx16058_)
             (_E1606116070_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1605916066_)))
             (_E1606016084_
              (lambda ()
                (if (gx#stx-pair? _e1605916066_)
                    (let ((_e1606216074_ (gx#syntax-e _e1605916066_)))
                      (let ((_hd1606316077_ (##car _e1606216074_))
                            (_tl1606416079_ (##cdr _e1606216074_)))
                        (let ((_form16082_ _hd1606316077_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form16082_)
                               'compile-top-syntax
                               _stx16058_)
                              (_E1606116070_)))))
                    (_E1606116070_)))))
        (_E1606016084_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self16018_ _stx16019_)
      (let* ((_self1602016028_ _self16018_)
             (_E1602216032_
              (lambda () (error '"No clause matching" _self1602016028_)))
             (_K1602316044_
              (lambda (_K16035_)
                (let ((_$e16037_ (gx#stx-source _stx16019_)))
                  (if _$e16037_
                      ((lambda (_g1603916041_)
                         (gx#stx-wrap-source
                          (_K16035_ _stx16019_)
                          _g1603916041_))
                       _$e16037_)
                      (_K16035_ _stx16019_))))))
        (if (##structure-instance-of? _self1602016028_ 'gx#core-expander::t)
            (let* ((_e1602416047_ (##vector-ref _self1602016028_ '1))
                   (_e1602516050_ (##vector-ref _self1602016028_ '2))
                   (_e1602616053_ (##vector-ref _self1602016028_ '3))
                   (_K16056_ _e1602616053_))
              (_K1602316044_ _K16056_))
            (_E1602216032_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15892_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15892_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15862_)
      (let* ((_e1586315870_ _stx15862_)
             (_E1586515874_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1586315870_)))
             (_E1586415888_
              (lambda ()
                (if (gx#stx-pair? _e1586315870_)
                    (let ((_e1586615878_ (gx#syntax-e _e1586315870_)))
                      (let ((_hd1586715881_ (##car _e1586615878_))
                            (_tl1586815883_ (##cdr _e1586615878_)))
                        (let ((_body15886_ _tl1586815883_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15886_))
                              (_E1586515874_)))))
                    (_E1586515874_)))))
        (_E1586415888_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15831_)
      (let* ((_e1583215839_ _stx15831_)
             (_E1583415843_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1583215839_)))
             (_E1583315858_
              (lambda ()
                (if (gx#stx-pair? _e1583215839_)
                    (let ((_e1583515847_ (gx#syntax-e _e1583215839_)))
                      (let ((_hd1583615850_ (##car _e1583515847_))
                            (_tl1583715852_ (##cdr _e1583515847_)))
                        (let ((_body15855_ _tl1583715852_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15855_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1583415843_)))))
                    (_E1583415843_)))))
        (_E1583315858_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15801_)
      (let* ((_e1580215809_ _stx15801_)
             (_E1580415813_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1580215809_)))
             (_E1580315827_
              (lambda ()
                (if (gx#stx-pair? _e1580215809_)
                    (let ((_e1580515817_ (gx#syntax-e _e1580215809_)))
                      (let ((_hd1580615820_ (##car _e1580515817_))
                            (_tl1580715822_ (##cdr _e1580515817_)))
                        (let ((_body15825_ _tl1580715822_))
                          (if '#t
                              (cons '%#begin-foreign _body15825_)
                              (_E1580415813_)))))
                    (_E1580415813_)))))
        (_E1580315827_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15747_)
      (let* ((_e1574815761_ _stx15747_)
             (_E1575015765_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1574815761_)))
             (_E1574915797_
              (lambda ()
                (if (gx#stx-pair? _e1574815761_)
                    (let ((_e1575115769_ (gx#syntax-e _e1574815761_)))
                      (let ((_hd1575215772_ (##car _e1575115769_))
                            (_tl1575315774_ (##cdr _e1575115769_)))
                        (if (gx#stx-pair? _tl1575315774_)
                            (let ((_e1575415777_ (gx#syntax-e _tl1575315774_)))
                              (let ((_hd1575515780_ (##car _e1575415777_))
                                    (_tl1575615782_ (##cdr _e1575415777_)))
                                (let ((_ann15785_ _hd1575515780_))
                                  (if (gx#stx-pair? _tl1575615782_)
                                      (let ((_e1575715787_
                                             (gx#syntax-e _tl1575615782_)))
                                        (let ((_hd1575815790_
                                               (##car _e1575715787_))
                                              (_tl1575915792_
                                               (##cdr _e1575715787_)))
                                          (let ((_expr15795_ _hd1575815790_))
                                            (if (gx#stx-null? _tl1575915792_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15795_)
                                                    (_E1575015765_))
                                                (_E1575015765_)))))
                                      (_E1575015765_)))))
                            (_E1575015765_))))
                    (_E1575015765_)))))
        (_E1574915797_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15717_)
      (let* ((_e1571815725_ _stx15717_)
             (_E1572015729_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1571815725_)))
             (_E1571915743_
              (lambda ()
                (if (gx#stx-pair? _e1571815725_)
                    (let ((_e1572115733_ (gx#syntax-e _e1571815725_)))
                      (let ((_hd1572215736_ (##car _e1572115733_))
                            (_tl1572315738_ (##cdr _e1572115733_)))
                        (let ((_body15741_ _tl1572315738_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15741_))
                              (_E1572015729_)))))
                    (_E1572015729_)))))
        (_E1571915743_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15674_)
      (let* ((_e1567515685_ _stx15674_)
             (_E1567715689_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1567515685_)))
             (_E1567615713_
              (lambda ()
                (if (gx#stx-pair? _e1567515685_)
                    (let ((_e1567815693_ (gx#syntax-e _e1567515685_)))
                      (let ((_hd1567915696_ (##car _e1567815693_))
                            (_tl1568015698_ (##cdr _e1567815693_)))
                        (if (gx#stx-pair? _tl1568015698_)
                            (let ((_e1568115701_ (gx#syntax-e _tl1568015698_)))
                              (let ((_hd1568215704_ (##car _e1568115701_))
                                    (_tl1568315706_ (##cdr _e1568115701_)))
                                (let* ((_hd15709_ _hd1568215704_)
                                       (_body15711_ _tl1568315706_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd15709_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body15711_)))
                                      (_E1567715689_)))))
                            (_E1567715689_))))
                    (_E1567715689_)))))
        (_E1567615713_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15644_)
      (let* ((_e1564515652_ _stx15644_)
             (_E1564715656_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1564515652_)))
             (_E1564615670_
              (lambda ()
                (if (gx#stx-pair? _e1564515652_)
                    (let ((_e1564815660_ (gx#syntax-e _e1564515652_)))
                      (let ((_hd1564915663_ (##car _e1564815660_))
                            (_tl1565015665_ (##cdr _e1564815660_)))
                        (let ((_body15668_ _tl1565015665_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15668_))
                              (_E1564715656_)))))
                    (_E1564715656_)))))
        (_E1564615670_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15614_)
      (let* ((_e1561515622_ _stx15614_)
             (_E1561715626_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1561515622_)))
             (_E1561615640_
              (lambda ()
                (if (gx#stx-pair? _e1561515622_)
                    (let ((_e1561815630_ (gx#syntax-e _e1561515622_)))
                      (let ((_hd1561915633_ (##car _e1561815630_))
                            (_tl1562015635_ (##cdr _e1561815630_)))
                        (let ((_body15638_ _tl1562015635_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15638_))
                              (_E1561715626_)))))
                    (_E1561715626_)))))
        (_E1561615640_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15539_)
      (letrec ((_generate15541_
                (lambda (_hd15571_)
                  (let* ((_e1557215582_ _hd15571_)
                         (_E1557415586_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1557215582_)))
                         (_E1557315610_
                          (lambda ()
                            (if (gx#stx-pair? _e1557215582_)
                                (let ((_e1557515590_
                                       (gx#syntax-e _e1557215582_)))
                                  (let ((_hd1557615593_ (##car _e1557515590_))
                                        (_tl1557715595_ (##cdr _e1557515590_)))
                                    (let ((_id15598_ _hd1557615593_))
                                      (if (gx#stx-pair? _tl1557715595_)
                                          (let ((_e1557815600_
                                                 (gx#syntax-e _tl1557715595_)))
                                            (let ((_hd1557915603_
                                                   (##car _e1557815600_))
                                                  (_tl1558015605_
                                                   (##cdr _e1557815600_)))
                                              (let ((_eid15608_
                                                     _hd1557915603_))
                                                (if (gx#stx-null?
                                                     _tl1558015605_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15598_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15608_)
                            '()))
                (_E1557415586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1557415586_)))))
                                          (_E1557415586_)))))
                                (_E1557415586_)))))
                    (_E1557315610_)))))
        (let* ((_e1554215549_ _stx15539_)
               (_E1554415553_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1554215549_)))
               (_E1554315567_
                (lambda ()
                  (if (gx#stx-pair? _e1554215549_)
                      (let ((_e1554515557_ (gx#syntax-e _e1554215549_)))
                        (let ((_hd1554615560_ (##car _e1554515557_))
                              (_tl1554715562_ (##cdr _e1554515557_)))
                          (let ((_body15565_ _tl1554715562_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15541_
                                       _body15565_))
                                (_E1554415553_)))))
                      (_E1554415553_)))))
          (_E1554315567_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15485_)
      (let* ((_e1548615499_ _stx15485_)
             (_E1548815503_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1548615499_)))
             (_E1548715535_
              (lambda ()
                (if (gx#stx-pair? _e1548615499_)
                    (let ((_e1548915507_ (gx#syntax-e _e1548615499_)))
                      (let ((_hd1549015510_ (##car _e1548915507_))
                            (_tl1549115512_ (##cdr _e1548915507_)))
                        (if (gx#stx-pair? _tl1549115512_)
                            (let ((_e1549215515_ (gx#syntax-e _tl1549115512_)))
                              (let ((_hd1549315518_ (##car _e1549215515_))
                                    (_tl1549415520_ (##cdr _e1549215515_)))
                                (let ((_hd15523_ _hd1549315518_))
                                  (if (gx#stx-pair? _tl1549415520_)
                                      (let ((_e1549515525_
                                             (gx#syntax-e _tl1549415520_)))
                                        (let ((_hd1549615528_
                                               (##car _e1549515525_))
                                              (_tl1549715530_
                                               (##cdr _e1549515525_)))
                                          (let ((_expr15533_ _hd1549615528_))
                                            (if (gx#stx-null? _tl1549715530_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15523_)
                        (cons (gx#core-compile-top-syntax _expr15533_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1548815503_))
                                                (_E1548815503_)))))
                                      (_E1548815503_)))))
                            (_E1548815503_))))
                    (_E1548815503_)))))
        (_E1548715535_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx15430_)
      (let* ((_e1543115444_ _stx15430_)
             (_E1543315448_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1543115444_)))
             (_E1543215481_
              (lambda ()
                (if (gx#stx-pair? _e1543115444_)
                    (let ((_e1543415452_ (gx#syntax-e _e1543115444_)))
                      (let ((_hd1543515455_ (##car _e1543415452_))
                            (_tl1543615457_ (##cdr _e1543415452_)))
                        (if (gx#stx-pair? _tl1543615457_)
                            (let ((_e1543715460_ (gx#syntax-e _tl1543615457_)))
                              (let ((_hd1543815463_ (##car _e1543715460_))
                                    (_tl1543915465_ (##cdr _e1543715460_)))
                                (let ((_hd15468_ _hd1543815463_))
                                  (if (gx#stx-pair? _tl1543915465_)
                                      (let ((_e1544015470_
                                             (gx#syntax-e _tl1543915465_)))
                                        (let ((_hd1544115473_
                                               (##car _e1544015470_))
                                              (_tl1544215475_
                                               (##cdr _e1544015470_)))
                                          (let ((_expr15478_ _hd1544115473_))
                                            (if (gx#stx-null? _tl1544215475_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15468_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15478_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1543315448_))
                                                (_E1543315448_)))))
                                      (_E1543315448_)))))
                            (_E1543315448_))))
                    (_E1543315448_)))))
        (_E1543215481_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx15376_)
      (let* ((_e1537715390_ _stx15376_)
             (_E1537915394_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1537715390_)))
             (_E1537815426_
              (lambda ()
                (if (gx#stx-pair? _e1537715390_)
                    (let ((_e1538015398_ (gx#syntax-e _e1537715390_)))
                      (let ((_hd1538115401_ (##car _e1538015398_))
                            (_tl1538215403_ (##cdr _e1538015398_)))
                        (if (gx#stx-pair? _tl1538215403_)
                            (let ((_e1538315406_ (gx#syntax-e _tl1538215403_)))
                              (let ((_hd1538415409_ (##car _e1538315406_))
                                    (_tl1538515411_ (##cdr _e1538315406_)))
                                (let ((_hd15414_ _hd1538415409_))
                                  (if (gx#stx-pair? _tl1538515411_)
                                      (let ((_e1538615416_
                                             (gx#syntax-e _tl1538515411_)))
                                        (let ((_hd1538715419_
                                               (##car _e1538615416_))
                                              (_tl1538815421_
                                               (##cdr _e1538615416_)))
                                          (let ((_alias-id15424_
                                                 _hd1538715419_))
                                            (if (gx#stx-null? _tl1538815421_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15414_)
                        (cons (gx#core-quote-syntax__0 _alias-id15424_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1537915394_))
                                                (_E1537915394_)))))
                                      (_E1537915394_)))))
                            (_E1537915394_))))
                    (_E1537915394_)))))
        (_E1537815426_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx15322_)
      (let* ((_e1532315336_ _stx15322_)
             (_E1532515340_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1532315336_)))
             (_E1532415372_
              (lambda ()
                (if (gx#stx-pair? _e1532315336_)
                    (let ((_e1532615344_ (gx#syntax-e _e1532315336_)))
                      (let ((_hd1532715347_ (##car _e1532615344_))
                            (_tl1532815349_ (##cdr _e1532615344_)))
                        (if (gx#stx-pair? _tl1532815349_)
                            (let ((_e1532915352_ (gx#syntax-e _tl1532815349_)))
                              (let ((_hd1533015355_ (##car _e1532915352_))
                                    (_tl1533115357_ (##cdr _e1532915352_)))
                                (let ((_id15360_ _hd1533015355_))
                                  (if (gx#stx-pair? _tl1533115357_)
                                      (let ((_e1533215362_
                                             (gx#syntax-e _tl1533115357_)))
                                        (let ((_hd1533315365_
                                               (##car _e1533215362_))
                                              (_tl1533415367_
                                               (##cdr _e1533215362_)))
                                          (let ((_binding-id15370_
                                                 _hd1533315365_))
                                            (if (gx#stx-null? _tl1533415367_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15360_)
                        (cons (gx#core-quote-syntax__0 _binding-id15370_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1532515340_))
                                                (_E1532515340_)))))
                                      (_E1532515340_)))))
                            (_E1532515340_))))
                    (_E1532515340_)))))
        (_E1532415372_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx15292_)
      (let* ((_e1529315300_ _stx15292_)
             (_E1529515304_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1529315300_)))
             (_E1529415318_
              (lambda ()
                (if (gx#stx-pair? _e1529315300_)
                    (let ((_e1529615308_ (gx#syntax-e _e1529315300_)))
                      (let ((_hd1529715311_ (##car _e1529615308_))
                            (_tl1529815313_ (##cdr _e1529615308_)))
                        (let ((_decls15316_ _tl1529815313_))
                          (if '#t
                              (cons '%#declare _decls15316_)
                              (_E1529515304_)))))
                    (_E1529515304_)))))
        (_E1529415318_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx15262_)
      (let* ((_e1526315270_ _stx15262_)
             (_E1526515274_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1526315270_)))
             (_E1526415288_
              (lambda ()
                (if (gx#stx-pair? _e1526315270_)
                    (let ((_e1526615278_ (gx#syntax-e _e1526315270_)))
                      (let ((_hd1526715281_ (##car _e1526615278_))
                            (_tl1526815283_ (##cdr _e1526615278_)))
                        (let ((_clause15286_ _tl1526815283_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause15286_))
                              (_E1526515274_)))))
                    (_E1526515274_)))))
        (_E1526415288_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx15219_)
      (let* ((_e1522015230_ _stx15219_)
             (_E1522215234_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1522015230_)))
             (_E1522115258_
              (lambda ()
                (if (gx#stx-pair? _e1522015230_)
                    (let ((_e1522315238_ (gx#syntax-e _e1522015230_)))
                      (let ((_hd1522415241_ (##car _e1522315238_))
                            (_tl1522515243_ (##cdr _e1522315238_)))
                        (let ((_hd15246_ _hd1522415241_))
                          (if (gx#stx-pair? _tl1522515243_)
                              (let ((_e1522615248_
                                     (gx#syntax-e _tl1522515243_)))
                                (let ((_hd1522715251_ (##car _e1522615248_))
                                      (_tl1522815253_ (##cdr _e1522615248_)))
                                  (let ((_body15256_ _hd1522715251_))
                                    (if (gx#stx-null? _tl1522815253_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd15246_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body15256_)
                                                        '()))
                                            (_E1522215234_))
                                        (_E1522215234_)))))
                              (_E1522215234_)))))
                    (_E1522215234_)))))
        (_E1522115258_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx15189_)
      (let* ((_e1519015197_ _stx15189_)
             (_E1519215201_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1519015197_)))
             (_E1519115215_
              (lambda ()
                (if (gx#stx-pair? _e1519015197_)
                    (let ((_e1519315205_ (gx#syntax-e _e1519015197_)))
                      (let ((_hd1519415208_ (##car _e1519315205_))
                            (_tl1519515210_ (##cdr _e1519315205_)))
                        (let ((_clauses15213_ _tl1519515210_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses15213_))
                              (_E1519215201_)))))
                    (_E1519215201_)))))
        (_E1519115215_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx15124_ _form15125_)
        (let* ((_e1512615139_ _stx15124_)
               (_E1512815143_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1512615139_)))
               (_E1512715175_
                (lambda ()
                  (if (gx#stx-pair? _e1512615139_)
                      (let ((_e1512915147_ (gx#syntax-e _e1512615139_)))
                        (let ((_hd1513015150_ (##car _e1512915147_))
                              (_tl1513115152_ (##cdr _e1512915147_)))
                          (if (gx#stx-pair? _tl1513115152_)
                              (let ((_e1513215155_
                                     (gx#syntax-e _tl1513115152_)))
                                (let ((_hd1513315158_ (##car _e1513215155_))
                                      (_tl1513415160_ (##cdr _e1513215155_)))
                                  (let ((_hd15163_ _hd1513315158_))
                                    (if (gx#stx-pair? _tl1513415160_)
                                        (let ((_e1513515165_
                                               (gx#syntax-e _tl1513415160_)))
                                          (let ((_hd1513615168_
                                                 (##car _e1513515165_))
                                                (_tl1513715170_
                                                 (##cdr _e1513515165_)))
                                            (let ((_body15173_ _hd1513615168_))
                                              (if (gx#stx-null? _tl1513715170_)
                                                  (if '#t
                                                      (cons _form15125_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd15163_)
                          (cons (gx#core-compile-top-syntax _body15173_) '())))
              (_E1512815143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1512815143_)))))
                                        (_E1512815143_)))))
                              (_E1512815143_))))
                      (_E1512815143_)))))
          (_E1512715175_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx15182_)
          (let ((_form15184_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx15182_ _form15184_))))
      (define gx#core-compile-top-let-values%
        (lambda _g16088_
          (let ((_g16087_ (length _g16088_)))
            (cond ((##fx= _g16087_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g16088_))
                  ((##fx= _g16087_ 2)
                   (apply gx#core-compile-top-let-values%__% _g16088_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g16088_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx15121_)
      (gx#core-compile-top-let-values%__% _stx15121_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx15119_)
      (gx#core-compile-top-let-values%__% _stx15119_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx15078_)
      (let* ((_e1507915089_ _stx15078_)
             (_E1508115093_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1507915089_)))
             (_E1508015115_
              (lambda ()
                (if (gx#stx-pair? _e1507915089_)
                    (let ((_e1508215097_ (gx#syntax-e _e1507915089_)))
                      (let ((_hd1508315100_ (##car _e1508215097_))
                            (_tl1508415102_ (##cdr _e1508215097_)))
                        (if (gx#stx-pair? _tl1508415102_)
                            (let ((_e1508515105_ (gx#syntax-e _tl1508415102_)))
                              (let ((_hd1508615108_ (##car _e1508515105_))
                                    (_tl1508715110_ (##cdr _e1508515105_)))
                                (let ((_e15113_ _hd1508615108_))
                                  (if (gx#stx-null? _tl1508715110_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e15113_)
                                                      '()))
                                          (_E1508115093_))
                                      (_E1508115093_)))))
                            (_E1508115093_))))
                    (_E1508115093_)))))
        (_E1508015115_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx15037_)
      (let* ((_e1503815048_ _stx15037_)
             (_E1504015052_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1503815048_)))
             (_E1503915074_
              (lambda ()
                (if (gx#stx-pair? _e1503815048_)
                    (let ((_e1504115056_ (gx#syntax-e _e1503815048_)))
                      (let ((_hd1504215059_ (##car _e1504115056_))
                            (_tl1504315061_ (##cdr _e1504115056_)))
                        (if (gx#stx-pair? _tl1504315061_)
                            (let ((_e1504415064_ (gx#syntax-e _tl1504315061_)))
                              (let ((_hd1504515067_ (##car _e1504415064_))
                                    (_tl1504615069_ (##cdr _e1504415064_)))
                                (let ((_e15072_ _hd1504515067_))
                                  (if (gx#stx-null? _tl1504615069_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e15072_)
                                                      '()))
                                          (_E1504015052_))
                                      (_E1504015052_)))))
                            (_E1504015052_))))
                    (_E1504015052_)))))
        (_E1503915074_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14994_)
      (let* ((_e1499515005_ _stx14994_)
             (_E1499715009_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1499515005_)))
             (_E1499615033_
              (lambda ()
                (if (gx#stx-pair? _e1499515005_)
                    (let ((_e1499815013_ (gx#syntax-e _e1499515005_)))
                      (let ((_hd1499915016_ (##car _e1499815013_))
                            (_tl1500015018_ (##cdr _e1499815013_)))
                        (if (gx#stx-pair? _tl1500015018_)
                            (let ((_e1500115021_ (gx#syntax-e _tl1500015018_)))
                              (let ((_hd1500215024_ (##car _e1500115021_))
                                    (_tl1500315026_ (##cdr _e1500115021_)))
                                (let* ((_rator15029_ _hd1500215024_)
                                       (_args15031_ _tl1500315026_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator15029_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args15031_)))
                                      (_E1499715009_)))))
                            (_E1499715009_))))
                    (_E1499715009_)))))
        (_E1499615033_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14927_)
      (let* ((_e1492814944_ _stx14927_)
             (_E1493014948_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1492814944_)))
             (_E1492914990_
              (lambda ()
                (if (gx#stx-pair? _e1492814944_)
                    (let ((_e1493114952_ (gx#syntax-e _e1492814944_)))
                      (let ((_hd1493214955_ (##car _e1493114952_))
                            (_tl1493314957_ (##cdr _e1493114952_)))
                        (if (gx#stx-pair? _tl1493314957_)
                            (let ((_e1493414960_ (gx#syntax-e _tl1493314957_)))
                              (let ((_hd1493514963_ (##car _e1493414960_))
                                    (_tl1493614965_ (##cdr _e1493414960_)))
                                (let ((_test14968_ _hd1493514963_))
                                  (if (gx#stx-pair? _tl1493614965_)
                                      (let ((_e1493714970_
                                             (gx#syntax-e _tl1493614965_)))
                                        (let ((_hd1493814973_
                                               (##car _e1493714970_))
                                              (_tl1493914975_
                                               (##cdr _e1493714970_)))
                                          (let ((_K14978_ _hd1493814973_))
                                            (if (gx#stx-pair? _tl1493914975_)
                                                (let ((_e1494014980_
                                                       (gx#syntax-e
                                                        _tl1493914975_)))
                                                  (let ((_hd1494114983_
                                                         (##car _e1494014980_))
                                                        (_tl1494214985_
                                                         (##cdr _e1494014980_)))
                                                    (let ((_E14988_
                                                           _hd1494114983_))
                                                      (if (gx#stx-null?
                                                           _tl1494214985_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14968_)
                                  (cons (gx#core-compile-top-syntax _K14978_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14988_)
                                              '()))))
                      (_E1493014948_))
                  (_E1493014948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1493014948_)))))
                                      (_E1493014948_)))))
                            (_E1493014948_))))
                    (_E1493014948_)))))
        (_E1492914990_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14886_)
      (let* ((_e1488714897_ _stx14886_)
             (_E1488914901_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1488714897_)))
             (_E1488814923_
              (lambda ()
                (if (gx#stx-pair? _e1488714897_)
                    (let ((_e1489014905_ (gx#syntax-e _e1488714897_)))
                      (let ((_hd1489114908_ (##car _e1489014905_))
                            (_tl1489214910_ (##cdr _e1489014905_)))
                        (if (gx#stx-pair? _tl1489214910_)
                            (let ((_e1489314913_ (gx#syntax-e _tl1489214910_)))
                              (let ((_hd1489414916_ (##car _e1489314913_))
                                    (_tl1489514918_ (##cdr _e1489314913_)))
                                (let ((_id14921_ _hd1489414916_))
                                  (if (gx#stx-null? _tl1489514918_)
                                      (if (gx#identifier? _id14921_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14921_)
                                                      '()))
                                          (_E1488914901_))
                                      (_E1488914901_)))))
                            (_E1488914901_))))
                    (_E1488914901_)))))
        (_E1488814923_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14832_)
      (let* ((_e1483314846_ _stx14832_)
             (_E1483514850_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1483314846_)))
             (_E1483414882_
              (lambda ()
                (if (gx#stx-pair? _e1483314846_)
                    (let ((_e1483614854_ (gx#syntax-e _e1483314846_)))
                      (let ((_hd1483714857_ (##car _e1483614854_))
                            (_tl1483814859_ (##cdr _e1483614854_)))
                        (if (gx#stx-pair? _tl1483814859_)
                            (let ((_e1483914862_ (gx#syntax-e _tl1483814859_)))
                              (let ((_hd1484014865_ (##car _e1483914862_))
                                    (_tl1484114867_ (##cdr _e1483914862_)))
                                (let ((_id14870_ _hd1484014865_))
                                  (if (gx#stx-pair? _tl1484114867_)
                                      (let ((_e1484214872_
                                             (gx#syntax-e _tl1484114867_)))
                                        (let ((_hd1484314875_
                                               (##car _e1484214872_))
                                              (_tl1484414877_
                                               (##cdr _e1484214872_)))
                                          (let ((_expr14880_ _hd1484314875_))
                                            (if (gx#stx-null? _tl1484414877_)
                                                (if (gx#identifier? _id14870_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14870_)
                        (cons (gx#core-compile-top-syntax _expr14880_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1483514850_))
                                                (_E1483514850_)))))
                                      (_E1483514850_)))))
                            (_E1483514850_))))
                    (_E1483514850_)))))
        (_E1483414882_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14827_)
      (let ((_$e14829_ (gx#resolve-identifier__0 _id14827_)))
        (if _$e14829_
            (##structure-ref _$e14829_ '1 gx#binding::t '#f)
            _id14827_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14825_)
      (if (gx#identifier? _hd14825_)
          (gx#core-compile-top-runtime-ref _hd14825_)
          '#f))))
