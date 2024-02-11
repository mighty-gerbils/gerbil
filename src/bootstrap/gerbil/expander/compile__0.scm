(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707674931)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168615_)
        (let* ((_e168616168623_ _stx168615_)
               (_E168618168627_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168616168623_)))
               (_E168617168641_
                (lambda ()
                  (if (gx#stx-pair? _e168616168623_)
                      (let ((_e168619168631_ (gx#syntax-e _e168616168623_)))
                        (let ((_hd168620168634_ (##car _e168619168631_))
                              (_tl168621168636_ (##cdr _e168619168631_)))
                          (let ((_form168639_ _hd168620168634_))
                            (if '#t
                                (let* ((__self173212
                                        (gx#syntax-local-e__0 _form168639_))
                                       (__method173213
                                        (method-ref
                                         __self173212
                                         'compile-top-syntax)))
                                  (if __method173213
                                      (__method173213 __self173212 _stx168615_)
                                      (error '"Missing method"
                                             __self173212
                                             'compile-top-syntax)))
                                (_E168618168627_)))))
                      (_E168618168627_)))))
          (_E168617168641_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168575_ _stx168576_)
        (let* ((_self168577168585_ _self168575_)
               (_E168579168589_
                (lambda () (error '"No clause matching" _self168577168585_)))
               (_K168580168601_
                (lambda (_K168592_)
                  (let ((_$e168594_ (gx#stx-source _stx168576_)))
                    (if _$e168594_
                        ((lambda (_g168596168598_)
                           (gx#stx-wrap-source
                            (_K168592_ _stx168576_)
                            _g168596168598_))
                         _$e168594_)
                        (_K168592_ _stx168576_))))))
          (if (##structure-instance-of?
               _self168577168585_
               'gx#core-expander::t)
              (let* ((_e168581168604_
                      (##unchecked-structure-ref
                       _self168577168585_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168582168607_
                      (##unchecked-structure-ref
                       _self168577168585_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168583168610_
                      (##unchecked-structure-ref
                       _self168577168585_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168613_ _e168583168610_))
                (_K168580168601_ _K168613_))
              (_E168579168589_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168449_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168449_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168419_)
        (let* ((_e168420168427_ _stx168419_)
               (_E168422168431_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168420168427_)))
               (_E168421168445_
                (lambda ()
                  (if (gx#stx-pair? _e168420168427_)
                      (let ((_e168423168435_ (gx#syntax-e _e168420168427_)))
                        (let ((_hd168424168438_ (##car _e168423168435_))
                              (_tl168425168440_ (##cdr _e168423168435_)))
                          (let ((_body168443_ _tl168425168440_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168443_))
                                (_E168422168431_)))))
                      (_E168422168431_)))))
          (_E168421168445_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168388_)
        (let* ((_e168389168396_ _stx168388_)
               (_E168391168400_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168389168396_)))
               (_E168390168415_
                (lambda ()
                  (if (gx#stx-pair? _e168389168396_)
                      (let ((_e168392168404_ (gx#syntax-e _e168389168396_)))
                        (let ((_hd168393168407_ (##car _e168392168404_))
                              (_tl168394168409_ (##cdr _e168392168404_)))
                          (let ((_body168412_ _tl168394168409_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168412_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168391168400_)))))
                      (_E168391168400_)))))
          (_E168390168415_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168358_)
        (let* ((_e168359168366_ _stx168358_)
               (_E168361168370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168359168366_)))
               (_E168360168384_
                (lambda ()
                  (if (gx#stx-pair? _e168359168366_)
                      (let ((_e168362168374_ (gx#syntax-e _e168359168366_)))
                        (let ((_hd168363168377_ (##car _e168362168374_))
                              (_tl168364168379_ (##cdr _e168362168374_)))
                          (let ((_body168382_ _tl168364168379_))
                            (if '#t
                                (cons '%#begin-foreign _body168382_)
                                (_E168361168370_)))))
                      (_E168361168370_)))))
          (_E168360168384_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168304_)
        (let* ((_e168305168318_ _stx168304_)
               (_E168307168322_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168305168318_)))
               (_E168306168354_
                (lambda ()
                  (if (gx#stx-pair? _e168305168318_)
                      (let ((_e168308168326_ (gx#syntax-e _e168305168318_)))
                        (let ((_hd168309168329_ (##car _e168308168326_))
                              (_tl168310168331_ (##cdr _e168308168326_)))
                          (if (gx#stx-pair? _tl168310168331_)
                              (let ((_e168311168334_
                                     (gx#syntax-e _tl168310168331_)))
                                (let ((_hd168312168337_
                                       (##car _e168311168334_))
                                      (_tl168313168339_
                                       (##cdr _e168311168334_)))
                                  (let ((_ann168342_ _hd168312168337_))
                                    (if (gx#stx-pair? _tl168313168339_)
                                        (let ((_e168314168344_
                                               (gx#syntax-e _tl168313168339_)))
                                          (let ((_hd168315168347_
                                                 (##car _e168314168344_))
                                                (_tl168316168349_
                                                 (##cdr _e168314168344_)))
                                            (let ((_expr168352_
                                                   _hd168315168347_))
                                              (if (gx#stx-null?
                                                   _tl168316168349_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168352_)
                                                      (_E168307168322_))
                                                  (_E168307168322_)))))
                                        (_E168307168322_)))))
                              (_E168307168322_))))
                      (_E168307168322_)))))
          (_E168306168354_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168274_)
        (let* ((_e168275168282_ _stx168274_)
               (_E168277168286_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168275168282_)))
               (_E168276168300_
                (lambda ()
                  (if (gx#stx-pair? _e168275168282_)
                      (let ((_e168278168290_ (gx#syntax-e _e168275168282_)))
                        (let ((_hd168279168293_ (##car _e168278168290_))
                              (_tl168280168295_ (##cdr _e168278168290_)))
                          (let ((_body168298_ _tl168280168295_))
                            (if '#t
                                (cons '%#import _body168298_)
                                (_E168277168286_)))))
                      (_E168277168286_)))))
          (_E168276168300_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168231_)
        (let* ((_e168232168242_ _stx168231_)
               (_E168234168246_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168232168242_)))
               (_E168233168270_
                (lambda ()
                  (if (gx#stx-pair? _e168232168242_)
                      (let ((_e168235168250_ (gx#syntax-e _e168232168242_)))
                        (let ((_hd168236168253_ (##car _e168235168250_))
                              (_tl168237168255_ (##cdr _e168235168250_)))
                          (if (gx#stx-pair? _tl168237168255_)
                              (let ((_e168238168258_
                                     (gx#syntax-e _tl168237168255_)))
                                (let ((_hd168239168261_
                                       (##car _e168238168258_))
                                      (_tl168240168263_
                                       (##cdr _e168238168258_)))
                                  (let* ((_hd168266_ _hd168239168261_)
                                         (_body168268_ _tl168240168263_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168266_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168268_)))
                                        (_E168234168246_)))))
                              (_E168234168246_))))
                      (_E168234168246_)))))
          (_E168233168270_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168201_)
        (let* ((_e168202168209_ _stx168201_)
               (_E168204168213_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168202168209_)))
               (_E168203168227_
                (lambda ()
                  (if (gx#stx-pair? _e168202168209_)
                      (let ((_e168205168217_ (gx#syntax-e _e168202168209_)))
                        (let ((_hd168206168220_ (##car _e168205168217_))
                              (_tl168207168222_ (##cdr _e168205168217_)))
                          (let ((_body168225_ _tl168207168222_))
                            (if '#t
                                (cons '%#export _body168225_)
                                (_E168204168213_)))))
                      (_E168204168213_)))))
          (_E168203168227_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168171_)
        (let* ((_e168172168179_ _stx168171_)
               (_E168174168183_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168172168179_)))
               (_E168173168197_
                (lambda ()
                  (if (gx#stx-pair? _e168172168179_)
                      (let ((_e168175168187_ (gx#syntax-e _e168172168179_)))
                        (let ((_hd168176168190_ (##car _e168175168187_))
                              (_tl168177168192_ (##cdr _e168175168187_)))
                          (let ((_body168195_ _tl168177168192_))
                            (if '#t
                                (cons '%#provide _body168195_)
                                (_E168174168183_)))))
                      (_E168174168183_)))))
          (_E168173168197_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168141_)
        (let* ((_e168142168149_ _stx168141_)
               (_E168144168153_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168142168149_)))
               (_E168143168167_
                (lambda ()
                  (if (gx#stx-pair? _e168142168149_)
                      (let ((_e168145168157_ (gx#syntax-e _e168142168149_)))
                        (let ((_hd168146168160_ (##car _e168145168157_))
                              (_tl168147168162_ (##cdr _e168145168157_)))
                          (let ((_body168165_ _tl168147168162_))
                            (if '#t
                                (cons '%#extern _body168165_)
                                (_E168144168153_)))))
                      (_E168144168153_)))))
          (_E168143168167_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168087_)
        (let* ((_e168088168101_ _stx168087_)
               (_E168090168105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168088168101_)))
               (_E168089168137_
                (lambda ()
                  (if (gx#stx-pair? _e168088168101_)
                      (let ((_e168091168109_ (gx#syntax-e _e168088168101_)))
                        (let ((_hd168092168112_ (##car _e168091168109_))
                              (_tl168093168114_ (##cdr _e168091168109_)))
                          (if (gx#stx-pair? _tl168093168114_)
                              (let ((_e168094168117_
                                     (gx#syntax-e _tl168093168114_)))
                                (let ((_hd168095168120_
                                       (##car _e168094168117_))
                                      (_tl168096168122_
                                       (##cdr _e168094168117_)))
                                  (let ((_hd168125_ _hd168095168120_))
                                    (if (gx#stx-pair? _tl168096168122_)
                                        (let ((_e168097168127_
                                               (gx#syntax-e _tl168096168122_)))
                                          (let ((_hd168098168130_
                                                 (##car _e168097168127_))
                                                (_tl168099168132_
                                                 (##cdr _e168097168127_)))
                                            (let ((_expr168135_
                                                   _hd168098168130_))
                                              (if (gx#stx-null?
                                                   _tl168099168132_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168125_)
                          (cons (gx#core-compile-top-syntax _expr168135_)
                                '())))
              (_E168090168105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168090168105_)))))
                                        (_E168090168105_)))))
                              (_E168090168105_))))
                      (_E168090168105_)))))
          (_E168089168137_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168032_)
        (let* ((_e168033168046_ _stx168032_)
               (_E168035168050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168033168046_)))
               (_E168034168083_
                (lambda ()
                  (if (gx#stx-pair? _e168033168046_)
                      (let ((_e168036168054_ (gx#syntax-e _e168033168046_)))
                        (let ((_hd168037168057_ (##car _e168036168054_))
                              (_tl168038168059_ (##cdr _e168036168054_)))
                          (if (gx#stx-pair? _tl168038168059_)
                              (let ((_e168039168062_
                                     (gx#syntax-e _tl168038168059_)))
                                (let ((_hd168040168065_
                                       (##car _e168039168062_))
                                      (_tl168041168067_
                                       (##cdr _e168039168062_)))
                                  (let ((_hd168070_ _hd168040168065_))
                                    (if (gx#stx-pair? _tl168041168067_)
                                        (let ((_e168042168072_
                                               (gx#syntax-e _tl168041168067_)))
                                          (let ((_hd168043168075_
                                                 (##car _e168042168072_))
                                                (_tl168044168077_
                                                 (##cdr _e168042168072_)))
                                            (let ((_expr168080_
                                                   _hd168043168075_))
                                              (if (gx#stx-null?
                                                   _tl168044168077_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168080_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168035168050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168035168050_)))))
                                        (_E168035168050_)))))
                              (_E168035168050_))))
                      (_E168035168050_)))))
          (_E168034168083_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168002_)
        (let* ((_e168003168010_ _stx168002_)
               (_E168005168014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168003168010_)))
               (_E168004168028_
                (lambda ()
                  (if (gx#stx-pair? _e168003168010_)
                      (let ((_e168006168018_ (gx#syntax-e _e168003168010_)))
                        (let ((_hd168007168021_ (##car _e168006168018_))
                              (_tl168008168023_ (##cdr _e168006168018_)))
                          (let ((_body168026_ _tl168008168023_))
                            (if '#t
                                (cons '%#define-alias _body168026_)
                                (_E168005168014_)))))
                      (_E168005168014_)))))
          (_E168004168028_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx167972_)
        (let* ((_e167973167980_ _stx167972_)
               (_E167975167984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167973167980_)))
               (_E167974167998_
                (lambda ()
                  (if (gx#stx-pair? _e167973167980_)
                      (let ((_e167976167988_ (gx#syntax-e _e167973167980_)))
                        (let ((_hd167977167991_ (##car _e167976167988_))
                              (_tl167978167993_ (##cdr _e167976167988_)))
                          (let ((_body167996_ _tl167978167993_))
                            (if '#t
                                (cons '%#define-runtime _body167996_)
                                (_E167975167984_)))))
                      (_E167975167984_)))))
          (_E167974167998_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx167942_)
        (let* ((_e167943167950_ _stx167942_)
               (_E167945167954_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167943167950_)))
               (_E167944167968_
                (lambda ()
                  (if (gx#stx-pair? _e167943167950_)
                      (let ((_e167946167958_ (gx#syntax-e _e167943167950_)))
                        (let ((_hd167947167961_ (##car _e167946167958_))
                              (_tl167948167963_ (##cdr _e167946167958_)))
                          (let ((_decls167966_ _tl167948167963_))
                            (if '#t
                                (cons '%#declare _decls167966_)
                                (_E167945167954_)))))
                      (_E167945167954_)))))
          (_E167944167968_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx167912_)
        (let* ((_e167913167920_ _stx167912_)
               (_E167915167924_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167913167920_)))
               (_E167914167938_
                (lambda ()
                  (if (gx#stx-pair? _e167913167920_)
                      (let ((_e167916167928_ (gx#syntax-e _e167913167920_)))
                        (let ((_hd167917167931_ (##car _e167916167928_))
                              (_tl167918167933_ (##cdr _e167916167928_)))
                          (let ((_clause167936_ _tl167918167933_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause167936_))
                                (_E167915167924_)))))
                      (_E167915167924_)))))
          (_E167914167938_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx167869_)
        (let* ((_e167870167880_ _stx167869_)
               (_E167872167884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167870167880_)))
               (_E167871167908_
                (lambda ()
                  (if (gx#stx-pair? _e167870167880_)
                      (let ((_e167873167888_ (gx#syntax-e _e167870167880_)))
                        (let ((_hd167874167891_ (##car _e167873167888_))
                              (_tl167875167893_ (##cdr _e167873167888_)))
                          (let ((_hd167896_ _hd167874167891_))
                            (if (gx#stx-pair? _tl167875167893_)
                                (let ((_e167876167898_
                                       (gx#syntax-e _tl167875167893_)))
                                  (let ((_hd167877167901_
                                         (##car _e167876167898_))
                                        (_tl167878167903_
                                         (##cdr _e167876167898_)))
                                    (let ((_body167906_ _hd167877167901_))
                                      (if (gx#stx-null? _tl167878167903_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd167896_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body167906_)
                                                          '()))
                                              (_E167872167884_))
                                          (_E167872167884_)))))
                                (_E167872167884_)))))
                      (_E167872167884_)))))
          (_E167871167908_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx167839_)
        (let* ((_e167840167847_ _stx167839_)
               (_E167842167851_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167840167847_)))
               (_E167841167865_
                (lambda ()
                  (if (gx#stx-pair? _e167840167847_)
                      (let ((_e167843167855_ (gx#syntax-e _e167840167847_)))
                        (let ((_hd167844167858_ (##car _e167843167855_))
                              (_tl167845167860_ (##cdr _e167843167855_)))
                          (let ((_clauses167863_ _tl167845167860_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses167863_))
                                (_E167842167851_)))))
                      (_E167842167851_)))))
          (_E167841167865_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx167774_ _form167775_)
        (let* ((_e167776167789_ _stx167774_)
               (_E167778167793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167776167789_)))
               (_E167777167825_
                (lambda ()
                  (if (gx#stx-pair? _e167776167789_)
                      (let ((_e167779167797_ (gx#syntax-e _e167776167789_)))
                        (let ((_hd167780167800_ (##car _e167779167797_))
                              (_tl167781167802_ (##cdr _e167779167797_)))
                          (if (gx#stx-pair? _tl167781167802_)
                              (let ((_e167782167805_
                                     (gx#syntax-e _tl167781167802_)))
                                (let ((_hd167783167808_
                                       (##car _e167782167805_))
                                      (_tl167784167810_
                                       (##cdr _e167782167805_)))
                                  (let ((_hd167813_ _hd167783167808_))
                                    (if (gx#stx-pair? _tl167784167810_)
                                        (let ((_e167785167815_
                                               (gx#syntax-e _tl167784167810_)))
                                          (let ((_hd167786167818_
                                                 (##car _e167785167815_))
                                                (_tl167787167820_
                                                 (##cdr _e167785167815_)))
                                            (let ((_body167823_
                                                   _hd167786167818_))
                                              (if (gx#stx-null?
                                                   _tl167787167820_)
                                                  (if '#t
                                                      (cons _form167775_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd167813_)
                          (cons (gx#core-compile-top-syntax _body167823_)
                                '())))
              (_E167778167793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167778167793_)))))
                                        (_E167778167793_)))))
                              (_E167778167793_))))
                      (_E167778167793_)))))
          (_E167777167825_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx167832_)
        (let ((_form167834_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx167832_ _form167834_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173215_
        (let ((_g173214_ (##length _g173215_)))
          (cond ((##fx= _g173214_ 1)
                 (apply (lambda (_stx167832_)
                          (gx#core-compile-top-let-values%__0 _stx167832_))
                        _g173215_))
                ((##fx= _g173214_ 2)
                 (apply (lambda (_stx167836_ _form167837_)
                          (gx#core-compile-top-let-values%__%
                           _stx167836_
                           _form167837_))
                        _g173215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173215_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx167771_)
        (gx#core-compile-top-let-values%__% _stx167771_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx167769_)
        (gx#core-compile-top-let-values%__% _stx167769_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167728_)
        (let* ((_e167729167739_ _stx167728_)
               (_E167731167743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167729167739_)))
               (_E167730167765_
                (lambda ()
                  (if (gx#stx-pair? _e167729167739_)
                      (let ((_e167732167747_ (gx#syntax-e _e167729167739_)))
                        (let ((_hd167733167750_ (##car _e167732167747_))
                              (_tl167734167752_ (##cdr _e167732167747_)))
                          (if (gx#stx-pair? _tl167734167752_)
                              (let ((_e167735167755_
                                     (gx#syntax-e _tl167734167752_)))
                                (let ((_hd167736167758_
                                       (##car _e167735167755_))
                                      (_tl167737167760_
                                       (##cdr _e167735167755_)))
                                  (let ((_e167763_ _hd167736167758_))
                                    (if (gx#stx-null? _tl167737167760_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167763_)
                                                        '()))
                                            (_E167731167743_))
                                        (_E167731167743_)))))
                              (_E167731167743_))))
                      (_E167731167743_)))))
          (_E167730167765_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167687_)
        (let* ((_e167688167698_ _stx167687_)
               (_E167690167702_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167688167698_)))
               (_E167689167724_
                (lambda ()
                  (if (gx#stx-pair? _e167688167698_)
                      (let ((_e167691167706_ (gx#syntax-e _e167688167698_)))
                        (let ((_hd167692167709_ (##car _e167691167706_))
                              (_tl167693167711_ (##cdr _e167691167706_)))
                          (if (gx#stx-pair? _tl167693167711_)
                              (let ((_e167694167714_
                                     (gx#syntax-e _tl167693167711_)))
                                (let ((_hd167695167717_
                                       (##car _e167694167714_))
                                      (_tl167696167719_
                                       (##cdr _e167694167714_)))
                                  (let ((_e167722_ _hd167695167717_))
                                    (if (gx#stx-null? _tl167696167719_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167722_)
                                                        '()))
                                            (_E167690167702_))
                                        (_E167690167702_)))))
                              (_E167690167702_))))
                      (_E167690167702_)))))
          (_E167689167724_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167644_)
        (let* ((_e167645167655_ _stx167644_)
               (_E167647167659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167645167655_)))
               (_E167646167683_
                (lambda ()
                  (if (gx#stx-pair? _e167645167655_)
                      (let ((_e167648167663_ (gx#syntax-e _e167645167655_)))
                        (let ((_hd167649167666_ (##car _e167648167663_))
                              (_tl167650167668_ (##cdr _e167648167663_)))
                          (if (gx#stx-pair? _tl167650167668_)
                              (let ((_e167651167671_
                                     (gx#syntax-e _tl167650167668_)))
                                (let ((_hd167652167674_
                                       (##car _e167651167671_))
                                      (_tl167653167676_
                                       (##cdr _e167651167671_)))
                                  (let* ((_rator167679_ _hd167652167674_)
                                         (_args167681_ _tl167653167676_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167679_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167681_)))
                                        (_E167647167659_)))))
                              (_E167647167659_))))
                      (_E167647167659_)))))
          (_E167646167683_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167577_)
        (let* ((_e167578167594_ _stx167577_)
               (_E167580167598_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167578167594_)))
               (_E167579167640_
                (lambda ()
                  (if (gx#stx-pair? _e167578167594_)
                      (let ((_e167581167602_ (gx#syntax-e _e167578167594_)))
                        (let ((_hd167582167605_ (##car _e167581167602_))
                              (_tl167583167607_ (##cdr _e167581167602_)))
                          (if (gx#stx-pair? _tl167583167607_)
                              (let ((_e167584167610_
                                     (gx#syntax-e _tl167583167607_)))
                                (let ((_hd167585167613_
                                       (##car _e167584167610_))
                                      (_tl167586167615_
                                       (##cdr _e167584167610_)))
                                  (let ((_test167618_ _hd167585167613_))
                                    (if (gx#stx-pair? _tl167586167615_)
                                        (let ((_e167587167620_
                                               (gx#syntax-e _tl167586167615_)))
                                          (let ((_hd167588167623_
                                                 (##car _e167587167620_))
                                                (_tl167589167625_
                                                 (##cdr _e167587167620_)))
                                            (let ((_K167628_ _hd167588167623_))
                                              (if (gx#stx-pair?
                                                   _tl167589167625_)
                                                  (let ((_e167590167630_
                                                         (gx#syntax-e
                                                          _tl167589167625_)))
                                                    (let ((_hd167591167633_
                                                           (##car _e167590167630_))
                                                          (_tl167592167635_
                                                           (##cdr _e167590167630_)))
                                                      (let ((_E167638_
                                                             _hd167591167633_))
                                                        (if (gx#stx-null?
                                                             _tl167592167635_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167618_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167628_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167638_)
                                                '()))))
                        (_E167580167598_))
                    (_E167580167598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167580167598_)))))
                                        (_E167580167598_)))))
                              (_E167580167598_))))
                      (_E167580167598_)))))
          (_E167579167640_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167536_)
        (let* ((_e167537167547_ _stx167536_)
               (_E167539167551_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167537167547_)))
               (_E167538167573_
                (lambda ()
                  (if (gx#stx-pair? _e167537167547_)
                      (let ((_e167540167555_ (gx#syntax-e _e167537167547_)))
                        (let ((_hd167541167558_ (##car _e167540167555_))
                              (_tl167542167560_ (##cdr _e167540167555_)))
                          (if (gx#stx-pair? _tl167542167560_)
                              (let ((_e167543167563_
                                     (gx#syntax-e _tl167542167560_)))
                                (let ((_hd167544167566_
                                       (##car _e167543167563_))
                                      (_tl167545167568_
                                       (##cdr _e167543167563_)))
                                  (let ((_id167571_ _hd167544167566_))
                                    (if (gx#stx-null? _tl167545167568_)
                                        (if (gx#identifier? _id167571_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167571_)
                                                        '()))
                                            (_E167539167551_))
                                        (_E167539167551_)))))
                              (_E167539167551_))))
                      (_E167539167551_)))))
          (_E167538167573_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167482_)
        (let* ((_e167483167496_ _stx167482_)
               (_E167485167500_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167483167496_)))
               (_E167484167532_
                (lambda ()
                  (if (gx#stx-pair? _e167483167496_)
                      (let ((_e167486167504_ (gx#syntax-e _e167483167496_)))
                        (let ((_hd167487167507_ (##car _e167486167504_))
                              (_tl167488167509_ (##cdr _e167486167504_)))
                          (if (gx#stx-pair? _tl167488167509_)
                              (let ((_e167489167512_
                                     (gx#syntax-e _tl167488167509_)))
                                (let ((_hd167490167515_
                                       (##car _e167489167512_))
                                      (_tl167491167517_
                                       (##cdr _e167489167512_)))
                                  (let ((_id167520_ _hd167490167515_))
                                    (if (gx#stx-pair? _tl167491167517_)
                                        (let ((_e167492167522_
                                               (gx#syntax-e _tl167491167517_)))
                                          (let ((_hd167493167525_
                                                 (##car _e167492167522_))
                                                (_tl167494167527_
                                                 (##cdr _e167492167522_)))
                                            (let ((_expr167530_
                                                   _hd167493167525_))
                                              (if (gx#stx-null?
                                                   _tl167494167527_)
                                                  (if (gx#identifier?
                                                       _id167520_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167520_)
                          (cons (gx#core-compile-top-syntax _expr167530_)
                                '())))
              (_E167485167500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167485167500_)))))
                                        (_E167485167500_)))))
                              (_E167485167500_))))
                      (_E167485167500_)))))
          (_E167484167532_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167477_)
        (let ((_$e167479_ (gx#resolve-identifier__0 _id167477_)))
          (if _$e167479_
              (##unchecked-structure-ref _$e167479_ '1 gx#binding::t '#f)
              _id167477_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167475_)
        (if (gx#identifier? _hd167475_)
            (gx#core-compile-top-runtime-ref _hd167475_)
            '#f)))))
