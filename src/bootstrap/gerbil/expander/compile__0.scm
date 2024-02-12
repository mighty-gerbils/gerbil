(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707735857)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168624_)
        (let* ((_e168625168632_ _stx168624_)
               (_E168627168636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168625168632_)))
               (_E168626168650_
                (lambda ()
                  (if (gx#stx-pair? _e168625168632_)
                      (let ((_e168628168640_ (gx#syntax-e _e168625168632_)))
                        (let ((_hd168629168643_ (##car _e168628168640_))
                              (_tl168630168645_ (##cdr _e168628168640_)))
                          (let ((_form168648_ _hd168629168643_))
                            (if '#t
                                (let* ((__self173221
                                        (gx#syntax-local-e__0 _form168648_))
                                       (__method173222
                                        (method-ref
                                         __self173221
                                         'compile-top-syntax)))
                                  (if __method173222
                                      (__method173222 __self173221 _stx168624_)
                                      (error '"Missing method"
                                             __self173221
                                             'compile-top-syntax)))
                                (_E168627168636_)))))
                      (_E168627168636_)))))
          (_E168626168650_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168584_ _stx168585_)
        (let* ((_self168586168594_ _self168584_)
               (_E168588168598_
                (lambda () (error '"No clause matching" _self168586168594_)))
               (_K168589168610_
                (lambda (_K168601_)
                  (let ((_$e168603_ (gx#stx-source _stx168585_)))
                    (if _$e168603_
                        ((lambda (_g168605168607_)
                           (gx#stx-wrap-source
                            (_K168601_ _stx168585_)
                            _g168605168607_))
                         _$e168603_)
                        (_K168601_ _stx168585_))))))
          (if (##structure-instance-of?
               _self168586168594_
               'gx#core-expander::t)
              (let* ((_e168590168613_
                      (##unchecked-structure-ref
                       _self168586168594_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168591168616_
                      (##unchecked-structure-ref
                       _self168586168594_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168592168619_
                      (##unchecked-structure-ref
                       _self168586168594_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168622_ _e168592168619_))
                (_K168589168610_ _K168622_))
              (_E168588168598_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168458_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168458_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168428_)
        (let* ((_e168429168436_ _stx168428_)
               (_E168431168440_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168429168436_)))
               (_E168430168454_
                (lambda ()
                  (if (gx#stx-pair? _e168429168436_)
                      (let ((_e168432168444_ (gx#syntax-e _e168429168436_)))
                        (let ((_hd168433168447_ (##car _e168432168444_))
                              (_tl168434168449_ (##cdr _e168432168444_)))
                          (let ((_body168452_ _tl168434168449_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168452_))
                                (_E168431168440_)))))
                      (_E168431168440_)))))
          (_E168430168454_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168397_)
        (let* ((_e168398168405_ _stx168397_)
               (_E168400168409_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168398168405_)))
               (_E168399168424_
                (lambda ()
                  (if (gx#stx-pair? _e168398168405_)
                      (let ((_e168401168413_ (gx#syntax-e _e168398168405_)))
                        (let ((_hd168402168416_ (##car _e168401168413_))
                              (_tl168403168418_ (##cdr _e168401168413_)))
                          (let ((_body168421_ _tl168403168418_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168421_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168400168409_)))))
                      (_E168400168409_)))))
          (_E168399168424_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168367_)
        (let* ((_e168368168375_ _stx168367_)
               (_E168370168379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168368168375_)))
               (_E168369168393_
                (lambda ()
                  (if (gx#stx-pair? _e168368168375_)
                      (let ((_e168371168383_ (gx#syntax-e _e168368168375_)))
                        (let ((_hd168372168386_ (##car _e168371168383_))
                              (_tl168373168388_ (##cdr _e168371168383_)))
                          (let ((_body168391_ _tl168373168388_))
                            (if '#t
                                (cons '%#begin-foreign _body168391_)
                                (_E168370168379_)))))
                      (_E168370168379_)))))
          (_E168369168393_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168313_)
        (let* ((_e168314168327_ _stx168313_)
               (_E168316168331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168314168327_)))
               (_E168315168363_
                (lambda ()
                  (if (gx#stx-pair? _e168314168327_)
                      (let ((_e168317168335_ (gx#syntax-e _e168314168327_)))
                        (let ((_hd168318168338_ (##car _e168317168335_))
                              (_tl168319168340_ (##cdr _e168317168335_)))
                          (if (gx#stx-pair? _tl168319168340_)
                              (let ((_e168320168343_
                                     (gx#syntax-e _tl168319168340_)))
                                (let ((_hd168321168346_
                                       (##car _e168320168343_))
                                      (_tl168322168348_
                                       (##cdr _e168320168343_)))
                                  (let ((_ann168351_ _hd168321168346_))
                                    (if (gx#stx-pair? _tl168322168348_)
                                        (let ((_e168323168353_
                                               (gx#syntax-e _tl168322168348_)))
                                          (let ((_hd168324168356_
                                                 (##car _e168323168353_))
                                                (_tl168325168358_
                                                 (##cdr _e168323168353_)))
                                            (let ((_expr168361_
                                                   _hd168324168356_))
                                              (if (gx#stx-null?
                                                   _tl168325168358_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168361_)
                                                      (_E168316168331_))
                                                  (_E168316168331_)))))
                                        (_E168316168331_)))))
                              (_E168316168331_))))
                      (_E168316168331_)))))
          (_E168315168363_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168283_)
        (let* ((_e168284168291_ _stx168283_)
               (_E168286168295_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168284168291_)))
               (_E168285168309_
                (lambda ()
                  (if (gx#stx-pair? _e168284168291_)
                      (let ((_e168287168299_ (gx#syntax-e _e168284168291_)))
                        (let ((_hd168288168302_ (##car _e168287168299_))
                              (_tl168289168304_ (##cdr _e168287168299_)))
                          (let ((_body168307_ _tl168289168304_))
                            (if '#t
                                (cons '%#import _body168307_)
                                (_E168286168295_)))))
                      (_E168286168295_)))))
          (_E168285168309_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168240_)
        (let* ((_e168241168251_ _stx168240_)
               (_E168243168255_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168241168251_)))
               (_E168242168279_
                (lambda ()
                  (if (gx#stx-pair? _e168241168251_)
                      (let ((_e168244168259_ (gx#syntax-e _e168241168251_)))
                        (let ((_hd168245168262_ (##car _e168244168259_))
                              (_tl168246168264_ (##cdr _e168244168259_)))
                          (if (gx#stx-pair? _tl168246168264_)
                              (let ((_e168247168267_
                                     (gx#syntax-e _tl168246168264_)))
                                (let ((_hd168248168270_
                                       (##car _e168247168267_))
                                      (_tl168249168272_
                                       (##cdr _e168247168267_)))
                                  (let* ((_hd168275_ _hd168248168270_)
                                         (_body168277_ _tl168249168272_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168275_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168277_)))
                                        (_E168243168255_)))))
                              (_E168243168255_))))
                      (_E168243168255_)))))
          (_E168242168279_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168210_)
        (let* ((_e168211168218_ _stx168210_)
               (_E168213168222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168211168218_)))
               (_E168212168236_
                (lambda ()
                  (if (gx#stx-pair? _e168211168218_)
                      (let ((_e168214168226_ (gx#syntax-e _e168211168218_)))
                        (let ((_hd168215168229_ (##car _e168214168226_))
                              (_tl168216168231_ (##cdr _e168214168226_)))
                          (let ((_body168234_ _tl168216168231_))
                            (if '#t
                                (cons '%#export _body168234_)
                                (_E168213168222_)))))
                      (_E168213168222_)))))
          (_E168212168236_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168180_)
        (let* ((_e168181168188_ _stx168180_)
               (_E168183168192_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168181168188_)))
               (_E168182168206_
                (lambda ()
                  (if (gx#stx-pair? _e168181168188_)
                      (let ((_e168184168196_ (gx#syntax-e _e168181168188_)))
                        (let ((_hd168185168199_ (##car _e168184168196_))
                              (_tl168186168201_ (##cdr _e168184168196_)))
                          (let ((_body168204_ _tl168186168201_))
                            (if '#t
                                (cons '%#provide _body168204_)
                                (_E168183168192_)))))
                      (_E168183168192_)))))
          (_E168182168206_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168150_)
        (let* ((_e168151168158_ _stx168150_)
               (_E168153168162_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168151168158_)))
               (_E168152168176_
                (lambda ()
                  (if (gx#stx-pair? _e168151168158_)
                      (let ((_e168154168166_ (gx#syntax-e _e168151168158_)))
                        (let ((_hd168155168169_ (##car _e168154168166_))
                              (_tl168156168171_ (##cdr _e168154168166_)))
                          (let ((_body168174_ _tl168156168171_))
                            (if '#t
                                (cons '%#extern _body168174_)
                                (_E168153168162_)))))
                      (_E168153168162_)))))
          (_E168152168176_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168096_)
        (let* ((_e168097168110_ _stx168096_)
               (_E168099168114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168097168110_)))
               (_E168098168146_
                (lambda ()
                  (if (gx#stx-pair? _e168097168110_)
                      (let ((_e168100168118_ (gx#syntax-e _e168097168110_)))
                        (let ((_hd168101168121_ (##car _e168100168118_))
                              (_tl168102168123_ (##cdr _e168100168118_)))
                          (if (gx#stx-pair? _tl168102168123_)
                              (let ((_e168103168126_
                                     (gx#syntax-e _tl168102168123_)))
                                (let ((_hd168104168129_
                                       (##car _e168103168126_))
                                      (_tl168105168131_
                                       (##cdr _e168103168126_)))
                                  (let ((_hd168134_ _hd168104168129_))
                                    (if (gx#stx-pair? _tl168105168131_)
                                        (let ((_e168106168136_
                                               (gx#syntax-e _tl168105168131_)))
                                          (let ((_hd168107168139_
                                                 (##car _e168106168136_))
                                                (_tl168108168141_
                                                 (##cdr _e168106168136_)))
                                            (let ((_expr168144_
                                                   _hd168107168139_))
                                              (if (gx#stx-null?
                                                   _tl168108168141_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168134_)
                          (cons (gx#core-compile-top-syntax _expr168144_)
                                '())))
              (_E168099168114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168099168114_)))))
                                        (_E168099168114_)))))
                              (_E168099168114_))))
                      (_E168099168114_)))))
          (_E168098168146_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168041_)
        (let* ((_e168042168055_ _stx168041_)
               (_E168044168059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168042168055_)))
               (_E168043168092_
                (lambda ()
                  (if (gx#stx-pair? _e168042168055_)
                      (let ((_e168045168063_ (gx#syntax-e _e168042168055_)))
                        (let ((_hd168046168066_ (##car _e168045168063_))
                              (_tl168047168068_ (##cdr _e168045168063_)))
                          (if (gx#stx-pair? _tl168047168068_)
                              (let ((_e168048168071_
                                     (gx#syntax-e _tl168047168068_)))
                                (let ((_hd168049168074_
                                       (##car _e168048168071_))
                                      (_tl168050168076_
                                       (##cdr _e168048168071_)))
                                  (let ((_hd168079_ _hd168049168074_))
                                    (if (gx#stx-pair? _tl168050168076_)
                                        (let ((_e168051168081_
                                               (gx#syntax-e _tl168050168076_)))
                                          (let ((_hd168052168084_
                                                 (##car _e168051168081_))
                                                (_tl168053168086_
                                                 (##cdr _e168051168081_)))
                                            (let ((_expr168089_
                                                   _hd168052168084_))
                                              (if (gx#stx-null?
                                                   _tl168053168086_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168089_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168044168059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168044168059_)))))
                                        (_E168044168059_)))))
                              (_E168044168059_))))
                      (_E168044168059_)))))
          (_E168043168092_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168011_)
        (let* ((_e168012168019_ _stx168011_)
               (_E168014168023_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168012168019_)))
               (_E168013168037_
                (lambda ()
                  (if (gx#stx-pair? _e168012168019_)
                      (let ((_e168015168027_ (gx#syntax-e _e168012168019_)))
                        (let ((_hd168016168030_ (##car _e168015168027_))
                              (_tl168017168032_ (##cdr _e168015168027_)))
                          (let ((_body168035_ _tl168017168032_))
                            (if '#t
                                (cons '%#define-alias _body168035_)
                                (_E168014168023_)))))
                      (_E168014168023_)))))
          (_E168013168037_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx167981_)
        (let* ((_e167982167989_ _stx167981_)
               (_E167984167993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167982167989_)))
               (_E167983168007_
                (lambda ()
                  (if (gx#stx-pair? _e167982167989_)
                      (let ((_e167985167997_ (gx#syntax-e _e167982167989_)))
                        (let ((_hd167986168000_ (##car _e167985167997_))
                              (_tl167987168002_ (##cdr _e167985167997_)))
                          (let ((_body168005_ _tl167987168002_))
                            (if '#t
                                (cons '%#define-runtime _body168005_)
                                (_E167984167993_)))))
                      (_E167984167993_)))))
          (_E167983168007_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx167951_)
        (let* ((_e167952167959_ _stx167951_)
               (_E167954167963_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167952167959_)))
               (_E167953167977_
                (lambda ()
                  (if (gx#stx-pair? _e167952167959_)
                      (let ((_e167955167967_ (gx#syntax-e _e167952167959_)))
                        (let ((_hd167956167970_ (##car _e167955167967_))
                              (_tl167957167972_ (##cdr _e167955167967_)))
                          (let ((_decls167975_ _tl167957167972_))
                            (if '#t
                                (cons '%#declare _decls167975_)
                                (_E167954167963_)))))
                      (_E167954167963_)))))
          (_E167953167977_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx167921_)
        (let* ((_e167922167929_ _stx167921_)
               (_E167924167933_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167922167929_)))
               (_E167923167947_
                (lambda ()
                  (if (gx#stx-pair? _e167922167929_)
                      (let ((_e167925167937_ (gx#syntax-e _e167922167929_)))
                        (let ((_hd167926167940_ (##car _e167925167937_))
                              (_tl167927167942_ (##cdr _e167925167937_)))
                          (let ((_clause167945_ _tl167927167942_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause167945_))
                                (_E167924167933_)))))
                      (_E167924167933_)))))
          (_E167923167947_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx167878_)
        (let* ((_e167879167889_ _stx167878_)
               (_E167881167893_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167879167889_)))
               (_E167880167917_
                (lambda ()
                  (if (gx#stx-pair? _e167879167889_)
                      (let ((_e167882167897_ (gx#syntax-e _e167879167889_)))
                        (let ((_hd167883167900_ (##car _e167882167897_))
                              (_tl167884167902_ (##cdr _e167882167897_)))
                          (let ((_hd167905_ _hd167883167900_))
                            (if (gx#stx-pair? _tl167884167902_)
                                (let ((_e167885167907_
                                       (gx#syntax-e _tl167884167902_)))
                                  (let ((_hd167886167910_
                                         (##car _e167885167907_))
                                        (_tl167887167912_
                                         (##cdr _e167885167907_)))
                                    (let ((_body167915_ _hd167886167910_))
                                      (if (gx#stx-null? _tl167887167912_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd167905_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body167915_)
                                                          '()))
                                              (_E167881167893_))
                                          (_E167881167893_)))))
                                (_E167881167893_)))))
                      (_E167881167893_)))))
          (_E167880167917_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx167848_)
        (let* ((_e167849167856_ _stx167848_)
               (_E167851167860_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167849167856_)))
               (_E167850167874_
                (lambda ()
                  (if (gx#stx-pair? _e167849167856_)
                      (let ((_e167852167864_ (gx#syntax-e _e167849167856_)))
                        (let ((_hd167853167867_ (##car _e167852167864_))
                              (_tl167854167869_ (##cdr _e167852167864_)))
                          (let ((_clauses167872_ _tl167854167869_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses167872_))
                                (_E167851167860_)))))
                      (_E167851167860_)))))
          (_E167850167874_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx167783_ _form167784_)
        (let* ((_e167785167798_ _stx167783_)
               (_E167787167802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167785167798_)))
               (_E167786167834_
                (lambda ()
                  (if (gx#stx-pair? _e167785167798_)
                      (let ((_e167788167806_ (gx#syntax-e _e167785167798_)))
                        (let ((_hd167789167809_ (##car _e167788167806_))
                              (_tl167790167811_ (##cdr _e167788167806_)))
                          (if (gx#stx-pair? _tl167790167811_)
                              (let ((_e167791167814_
                                     (gx#syntax-e _tl167790167811_)))
                                (let ((_hd167792167817_
                                       (##car _e167791167814_))
                                      (_tl167793167819_
                                       (##cdr _e167791167814_)))
                                  (let ((_hd167822_ _hd167792167817_))
                                    (if (gx#stx-pair? _tl167793167819_)
                                        (let ((_e167794167824_
                                               (gx#syntax-e _tl167793167819_)))
                                          (let ((_hd167795167827_
                                                 (##car _e167794167824_))
                                                (_tl167796167829_
                                                 (##cdr _e167794167824_)))
                                            (let ((_body167832_
                                                   _hd167795167827_))
                                              (if (gx#stx-null?
                                                   _tl167796167829_)
                                                  (if '#t
                                                      (cons _form167784_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd167822_)
                          (cons (gx#core-compile-top-syntax _body167832_)
                                '())))
              (_E167787167802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167787167802_)))))
                                        (_E167787167802_)))))
                              (_E167787167802_))))
                      (_E167787167802_)))))
          (_E167786167834_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx167841_)
        (let ((_form167843_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx167841_ _form167843_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173224_
        (let ((_g173223_ (##length _g173224_)))
          (cond ((##fx= _g173223_ 1)
                 (apply (lambda (_stx167841_)
                          (gx#core-compile-top-let-values%__0 _stx167841_))
                        _g173224_))
                ((##fx= _g173223_ 2)
                 (apply (lambda (_stx167845_ _form167846_)
                          (gx#core-compile-top-let-values%__%
                           _stx167845_
                           _form167846_))
                        _g173224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173224_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx167780_)
        (gx#core-compile-top-let-values%__% _stx167780_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx167778_)
        (gx#core-compile-top-let-values%__% _stx167778_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167737_)
        (let* ((_e167738167748_ _stx167737_)
               (_E167740167752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167738167748_)))
               (_E167739167774_
                (lambda ()
                  (if (gx#stx-pair? _e167738167748_)
                      (let ((_e167741167756_ (gx#syntax-e _e167738167748_)))
                        (let ((_hd167742167759_ (##car _e167741167756_))
                              (_tl167743167761_ (##cdr _e167741167756_)))
                          (if (gx#stx-pair? _tl167743167761_)
                              (let ((_e167744167764_
                                     (gx#syntax-e _tl167743167761_)))
                                (let ((_hd167745167767_
                                       (##car _e167744167764_))
                                      (_tl167746167769_
                                       (##cdr _e167744167764_)))
                                  (let ((_e167772_ _hd167745167767_))
                                    (if (gx#stx-null? _tl167746167769_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167772_)
                                                        '()))
                                            (_E167740167752_))
                                        (_E167740167752_)))))
                              (_E167740167752_))))
                      (_E167740167752_)))))
          (_E167739167774_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167696_)
        (let* ((_e167697167707_ _stx167696_)
               (_E167699167711_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167697167707_)))
               (_E167698167733_
                (lambda ()
                  (if (gx#stx-pair? _e167697167707_)
                      (let ((_e167700167715_ (gx#syntax-e _e167697167707_)))
                        (let ((_hd167701167718_ (##car _e167700167715_))
                              (_tl167702167720_ (##cdr _e167700167715_)))
                          (if (gx#stx-pair? _tl167702167720_)
                              (let ((_e167703167723_
                                     (gx#syntax-e _tl167702167720_)))
                                (let ((_hd167704167726_
                                       (##car _e167703167723_))
                                      (_tl167705167728_
                                       (##cdr _e167703167723_)))
                                  (let ((_e167731_ _hd167704167726_))
                                    (if (gx#stx-null? _tl167705167728_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167731_)
                                                        '()))
                                            (_E167699167711_))
                                        (_E167699167711_)))))
                              (_E167699167711_))))
                      (_E167699167711_)))))
          (_E167698167733_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167653_)
        (let* ((_e167654167664_ _stx167653_)
               (_E167656167668_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167654167664_)))
               (_E167655167692_
                (lambda ()
                  (if (gx#stx-pair? _e167654167664_)
                      (let ((_e167657167672_ (gx#syntax-e _e167654167664_)))
                        (let ((_hd167658167675_ (##car _e167657167672_))
                              (_tl167659167677_ (##cdr _e167657167672_)))
                          (if (gx#stx-pair? _tl167659167677_)
                              (let ((_e167660167680_
                                     (gx#syntax-e _tl167659167677_)))
                                (let ((_hd167661167683_
                                       (##car _e167660167680_))
                                      (_tl167662167685_
                                       (##cdr _e167660167680_)))
                                  (let* ((_rator167688_ _hd167661167683_)
                                         (_args167690_ _tl167662167685_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167688_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167690_)))
                                        (_E167656167668_)))))
                              (_E167656167668_))))
                      (_E167656167668_)))))
          (_E167655167692_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167586_)
        (let* ((_e167587167603_ _stx167586_)
               (_E167589167607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167587167603_)))
               (_E167588167649_
                (lambda ()
                  (if (gx#stx-pair? _e167587167603_)
                      (let ((_e167590167611_ (gx#syntax-e _e167587167603_)))
                        (let ((_hd167591167614_ (##car _e167590167611_))
                              (_tl167592167616_ (##cdr _e167590167611_)))
                          (if (gx#stx-pair? _tl167592167616_)
                              (let ((_e167593167619_
                                     (gx#syntax-e _tl167592167616_)))
                                (let ((_hd167594167622_
                                       (##car _e167593167619_))
                                      (_tl167595167624_
                                       (##cdr _e167593167619_)))
                                  (let ((_test167627_ _hd167594167622_))
                                    (if (gx#stx-pair? _tl167595167624_)
                                        (let ((_e167596167629_
                                               (gx#syntax-e _tl167595167624_)))
                                          (let ((_hd167597167632_
                                                 (##car _e167596167629_))
                                                (_tl167598167634_
                                                 (##cdr _e167596167629_)))
                                            (let ((_K167637_ _hd167597167632_))
                                              (if (gx#stx-pair?
                                                   _tl167598167634_)
                                                  (let ((_e167599167639_
                                                         (gx#syntax-e
                                                          _tl167598167634_)))
                                                    (let ((_hd167600167642_
                                                           (##car _e167599167639_))
                                                          (_tl167601167644_
                                                           (##cdr _e167599167639_)))
                                                      (let ((_E167647_
                                                             _hd167600167642_))
                                                        (if (gx#stx-null?
                                                             _tl167601167644_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167627_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167637_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167647_)
                                                '()))))
                        (_E167589167607_))
                    (_E167589167607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167589167607_)))))
                                        (_E167589167607_)))))
                              (_E167589167607_))))
                      (_E167589167607_)))))
          (_E167588167649_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167545_)
        (let* ((_e167546167556_ _stx167545_)
               (_E167548167560_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167546167556_)))
               (_E167547167582_
                (lambda ()
                  (if (gx#stx-pair? _e167546167556_)
                      (let ((_e167549167564_ (gx#syntax-e _e167546167556_)))
                        (let ((_hd167550167567_ (##car _e167549167564_))
                              (_tl167551167569_ (##cdr _e167549167564_)))
                          (if (gx#stx-pair? _tl167551167569_)
                              (let ((_e167552167572_
                                     (gx#syntax-e _tl167551167569_)))
                                (let ((_hd167553167575_
                                       (##car _e167552167572_))
                                      (_tl167554167577_
                                       (##cdr _e167552167572_)))
                                  (let ((_id167580_ _hd167553167575_))
                                    (if (gx#stx-null? _tl167554167577_)
                                        (if (gx#identifier? _id167580_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167580_)
                                                        '()))
                                            (_E167548167560_))
                                        (_E167548167560_)))))
                              (_E167548167560_))))
                      (_E167548167560_)))))
          (_E167547167582_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167491_)
        (let* ((_e167492167505_ _stx167491_)
               (_E167494167509_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167492167505_)))
               (_E167493167541_
                (lambda ()
                  (if (gx#stx-pair? _e167492167505_)
                      (let ((_e167495167513_ (gx#syntax-e _e167492167505_)))
                        (let ((_hd167496167516_ (##car _e167495167513_))
                              (_tl167497167518_ (##cdr _e167495167513_)))
                          (if (gx#stx-pair? _tl167497167518_)
                              (let ((_e167498167521_
                                     (gx#syntax-e _tl167497167518_)))
                                (let ((_hd167499167524_
                                       (##car _e167498167521_))
                                      (_tl167500167526_
                                       (##cdr _e167498167521_)))
                                  (let ((_id167529_ _hd167499167524_))
                                    (if (gx#stx-pair? _tl167500167526_)
                                        (let ((_e167501167531_
                                               (gx#syntax-e _tl167500167526_)))
                                          (let ((_hd167502167534_
                                                 (##car _e167501167531_))
                                                (_tl167503167536_
                                                 (##cdr _e167501167531_)))
                                            (let ((_expr167539_
                                                   _hd167502167534_))
                                              (if (gx#stx-null?
                                                   _tl167503167536_)
                                                  (if (gx#identifier?
                                                       _id167529_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167529_)
                          (cons (gx#core-compile-top-syntax _expr167539_)
                                '())))
              (_E167494167509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167494167509_)))))
                                        (_E167494167509_)))))
                              (_E167494167509_))))
                      (_E167494167509_)))))
          (_E167493167541_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167486_)
        (let ((_$e167488_ (gx#resolve-identifier__0 _id167486_)))
          (if _$e167488_
              (##unchecked-structure-ref _$e167488_ '1 gx#binding::t '#f)
              _id167486_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167484_)
        (if (gx#identifier? _hd167484_)
            (gx#core-compile-top-runtime-ref _hd167484_)
            '#f)))))
