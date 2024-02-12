(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707767844)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168652_)
        (let* ((_e168653168660_ _stx168652_)
               (_E168655168664_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168653168660_)))
               (_E168654168678_
                (lambda ()
                  (if (gx#stx-pair? _e168653168660_)
                      (let ((_e168656168668_ (gx#syntax-e _e168653168660_)))
                        (let ((_hd168657168671_ (##car _e168656168668_))
                              (_tl168658168673_ (##cdr _e168656168668_)))
                          (let ((_form168676_ _hd168657168671_))
                            (if '#t
                                (let* ((__self173249
                                        (gx#syntax-local-e__0 _form168676_))
                                       (__method173250
                                        (method-ref
                                         __self173249
                                         'compile-top-syntax)))
                                  (if __method173250
                                      (__method173250 __self173249 _stx168652_)
                                      (error '"Missing method"
                                             __self173249
                                             'compile-top-syntax)))
                                (_E168655168664_)))))
                      (_E168655168664_)))))
          (_E168654168678_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168612_ _stx168613_)
        (let* ((_self168614168622_ _self168612_)
               (_E168616168626_
                (lambda () (error '"No clause matching" _self168614168622_)))
               (_K168617168638_
                (lambda (_K168629_)
                  (let ((_$e168631_ (gx#stx-source _stx168613_)))
                    (if _$e168631_
                        ((lambda (_g168633168635_)
                           (gx#stx-wrap-source
                            (_K168629_ _stx168613_)
                            _g168633168635_))
                         _$e168631_)
                        (_K168629_ _stx168613_))))))
          (if (##structure-instance-of?
               _self168614168622_
               'gx#core-expander::t)
              (let* ((_e168618168641_
                      (##unchecked-structure-ref
                       _self168614168622_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168619168644_
                      (##unchecked-structure-ref
                       _self168614168622_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168620168647_
                      (##unchecked-structure-ref
                       _self168614168622_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168650_ _e168620168647_))
                (_K168617168638_ _K168650_))
              (_E168616168626_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168486_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168486_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168456_)
        (let* ((_e168457168464_ _stx168456_)
               (_E168459168468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168457168464_)))
               (_E168458168482_
                (lambda ()
                  (if (gx#stx-pair? _e168457168464_)
                      (let ((_e168460168472_ (gx#syntax-e _e168457168464_)))
                        (let ((_hd168461168475_ (##car _e168460168472_))
                              (_tl168462168477_ (##cdr _e168460168472_)))
                          (let ((_body168480_ _tl168462168477_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168480_))
                                (_E168459168468_)))))
                      (_E168459168468_)))))
          (_E168458168482_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168425_)
        (let* ((_e168426168433_ _stx168425_)
               (_E168428168437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168426168433_)))
               (_E168427168452_
                (lambda ()
                  (if (gx#stx-pair? _e168426168433_)
                      (let ((_e168429168441_ (gx#syntax-e _e168426168433_)))
                        (let ((_hd168430168444_ (##car _e168429168441_))
                              (_tl168431168446_ (##cdr _e168429168441_)))
                          (let ((_body168449_ _tl168431168446_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168449_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168428168437_)))))
                      (_E168428168437_)))))
          (_E168427168452_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168395_)
        (let* ((_e168396168403_ _stx168395_)
               (_E168398168407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168396168403_)))
               (_E168397168421_
                (lambda ()
                  (if (gx#stx-pair? _e168396168403_)
                      (let ((_e168399168411_ (gx#syntax-e _e168396168403_)))
                        (let ((_hd168400168414_ (##car _e168399168411_))
                              (_tl168401168416_ (##cdr _e168399168411_)))
                          (let ((_body168419_ _tl168401168416_))
                            (if '#t
                                (cons '%#begin-foreign _body168419_)
                                (_E168398168407_)))))
                      (_E168398168407_)))))
          (_E168397168421_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168341_)
        (let* ((_e168342168355_ _stx168341_)
               (_E168344168359_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168342168355_)))
               (_E168343168391_
                (lambda ()
                  (if (gx#stx-pair? _e168342168355_)
                      (let ((_e168345168363_ (gx#syntax-e _e168342168355_)))
                        (let ((_hd168346168366_ (##car _e168345168363_))
                              (_tl168347168368_ (##cdr _e168345168363_)))
                          (if (gx#stx-pair? _tl168347168368_)
                              (let ((_e168348168371_
                                     (gx#syntax-e _tl168347168368_)))
                                (let ((_hd168349168374_
                                       (##car _e168348168371_))
                                      (_tl168350168376_
                                       (##cdr _e168348168371_)))
                                  (let ((_ann168379_ _hd168349168374_))
                                    (if (gx#stx-pair? _tl168350168376_)
                                        (let ((_e168351168381_
                                               (gx#syntax-e _tl168350168376_)))
                                          (let ((_hd168352168384_
                                                 (##car _e168351168381_))
                                                (_tl168353168386_
                                                 (##cdr _e168351168381_)))
                                            (let ((_expr168389_
                                                   _hd168352168384_))
                                              (if (gx#stx-null?
                                                   _tl168353168386_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168389_)
                                                      (_E168344168359_))
                                                  (_E168344168359_)))))
                                        (_E168344168359_)))))
                              (_E168344168359_))))
                      (_E168344168359_)))))
          (_E168343168391_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168311_)
        (let* ((_e168312168319_ _stx168311_)
               (_E168314168323_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168312168319_)))
               (_E168313168337_
                (lambda ()
                  (if (gx#stx-pair? _e168312168319_)
                      (let ((_e168315168327_ (gx#syntax-e _e168312168319_)))
                        (let ((_hd168316168330_ (##car _e168315168327_))
                              (_tl168317168332_ (##cdr _e168315168327_)))
                          (let ((_body168335_ _tl168317168332_))
                            (if '#t
                                (cons '%#import _body168335_)
                                (_E168314168323_)))))
                      (_E168314168323_)))))
          (_E168313168337_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168268_)
        (let* ((_e168269168279_ _stx168268_)
               (_E168271168283_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168269168279_)))
               (_E168270168307_
                (lambda ()
                  (if (gx#stx-pair? _e168269168279_)
                      (let ((_e168272168287_ (gx#syntax-e _e168269168279_)))
                        (let ((_hd168273168290_ (##car _e168272168287_))
                              (_tl168274168292_ (##cdr _e168272168287_)))
                          (if (gx#stx-pair? _tl168274168292_)
                              (let ((_e168275168295_
                                     (gx#syntax-e _tl168274168292_)))
                                (let ((_hd168276168298_
                                       (##car _e168275168295_))
                                      (_tl168277168300_
                                       (##cdr _e168275168295_)))
                                  (let* ((_hd168303_ _hd168276168298_)
                                         (_body168305_ _tl168277168300_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168303_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168305_)))
                                        (_E168271168283_)))))
                              (_E168271168283_))))
                      (_E168271168283_)))))
          (_E168270168307_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168238_)
        (let* ((_e168239168246_ _stx168238_)
               (_E168241168250_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168239168246_)))
               (_E168240168264_
                (lambda ()
                  (if (gx#stx-pair? _e168239168246_)
                      (let ((_e168242168254_ (gx#syntax-e _e168239168246_)))
                        (let ((_hd168243168257_ (##car _e168242168254_))
                              (_tl168244168259_ (##cdr _e168242168254_)))
                          (let ((_body168262_ _tl168244168259_))
                            (if '#t
                                (cons '%#export _body168262_)
                                (_E168241168250_)))))
                      (_E168241168250_)))))
          (_E168240168264_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168208_)
        (let* ((_e168209168216_ _stx168208_)
               (_E168211168220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168209168216_)))
               (_E168210168234_
                (lambda ()
                  (if (gx#stx-pair? _e168209168216_)
                      (let ((_e168212168224_ (gx#syntax-e _e168209168216_)))
                        (let ((_hd168213168227_ (##car _e168212168224_))
                              (_tl168214168229_ (##cdr _e168212168224_)))
                          (let ((_body168232_ _tl168214168229_))
                            (if '#t
                                (cons '%#provide _body168232_)
                                (_E168211168220_)))))
                      (_E168211168220_)))))
          (_E168210168234_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168178_)
        (let* ((_e168179168186_ _stx168178_)
               (_E168181168190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168179168186_)))
               (_E168180168204_
                (lambda ()
                  (if (gx#stx-pair? _e168179168186_)
                      (let ((_e168182168194_ (gx#syntax-e _e168179168186_)))
                        (let ((_hd168183168197_ (##car _e168182168194_))
                              (_tl168184168199_ (##cdr _e168182168194_)))
                          (let ((_body168202_ _tl168184168199_))
                            (if '#t
                                (cons '%#extern _body168202_)
                                (_E168181168190_)))))
                      (_E168181168190_)))))
          (_E168180168204_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168124_)
        (let* ((_e168125168138_ _stx168124_)
               (_E168127168142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168125168138_)))
               (_E168126168174_
                (lambda ()
                  (if (gx#stx-pair? _e168125168138_)
                      (let ((_e168128168146_ (gx#syntax-e _e168125168138_)))
                        (let ((_hd168129168149_ (##car _e168128168146_))
                              (_tl168130168151_ (##cdr _e168128168146_)))
                          (if (gx#stx-pair? _tl168130168151_)
                              (let ((_e168131168154_
                                     (gx#syntax-e _tl168130168151_)))
                                (let ((_hd168132168157_
                                       (##car _e168131168154_))
                                      (_tl168133168159_
                                       (##cdr _e168131168154_)))
                                  (let ((_hd168162_ _hd168132168157_))
                                    (if (gx#stx-pair? _tl168133168159_)
                                        (let ((_e168134168164_
                                               (gx#syntax-e _tl168133168159_)))
                                          (let ((_hd168135168167_
                                                 (##car _e168134168164_))
                                                (_tl168136168169_
                                                 (##cdr _e168134168164_)))
                                            (let ((_expr168172_
                                                   _hd168135168167_))
                                              (if (gx#stx-null?
                                                   _tl168136168169_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168162_)
                          (cons (gx#core-compile-top-syntax _expr168172_)
                                '())))
              (_E168127168142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168127168142_)))))
                                        (_E168127168142_)))))
                              (_E168127168142_))))
                      (_E168127168142_)))))
          (_E168126168174_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168069_)
        (let* ((_e168070168083_ _stx168069_)
               (_E168072168087_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168070168083_)))
               (_E168071168120_
                (lambda ()
                  (if (gx#stx-pair? _e168070168083_)
                      (let ((_e168073168091_ (gx#syntax-e _e168070168083_)))
                        (let ((_hd168074168094_ (##car _e168073168091_))
                              (_tl168075168096_ (##cdr _e168073168091_)))
                          (if (gx#stx-pair? _tl168075168096_)
                              (let ((_e168076168099_
                                     (gx#syntax-e _tl168075168096_)))
                                (let ((_hd168077168102_
                                       (##car _e168076168099_))
                                      (_tl168078168104_
                                       (##cdr _e168076168099_)))
                                  (let ((_hd168107_ _hd168077168102_))
                                    (if (gx#stx-pair? _tl168078168104_)
                                        (let ((_e168079168109_
                                               (gx#syntax-e _tl168078168104_)))
                                          (let ((_hd168080168112_
                                                 (##car _e168079168109_))
                                                (_tl168081168114_
                                                 (##cdr _e168079168109_)))
                                            (let ((_expr168117_
                                                   _hd168080168112_))
                                              (if (gx#stx-null?
                                                   _tl168081168114_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168117_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168072168087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168072168087_)))))
                                        (_E168072168087_)))))
                              (_E168072168087_))))
                      (_E168072168087_)))))
          (_E168071168120_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168039_)
        (let* ((_e168040168047_ _stx168039_)
               (_E168042168051_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168040168047_)))
               (_E168041168065_
                (lambda ()
                  (if (gx#stx-pair? _e168040168047_)
                      (let ((_e168043168055_ (gx#syntax-e _e168040168047_)))
                        (let ((_hd168044168058_ (##car _e168043168055_))
                              (_tl168045168060_ (##cdr _e168043168055_)))
                          (let ((_body168063_ _tl168045168060_))
                            (if '#t
                                (cons '%#define-alias _body168063_)
                                (_E168042168051_)))))
                      (_E168042168051_)))))
          (_E168041168065_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx168009_)
        (let* ((_e168010168017_ _stx168009_)
               (_E168012168021_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168010168017_)))
               (_E168011168035_
                (lambda ()
                  (if (gx#stx-pair? _e168010168017_)
                      (let ((_e168013168025_ (gx#syntax-e _e168010168017_)))
                        (let ((_hd168014168028_ (##car _e168013168025_))
                              (_tl168015168030_ (##cdr _e168013168025_)))
                          (let ((_body168033_ _tl168015168030_))
                            (if '#t
                                (cons '%#define-runtime _body168033_)
                                (_E168012168021_)))))
                      (_E168012168021_)))))
          (_E168011168035_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx167979_)
        (let* ((_e167980167987_ _stx167979_)
               (_E167982167991_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167980167987_)))
               (_E167981168005_
                (lambda ()
                  (if (gx#stx-pair? _e167980167987_)
                      (let ((_e167983167995_ (gx#syntax-e _e167980167987_)))
                        (let ((_hd167984167998_ (##car _e167983167995_))
                              (_tl167985168000_ (##cdr _e167983167995_)))
                          (let ((_decls168003_ _tl167985168000_))
                            (if '#t
                                (cons '%#declare _decls168003_)
                                (_E167982167991_)))))
                      (_E167982167991_)))))
          (_E167981168005_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx167949_)
        (let* ((_e167950167957_ _stx167949_)
               (_E167952167961_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167950167957_)))
               (_E167951167975_
                (lambda ()
                  (if (gx#stx-pair? _e167950167957_)
                      (let ((_e167953167965_ (gx#syntax-e _e167950167957_)))
                        (let ((_hd167954167968_ (##car _e167953167965_))
                              (_tl167955167970_ (##cdr _e167953167965_)))
                          (let ((_clause167973_ _tl167955167970_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause167973_))
                                (_E167952167961_)))))
                      (_E167952167961_)))))
          (_E167951167975_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx167906_)
        (let* ((_e167907167917_ _stx167906_)
               (_E167909167921_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167907167917_)))
               (_E167908167945_
                (lambda ()
                  (if (gx#stx-pair? _e167907167917_)
                      (let ((_e167910167925_ (gx#syntax-e _e167907167917_)))
                        (let ((_hd167911167928_ (##car _e167910167925_))
                              (_tl167912167930_ (##cdr _e167910167925_)))
                          (let ((_hd167933_ _hd167911167928_))
                            (if (gx#stx-pair? _tl167912167930_)
                                (let ((_e167913167935_
                                       (gx#syntax-e _tl167912167930_)))
                                  (let ((_hd167914167938_
                                         (##car _e167913167935_))
                                        (_tl167915167940_
                                         (##cdr _e167913167935_)))
                                    (let ((_body167943_ _hd167914167938_))
                                      (if (gx#stx-null? _tl167915167940_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd167933_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body167943_)
                                                          '()))
                                              (_E167909167921_))
                                          (_E167909167921_)))))
                                (_E167909167921_)))))
                      (_E167909167921_)))))
          (_E167908167945_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx167876_)
        (let* ((_e167877167884_ _stx167876_)
               (_E167879167888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167877167884_)))
               (_E167878167902_
                (lambda ()
                  (if (gx#stx-pair? _e167877167884_)
                      (let ((_e167880167892_ (gx#syntax-e _e167877167884_)))
                        (let ((_hd167881167895_ (##car _e167880167892_))
                              (_tl167882167897_ (##cdr _e167880167892_)))
                          (let ((_clauses167900_ _tl167882167897_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses167900_))
                                (_E167879167888_)))))
                      (_E167879167888_)))))
          (_E167878167902_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx167811_ _form167812_)
        (let* ((_e167813167826_ _stx167811_)
               (_E167815167830_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167813167826_)))
               (_E167814167862_
                (lambda ()
                  (if (gx#stx-pair? _e167813167826_)
                      (let ((_e167816167834_ (gx#syntax-e _e167813167826_)))
                        (let ((_hd167817167837_ (##car _e167816167834_))
                              (_tl167818167839_ (##cdr _e167816167834_)))
                          (if (gx#stx-pair? _tl167818167839_)
                              (let ((_e167819167842_
                                     (gx#syntax-e _tl167818167839_)))
                                (let ((_hd167820167845_
                                       (##car _e167819167842_))
                                      (_tl167821167847_
                                       (##cdr _e167819167842_)))
                                  (let ((_hd167850_ _hd167820167845_))
                                    (if (gx#stx-pair? _tl167821167847_)
                                        (let ((_e167822167852_
                                               (gx#syntax-e _tl167821167847_)))
                                          (let ((_hd167823167855_
                                                 (##car _e167822167852_))
                                                (_tl167824167857_
                                                 (##cdr _e167822167852_)))
                                            (let ((_body167860_
                                                   _hd167823167855_))
                                              (if (gx#stx-null?
                                                   _tl167824167857_)
                                                  (if '#t
                                                      (cons _form167812_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd167850_)
                          (cons (gx#core-compile-top-syntax _body167860_)
                                '())))
              (_E167815167830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167815167830_)))))
                                        (_E167815167830_)))))
                              (_E167815167830_))))
                      (_E167815167830_)))))
          (_E167814167862_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx167869_)
        (let ((_form167871_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx167869_ _form167871_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173252_
        (let ((_g173251_ (##length _g173252_)))
          (cond ((##fx= _g173251_ 1)
                 (apply (lambda (_stx167869_)
                          (gx#core-compile-top-let-values%__0 _stx167869_))
                        _g173252_))
                ((##fx= _g173251_ 2)
                 (apply (lambda (_stx167873_ _form167874_)
                          (gx#core-compile-top-let-values%__%
                           _stx167873_
                           _form167874_))
                        _g173252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173252_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx167808_)
        (gx#core-compile-top-let-values%__% _stx167808_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx167806_)
        (gx#core-compile-top-let-values%__% _stx167806_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167765_)
        (let* ((_e167766167776_ _stx167765_)
               (_E167768167780_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167766167776_)))
               (_E167767167802_
                (lambda ()
                  (if (gx#stx-pair? _e167766167776_)
                      (let ((_e167769167784_ (gx#syntax-e _e167766167776_)))
                        (let ((_hd167770167787_ (##car _e167769167784_))
                              (_tl167771167789_ (##cdr _e167769167784_)))
                          (if (gx#stx-pair? _tl167771167789_)
                              (let ((_e167772167792_
                                     (gx#syntax-e _tl167771167789_)))
                                (let ((_hd167773167795_
                                       (##car _e167772167792_))
                                      (_tl167774167797_
                                       (##cdr _e167772167792_)))
                                  (let ((_e167800_ _hd167773167795_))
                                    (if (gx#stx-null? _tl167774167797_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167800_)
                                                        '()))
                                            (_E167768167780_))
                                        (_E167768167780_)))))
                              (_E167768167780_))))
                      (_E167768167780_)))))
          (_E167767167802_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167724_)
        (let* ((_e167725167735_ _stx167724_)
               (_E167727167739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167725167735_)))
               (_E167726167761_
                (lambda ()
                  (if (gx#stx-pair? _e167725167735_)
                      (let ((_e167728167743_ (gx#syntax-e _e167725167735_)))
                        (let ((_hd167729167746_ (##car _e167728167743_))
                              (_tl167730167748_ (##cdr _e167728167743_)))
                          (if (gx#stx-pair? _tl167730167748_)
                              (let ((_e167731167751_
                                     (gx#syntax-e _tl167730167748_)))
                                (let ((_hd167732167754_
                                       (##car _e167731167751_))
                                      (_tl167733167756_
                                       (##cdr _e167731167751_)))
                                  (let ((_e167759_ _hd167732167754_))
                                    (if (gx#stx-null? _tl167733167756_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167759_)
                                                        '()))
                                            (_E167727167739_))
                                        (_E167727167739_)))))
                              (_E167727167739_))))
                      (_E167727167739_)))))
          (_E167726167761_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167681_)
        (let* ((_e167682167692_ _stx167681_)
               (_E167684167696_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167682167692_)))
               (_E167683167720_
                (lambda ()
                  (if (gx#stx-pair? _e167682167692_)
                      (let ((_e167685167700_ (gx#syntax-e _e167682167692_)))
                        (let ((_hd167686167703_ (##car _e167685167700_))
                              (_tl167687167705_ (##cdr _e167685167700_)))
                          (if (gx#stx-pair? _tl167687167705_)
                              (let ((_e167688167708_
                                     (gx#syntax-e _tl167687167705_)))
                                (let ((_hd167689167711_
                                       (##car _e167688167708_))
                                      (_tl167690167713_
                                       (##cdr _e167688167708_)))
                                  (let* ((_rator167716_ _hd167689167711_)
                                         (_args167718_ _tl167690167713_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167716_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167718_)))
                                        (_E167684167696_)))))
                              (_E167684167696_))))
                      (_E167684167696_)))))
          (_E167683167720_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167614_)
        (let* ((_e167615167631_ _stx167614_)
               (_E167617167635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167615167631_)))
               (_E167616167677_
                (lambda ()
                  (if (gx#stx-pair? _e167615167631_)
                      (let ((_e167618167639_ (gx#syntax-e _e167615167631_)))
                        (let ((_hd167619167642_ (##car _e167618167639_))
                              (_tl167620167644_ (##cdr _e167618167639_)))
                          (if (gx#stx-pair? _tl167620167644_)
                              (let ((_e167621167647_
                                     (gx#syntax-e _tl167620167644_)))
                                (let ((_hd167622167650_
                                       (##car _e167621167647_))
                                      (_tl167623167652_
                                       (##cdr _e167621167647_)))
                                  (let ((_test167655_ _hd167622167650_))
                                    (if (gx#stx-pair? _tl167623167652_)
                                        (let ((_e167624167657_
                                               (gx#syntax-e _tl167623167652_)))
                                          (let ((_hd167625167660_
                                                 (##car _e167624167657_))
                                                (_tl167626167662_
                                                 (##cdr _e167624167657_)))
                                            (let ((_K167665_ _hd167625167660_))
                                              (if (gx#stx-pair?
                                                   _tl167626167662_)
                                                  (let ((_e167627167667_
                                                         (gx#syntax-e
                                                          _tl167626167662_)))
                                                    (let ((_hd167628167670_
                                                           (##car _e167627167667_))
                                                          (_tl167629167672_
                                                           (##cdr _e167627167667_)))
                                                      (let ((_E167675_
                                                             _hd167628167670_))
                                                        (if (gx#stx-null?
                                                             _tl167629167672_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167655_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167665_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167675_)
                                                '()))))
                        (_E167617167635_))
                    (_E167617167635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167617167635_)))))
                                        (_E167617167635_)))))
                              (_E167617167635_))))
                      (_E167617167635_)))))
          (_E167616167677_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167573_)
        (let* ((_e167574167584_ _stx167573_)
               (_E167576167588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167574167584_)))
               (_E167575167610_
                (lambda ()
                  (if (gx#stx-pair? _e167574167584_)
                      (let ((_e167577167592_ (gx#syntax-e _e167574167584_)))
                        (let ((_hd167578167595_ (##car _e167577167592_))
                              (_tl167579167597_ (##cdr _e167577167592_)))
                          (if (gx#stx-pair? _tl167579167597_)
                              (let ((_e167580167600_
                                     (gx#syntax-e _tl167579167597_)))
                                (let ((_hd167581167603_
                                       (##car _e167580167600_))
                                      (_tl167582167605_
                                       (##cdr _e167580167600_)))
                                  (let ((_id167608_ _hd167581167603_))
                                    (if (gx#stx-null? _tl167582167605_)
                                        (if (gx#identifier? _id167608_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167608_)
                                                        '()))
                                            (_E167576167588_))
                                        (_E167576167588_)))))
                              (_E167576167588_))))
                      (_E167576167588_)))))
          (_E167575167610_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167519_)
        (let* ((_e167520167533_ _stx167519_)
               (_E167522167537_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167520167533_)))
               (_E167521167569_
                (lambda ()
                  (if (gx#stx-pair? _e167520167533_)
                      (let ((_e167523167541_ (gx#syntax-e _e167520167533_)))
                        (let ((_hd167524167544_ (##car _e167523167541_))
                              (_tl167525167546_ (##cdr _e167523167541_)))
                          (if (gx#stx-pair? _tl167525167546_)
                              (let ((_e167526167549_
                                     (gx#syntax-e _tl167525167546_)))
                                (let ((_hd167527167552_
                                       (##car _e167526167549_))
                                      (_tl167528167554_
                                       (##cdr _e167526167549_)))
                                  (let ((_id167557_ _hd167527167552_))
                                    (if (gx#stx-pair? _tl167528167554_)
                                        (let ((_e167529167559_
                                               (gx#syntax-e _tl167528167554_)))
                                          (let ((_hd167530167562_
                                                 (##car _e167529167559_))
                                                (_tl167531167564_
                                                 (##cdr _e167529167559_)))
                                            (let ((_expr167567_
                                                   _hd167530167562_))
                                              (if (gx#stx-null?
                                                   _tl167531167564_)
                                                  (if (gx#identifier?
                                                       _id167557_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167557_)
                          (cons (gx#core-compile-top-syntax _expr167567_)
                                '())))
              (_E167522167537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167522167537_)))))
                                        (_E167522167537_)))))
                              (_E167522167537_))))
                      (_E167522167537_)))))
          (_E167521167569_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167514_)
        (let ((_$e167516_ (gx#resolve-identifier__0 _id167514_)))
          (if _$e167516_
              (##unchecked-structure-ref _$e167516_ '1 gx#binding::t '#f)
              _id167514_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167512_)
        (if (gx#identifier? _hd167512_)
            (gx#core-compile-top-runtime-ref _hd167512_)
            '#f)))))
