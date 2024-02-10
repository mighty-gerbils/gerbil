(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707573212)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx166868_)
        (let* ((_e166869166876_ _stx166868_)
               (_E166871166880_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166869166876_)))
               (_E166870166894_
                (lambda ()
                  (if (gx#stx-pair? _e166869166876_)
                      (let ((_e166872166884_ (gx#syntax-e _e166869166876_)))
                        (let ((_hd166873166887_ (##car _e166872166884_))
                              (_tl166874166889_ (##cdr _e166872166884_)))
                          (let ((_form166892_ _hd166873166887_))
                            (if '#t
                                (let* ((__self171365
                                        (gx#syntax-local-e__0 _form166892_))
                                       (__method171366
                                        (method-ref
                                         __self171365
                                         'compile-top-syntax)))
                                  (if __method171366
                                      (__method171366 __self171365 _stx166868_)
                                      (error '"Missing method"
                                             __self171365
                                             'compile-top-syntax)))
                                (_E166871166880_)))))
                      (_E166871166880_)))))
          (_E166870166894_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self166828_ _stx166829_)
        (let* ((_self166830166838_ _self166828_)
               (_E166832166842_
                (lambda () (error '"No clause matching" _self166830166838_)))
               (_K166833166854_
                (lambda (_K166845_)
                  (let ((_$e166847_ (gx#stx-source _stx166829_)))
                    (if _$e166847_
                        ((lambda (_g166849166851_)
                           (gx#stx-wrap-source
                            (_K166845_ _stx166829_)
                            _g166849166851_))
                         _$e166847_)
                        (_K166845_ _stx166829_))))))
          (if (##structure-instance-of?
               _self166830166838_
               'gx#core-expander::t)
              (let* ((_e166834166857_
                      (##unchecked-structure-ref
                       _self166830166838_
                       '1
                       gx#expander::t
                       '#f))
                     (_e166835166860_
                      (##unchecked-structure-ref
                       _self166830166838_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e166836166863_
                      (##unchecked-structure-ref
                       _self166830166838_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K166866_ _e166836166863_))
                (_K166833166854_ _K166866_))
              (_E166832166842_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166702_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166702_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166672_)
        (let* ((_e166673166680_ _stx166672_)
               (_E166675166684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166673166680_)))
               (_E166674166698_
                (lambda ()
                  (if (gx#stx-pair? _e166673166680_)
                      (let ((_e166676166688_ (gx#syntax-e _e166673166680_)))
                        (let ((_hd166677166691_ (##car _e166676166688_))
                              (_tl166678166693_ (##cdr _e166676166688_)))
                          (let ((_body166696_ _tl166678166693_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166696_))
                                (_E166675166684_)))))
                      (_E166675166684_)))))
          (_E166674166698_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166641_)
        (let* ((_e166642166649_ _stx166641_)
               (_E166644166653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166642166649_)))
               (_E166643166668_
                (lambda ()
                  (if (gx#stx-pair? _e166642166649_)
                      (let ((_e166645166657_ (gx#syntax-e _e166642166649_)))
                        (let ((_hd166646166660_ (##car _e166645166657_))
                              (_tl166647166662_ (##cdr _e166645166657_)))
                          (let ((_body166665_ _tl166647166662_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166665_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166644166653_)))))
                      (_E166644166653_)))))
          (_E166643166668_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166611_)
        (let* ((_e166612166619_ _stx166611_)
               (_E166614166623_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166612166619_)))
               (_E166613166637_
                (lambda ()
                  (if (gx#stx-pair? _e166612166619_)
                      (let ((_e166615166627_ (gx#syntax-e _e166612166619_)))
                        (let ((_hd166616166630_ (##car _e166615166627_))
                              (_tl166617166632_ (##cdr _e166615166627_)))
                          (let ((_body166635_ _tl166617166632_))
                            (if '#t
                                (cons '%#begin-foreign _body166635_)
                                (_E166614166623_)))))
                      (_E166614166623_)))))
          (_E166613166637_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166557_)
        (let* ((_e166558166571_ _stx166557_)
               (_E166560166575_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166558166571_)))
               (_E166559166607_
                (lambda ()
                  (if (gx#stx-pair? _e166558166571_)
                      (let ((_e166561166579_ (gx#syntax-e _e166558166571_)))
                        (let ((_hd166562166582_ (##car _e166561166579_))
                              (_tl166563166584_ (##cdr _e166561166579_)))
                          (if (gx#stx-pair? _tl166563166584_)
                              (let ((_e166564166587_
                                     (gx#syntax-e _tl166563166584_)))
                                (let ((_hd166565166590_
                                       (##car _e166564166587_))
                                      (_tl166566166592_
                                       (##cdr _e166564166587_)))
                                  (let ((_ann166595_ _hd166565166590_))
                                    (if (gx#stx-pair? _tl166566166592_)
                                        (let ((_e166567166597_
                                               (gx#syntax-e _tl166566166592_)))
                                          (let ((_hd166568166600_
                                                 (##car _e166567166597_))
                                                (_tl166569166602_
                                                 (##cdr _e166567166597_)))
                                            (let ((_expr166605_
                                                   _hd166568166600_))
                                              (if (gx#stx-null?
                                                   _tl166569166602_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166605_)
                                                      (_E166560166575_))
                                                  (_E166560166575_)))))
                                        (_E166560166575_)))))
                              (_E166560166575_))))
                      (_E166560166575_)))))
          (_E166559166607_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166527_)
        (let* ((_e166528166535_ _stx166527_)
               (_E166530166539_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166528166535_)))
               (_E166529166553_
                (lambda ()
                  (if (gx#stx-pair? _e166528166535_)
                      (let ((_e166531166543_ (gx#syntax-e _e166528166535_)))
                        (let ((_hd166532166546_ (##car _e166531166543_))
                              (_tl166533166548_ (##cdr _e166531166543_)))
                          (let ((_body166551_ _tl166533166548_))
                            (if '#t
                                (cons '%#import _body166551_)
                                (_E166530166539_)))))
                      (_E166530166539_)))))
          (_E166529166553_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166484_)
        (let* ((_e166485166495_ _stx166484_)
               (_E166487166499_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166485166495_)))
               (_E166486166523_
                (lambda ()
                  (if (gx#stx-pair? _e166485166495_)
                      (let ((_e166488166503_ (gx#syntax-e _e166485166495_)))
                        (let ((_hd166489166506_ (##car _e166488166503_))
                              (_tl166490166508_ (##cdr _e166488166503_)))
                          (if (gx#stx-pair? _tl166490166508_)
                              (let ((_e166491166511_
                                     (gx#syntax-e _tl166490166508_)))
                                (let ((_hd166492166514_
                                       (##car _e166491166511_))
                                      (_tl166493166516_
                                       (##cdr _e166491166511_)))
                                  (let* ((_hd166519_ _hd166492166514_)
                                         (_body166521_ _tl166493166516_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166519_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166521_)))
                                        (_E166487166499_)))))
                              (_E166487166499_))))
                      (_E166487166499_)))))
          (_E166486166523_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166454_)
        (let* ((_e166455166462_ _stx166454_)
               (_E166457166466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166455166462_)))
               (_E166456166480_
                (lambda ()
                  (if (gx#stx-pair? _e166455166462_)
                      (let ((_e166458166470_ (gx#syntax-e _e166455166462_)))
                        (let ((_hd166459166473_ (##car _e166458166470_))
                              (_tl166460166475_ (##cdr _e166458166470_)))
                          (let ((_body166478_ _tl166460166475_))
                            (if '#t
                                (cons '%#export _body166478_)
                                (_E166457166466_)))))
                      (_E166457166466_)))))
          (_E166456166480_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166424_)
        (let* ((_e166425166432_ _stx166424_)
               (_E166427166436_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166425166432_)))
               (_E166426166450_
                (lambda ()
                  (if (gx#stx-pair? _e166425166432_)
                      (let ((_e166428166440_ (gx#syntax-e _e166425166432_)))
                        (let ((_hd166429166443_ (##car _e166428166440_))
                              (_tl166430166445_ (##cdr _e166428166440_)))
                          (let ((_body166448_ _tl166430166445_))
                            (if '#t
                                (cons '%#provide _body166448_)
                                (_E166427166436_)))))
                      (_E166427166436_)))))
          (_E166426166450_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166394_)
        (let* ((_e166395166402_ _stx166394_)
               (_E166397166406_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166395166402_)))
               (_E166396166420_
                (lambda ()
                  (if (gx#stx-pair? _e166395166402_)
                      (let ((_e166398166410_ (gx#syntax-e _e166395166402_)))
                        (let ((_hd166399166413_ (##car _e166398166410_))
                              (_tl166400166415_ (##cdr _e166398166410_)))
                          (let ((_body166418_ _tl166400166415_))
                            (if '#t
                                (cons '%#extern _body166418_)
                                (_E166397166406_)))))
                      (_E166397166406_)))))
          (_E166396166420_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166340_)
        (let* ((_e166341166354_ _stx166340_)
               (_E166343166358_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166341166354_)))
               (_E166342166390_
                (lambda ()
                  (if (gx#stx-pair? _e166341166354_)
                      (let ((_e166344166362_ (gx#syntax-e _e166341166354_)))
                        (let ((_hd166345166365_ (##car _e166344166362_))
                              (_tl166346166367_ (##cdr _e166344166362_)))
                          (if (gx#stx-pair? _tl166346166367_)
                              (let ((_e166347166370_
                                     (gx#syntax-e _tl166346166367_)))
                                (let ((_hd166348166373_
                                       (##car _e166347166370_))
                                      (_tl166349166375_
                                       (##cdr _e166347166370_)))
                                  (let ((_hd166378_ _hd166348166373_))
                                    (if (gx#stx-pair? _tl166349166375_)
                                        (let ((_e166350166380_
                                               (gx#syntax-e _tl166349166375_)))
                                          (let ((_hd166351166383_
                                                 (##car _e166350166380_))
                                                (_tl166352166385_
                                                 (##cdr _e166350166380_)))
                                            (let ((_expr166388_
                                                   _hd166351166383_))
                                              (if (gx#stx-null?
                                                   _tl166352166385_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166378_)
                          (cons (gx#core-compile-top-syntax _expr166388_)
                                '())))
              (_E166343166358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166343166358_)))))
                                        (_E166343166358_)))))
                              (_E166343166358_))))
                      (_E166343166358_)))))
          (_E166342166390_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166285_)
        (let* ((_e166286166299_ _stx166285_)
               (_E166288166303_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166286166299_)))
               (_E166287166336_
                (lambda ()
                  (if (gx#stx-pair? _e166286166299_)
                      (let ((_e166289166307_ (gx#syntax-e _e166286166299_)))
                        (let ((_hd166290166310_ (##car _e166289166307_))
                              (_tl166291166312_ (##cdr _e166289166307_)))
                          (if (gx#stx-pair? _tl166291166312_)
                              (let ((_e166292166315_
                                     (gx#syntax-e _tl166291166312_)))
                                (let ((_hd166293166318_
                                       (##car _e166292166315_))
                                      (_tl166294166320_
                                       (##cdr _e166292166315_)))
                                  (let ((_hd166323_ _hd166293166318_))
                                    (if (gx#stx-pair? _tl166294166320_)
                                        (let ((_e166295166325_
                                               (gx#syntax-e _tl166294166320_)))
                                          (let ((_hd166296166328_
                                                 (##car _e166295166325_))
                                                (_tl166297166330_
                                                 (##cdr _e166295166325_)))
                                            (let ((_expr166333_
                                                   _hd166296166328_))
                                              (if (gx#stx-null?
                                                   _tl166297166330_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166333_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166288166303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166288166303_)))))
                                        (_E166288166303_)))))
                              (_E166288166303_))))
                      (_E166288166303_)))))
          (_E166287166336_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166255_)
        (let* ((_e166256166263_ _stx166255_)
               (_E166258166267_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166256166263_)))
               (_E166257166281_
                (lambda ()
                  (if (gx#stx-pair? _e166256166263_)
                      (let ((_e166259166271_ (gx#syntax-e _e166256166263_)))
                        (let ((_hd166260166274_ (##car _e166259166271_))
                              (_tl166261166276_ (##cdr _e166259166271_)))
                          (let ((_body166279_ _tl166261166276_))
                            (if '#t
                                (cons '%#define-alias _body166279_)
                                (_E166258166267_)))))
                      (_E166258166267_)))))
          (_E166257166281_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166225_)
        (let* ((_e166226166233_ _stx166225_)
               (_E166228166237_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166226166233_)))
               (_E166227166251_
                (lambda ()
                  (if (gx#stx-pair? _e166226166233_)
                      (let ((_e166229166241_ (gx#syntax-e _e166226166233_)))
                        (let ((_hd166230166244_ (##car _e166229166241_))
                              (_tl166231166246_ (##cdr _e166229166241_)))
                          (let ((_body166249_ _tl166231166246_))
                            (if '#t
                                (cons '%#define-runtime _body166249_)
                                (_E166228166237_)))))
                      (_E166228166237_)))))
          (_E166227166251_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166195_)
        (let* ((_e166196166203_ _stx166195_)
               (_E166198166207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166196166203_)))
               (_E166197166221_
                (lambda ()
                  (if (gx#stx-pair? _e166196166203_)
                      (let ((_e166199166211_ (gx#syntax-e _e166196166203_)))
                        (let ((_hd166200166214_ (##car _e166199166211_))
                              (_tl166201166216_ (##cdr _e166199166211_)))
                          (let ((_decls166219_ _tl166201166216_))
                            (if '#t
                                (cons '%#declare _decls166219_)
                                (_E166198166207_)))))
                      (_E166198166207_)))))
          (_E166197166221_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166165_)
        (let* ((_e166166166173_ _stx166165_)
               (_E166168166177_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166166166173_)))
               (_E166167166191_
                (lambda ()
                  (if (gx#stx-pair? _e166166166173_)
                      (let ((_e166169166181_ (gx#syntax-e _e166166166173_)))
                        (let ((_hd166170166184_ (##car _e166169166181_))
                              (_tl166171166186_ (##cdr _e166169166181_)))
                          (let ((_clause166189_ _tl166171166186_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166189_))
                                (_E166168166177_)))))
                      (_E166168166177_)))))
          (_E166167166191_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166122_)
        (let* ((_e166123166133_ _stx166122_)
               (_E166125166137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166123166133_)))
               (_E166124166161_
                (lambda ()
                  (if (gx#stx-pair? _e166123166133_)
                      (let ((_e166126166141_ (gx#syntax-e _e166123166133_)))
                        (let ((_hd166127166144_ (##car _e166126166141_))
                              (_tl166128166146_ (##cdr _e166126166141_)))
                          (let ((_hd166149_ _hd166127166144_))
                            (if (gx#stx-pair? _tl166128166146_)
                                (let ((_e166129166151_
                                       (gx#syntax-e _tl166128166146_)))
                                  (let ((_hd166130166154_
                                         (##car _e166129166151_))
                                        (_tl166131166156_
                                         (##cdr _e166129166151_)))
                                    (let ((_body166159_ _hd166130166154_))
                                      (if (gx#stx-null? _tl166131166156_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166149_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166159_)
                                                          '()))
                                              (_E166125166137_))
                                          (_E166125166137_)))))
                                (_E166125166137_)))))
                      (_E166125166137_)))))
          (_E166124166161_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166092_)
        (let* ((_e166093166100_ _stx166092_)
               (_E166095166104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166093166100_)))
               (_E166094166118_
                (lambda ()
                  (if (gx#stx-pair? _e166093166100_)
                      (let ((_e166096166108_ (gx#syntax-e _e166093166100_)))
                        (let ((_hd166097166111_ (##car _e166096166108_))
                              (_tl166098166113_ (##cdr _e166096166108_)))
                          (let ((_clauses166116_ _tl166098166113_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166116_))
                                (_E166095166104_)))))
                      (_E166095166104_)))))
          (_E166094166118_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166027_ _form166028_)
        (let* ((_e166029166042_ _stx166027_)
               (_E166031166046_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166029166042_)))
               (_E166030166078_
                (lambda ()
                  (if (gx#stx-pair? _e166029166042_)
                      (let ((_e166032166050_ (gx#syntax-e _e166029166042_)))
                        (let ((_hd166033166053_ (##car _e166032166050_))
                              (_tl166034166055_ (##cdr _e166032166050_)))
                          (if (gx#stx-pair? _tl166034166055_)
                              (let ((_e166035166058_
                                     (gx#syntax-e _tl166034166055_)))
                                (let ((_hd166036166061_
                                       (##car _e166035166058_))
                                      (_tl166037166063_
                                       (##cdr _e166035166058_)))
                                  (let ((_hd166066_ _hd166036166061_))
                                    (if (gx#stx-pair? _tl166037166063_)
                                        (let ((_e166038166068_
                                               (gx#syntax-e _tl166037166063_)))
                                          (let ((_hd166039166071_
                                                 (##car _e166038166068_))
                                                (_tl166040166073_
                                                 (##cdr _e166038166068_)))
                                            (let ((_body166076_
                                                   _hd166039166071_))
                                              (if (gx#stx-null?
                                                   _tl166040166073_)
                                                  (if '#t
                                                      (cons _form166028_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166066_)
                          (cons (gx#core-compile-top-syntax _body166076_)
                                '())))
              (_E166031166046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166031166046_)))))
                                        (_E166031166046_)))))
                              (_E166031166046_))))
                      (_E166031166046_)))))
          (_E166030166078_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166085_)
        (let ((_form166087_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166085_ _form166087_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171368_
        (let ((_g171367_ (##length _g171368_)))
          (cond ((##fx= _g171367_ 1)
                 (apply (lambda (_stx166085_)
                          (gx#core-compile-top-let-values%__0 _stx166085_))
                        _g171368_))
                ((##fx= _g171367_ 2)
                 (apply (lambda (_stx166089_ _form166090_)
                          (gx#core-compile-top-let-values%__%
                           _stx166089_
                           _form166090_))
                        _g171368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171368_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166024_)
        (gx#core-compile-top-let-values%__% _stx166024_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166022_)
        (gx#core-compile-top-let-values%__% _stx166022_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx165981_)
        (let* ((_e165982165992_ _stx165981_)
               (_E165984165996_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165982165992_)))
               (_E165983166018_
                (lambda ()
                  (if (gx#stx-pair? _e165982165992_)
                      (let ((_e165985166000_ (gx#syntax-e _e165982165992_)))
                        (let ((_hd165986166003_ (##car _e165985166000_))
                              (_tl165987166005_ (##cdr _e165985166000_)))
                          (if (gx#stx-pair? _tl165987166005_)
                              (let ((_e165988166008_
                                     (gx#syntax-e _tl165987166005_)))
                                (let ((_hd165989166011_
                                       (##car _e165988166008_))
                                      (_tl165990166013_
                                       (##cdr _e165988166008_)))
                                  (let ((_e166016_ _hd165989166011_))
                                    (if (gx#stx-null? _tl165990166013_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166016_)
                                                        '()))
                                            (_E165984165996_))
                                        (_E165984165996_)))))
                              (_E165984165996_))))
                      (_E165984165996_)))))
          (_E165983166018_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx165940_)
        (let* ((_e165941165951_ _stx165940_)
               (_E165943165955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165941165951_)))
               (_E165942165977_
                (lambda ()
                  (if (gx#stx-pair? _e165941165951_)
                      (let ((_e165944165959_ (gx#syntax-e _e165941165951_)))
                        (let ((_hd165945165962_ (##car _e165944165959_))
                              (_tl165946165964_ (##cdr _e165944165959_)))
                          (if (gx#stx-pair? _tl165946165964_)
                              (let ((_e165947165967_
                                     (gx#syntax-e _tl165946165964_)))
                                (let ((_hd165948165970_
                                       (##car _e165947165967_))
                                      (_tl165949165972_
                                       (##cdr _e165947165967_)))
                                  (let ((_e165975_ _hd165948165970_))
                                    (if (gx#stx-null? _tl165949165972_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e165975_)
                                                        '()))
                                            (_E165943165955_))
                                        (_E165943165955_)))))
                              (_E165943165955_))))
                      (_E165943165955_)))))
          (_E165942165977_))))
    (define gx#core-compile-top-call%
      (lambda (_stx165897_)
        (let* ((_e165898165908_ _stx165897_)
               (_E165900165912_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165898165908_)))
               (_E165899165936_
                (lambda ()
                  (if (gx#stx-pair? _e165898165908_)
                      (let ((_e165901165916_ (gx#syntax-e _e165898165908_)))
                        (let ((_hd165902165919_ (##car _e165901165916_))
                              (_tl165903165921_ (##cdr _e165901165916_)))
                          (if (gx#stx-pair? _tl165903165921_)
                              (let ((_e165904165924_
                                     (gx#syntax-e _tl165903165921_)))
                                (let ((_hd165905165927_
                                       (##car _e165904165924_))
                                      (_tl165906165929_
                                       (##cdr _e165904165924_)))
                                  (let* ((_rator165932_ _hd165905165927_)
                                         (_args165934_ _tl165906165929_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator165932_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args165934_)))
                                        (_E165900165912_)))))
                              (_E165900165912_))))
                      (_E165900165912_)))))
          (_E165899165936_))))
    (define gx#core-compile-top-if%
      (lambda (_stx165830_)
        (let* ((_e165831165847_ _stx165830_)
               (_E165833165851_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165831165847_)))
               (_E165832165893_
                (lambda ()
                  (if (gx#stx-pair? _e165831165847_)
                      (let ((_e165834165855_ (gx#syntax-e _e165831165847_)))
                        (let ((_hd165835165858_ (##car _e165834165855_))
                              (_tl165836165860_ (##cdr _e165834165855_)))
                          (if (gx#stx-pair? _tl165836165860_)
                              (let ((_e165837165863_
                                     (gx#syntax-e _tl165836165860_)))
                                (let ((_hd165838165866_
                                       (##car _e165837165863_))
                                      (_tl165839165868_
                                       (##cdr _e165837165863_)))
                                  (let ((_test165871_ _hd165838165866_))
                                    (if (gx#stx-pair? _tl165839165868_)
                                        (let ((_e165840165873_
                                               (gx#syntax-e _tl165839165868_)))
                                          (let ((_hd165841165876_
                                                 (##car _e165840165873_))
                                                (_tl165842165878_
                                                 (##cdr _e165840165873_)))
                                            (let ((_K165881_ _hd165841165876_))
                                              (if (gx#stx-pair?
                                                   _tl165842165878_)
                                                  (let ((_e165843165883_
                                                         (gx#syntax-e
                                                          _tl165842165878_)))
                                                    (let ((_hd165844165886_
                                                           (##car _e165843165883_))
                                                          (_tl165845165888_
                                                           (##cdr _e165843165883_)))
                                                      (let ((_E165891_
                                                             _hd165844165886_))
                                                        (if (gx#stx-null?
                                                             _tl165845165888_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test165871_)
                                    (cons (gx#core-compile-top-syntax
                                           _K165881_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E165891_)
                                                '()))))
                        (_E165833165851_))
                    (_E165833165851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165833165851_)))))
                                        (_E165833165851_)))))
                              (_E165833165851_))))
                      (_E165833165851_)))))
          (_E165832165893_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx165789_)
        (let* ((_e165790165800_ _stx165789_)
               (_E165792165804_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165790165800_)))
               (_E165791165826_
                (lambda ()
                  (if (gx#stx-pair? _e165790165800_)
                      (let ((_e165793165808_ (gx#syntax-e _e165790165800_)))
                        (let ((_hd165794165811_ (##car _e165793165808_))
                              (_tl165795165813_ (##cdr _e165793165808_)))
                          (if (gx#stx-pair? _tl165795165813_)
                              (let ((_e165796165816_
                                     (gx#syntax-e _tl165795165813_)))
                                (let ((_hd165797165819_
                                       (##car _e165796165816_))
                                      (_tl165798165821_
                                       (##cdr _e165796165816_)))
                                  (let ((_id165824_ _hd165797165819_))
                                    (if (gx#stx-null? _tl165798165821_)
                                        (if (gx#identifier? _id165824_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id165824_)
                                                        '()))
                                            (_E165792165804_))
                                        (_E165792165804_)))))
                              (_E165792165804_))))
                      (_E165792165804_)))))
          (_E165791165826_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165735_)
        (let* ((_e165736165749_ _stx165735_)
               (_E165738165753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165736165749_)))
               (_E165737165785_
                (lambda ()
                  (if (gx#stx-pair? _e165736165749_)
                      (let ((_e165739165757_ (gx#syntax-e _e165736165749_)))
                        (let ((_hd165740165760_ (##car _e165739165757_))
                              (_tl165741165762_ (##cdr _e165739165757_)))
                          (if (gx#stx-pair? _tl165741165762_)
                              (let ((_e165742165765_
                                     (gx#syntax-e _tl165741165762_)))
                                (let ((_hd165743165768_
                                       (##car _e165742165765_))
                                      (_tl165744165770_
                                       (##cdr _e165742165765_)))
                                  (let ((_id165773_ _hd165743165768_))
                                    (if (gx#stx-pair? _tl165744165770_)
                                        (let ((_e165745165775_
                                               (gx#syntax-e _tl165744165770_)))
                                          (let ((_hd165746165778_
                                                 (##car _e165745165775_))
                                                (_tl165747165780_
                                                 (##cdr _e165745165775_)))
                                            (let ((_expr165783_
                                                   _hd165746165778_))
                                              (if (gx#stx-null?
                                                   _tl165747165780_)
                                                  (if (gx#identifier?
                                                       _id165773_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165773_)
                          (cons (gx#core-compile-top-syntax _expr165783_)
                                '())))
              (_E165738165753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165738165753_)))))
                                        (_E165738165753_)))))
                              (_E165738165753_))))
                      (_E165738165753_)))))
          (_E165737165785_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165730_)
        (let ((_$e165732_ (gx#resolve-identifier__0 _id165730_)))
          (if _$e165732_
              (##unchecked-structure-ref _$e165732_ '1 gx#binding::t '#f)
              _id165730_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165728_)
        (if (gx#identifier? _hd165728_)
            (gx#core-compile-top-runtime-ref _hd165728_)
            '#f)))))
