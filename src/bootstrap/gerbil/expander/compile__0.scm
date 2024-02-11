(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707616238)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx167079_)
        (let* ((_e167080167087_ _stx167079_)
               (_E167082167091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167080167087_)))
               (_E167081167105_
                (lambda ()
                  (if (gx#stx-pair? _e167080167087_)
                      (let ((_e167083167095_ (gx#syntax-e _e167080167087_)))
                        (let ((_hd167084167098_ (##car _e167083167095_))
                              (_tl167085167100_ (##cdr _e167083167095_)))
                          (let ((_form167103_ _hd167084167098_))
                            (if '#t
                                (let* ((__self171576
                                        (gx#syntax-local-e__0 _form167103_))
                                       (__method171577
                                        (method-ref
                                         __self171576
                                         'compile-top-syntax)))
                                  (if __method171577
                                      (__method171577 __self171576 _stx167079_)
                                      (error '"Missing method"
                                             __self171576
                                             'compile-top-syntax)))
                                (_E167082167091_)))))
                      (_E167082167091_)))))
          (_E167081167105_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self167039_ _stx167040_)
        (let* ((_self167041167049_ _self167039_)
               (_E167043167053_
                (lambda () (error '"No clause matching" _self167041167049_)))
               (_K167044167065_
                (lambda (_K167056_)
                  (let ((_$e167058_ (gx#stx-source _stx167040_)))
                    (if _$e167058_
                        ((lambda (_g167060167062_)
                           (gx#stx-wrap-source
                            (_K167056_ _stx167040_)
                            _g167060167062_))
                         _$e167058_)
                        (_K167056_ _stx167040_))))))
          (if (##structure-instance-of?
               _self167041167049_
               'gx#core-expander::t)
              (let* ((_e167045167068_
                      (##unchecked-structure-ref
                       _self167041167049_
                       '1
                       gx#expander::t
                       '#f))
                     (_e167046167071_
                      (##unchecked-structure-ref
                       _self167041167049_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e167047167074_
                      (##unchecked-structure-ref
                       _self167041167049_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K167077_ _e167047167074_))
                (_K167044167065_ _K167077_))
              (_E167043167053_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx166913_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx166913_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx166883_)
        (let* ((_e166884166891_ _stx166883_)
               (_E166886166895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166884166891_)))
               (_E166885166909_
                (lambda ()
                  (if (gx#stx-pair? _e166884166891_)
                      (let ((_e166887166899_ (gx#syntax-e _e166884166891_)))
                        (let ((_hd166888166902_ (##car _e166887166899_))
                              (_tl166889166904_ (##cdr _e166887166899_)))
                          (let ((_body166907_ _tl166889166904_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body166907_))
                                (_E166886166895_)))))
                      (_E166886166895_)))))
          (_E166885166909_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx166852_)
        (let* ((_e166853166860_ _stx166852_)
               (_E166855166864_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166853166860_)))
               (_E166854166879_
                (lambda ()
                  (if (gx#stx-pair? _e166853166860_)
                      (let ((_e166856166868_ (gx#syntax-e _e166853166860_)))
                        (let ((_hd166857166871_ (##car _e166856166868_))
                              (_tl166858166873_ (##cdr _e166856166868_)))
                          (let ((_body166876_ _tl166858166873_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body166876_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E166855166864_)))))
                      (_E166855166864_)))))
          (_E166854166879_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx166822_)
        (let* ((_e166823166830_ _stx166822_)
               (_E166825166834_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166823166830_)))
               (_E166824166848_
                (lambda ()
                  (if (gx#stx-pair? _e166823166830_)
                      (let ((_e166826166838_ (gx#syntax-e _e166823166830_)))
                        (let ((_hd166827166841_ (##car _e166826166838_))
                              (_tl166828166843_ (##cdr _e166826166838_)))
                          (let ((_body166846_ _tl166828166843_))
                            (if '#t
                                (cons '%#begin-foreign _body166846_)
                                (_E166825166834_)))))
                      (_E166825166834_)))))
          (_E166824166848_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx166768_)
        (let* ((_e166769166782_ _stx166768_)
               (_E166771166786_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166769166782_)))
               (_E166770166818_
                (lambda ()
                  (if (gx#stx-pair? _e166769166782_)
                      (let ((_e166772166790_ (gx#syntax-e _e166769166782_)))
                        (let ((_hd166773166793_ (##car _e166772166790_))
                              (_tl166774166795_ (##cdr _e166772166790_)))
                          (if (gx#stx-pair? _tl166774166795_)
                              (let ((_e166775166798_
                                     (gx#syntax-e _tl166774166795_)))
                                (let ((_hd166776166801_
                                       (##car _e166775166798_))
                                      (_tl166777166803_
                                       (##cdr _e166775166798_)))
                                  (let ((_ann166806_ _hd166776166801_))
                                    (if (gx#stx-pair? _tl166777166803_)
                                        (let ((_e166778166808_
                                               (gx#syntax-e _tl166777166803_)))
                                          (let ((_hd166779166811_
                                                 (##car _e166778166808_))
                                                (_tl166780166813_
                                                 (##cdr _e166778166808_)))
                                            (let ((_expr166816_
                                                   _hd166779166811_))
                                              (if (gx#stx-null?
                                                   _tl166780166813_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr166816_)
                                                      (_E166771166786_))
                                                  (_E166771166786_)))))
                                        (_E166771166786_)))))
                              (_E166771166786_))))
                      (_E166771166786_)))))
          (_E166770166818_))))
    (define gx#core-compile-top-import%
      (lambda (_stx166738_)
        (let* ((_e166739166746_ _stx166738_)
               (_E166741166750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166739166746_)))
               (_E166740166764_
                (lambda ()
                  (if (gx#stx-pair? _e166739166746_)
                      (let ((_e166742166754_ (gx#syntax-e _e166739166746_)))
                        (let ((_hd166743166757_ (##car _e166742166754_))
                              (_tl166744166759_ (##cdr _e166742166754_)))
                          (let ((_body166762_ _tl166744166759_))
                            (if '#t
                                (cons '%#import _body166762_)
                                (_E166741166750_)))))
                      (_E166741166750_)))))
          (_E166740166764_))))
    (define gx#core-compile-top-module%
      (lambda (_stx166695_)
        (let* ((_e166696166706_ _stx166695_)
               (_E166698166710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166696166706_)))
               (_E166697166734_
                (lambda ()
                  (if (gx#stx-pair? _e166696166706_)
                      (let ((_e166699166714_ (gx#syntax-e _e166696166706_)))
                        (let ((_hd166700166717_ (##car _e166699166714_))
                              (_tl166701166719_ (##cdr _e166699166714_)))
                          (if (gx#stx-pair? _tl166701166719_)
                              (let ((_e166702166722_
                                     (gx#syntax-e _tl166701166719_)))
                                (let ((_hd166703166725_
                                       (##car _e166702166722_))
                                      (_tl166704166727_
                                       (##cdr _e166702166722_)))
                                  (let* ((_hd166730_ _hd166703166725_)
                                         (_body166732_ _tl166704166727_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd166730_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body166732_)))
                                        (_E166698166710_)))))
                              (_E166698166710_))))
                      (_E166698166710_)))))
          (_E166697166734_))))
    (define gx#core-compile-top-export%
      (lambda (_stx166665_)
        (let* ((_e166666166673_ _stx166665_)
               (_E166668166677_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166666166673_)))
               (_E166667166691_
                (lambda ()
                  (if (gx#stx-pair? _e166666166673_)
                      (let ((_e166669166681_ (gx#syntax-e _e166666166673_)))
                        (let ((_hd166670166684_ (##car _e166669166681_))
                              (_tl166671166686_ (##cdr _e166669166681_)))
                          (let ((_body166689_ _tl166671166686_))
                            (if '#t
                                (cons '%#export _body166689_)
                                (_E166668166677_)))))
                      (_E166668166677_)))))
          (_E166667166691_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx166635_)
        (let* ((_e166636166643_ _stx166635_)
               (_E166638166647_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166636166643_)))
               (_E166637166661_
                (lambda ()
                  (if (gx#stx-pair? _e166636166643_)
                      (let ((_e166639166651_ (gx#syntax-e _e166636166643_)))
                        (let ((_hd166640166654_ (##car _e166639166651_))
                              (_tl166641166656_ (##cdr _e166639166651_)))
                          (let ((_body166659_ _tl166641166656_))
                            (if '#t
                                (cons '%#provide _body166659_)
                                (_E166638166647_)))))
                      (_E166638166647_)))))
          (_E166637166661_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx166605_)
        (let* ((_e166606166613_ _stx166605_)
               (_E166608166617_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166606166613_)))
               (_E166607166631_
                (lambda ()
                  (if (gx#stx-pair? _e166606166613_)
                      (let ((_e166609166621_ (gx#syntax-e _e166606166613_)))
                        (let ((_hd166610166624_ (##car _e166609166621_))
                              (_tl166611166626_ (##cdr _e166609166621_)))
                          (let ((_body166629_ _tl166611166626_))
                            (if '#t
                                (cons '%#extern _body166629_)
                                (_E166608166617_)))))
                      (_E166608166617_)))))
          (_E166607166631_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx166551_)
        (let* ((_e166552166565_ _stx166551_)
               (_E166554166569_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166552166565_)))
               (_E166553166601_
                (lambda ()
                  (if (gx#stx-pair? _e166552166565_)
                      (let ((_e166555166573_ (gx#syntax-e _e166552166565_)))
                        (let ((_hd166556166576_ (##car _e166555166573_))
                              (_tl166557166578_ (##cdr _e166555166573_)))
                          (if (gx#stx-pair? _tl166557166578_)
                              (let ((_e166558166581_
                                     (gx#syntax-e _tl166557166578_)))
                                (let ((_hd166559166584_
                                       (##car _e166558166581_))
                                      (_tl166560166586_
                                       (##cdr _e166558166581_)))
                                  (let ((_hd166589_ _hd166559166584_))
                                    (if (gx#stx-pair? _tl166560166586_)
                                        (let ((_e166561166591_
                                               (gx#syntax-e _tl166560166586_)))
                                          (let ((_hd166562166594_
                                                 (##car _e166561166591_))
                                                (_tl166563166596_
                                                 (##cdr _e166561166591_)))
                                            (let ((_expr166599_
                                                   _hd166562166594_))
                                              (if (gx#stx-null?
                                                   _tl166563166596_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd166589_)
                          (cons (gx#core-compile-top-syntax _expr166599_)
                                '())))
              (_E166554166569_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166554166569_)))))
                                        (_E166554166569_)))))
                              (_E166554166569_))))
                      (_E166554166569_)))))
          (_E166553166601_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx166496_)
        (let* ((_e166497166510_ _stx166496_)
               (_E166499166514_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166497166510_)))
               (_E166498166547_
                (lambda ()
                  (if (gx#stx-pair? _e166497166510_)
                      (let ((_e166500166518_ (gx#syntax-e _e166497166510_)))
                        (let ((_hd166501166521_ (##car _e166500166518_))
                              (_tl166502166523_ (##cdr _e166500166518_)))
                          (if (gx#stx-pair? _tl166502166523_)
                              (let ((_e166503166526_
                                     (gx#syntax-e _tl166502166523_)))
                                (let ((_hd166504166529_
                                       (##car _e166503166526_))
                                      (_tl166505166531_
                                       (##cdr _e166503166526_)))
                                  (let ((_hd166534_ _hd166504166529_))
                                    (if (gx#stx-pair? _tl166505166531_)
                                        (let ((_e166506166536_
                                               (gx#syntax-e _tl166505166531_)))
                                          (let ((_hd166507166539_
                                                 (##car _e166506166536_))
                                                (_tl166508166541_
                                                 (##cdr _e166506166536_)))
                                            (let ((_expr166544_
                                                   _hd166507166539_))
                                              (if (gx#stx-null?
                                                   _tl166508166541_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd166534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr166544_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E166499166514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166499166514_)))))
                                        (_E166499166514_)))))
                              (_E166499166514_))))
                      (_E166499166514_)))))
          (_E166498166547_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx166466_)
        (let* ((_e166467166474_ _stx166466_)
               (_E166469166478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166467166474_)))
               (_E166468166492_
                (lambda ()
                  (if (gx#stx-pair? _e166467166474_)
                      (let ((_e166470166482_ (gx#syntax-e _e166467166474_)))
                        (let ((_hd166471166485_ (##car _e166470166482_))
                              (_tl166472166487_ (##cdr _e166470166482_)))
                          (let ((_body166490_ _tl166472166487_))
                            (if '#t
                                (cons '%#define-alias _body166490_)
                                (_E166469166478_)))))
                      (_E166469166478_)))))
          (_E166468166492_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx166436_)
        (let* ((_e166437166444_ _stx166436_)
               (_E166439166448_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166437166444_)))
               (_E166438166462_
                (lambda ()
                  (if (gx#stx-pair? _e166437166444_)
                      (let ((_e166440166452_ (gx#syntax-e _e166437166444_)))
                        (let ((_hd166441166455_ (##car _e166440166452_))
                              (_tl166442166457_ (##cdr _e166440166452_)))
                          (let ((_body166460_ _tl166442166457_))
                            (if '#t
                                (cons '%#define-runtime _body166460_)
                                (_E166439166448_)))))
                      (_E166439166448_)))))
          (_E166438166462_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx166406_)
        (let* ((_e166407166414_ _stx166406_)
               (_E166409166418_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166407166414_)))
               (_E166408166432_
                (lambda ()
                  (if (gx#stx-pair? _e166407166414_)
                      (let ((_e166410166422_ (gx#syntax-e _e166407166414_)))
                        (let ((_hd166411166425_ (##car _e166410166422_))
                              (_tl166412166427_ (##cdr _e166410166422_)))
                          (let ((_decls166430_ _tl166412166427_))
                            (if '#t
                                (cons '%#declare _decls166430_)
                                (_E166409166418_)))))
                      (_E166409166418_)))))
          (_E166408166432_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx166376_)
        (let* ((_e166377166384_ _stx166376_)
               (_E166379166388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166377166384_)))
               (_E166378166402_
                (lambda ()
                  (if (gx#stx-pair? _e166377166384_)
                      (let ((_e166380166392_ (gx#syntax-e _e166377166384_)))
                        (let ((_hd166381166395_ (##car _e166380166392_))
                              (_tl166382166397_ (##cdr _e166380166392_)))
                          (let ((_clause166400_ _tl166382166397_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause166400_))
                                (_E166379166388_)))))
                      (_E166379166388_)))))
          (_E166378166402_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx166333_)
        (let* ((_e166334166344_ _stx166333_)
               (_E166336166348_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166334166344_)))
               (_E166335166372_
                (lambda ()
                  (if (gx#stx-pair? _e166334166344_)
                      (let ((_e166337166352_ (gx#syntax-e _e166334166344_)))
                        (let ((_hd166338166355_ (##car _e166337166352_))
                              (_tl166339166357_ (##cdr _e166337166352_)))
                          (let ((_hd166360_ _hd166338166355_))
                            (if (gx#stx-pair? _tl166339166357_)
                                (let ((_e166340166362_
                                       (gx#syntax-e _tl166339166357_)))
                                  (let ((_hd166341166365_
                                         (##car _e166340166362_))
                                        (_tl166342166367_
                                         (##cdr _e166340166362_)))
                                    (let ((_body166370_ _hd166341166365_))
                                      (if (gx#stx-null? _tl166342166367_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd166360_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body166370_)
                                                          '()))
                                              (_E166336166348_))
                                          (_E166336166348_)))))
                                (_E166336166348_)))))
                      (_E166336166348_)))))
          (_E166335166372_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx166303_)
        (let* ((_e166304166311_ _stx166303_)
               (_E166306166315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166304166311_)))
               (_E166305166329_
                (lambda ()
                  (if (gx#stx-pair? _e166304166311_)
                      (let ((_e166307166319_ (gx#syntax-e _e166304166311_)))
                        (let ((_hd166308166322_ (##car _e166307166319_))
                              (_tl166309166324_ (##cdr _e166307166319_)))
                          (let ((_clauses166327_ _tl166309166324_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses166327_))
                                (_E166306166315_)))))
                      (_E166306166315_)))))
          (_E166305166329_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx166238_ _form166239_)
        (let* ((_e166240166253_ _stx166238_)
               (_E166242166257_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166240166253_)))
               (_E166241166289_
                (lambda ()
                  (if (gx#stx-pair? _e166240166253_)
                      (let ((_e166243166261_ (gx#syntax-e _e166240166253_)))
                        (let ((_hd166244166264_ (##car _e166243166261_))
                              (_tl166245166266_ (##cdr _e166243166261_)))
                          (if (gx#stx-pair? _tl166245166266_)
                              (let ((_e166246166269_
                                     (gx#syntax-e _tl166245166266_)))
                                (let ((_hd166247166272_
                                       (##car _e166246166269_))
                                      (_tl166248166274_
                                       (##cdr _e166246166269_)))
                                  (let ((_hd166277_ _hd166247166272_))
                                    (if (gx#stx-pair? _tl166248166274_)
                                        (let ((_e166249166279_
                                               (gx#syntax-e _tl166248166274_)))
                                          (let ((_hd166250166282_
                                                 (##car _e166249166279_))
                                                (_tl166251166284_
                                                 (##cdr _e166249166279_)))
                                            (let ((_body166287_
                                                   _hd166250166282_))
                                              (if (gx#stx-null?
                                                   _tl166251166284_)
                                                  (if '#t
                                                      (cons _form166239_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd166277_)
                          (cons (gx#core-compile-top-syntax _body166287_)
                                '())))
              (_E166242166257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166242166257_)))))
                                        (_E166242166257_)))))
                              (_E166242166257_))))
                      (_E166242166257_)))))
          (_E166241166289_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx166296_)
        (let ((_form166298_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx166296_ _form166298_))))
    (define gx#core-compile-top-let-values%
      (lambda _g171579_
        (let ((_g171578_ (##length _g171579_)))
          (cond ((##fx= _g171578_ 1)
                 (apply (lambda (_stx166296_)
                          (gx#core-compile-top-let-values%__0 _stx166296_))
                        _g171579_))
                ((##fx= _g171578_ 2)
                 (apply (lambda (_stx166300_ _form166301_)
                          (gx#core-compile-top-let-values%__%
                           _stx166300_
                           _form166301_))
                        _g171579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g171579_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx166235_)
        (gx#core-compile-top-let-values%__% _stx166235_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx166233_)
        (gx#core-compile-top-let-values%__% _stx166233_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx166192_)
        (let* ((_e166193166203_ _stx166192_)
               (_E166195166207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166193166203_)))
               (_E166194166229_
                (lambda ()
                  (if (gx#stx-pair? _e166193166203_)
                      (let ((_e166196166211_ (gx#syntax-e _e166193166203_)))
                        (let ((_hd166197166214_ (##car _e166196166211_))
                              (_tl166198166216_ (##cdr _e166196166211_)))
                          (if (gx#stx-pair? _tl166198166216_)
                              (let ((_e166199166219_
                                     (gx#syntax-e _tl166198166216_)))
                                (let ((_hd166200166222_
                                       (##car _e166199166219_))
                                      (_tl166201166224_
                                       (##cdr _e166199166219_)))
                                  (let ((_e166227_ _hd166200166222_))
                                    (if (gx#stx-null? _tl166201166224_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e166227_)
                                                        '()))
                                            (_E166195166207_))
                                        (_E166195166207_)))))
                              (_E166195166207_))))
                      (_E166195166207_)))))
          (_E166194166229_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx166151_)
        (let* ((_e166152166162_ _stx166151_)
               (_E166154166166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166152166162_)))
               (_E166153166188_
                (lambda ()
                  (if (gx#stx-pair? _e166152166162_)
                      (let ((_e166155166170_ (gx#syntax-e _e166152166162_)))
                        (let ((_hd166156166173_ (##car _e166155166170_))
                              (_tl166157166175_ (##cdr _e166155166170_)))
                          (if (gx#stx-pair? _tl166157166175_)
                              (let ((_e166158166178_
                                     (gx#syntax-e _tl166157166175_)))
                                (let ((_hd166159166181_
                                       (##car _e166158166178_))
                                      (_tl166160166183_
                                       (##cdr _e166158166178_)))
                                  (let ((_e166186_ _hd166159166181_))
                                    (if (gx#stx-null? _tl166160166183_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e166186_)
                                                        '()))
                                            (_E166154166166_))
                                        (_E166154166166_)))))
                              (_E166154166166_))))
                      (_E166154166166_)))))
          (_E166153166188_))))
    (define gx#core-compile-top-call%
      (lambda (_stx166108_)
        (let* ((_e166109166119_ _stx166108_)
               (_E166111166123_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166109166119_)))
               (_E166110166147_
                (lambda ()
                  (if (gx#stx-pair? _e166109166119_)
                      (let ((_e166112166127_ (gx#syntax-e _e166109166119_)))
                        (let ((_hd166113166130_ (##car _e166112166127_))
                              (_tl166114166132_ (##cdr _e166112166127_)))
                          (if (gx#stx-pair? _tl166114166132_)
                              (let ((_e166115166135_
                                     (gx#syntax-e _tl166114166132_)))
                                (let ((_hd166116166138_
                                       (##car _e166115166135_))
                                      (_tl166117166140_
                                       (##cdr _e166115166135_)))
                                  (let* ((_rator166143_ _hd166116166138_)
                                         (_args166145_ _tl166117166140_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator166143_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args166145_)))
                                        (_E166111166123_)))))
                              (_E166111166123_))))
                      (_E166111166123_)))))
          (_E166110166147_))))
    (define gx#core-compile-top-if%
      (lambda (_stx166041_)
        (let* ((_e166042166058_ _stx166041_)
               (_E166044166062_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166042166058_)))
               (_E166043166104_
                (lambda ()
                  (if (gx#stx-pair? _e166042166058_)
                      (let ((_e166045166066_ (gx#syntax-e _e166042166058_)))
                        (let ((_hd166046166069_ (##car _e166045166066_))
                              (_tl166047166071_ (##cdr _e166045166066_)))
                          (if (gx#stx-pair? _tl166047166071_)
                              (let ((_e166048166074_
                                     (gx#syntax-e _tl166047166071_)))
                                (let ((_hd166049166077_
                                       (##car _e166048166074_))
                                      (_tl166050166079_
                                       (##cdr _e166048166074_)))
                                  (let ((_test166082_ _hd166049166077_))
                                    (if (gx#stx-pair? _tl166050166079_)
                                        (let ((_e166051166084_
                                               (gx#syntax-e _tl166050166079_)))
                                          (let ((_hd166052166087_
                                                 (##car _e166051166084_))
                                                (_tl166053166089_
                                                 (##cdr _e166051166084_)))
                                            (let ((_K166092_ _hd166052166087_))
                                              (if (gx#stx-pair?
                                                   _tl166053166089_)
                                                  (let ((_e166054166094_
                                                         (gx#syntax-e
                                                          _tl166053166089_)))
                                                    (let ((_hd166055166097_
                                                           (##car _e166054166094_))
                                                          (_tl166056166099_
                                                           (##cdr _e166054166094_)))
                                                      (let ((_E166102_
                                                             _hd166055166097_))
                                                        (if (gx#stx-null?
                                                             _tl166056166099_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test166082_)
                                    (cons (gx#core-compile-top-syntax
                                           _K166092_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E166102_)
                                                '()))))
                        (_E166044166062_))
                    (_E166044166062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166044166062_)))))
                                        (_E166044166062_)))))
                              (_E166044166062_))))
                      (_E166044166062_)))))
          (_E166043166104_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx166000_)
        (let* ((_e166001166011_ _stx166000_)
               (_E166003166015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166001166011_)))
               (_E166002166037_
                (lambda ()
                  (if (gx#stx-pair? _e166001166011_)
                      (let ((_e166004166019_ (gx#syntax-e _e166001166011_)))
                        (let ((_hd166005166022_ (##car _e166004166019_))
                              (_tl166006166024_ (##cdr _e166004166019_)))
                          (if (gx#stx-pair? _tl166006166024_)
                              (let ((_e166007166027_
                                     (gx#syntax-e _tl166006166024_)))
                                (let ((_hd166008166030_
                                       (##car _e166007166027_))
                                      (_tl166009166032_
                                       (##cdr _e166007166027_)))
                                  (let ((_id166035_ _hd166008166030_))
                                    (if (gx#stx-null? _tl166009166032_)
                                        (if (gx#identifier? _id166035_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id166035_)
                                                        '()))
                                            (_E166003166015_))
                                        (_E166003166015_)))))
                              (_E166003166015_))))
                      (_E166003166015_)))))
          (_E166002166037_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx165946_)
        (let* ((_e165947165960_ _stx165946_)
               (_E165949165964_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165947165960_)))
               (_E165948165996_
                (lambda ()
                  (if (gx#stx-pair? _e165947165960_)
                      (let ((_e165950165968_ (gx#syntax-e _e165947165960_)))
                        (let ((_hd165951165971_ (##car _e165950165968_))
                              (_tl165952165973_ (##cdr _e165950165968_)))
                          (if (gx#stx-pair? _tl165952165973_)
                              (let ((_e165953165976_
                                     (gx#syntax-e _tl165952165973_)))
                                (let ((_hd165954165979_
                                       (##car _e165953165976_))
                                      (_tl165955165981_
                                       (##cdr _e165953165976_)))
                                  (let ((_id165984_ _hd165954165979_))
                                    (if (gx#stx-pair? _tl165955165981_)
                                        (let ((_e165956165986_
                                               (gx#syntax-e _tl165955165981_)))
                                          (let ((_hd165957165989_
                                                 (##car _e165956165986_))
                                                (_tl165958165991_
                                                 (##cdr _e165956165986_)))
                                            (let ((_expr165994_
                                                   _hd165957165989_))
                                              (if (gx#stx-null?
                                                   _tl165958165991_)
                                                  (if (gx#identifier?
                                                       _id165984_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id165984_)
                          (cons (gx#core-compile-top-syntax _expr165994_)
                                '())))
              (_E165949165964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165949165964_)))))
                                        (_E165949165964_)))))
                              (_E165949165964_))))
                      (_E165949165964_)))))
          (_E165948165996_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id165941_)
        (let ((_$e165943_ (gx#resolve-identifier__0 _id165941_)))
          (if _$e165943_
              (##unchecked-structure-ref _$e165943_ '1 gx#binding::t '#f)
              _id165941_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd165939_)
        (if (gx#identifier? _hd165939_)
            (gx#core-compile-top-runtime-ref _hd165939_)
            '#f)))))
