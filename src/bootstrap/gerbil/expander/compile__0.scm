(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15890_)
      (let* ((_e1589115898_ _stx15890_)
             (_E1589315902_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1589115898_)))
             (_E1589215916_
              (lambda ()
                (if (gx#stx-pair? _e1589115898_)
                    (let ((_e1589415906_ (gx#syntax-e _e1589115898_)))
                      (let ((_hd1589515909_ (##car _e1589415906_))
                            (_tl1589615911_ (##cdr _e1589415906_)))
                        (let ((_form15914_ _hd1589515909_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15914_)
                               'compile-top-syntax
                               _stx15890_)
                              (_E1589315902_)))))
                    (_E1589315902_)))))
        (_E1589215916_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15850_ _stx15851_)
      (let* ((_self1585215860_ _self15850_)
             (_E1585415864_
              (lambda () (error '"No clause matching" _self1585215860_)))
             (_K1585515876_
              (lambda (_K15867_)
                (let ((_$e15869_ (gx#stx-source _stx15851_)))
                  (if _$e15869_
                      ((lambda (_g1587115873_)
                         (gx#stx-wrap-source
                          (_K15867_ _stx15851_)
                          _g1587115873_))
                       _$e15869_)
                      (_K15867_ _stx15851_))))))
        (if (##structure-instance-of? _self1585215860_ 'gx#core-expander::t)
            (let* ((_e1585615879_ (##vector-ref _self1585215860_ '1))
                   (_e1585715882_ (##vector-ref _self1585215860_ '2))
                   (_e1585815885_ (##vector-ref _self1585215860_ '3))
                   (_K15888_ _e1585815885_))
              (_K1585515876_ _K15888_))
            (_E1585415864_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15724_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15724_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15694_)
      (let* ((_e1569515702_ _stx15694_)
             (_E1569715706_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1569515702_)))
             (_E1569615720_
              (lambda ()
                (if (gx#stx-pair? _e1569515702_)
                    (let ((_e1569815710_ (gx#syntax-e _e1569515702_)))
                      (let ((_hd1569915713_ (##car _e1569815710_))
                            (_tl1570015715_ (##cdr _e1569815710_)))
                        (let ((_body15718_ _tl1570015715_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15718_))
                              (_E1569715706_)))))
                    (_E1569715706_)))))
        (_E1569615720_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15663_)
      (let* ((_e1566415671_ _stx15663_)
             (_E1566615675_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1566415671_)))
             (_E1566515690_
              (lambda ()
                (if (gx#stx-pair? _e1566415671_)
                    (let ((_e1566715679_ (gx#syntax-e _e1566415671_)))
                      (let ((_hd1566815682_ (##car _e1566715679_))
                            (_tl1566915684_ (##cdr _e1566715679_)))
                        (let ((_body15687_ _tl1566915684_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15687_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1566615675_)))))
                    (_E1566615675_)))))
        (_E1566515690_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15633_)
      (let* ((_e1563415641_ _stx15633_)
             (_E1563615645_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1563415641_)))
             (_E1563515659_
              (lambda ()
                (if (gx#stx-pair? _e1563415641_)
                    (let ((_e1563715649_ (gx#syntax-e _e1563415641_)))
                      (let ((_hd1563815652_ (##car _e1563715649_))
                            (_tl1563915654_ (##cdr _e1563715649_)))
                        (let ((_body15657_ _tl1563915654_))
                          (if '#t
                              (cons '%#begin-foreign _body15657_)
                              (_E1563615645_)))))
                    (_E1563615645_)))))
        (_E1563515659_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15579_)
      (let* ((_e1558015593_ _stx15579_)
             (_E1558215597_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1558015593_)))
             (_E1558115629_
              (lambda ()
                (if (gx#stx-pair? _e1558015593_)
                    (let ((_e1558315601_ (gx#syntax-e _e1558015593_)))
                      (let ((_hd1558415604_ (##car _e1558315601_))
                            (_tl1558515606_ (##cdr _e1558315601_)))
                        (if (gx#stx-pair? _tl1558515606_)
                            (let ((_e1558615609_ (gx#syntax-e _tl1558515606_)))
                              (let ((_hd1558715612_ (##car _e1558615609_))
                                    (_tl1558815614_ (##cdr _e1558615609_)))
                                (let ((_ann15617_ _hd1558715612_))
                                  (if (gx#stx-pair? _tl1558815614_)
                                      (let ((_e1558915619_
                                             (gx#syntax-e _tl1558815614_)))
                                        (let ((_hd1559015622_
                                               (##car _e1558915619_))
                                              (_tl1559115624_
                                               (##cdr _e1558915619_)))
                                          (let ((_expr15627_ _hd1559015622_))
                                            (if (gx#stx-null? _tl1559115624_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15627_)
                                                    (_E1558215597_))
                                                (_E1558215597_)))))
                                      (_E1558215597_)))))
                            (_E1558215597_))))
                    (_E1558215597_)))))
        (_E1558115629_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15549_)
      (let* ((_e1555015557_ _stx15549_)
             (_E1555215561_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1555015557_)))
             (_E1555115575_
              (lambda ()
                (if (gx#stx-pair? _e1555015557_)
                    (let ((_e1555315565_ (gx#syntax-e _e1555015557_)))
                      (let ((_hd1555415568_ (##car _e1555315565_))
                            (_tl1555515570_ (##cdr _e1555315565_)))
                        (let ((_body15573_ _tl1555515570_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15573_))
                              (_E1555215561_)))))
                    (_E1555215561_)))))
        (_E1555115575_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15506_)
      (let* ((_e1550715517_ _stx15506_)
             (_E1550915521_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1550715517_)))
             (_E1550815545_
              (lambda ()
                (if (gx#stx-pair? _e1550715517_)
                    (let ((_e1551015525_ (gx#syntax-e _e1550715517_)))
                      (let ((_hd1551115528_ (##car _e1551015525_))
                            (_tl1551215530_ (##cdr _e1551015525_)))
                        (if (gx#stx-pair? _tl1551215530_)
                            (let ((_e1551315533_ (gx#syntax-e _tl1551215530_)))
                              (let ((_hd1551415536_ (##car _e1551315533_))
                                    (_tl1551515538_ (##cdr _e1551315533_)))
                                (let* ((_hd15541_ _hd1551415536_)
                                       (_body15543_ _tl1551515538_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd15541_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body15543_)))
                                      (_E1550915521_)))))
                            (_E1550915521_))))
                    (_E1550915521_)))))
        (_E1550815545_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15476_)
      (let* ((_e1547715484_ _stx15476_)
             (_E1547915488_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1547715484_)))
             (_E1547815502_
              (lambda ()
                (if (gx#stx-pair? _e1547715484_)
                    (let ((_e1548015492_ (gx#syntax-e _e1547715484_)))
                      (let ((_hd1548115495_ (##car _e1548015492_))
                            (_tl1548215497_ (##cdr _e1548015492_)))
                        (let ((_body15500_ _tl1548215497_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15500_))
                              (_E1547915488_)))))
                    (_E1547915488_)))))
        (_E1547815502_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15446_)
      (let* ((_e1544715454_ _stx15446_)
             (_E1544915458_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1544715454_)))
             (_E1544815472_
              (lambda ()
                (if (gx#stx-pair? _e1544715454_)
                    (let ((_e1545015462_ (gx#syntax-e _e1544715454_)))
                      (let ((_hd1545115465_ (##car _e1545015462_))
                            (_tl1545215467_ (##cdr _e1545015462_)))
                        (let ((_body15470_ _tl1545215467_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15470_))
                              (_E1544915458_)))))
                    (_E1544915458_)))))
        (_E1544815472_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15371_)
      (letrec ((_generate15373_
                (lambda (_hd15403_)
                  (let* ((_e1540415414_ _hd15403_)
                         (_E1540615418_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1540415414_)))
                         (_E1540515442_
                          (lambda ()
                            (if (gx#stx-pair? _e1540415414_)
                                (let ((_e1540715422_
                                       (gx#syntax-e _e1540415414_)))
                                  (let ((_hd1540815425_ (##car _e1540715422_))
                                        (_tl1540915427_ (##cdr _e1540715422_)))
                                    (let ((_id15430_ _hd1540815425_))
                                      (if (gx#stx-pair? _tl1540915427_)
                                          (let ((_e1541015432_
                                                 (gx#syntax-e _tl1540915427_)))
                                            (let ((_hd1541115435_
                                                   (##car _e1541015432_))
                                                  (_tl1541215437_
                                                   (##cdr _e1541015432_)))
                                              (let ((_eid15440_
                                                     _hd1541115435_))
                                                (if (gx#stx-null?
                                                     _tl1541215437_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15430_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15440_)
                            '()))
                (_E1540615418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1540615418_)))))
                                          (_E1540615418_)))))
                                (_E1540615418_)))))
                    (_E1540515442_)))))
        (let* ((_e1537415381_ _stx15371_)
               (_E1537615385_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1537415381_)))
               (_E1537515399_
                (lambda ()
                  (if (gx#stx-pair? _e1537415381_)
                      (let ((_e1537715389_ (gx#syntax-e _e1537415381_)))
                        (let ((_hd1537815392_ (##car _e1537715389_))
                              (_tl1537915394_ (##cdr _e1537715389_)))
                          (let ((_body15397_ _tl1537915394_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15373_
                                       _body15397_))
                                (_E1537615385_)))))
                      (_E1537615385_)))))
          (_E1537515399_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15317_)
      (let* ((_e1531815331_ _stx15317_)
             (_E1532015335_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1531815331_)))
             (_E1531915367_
              (lambda ()
                (if (gx#stx-pair? _e1531815331_)
                    (let ((_e1532115339_ (gx#syntax-e _e1531815331_)))
                      (let ((_hd1532215342_ (##car _e1532115339_))
                            (_tl1532315344_ (##cdr _e1532115339_)))
                        (if (gx#stx-pair? _tl1532315344_)
                            (let ((_e1532415347_ (gx#syntax-e _tl1532315344_)))
                              (let ((_hd1532515350_ (##car _e1532415347_))
                                    (_tl1532615352_ (##cdr _e1532415347_)))
                                (let ((_hd15355_ _hd1532515350_))
                                  (if (gx#stx-pair? _tl1532615352_)
                                      (let ((_e1532715357_
                                             (gx#syntax-e _tl1532615352_)))
                                        (let ((_hd1532815360_
                                               (##car _e1532715357_))
                                              (_tl1532915362_
                                               (##cdr _e1532715357_)))
                                          (let ((_expr15365_ _hd1532815360_))
                                            (if (gx#stx-null? _tl1532915362_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15355_)
                        (cons (gx#core-compile-top-syntax _expr15365_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1532015335_))
                                                (_E1532015335_)))))
                                      (_E1532015335_)))))
                            (_E1532015335_))))
                    (_E1532015335_)))))
        (_E1531915367_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx15262_)
      (let* ((_e1526315276_ _stx15262_)
             (_E1526515280_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1526315276_)))
             (_E1526415313_
              (lambda ()
                (if (gx#stx-pair? _e1526315276_)
                    (let ((_e1526615284_ (gx#syntax-e _e1526315276_)))
                      (let ((_hd1526715287_ (##car _e1526615284_))
                            (_tl1526815289_ (##cdr _e1526615284_)))
                        (if (gx#stx-pair? _tl1526815289_)
                            (let ((_e1526915292_ (gx#syntax-e _tl1526815289_)))
                              (let ((_hd1527015295_ (##car _e1526915292_))
                                    (_tl1527115297_ (##cdr _e1526915292_)))
                                (let ((_hd15300_ _hd1527015295_))
                                  (if (gx#stx-pair? _tl1527115297_)
                                      (let ((_e1527215302_
                                             (gx#syntax-e _tl1527115297_)))
                                        (let ((_hd1527315305_
                                               (##car _e1527215302_))
                                              (_tl1527415307_
                                               (##cdr _e1527215302_)))
                                          (let ((_expr15310_ _hd1527315305_))
                                            (if (gx#stx-null? _tl1527415307_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15300_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15310_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1526515280_))
                                                (_E1526515280_)))))
                                      (_E1526515280_)))))
                            (_E1526515280_))))
                    (_E1526515280_)))))
        (_E1526415313_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx15208_)
      (let* ((_e1520915222_ _stx15208_)
             (_E1521115226_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1520915222_)))
             (_E1521015258_
              (lambda ()
                (if (gx#stx-pair? _e1520915222_)
                    (let ((_e1521215230_ (gx#syntax-e _e1520915222_)))
                      (let ((_hd1521315233_ (##car _e1521215230_))
                            (_tl1521415235_ (##cdr _e1521215230_)))
                        (if (gx#stx-pair? _tl1521415235_)
                            (let ((_e1521515238_ (gx#syntax-e _tl1521415235_)))
                              (let ((_hd1521615241_ (##car _e1521515238_))
                                    (_tl1521715243_ (##cdr _e1521515238_)))
                                (let ((_hd15246_ _hd1521615241_))
                                  (if (gx#stx-pair? _tl1521715243_)
                                      (let ((_e1521815248_
                                             (gx#syntax-e _tl1521715243_)))
                                        (let ((_hd1521915251_
                                               (##car _e1521815248_))
                                              (_tl1522015253_
                                               (##cdr _e1521815248_)))
                                          (let ((_alias-id15256_
                                                 _hd1521915251_))
                                            (if (gx#stx-null? _tl1522015253_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15246_)
                        (cons (gx#core-quote-syntax__0 _alias-id15256_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1521115226_))
                                                (_E1521115226_)))))
                                      (_E1521115226_)))))
                            (_E1521115226_))))
                    (_E1521115226_)))))
        (_E1521015258_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx15154_)
      (let* ((_e1515515168_ _stx15154_)
             (_E1515715172_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1515515168_)))
             (_E1515615204_
              (lambda ()
                (if (gx#stx-pair? _e1515515168_)
                    (let ((_e1515815176_ (gx#syntax-e _e1515515168_)))
                      (let ((_hd1515915179_ (##car _e1515815176_))
                            (_tl1516015181_ (##cdr _e1515815176_)))
                        (if (gx#stx-pair? _tl1516015181_)
                            (let ((_e1516115184_ (gx#syntax-e _tl1516015181_)))
                              (let ((_hd1516215187_ (##car _e1516115184_))
                                    (_tl1516315189_ (##cdr _e1516115184_)))
                                (let ((_id15192_ _hd1516215187_))
                                  (if (gx#stx-pair? _tl1516315189_)
                                      (let ((_e1516415194_
                                             (gx#syntax-e _tl1516315189_)))
                                        (let ((_hd1516515197_
                                               (##car _e1516415194_))
                                              (_tl1516615199_
                                               (##cdr _e1516415194_)))
                                          (let ((_binding-id15202_
                                                 _hd1516515197_))
                                            (if (gx#stx-null? _tl1516615199_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15192_)
                        (cons (gx#core-quote-syntax__0 _binding-id15202_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1515715172_))
                                                (_E1515715172_)))))
                                      (_E1515715172_)))))
                            (_E1515715172_))))
                    (_E1515715172_)))))
        (_E1515615204_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx15124_)
      (let* ((_e1512515132_ _stx15124_)
             (_E1512715136_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1512515132_)))
             (_E1512615150_
              (lambda ()
                (if (gx#stx-pair? _e1512515132_)
                    (let ((_e1512815140_ (gx#syntax-e _e1512515132_)))
                      (let ((_hd1512915143_ (##car _e1512815140_))
                            (_tl1513015145_ (##cdr _e1512815140_)))
                        (let ((_decls15148_ _tl1513015145_))
                          (if '#t
                              (cons '%#declare _decls15148_)
                              (_E1512715136_)))))
                    (_E1512715136_)))))
        (_E1512615150_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx15094_)
      (let* ((_e1509515102_ _stx15094_)
             (_E1509715106_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1509515102_)))
             (_E1509615120_
              (lambda ()
                (if (gx#stx-pair? _e1509515102_)
                    (let ((_e1509815110_ (gx#syntax-e _e1509515102_)))
                      (let ((_hd1509915113_ (##car _e1509815110_))
                            (_tl1510015115_ (##cdr _e1509815110_)))
                        (let ((_clause15118_ _tl1510015115_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause15118_))
                              (_E1509715106_)))))
                    (_E1509715106_)))))
        (_E1509615120_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx15051_)
      (let* ((_e1505215062_ _stx15051_)
             (_E1505415066_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1505215062_)))
             (_E1505315090_
              (lambda ()
                (if (gx#stx-pair? _e1505215062_)
                    (let ((_e1505515070_ (gx#syntax-e _e1505215062_)))
                      (let ((_hd1505615073_ (##car _e1505515070_))
                            (_tl1505715075_ (##cdr _e1505515070_)))
                        (let ((_hd15078_ _hd1505615073_))
                          (if (gx#stx-pair? _tl1505715075_)
                              (let ((_e1505815080_
                                     (gx#syntax-e _tl1505715075_)))
                                (let ((_hd1505915083_ (##car _e1505815080_))
                                      (_tl1506015085_ (##cdr _e1505815080_)))
                                  (let ((_body15088_ _hd1505915083_))
                                    (if (gx#stx-null? _tl1506015085_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd15078_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body15088_)
                                                        '()))
                                            (_E1505415066_))
                                        (_E1505415066_)))))
                              (_E1505415066_)))))
                    (_E1505415066_)))))
        (_E1505315090_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx15021_)
      (let* ((_e1502215029_ _stx15021_)
             (_E1502415033_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1502215029_)))
             (_E1502315047_
              (lambda ()
                (if (gx#stx-pair? _e1502215029_)
                    (let ((_e1502515037_ (gx#syntax-e _e1502215029_)))
                      (let ((_hd1502615040_ (##car _e1502515037_))
                            (_tl1502715042_ (##cdr _e1502515037_)))
                        (let ((_clauses15045_ _tl1502715042_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses15045_))
                              (_E1502415033_)))))
                    (_E1502415033_)))))
        (_E1502315047_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx14956_ _form14957_)
        (let* ((_e1495814971_ _stx14956_)
               (_E1496014975_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1495814971_)))
               (_E1495915007_
                (lambda ()
                  (if (gx#stx-pair? _e1495814971_)
                      (let ((_e1496114979_ (gx#syntax-e _e1495814971_)))
                        (let ((_hd1496214982_ (##car _e1496114979_))
                              (_tl1496314984_ (##cdr _e1496114979_)))
                          (if (gx#stx-pair? _tl1496314984_)
                              (let ((_e1496414987_
                                     (gx#syntax-e _tl1496314984_)))
                                (let ((_hd1496514990_ (##car _e1496414987_))
                                      (_tl1496614992_ (##cdr _e1496414987_)))
                                  (let ((_hd14995_ _hd1496514990_))
                                    (if (gx#stx-pair? _tl1496614992_)
                                        (let ((_e1496714997_
                                               (gx#syntax-e _tl1496614992_)))
                                          (let ((_hd1496815000_
                                                 (##car _e1496714997_))
                                                (_tl1496915002_
                                                 (##cdr _e1496714997_)))
                                            (let ((_body15005_ _hd1496815000_))
                                              (if (gx#stx-null? _tl1496915002_)
                                                  (if '#t
                                                      (cons _form14957_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14995_)
                          (cons (gx#core-compile-top-syntax _body15005_) '())))
              (_E1496014975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1496014975_)))))
                                        (_E1496014975_)))))
                              (_E1496014975_))))
                      (_E1496014975_)))))
          (_E1495915007_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx15014_)
          (let ((_form15016_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx15014_ _form15016_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15920_
          (let ((_g15919_ (length _g15920_)))
            (cond ((##fx= _g15919_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15920_))
                  ((##fx= _g15919_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15920_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15920_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14953_)
      (gx#core-compile-top-let-values%__% _stx14953_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14951_)
      (gx#core-compile-top-let-values%__% _stx14951_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14910_)
      (let* ((_e1491114921_ _stx14910_)
             (_E1491314925_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1491114921_)))
             (_E1491214947_
              (lambda ()
                (if (gx#stx-pair? _e1491114921_)
                    (let ((_e1491414929_ (gx#syntax-e _e1491114921_)))
                      (let ((_hd1491514932_ (##car _e1491414929_))
                            (_tl1491614934_ (##cdr _e1491414929_)))
                        (if (gx#stx-pair? _tl1491614934_)
                            (let ((_e1491714937_ (gx#syntax-e _tl1491614934_)))
                              (let ((_hd1491814940_ (##car _e1491714937_))
                                    (_tl1491914942_ (##cdr _e1491714937_)))
                                (let ((_e14945_ _hd1491814940_))
                                  (if (gx#stx-null? _tl1491914942_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14945_)
                                                      '()))
                                          (_E1491314925_))
                                      (_E1491314925_)))))
                            (_E1491314925_))))
                    (_E1491314925_)))))
        (_E1491214947_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14869_)
      (let* ((_e1487014880_ _stx14869_)
             (_E1487214884_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1487014880_)))
             (_E1487114906_
              (lambda ()
                (if (gx#stx-pair? _e1487014880_)
                    (let ((_e1487314888_ (gx#syntax-e _e1487014880_)))
                      (let ((_hd1487414891_ (##car _e1487314888_))
                            (_tl1487514893_ (##cdr _e1487314888_)))
                        (if (gx#stx-pair? _tl1487514893_)
                            (let ((_e1487614896_ (gx#syntax-e _tl1487514893_)))
                              (let ((_hd1487714899_ (##car _e1487614896_))
                                    (_tl1487814901_ (##cdr _e1487614896_)))
                                (let ((_e14904_ _hd1487714899_))
                                  (if (gx#stx-null? _tl1487814901_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14904_)
                                                      '()))
                                          (_E1487214884_))
                                      (_E1487214884_)))))
                            (_E1487214884_))))
                    (_E1487214884_)))))
        (_E1487114906_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14826_)
      (let* ((_e1482714837_ _stx14826_)
             (_E1482914841_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1482714837_)))
             (_E1482814865_
              (lambda ()
                (if (gx#stx-pair? _e1482714837_)
                    (let ((_e1483014845_ (gx#syntax-e _e1482714837_)))
                      (let ((_hd1483114848_ (##car _e1483014845_))
                            (_tl1483214850_ (##cdr _e1483014845_)))
                        (if (gx#stx-pair? _tl1483214850_)
                            (let ((_e1483314853_ (gx#syntax-e _tl1483214850_)))
                              (let ((_hd1483414856_ (##car _e1483314853_))
                                    (_tl1483514858_ (##cdr _e1483314853_)))
                                (let* ((_rator14861_ _hd1483414856_)
                                       (_args14863_ _tl1483514858_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator14861_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args14863_)))
                                      (_E1482914841_)))))
                            (_E1482914841_))))
                    (_E1482914841_)))))
        (_E1482814865_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14759_)
      (let* ((_e1476014776_ _stx14759_)
             (_E1476214780_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1476014776_)))
             (_E1476114822_
              (lambda ()
                (if (gx#stx-pair? _e1476014776_)
                    (let ((_e1476314784_ (gx#syntax-e _e1476014776_)))
                      (let ((_hd1476414787_ (##car _e1476314784_))
                            (_tl1476514789_ (##cdr _e1476314784_)))
                        (if (gx#stx-pair? _tl1476514789_)
                            (let ((_e1476614792_ (gx#syntax-e _tl1476514789_)))
                              (let ((_hd1476714795_ (##car _e1476614792_))
                                    (_tl1476814797_ (##cdr _e1476614792_)))
                                (let ((_test14800_ _hd1476714795_))
                                  (if (gx#stx-pair? _tl1476814797_)
                                      (let ((_e1476914802_
                                             (gx#syntax-e _tl1476814797_)))
                                        (let ((_hd1477014805_
                                               (##car _e1476914802_))
                                              (_tl1477114807_
                                               (##cdr _e1476914802_)))
                                          (let ((_K14810_ _hd1477014805_))
                                            (if (gx#stx-pair? _tl1477114807_)
                                                (let ((_e1477214812_
                                                       (gx#syntax-e
                                                        _tl1477114807_)))
                                                  (let ((_hd1477314815_
                                                         (##car _e1477214812_))
                                                        (_tl1477414817_
                                                         (##cdr _e1477214812_)))
                                                    (let ((_E14820_
                                                           _hd1477314815_))
                                                      (if (gx#stx-null?
                                                           _tl1477414817_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14800_)
                                  (cons (gx#core-compile-top-syntax _K14810_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14820_)
                                              '()))))
                      (_E1476214780_))
                  (_E1476214780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1476214780_)))))
                                      (_E1476214780_)))))
                            (_E1476214780_))))
                    (_E1476214780_)))))
        (_E1476114822_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14718_)
      (let* ((_e1471914729_ _stx14718_)
             (_E1472114733_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1471914729_)))
             (_E1472014755_
              (lambda ()
                (if (gx#stx-pair? _e1471914729_)
                    (let ((_e1472214737_ (gx#syntax-e _e1471914729_)))
                      (let ((_hd1472314740_ (##car _e1472214737_))
                            (_tl1472414742_ (##cdr _e1472214737_)))
                        (if (gx#stx-pair? _tl1472414742_)
                            (let ((_e1472514745_ (gx#syntax-e _tl1472414742_)))
                              (let ((_hd1472614748_ (##car _e1472514745_))
                                    (_tl1472714750_ (##cdr _e1472514745_)))
                                (let ((_id14753_ _hd1472614748_))
                                  (if (gx#stx-null? _tl1472714750_)
                                      (if (gx#identifier? _id14753_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14753_)
                                                      '()))
                                          (_E1472114733_))
                                      (_E1472114733_)))))
                            (_E1472114733_))))
                    (_E1472114733_)))))
        (_E1472014755_))))
  (define gx#core-compile-top-setq%
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
                                (let ((_id14702_ _hd1467214697_))
                                  (if (gx#stx-pair? _tl1467314699_)
                                      (let ((_e1467414704_
                                             (gx#syntax-e _tl1467314699_)))
                                        (let ((_hd1467514707_
                                               (##car _e1467414704_))
                                              (_tl1467614709_
                                               (##cdr _e1467414704_)))
                                          (let ((_expr14712_ _hd1467514707_))
                                            (if (gx#stx-null? _tl1467614709_)
                                                (if (gx#identifier? _id14702_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14702_)
                        (cons (gx#core-compile-top-syntax _expr14712_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1466714682_))
                                                (_E1466714682_)))))
                                      (_E1466714682_)))))
                            (_E1466714682_))))
                    (_E1466714682_)))))
        (_E1466614714_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14659_)
      (let ((_$e14661_ (gx#resolve-identifier__0 _id14659_)))
        (if _$e14661_
            (##structure-ref _$e14661_ '1 gx#binding::t '#f)
            _id14659_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14657_)
      (if (gx#identifier? _hd14657_)
          (gx#core-compile-top-runtime-ref _hd14657_)
          '#f))))
