(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15816_)
      (let* ((_e1581715824_ _stx15816_)
             (_E1581915828_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1581715824_)))
             (_E1581815842_
              (lambda ()
                (if (gx#stx-pair? _e1581715824_)
                    (let ((_e1582015832_ (gx#syntax-e _e1581715824_)))
                      (let ((_hd1582115835_ (##car _e1582015832_))
                            (_tl1582215837_ (##cdr _e1582015832_)))
                        (let ((_form15840_ _hd1582115835_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15840_)
                               'compile-top-syntax
                               _stx15816_)
                              (_E1581915828_)))))
                    (_E1581915828_)))))
        (_E1581815842_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15776_ _stx15777_)
      (let* ((_self1577815786_ _self15776_)
             (_E1578015790_
              (lambda () (error '"No clause matching" _self1577815786_)))
             (_K1578115802_
              (lambda (_K15793_)
                (let ((_$e15795_ (gx#stx-source _stx15777_)))
                  (if _$e15795_
                      ((lambda (_g1579715799_)
                         (gx#stx-wrap-source
                          (_K15793_ _stx15777_)
                          _g1579715799_))
                       _$e15795_)
                      (_K15793_ _stx15777_))))))
        (if (##structure-instance-of?
             _self1577815786_
             (##type-id gx#core-expander::t))
            (let* ((_e1578215805_ (##vector-ref _self1577815786_ '1))
                   (_e1578315808_ (##vector-ref _self1577815786_ '2))
                   (_e1578415811_ (##vector-ref _self1577815786_ '3))
                   (_K15814_ _e1578415811_))
              (_K1578115802_ _K15814_))
            (_E1578015790_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15650_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15650_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15620_)
      (let* ((_e1562115628_ _stx15620_)
             (_E1562315632_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1562115628_)))
             (_E1562215646_
              (lambda ()
                (if (gx#stx-pair? _e1562115628_)
                    (let ((_e1562415636_ (gx#syntax-e _e1562115628_)))
                      (let ((_hd1562515639_ (##car _e1562415636_))
                            (_tl1562615641_ (##cdr _e1562415636_)))
                        (let ((_body15644_ _tl1562615641_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15644_))
                              (_E1562315632_)))))
                    (_E1562315632_)))))
        (_E1562215646_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15589_)
      (let* ((_e1559015597_ _stx15589_)
             (_E1559215601_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1559015597_)))
             (_E1559115616_
              (lambda ()
                (if (gx#stx-pair? _e1559015597_)
                    (let ((_e1559315605_ (gx#syntax-e _e1559015597_)))
                      (let ((_hd1559415608_ (##car _e1559315605_))
                            (_tl1559515610_ (##cdr _e1559315605_)))
                        (let ((_body15613_ _tl1559515610_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15613_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1559215601_)))))
                    (_E1559215601_)))))
        (_E1559115616_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15559_)
      (let* ((_e1556015567_ _stx15559_)
             (_E1556215571_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1556015567_)))
             (_E1556115585_
              (lambda ()
                (if (gx#stx-pair? _e1556015567_)
                    (let ((_e1556315575_ (gx#syntax-e _e1556015567_)))
                      (let ((_hd1556415578_ (##car _e1556315575_))
                            (_tl1556515580_ (##cdr _e1556315575_)))
                        (let ((_body15583_ _tl1556515580_))
                          (if '#t
                              (cons '%#begin-foreign _body15583_)
                              (_E1556215571_)))))
                    (_E1556215571_)))))
        (_E1556115585_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15505_)
      (let* ((_e1550615519_ _stx15505_)
             (_E1550815523_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1550615519_)))
             (_E1550715555_
              (lambda ()
                (if (gx#stx-pair? _e1550615519_)
                    (let ((_e1550915527_ (gx#syntax-e _e1550615519_)))
                      (let ((_hd1551015530_ (##car _e1550915527_))
                            (_tl1551115532_ (##cdr _e1550915527_)))
                        (if (gx#stx-pair? _tl1551115532_)
                            (let ((_e1551215535_ (gx#syntax-e _tl1551115532_)))
                              (let ((_hd1551315538_ (##car _e1551215535_))
                                    (_tl1551415540_ (##cdr _e1551215535_)))
                                (let ((_ann15543_ _hd1551315538_))
                                  (if (gx#stx-pair? _tl1551415540_)
                                      (let ((_e1551515545_
                                             (gx#syntax-e _tl1551415540_)))
                                        (let ((_hd1551615548_
                                               (##car _e1551515545_))
                                              (_tl1551715550_
                                               (##cdr _e1551515545_)))
                                          (let ((_expr15553_ _hd1551615548_))
                                            (if (gx#stx-null? _tl1551715550_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15553_)
                                                    (_E1550815523_))
                                                (_E1550815523_)))))
                                      (_E1550815523_)))))
                            (_E1550815523_))))
                    (_E1550815523_)))))
        (_E1550715555_))))
  (define gx#core-compile-top-import%
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
                              (cons '%#import (gx#syntax->list _body15499_))
                              (_E1547815487_)))))
                    (_E1547815487_)))))
        (_E1547715501_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15432_)
      (let* ((_e1543315443_ _stx15432_)
             (_E1543515447_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1543315443_)))
             (_E1543415471_
              (lambda ()
                (if (gx#stx-pair? _e1543315443_)
                    (let ((_e1543615451_ (gx#syntax-e _e1543315443_)))
                      (let ((_hd1543715454_ (##car _e1543615451_))
                            (_tl1543815456_ (##cdr _e1543615451_)))
                        (if (gx#stx-pair? _tl1543815456_)
                            (let ((_e1543915459_ (gx#syntax-e _tl1543815456_)))
                              (let ((_hd1544015462_ (##car _e1543915459_))
                                    (_tl1544115464_ (##cdr _e1543915459_)))
                                (let* ((_hd15467_ _hd1544015462_)
                                       (_body15469_ _tl1544115464_))
                                  (if '#t
                                      (cons '%#module
                                            (cons (##structure-ref
                                                   (gx#syntax-local-e__0
                                                    _hd15467_)
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _body15469_)))
                                      (_E1543515447_)))))
                            (_E1543515447_))))
                    (_E1543515447_)))))
        (_E1543415471_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15402_)
      (let* ((_e1540315410_ _stx15402_)
             (_E1540515414_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1540315410_)))
             (_E1540415428_
              (lambda ()
                (if (gx#stx-pair? _e1540315410_)
                    (let ((_e1540615418_ (gx#syntax-e _e1540315410_)))
                      (let ((_hd1540715421_ (##car _e1540615418_))
                            (_tl1540815423_ (##cdr _e1540615418_)))
                        (let ((_body15426_ _tl1540815423_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15426_))
                              (_E1540515414_)))))
                    (_E1540515414_)))))
        (_E1540415428_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15372_)
      (let* ((_e1537315380_ _stx15372_)
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
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15396_))
                              (_E1537515384_)))))
                    (_E1537515384_)))))
        (_E1537415398_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15297_)
      (letrec ((_generate15299_
                (lambda (_hd15329_)
                  (let* ((_e1533015340_ _hd15329_)
                         (_E1533215344_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1533015340_)))
                         (_E1533115368_
                          (lambda ()
                            (if (gx#stx-pair? _e1533015340_)
                                (let ((_e1533315348_
                                       (gx#syntax-e _e1533015340_)))
                                  (let ((_hd1533415351_ (##car _e1533315348_))
                                        (_tl1533515353_ (##cdr _e1533315348_)))
                                    (let ((_id15356_ _hd1533415351_))
                                      (if (gx#stx-pair? _tl1533515353_)
                                          (let ((_e1533615358_
                                                 (gx#syntax-e _tl1533515353_)))
                                            (let ((_hd1533715361_
                                                   (##car _e1533615358_))
                                                  (_tl1533815363_
                                                   (##cdr _e1533615358_)))
                                              (let ((_eid15366_
                                                     _hd1533715361_))
                                                (if (gx#stx-null?
                                                     _tl1533815363_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15356_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15366_)
                            '()))
                (_E1533215344_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1533215344_)))))
                                          (_E1533215344_)))))
                                (_E1533215344_)))))
                    (_E1533115368_)))))
        (let* ((_e1530015307_ _stx15297_)
               (_E1530215311_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1530015307_)))
               (_E1530115325_
                (lambda ()
                  (if (gx#stx-pair? _e1530015307_)
                      (let ((_e1530315315_ (gx#syntax-e _e1530015307_)))
                        (let ((_hd1530415318_ (##car _e1530315315_))
                              (_tl1530515320_ (##cdr _e1530315315_)))
                          (let ((_body15323_ _tl1530515320_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15299_
                                       _body15323_))
                                (_E1530215311_)))))
                      (_E1530215311_)))))
          (_E1530115325_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx15243_)
      (let* ((_e1524415257_ _stx15243_)
             (_E1524615261_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1524415257_)))
             (_E1524515293_
              (lambda ()
                (if (gx#stx-pair? _e1524415257_)
                    (let ((_e1524715265_ (gx#syntax-e _e1524415257_)))
                      (let ((_hd1524815268_ (##car _e1524715265_))
                            (_tl1524915270_ (##cdr _e1524715265_)))
                        (if (gx#stx-pair? _tl1524915270_)
                            (let ((_e1525015273_ (gx#syntax-e _tl1524915270_)))
                              (let ((_hd1525115276_ (##car _e1525015273_))
                                    (_tl1525215278_ (##cdr _e1525015273_)))
                                (let ((_hd15281_ _hd1525115276_))
                                  (if (gx#stx-pair? _tl1525215278_)
                                      (let ((_e1525315283_
                                             (gx#syntax-e _tl1525215278_)))
                                        (let ((_hd1525415286_
                                               (##car _e1525315283_))
                                              (_tl1525515288_
                                               (##cdr _e1525315283_)))
                                          (let ((_expr15291_ _hd1525415286_))
                                            (if (gx#stx-null? _tl1525515288_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15281_)
                        (cons (gx#core-compile-top-syntax _expr15291_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1524615261_))
                                                (_E1524615261_)))))
                                      (_E1524615261_)))))
                            (_E1524615261_))))
                    (_E1524615261_)))))
        (_E1524515293_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx15188_)
      (let* ((_e1518915202_ _stx15188_)
             (_E1519115206_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1518915202_)))
             (_E1519015239_
              (lambda ()
                (if (gx#stx-pair? _e1518915202_)
                    (let ((_e1519215210_ (gx#syntax-e _e1518915202_)))
                      (let ((_hd1519315213_ (##car _e1519215210_))
                            (_tl1519415215_ (##cdr _e1519215210_)))
                        (if (gx#stx-pair? _tl1519415215_)
                            (let ((_e1519515218_ (gx#syntax-e _tl1519415215_)))
                              (let ((_hd1519615221_ (##car _e1519515218_))
                                    (_tl1519715223_ (##cdr _e1519515218_)))
                                (let ((_hd15226_ _hd1519615221_))
                                  (if (gx#stx-pair? _tl1519715223_)
                                      (let ((_e1519815228_
                                             (gx#syntax-e _tl1519715223_)))
                                        (let ((_hd1519915231_
                                               (##car _e1519815228_))
                                              (_tl1520015233_
                                               (##cdr _e1519815228_)))
                                          (let ((_expr15236_ _hd1519915231_))
                                            (if (gx#stx-null? _tl1520015233_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15226_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr15236_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1519115206_))
                                                (_E1519115206_)))))
                                      (_E1519115206_)))))
                            (_E1519115206_))))
                    (_E1519115206_)))))
        (_E1519015239_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx15134_)
      (let* ((_e1513515148_ _stx15134_)
             (_E1513715152_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1513515148_)))
             (_E1513615184_
              (lambda ()
                (if (gx#stx-pair? _e1513515148_)
                    (let ((_e1513815156_ (gx#syntax-e _e1513515148_)))
                      (let ((_hd1513915159_ (##car _e1513815156_))
                            (_tl1514015161_ (##cdr _e1513815156_)))
                        (if (gx#stx-pair? _tl1514015161_)
                            (let ((_e1514115164_ (gx#syntax-e _tl1514015161_)))
                              (let ((_hd1514215167_ (##car _e1514115164_))
                                    (_tl1514315169_ (##cdr _e1514115164_)))
                                (let ((_hd15172_ _hd1514215167_))
                                  (if (gx#stx-pair? _tl1514315169_)
                                      (let ((_e1514415174_
                                             (gx#syntax-e _tl1514315169_)))
                                        (let ((_hd1514515177_
                                               (##car _e1514415174_))
                                              (_tl1514615179_
                                               (##cdr _e1514415174_)))
                                          (let ((_alias-id15182_
                                                 _hd1514515177_))
                                            (if (gx#stx-null? _tl1514615179_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd15172_)
                        (cons (gx#core-quote-syntax__0 _alias-id15182_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1513715152_))
                                                (_E1513715152_)))))
                                      (_E1513715152_)))))
                            (_E1513715152_))))
                    (_E1513715152_)))))
        (_E1513615184_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx15080_)
      (let* ((_e1508115094_ _stx15080_)
             (_E1508315098_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1508115094_)))
             (_E1508215130_
              (lambda ()
                (if (gx#stx-pair? _e1508115094_)
                    (let ((_e1508415102_ (gx#syntax-e _e1508115094_)))
                      (let ((_hd1508515105_ (##car _e1508415102_))
                            (_tl1508615107_ (##cdr _e1508415102_)))
                        (if (gx#stx-pair? _tl1508615107_)
                            (let ((_e1508715110_ (gx#syntax-e _tl1508615107_)))
                              (let ((_hd1508815113_ (##car _e1508715110_))
                                    (_tl1508915115_ (##cdr _e1508715110_)))
                                (let ((_id15118_ _hd1508815113_))
                                  (if (gx#stx-pair? _tl1508915115_)
                                      (let ((_e1509015120_
                                             (gx#syntax-e _tl1508915115_)))
                                        (let ((_hd1509115123_
                                               (##car _e1509015120_))
                                              (_tl1509215125_
                                               (##cdr _e1509015120_)))
                                          (let ((_binding-id15128_
                                                 _hd1509115123_))
                                            (if (gx#stx-null? _tl1509215125_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15118_)
                        (cons (gx#core-quote-syntax__0 _binding-id15128_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1508315098_))
                                                (_E1508315098_)))))
                                      (_E1508315098_)))))
                            (_E1508315098_))))
                    (_E1508315098_)))))
        (_E1508215130_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx15050_)
      (let* ((_e1505115058_ _stx15050_)
             (_E1505315062_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1505115058_)))
             (_E1505215076_
              (lambda ()
                (if (gx#stx-pair? _e1505115058_)
                    (let ((_e1505415066_ (gx#syntax-e _e1505115058_)))
                      (let ((_hd1505515069_ (##car _e1505415066_))
                            (_tl1505615071_ (##cdr _e1505415066_)))
                        (let ((_decls15074_ _tl1505615071_))
                          (if '#t
                              (cons '%#declare _decls15074_)
                              (_E1505315062_)))))
                    (_E1505315062_)))))
        (_E1505215076_))))
  (define gx#core-compile-top-lambda%
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
                        (let ((_clause15044_ _tl1502615041_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause15044_))
                              (_E1502315032_)))))
                    (_E1502315032_)))))
        (_E1502215046_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14977_)
      (let* ((_e1497814988_ _stx14977_)
             (_E1498014992_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1497814988_)))
             (_E1497915016_
              (lambda ()
                (if (gx#stx-pair? _e1497814988_)
                    (let ((_e1498114996_ (gx#syntax-e _e1497814988_)))
                      (let ((_hd1498214999_ (##car _e1498114996_))
                            (_tl1498315001_ (##cdr _e1498114996_)))
                        (let ((_hd15004_ _hd1498214999_))
                          (if (gx#stx-pair? _tl1498315001_)
                              (let ((_e1498415006_
                                     (gx#syntax-e _tl1498315001_)))
                                (let ((_hd1498515009_ (##car _e1498415006_))
                                      (_tl1498615011_ (##cdr _e1498415006_)))
                                  (let ((_body15014_ _hd1498515009_))
                                    (if (gx#stx-null? _tl1498615011_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd15004_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body15014_)
                                                        '()))
                                            (_E1498014992_))
                                        (_E1498014992_)))))
                              (_E1498014992_)))))
                    (_E1498014992_)))))
        (_E1497915016_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14947_)
      (let* ((_e1494814955_ _stx14947_)
             (_E1495014959_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1494814955_)))
             (_E1494914973_
              (lambda ()
                (if (gx#stx-pair? _e1494814955_)
                    (let ((_e1495114963_ (gx#syntax-e _e1494814955_)))
                      (let ((_hd1495214966_ (##car _e1495114963_))
                            (_tl1495314968_ (##cdr _e1495114963_)))
                        (let ((_clauses14971_ _tl1495314968_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14971_))
                              (_E1495014959_)))))
                    (_E1495014959_)))))
        (_E1494914973_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx14882_ _form14883_)
        (let* ((_e1488414897_ _stx14882_)
               (_E1488614901_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1488414897_)))
               (_E1488514933_
                (lambda ()
                  (if (gx#stx-pair? _e1488414897_)
                      (let ((_e1488714905_ (gx#syntax-e _e1488414897_)))
                        (let ((_hd1488814908_ (##car _e1488714905_))
                              (_tl1488914910_ (##cdr _e1488714905_)))
                          (if (gx#stx-pair? _tl1488914910_)
                              (let ((_e1489014913_
                                     (gx#syntax-e _tl1488914910_)))
                                (let ((_hd1489114916_ (##car _e1489014913_))
                                      (_tl1489214918_ (##cdr _e1489014913_)))
                                  (let ((_hd14921_ _hd1489114916_))
                                    (if (gx#stx-pair? _tl1489214918_)
                                        (let ((_e1489314923_
                                               (gx#syntax-e _tl1489214918_)))
                                          (let ((_hd1489414926_
                                                 (##car _e1489314923_))
                                                (_tl1489514928_
                                                 (##cdr _e1489314923_)))
                                            (let ((_body14931_ _hd1489414926_))
                                              (if (gx#stx-null? _tl1489514928_)
                                                  (if '#t
                                                      (cons _form14883_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14921_)
                          (cons (gx#core-compile-top-syntax _body14931_) '())))
              (_E1488614901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1488614901_)))))
                                        (_E1488614901_)))))
                              (_E1488614901_))))
                      (_E1488614901_)))))
          (_E1488514933_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14940_)
          (let ((_form14942_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx14940_ _form14942_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15846_
          (let ((_g15845_ (length _g15846_)))
            (cond ((fx= _g15845_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15846_))
                  ((fx= _g15845_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15846_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15846_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14879_)
      (gx#core-compile-top-let-values%__% _stx14879_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14877_)
      (gx#core-compile-top-let-values%__% _stx14877_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14836_)
      (let* ((_e1483714847_ _stx14836_)
             (_E1483914851_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1483714847_)))
             (_E1483814873_
              (lambda ()
                (if (gx#stx-pair? _e1483714847_)
                    (let ((_e1484014855_ (gx#syntax-e _e1483714847_)))
                      (let ((_hd1484114858_ (##car _e1484014855_))
                            (_tl1484214860_ (##cdr _e1484014855_)))
                        (if (gx#stx-pair? _tl1484214860_)
                            (let ((_e1484314863_ (gx#syntax-e _tl1484214860_)))
                              (let ((_hd1484414866_ (##car _e1484314863_))
                                    (_tl1484514868_ (##cdr _e1484314863_)))
                                (let ((_e14871_ _hd1484414866_))
                                  (if (gx#stx-null? _tl1484514868_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14871_)
                                                      '()))
                                          (_E1483914851_))
                                      (_E1483914851_)))))
                            (_E1483914851_))))
                    (_E1483914851_)))))
        (_E1483814873_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14795_)
      (let* ((_e1479614806_ _stx14795_)
             (_E1479814810_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1479614806_)))
             (_E1479714832_
              (lambda ()
                (if (gx#stx-pair? _e1479614806_)
                    (let ((_e1479914814_ (gx#syntax-e _e1479614806_)))
                      (let ((_hd1480014817_ (##car _e1479914814_))
                            (_tl1480114819_ (##cdr _e1479914814_)))
                        (if (gx#stx-pair? _tl1480114819_)
                            (let ((_e1480214822_ (gx#syntax-e _tl1480114819_)))
                              (let ((_hd1480314825_ (##car _e1480214822_))
                                    (_tl1480414827_ (##cdr _e1480214822_)))
                                (let ((_e14830_ _hd1480314825_))
                                  (if (gx#stx-null? _tl1480414827_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14830_)
                                                      '()))
                                          (_E1479814810_))
                                      (_E1479814810_)))))
                            (_E1479814810_))))
                    (_E1479814810_)))))
        (_E1479714832_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14752_)
      (let* ((_e1475314763_ _stx14752_)
             (_E1475514767_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1475314763_)))
             (_E1475414791_
              (lambda ()
                (if (gx#stx-pair? _e1475314763_)
                    (let ((_e1475614771_ (gx#syntax-e _e1475314763_)))
                      (let ((_hd1475714774_ (##car _e1475614771_))
                            (_tl1475814776_ (##cdr _e1475614771_)))
                        (if (gx#stx-pair? _tl1475814776_)
                            (let ((_e1475914779_ (gx#syntax-e _tl1475814776_)))
                              (let ((_hd1476014782_ (##car _e1475914779_))
                                    (_tl1476114784_ (##cdr _e1475914779_)))
                                (let* ((_rator14787_ _hd1476014782_)
                                       (_args14789_ _tl1476114784_))
                                  (if '#t
                                      (cons '%#call
                                            (cons (gx#core-compile-top-syntax
                                                   _rator14787_)
                                                  (gx#stx-map1
                                                   gx#core-compile-top-syntax
                                                   _args14789_)))
                                      (_E1475514767_)))))
                            (_E1475514767_))))
                    (_E1475514767_)))))
        (_E1475414791_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14685_)
      (let* ((_e1468614702_ _stx14685_)
             (_E1468814706_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1468614702_)))
             (_E1468714748_
              (lambda ()
                (if (gx#stx-pair? _e1468614702_)
                    (let ((_e1468914710_ (gx#syntax-e _e1468614702_)))
                      (let ((_hd1469014713_ (##car _e1468914710_))
                            (_tl1469114715_ (##cdr _e1468914710_)))
                        (if (gx#stx-pair? _tl1469114715_)
                            (let ((_e1469214718_ (gx#syntax-e _tl1469114715_)))
                              (let ((_hd1469314721_ (##car _e1469214718_))
                                    (_tl1469414723_ (##cdr _e1469214718_)))
                                (let ((_test14726_ _hd1469314721_))
                                  (if (gx#stx-pair? _tl1469414723_)
                                      (let ((_e1469514728_
                                             (gx#syntax-e _tl1469414723_)))
                                        (let ((_hd1469614731_
                                               (##car _e1469514728_))
                                              (_tl1469714733_
                                               (##cdr _e1469514728_)))
                                          (let ((_K14736_ _hd1469614731_))
                                            (if (gx#stx-pair? _tl1469714733_)
                                                (let ((_e1469814738_
                                                       (gx#syntax-e
                                                        _tl1469714733_)))
                                                  (let ((_hd1469914741_
                                                         (##car _e1469814738_))
                                                        (_tl1470014743_
                                                         (##cdr _e1469814738_)))
                                                    (let ((_E14746_
                                                           _hd1469914741_))
                                                      (if (gx#stx-null?
                                                           _tl1470014743_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14726_)
                                  (cons (gx#core-compile-top-syntax _K14736_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14746_)
                                              '()))))
                      (_E1468814706_))
                  (_E1468814706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1468814706_)))))
                                      (_E1468814706_)))))
                            (_E1468814706_))))
                    (_E1468814706_)))))
        (_E1468714748_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14644_)
      (let* ((_e1464514655_ _stx14644_)
             (_E1464714659_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1464514655_)))
             (_E1464614681_
              (lambda ()
                (if (gx#stx-pair? _e1464514655_)
                    (let ((_e1464814663_ (gx#syntax-e _e1464514655_)))
                      (let ((_hd1464914666_ (##car _e1464814663_))
                            (_tl1465014668_ (##cdr _e1464814663_)))
                        (if (gx#stx-pair? _tl1465014668_)
                            (let ((_e1465114671_ (gx#syntax-e _tl1465014668_)))
                              (let ((_hd1465214674_ (##car _e1465114671_))
                                    (_tl1465314676_ (##cdr _e1465114671_)))
                                (let ((_id14679_ _hd1465214674_))
                                  (if (gx#stx-null? _tl1465314676_)
                                      (if (gx#identifier? _id14679_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14679_)
                                                      '()))
                                          (_E1464714659_))
                                      (_E1464714659_)))))
                            (_E1464714659_))))
                    (_E1464714659_)))))
        (_E1464614681_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14590_)
      (let* ((_e1459114604_ _stx14590_)
             (_E1459314608_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1459114604_)))
             (_E1459214640_
              (lambda ()
                (if (gx#stx-pair? _e1459114604_)
                    (let ((_e1459414612_ (gx#syntax-e _e1459114604_)))
                      (let ((_hd1459514615_ (##car _e1459414612_))
                            (_tl1459614617_ (##cdr _e1459414612_)))
                        (if (gx#stx-pair? _tl1459614617_)
                            (let ((_e1459714620_ (gx#syntax-e _tl1459614617_)))
                              (let ((_hd1459814623_ (##car _e1459714620_))
                                    (_tl1459914625_ (##cdr _e1459714620_)))
                                (let ((_id14628_ _hd1459814623_))
                                  (if (gx#stx-pair? _tl1459914625_)
                                      (let ((_e1460014630_
                                             (gx#syntax-e _tl1459914625_)))
                                        (let ((_hd1460114633_
                                               (##car _e1460014630_))
                                              (_tl1460214635_
                                               (##cdr _e1460014630_)))
                                          (let ((_expr14638_ _hd1460114633_))
                                            (if (gx#stx-null? _tl1460214635_)
                                                (if (gx#identifier? _id14628_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14628_)
                        (cons (gx#core-compile-top-syntax _expr14638_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1459314608_))
                                                (_E1459314608_)))))
                                      (_E1459314608_)))))
                            (_E1459314608_))))
                    (_E1459314608_)))))
        (_E1459214640_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14585_)
      (let ((_$e14587_ (gx#resolve-identifier__0 _id14585_)))
        (if _$e14587_
            (##structure-ref _$e14587_ '1 gx#binding::t '#f)
            _id14585_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14583_)
      (if (gx#identifier? _hd14583_)
          (gx#core-compile-top-runtime-ref _hd14583_)
          '#f))))
