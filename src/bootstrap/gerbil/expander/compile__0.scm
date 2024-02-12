(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1707740668)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx168625_)
        (let* ((_e168626168633_ _stx168625_)
               (_E168628168637_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168626168633_)))
               (_E168627168651_
                (lambda ()
                  (if (gx#stx-pair? _e168626168633_)
                      (let ((_e168629168641_ (gx#syntax-e _e168626168633_)))
                        (let ((_hd168630168644_ (##car _e168629168641_))
                              (_tl168631168646_ (##cdr _e168629168641_)))
                          (let ((_form168649_ _hd168630168644_))
                            (if '#t
                                (let* ((__self173222
                                        (gx#syntax-local-e__0 _form168649_))
                                       (__method173223
                                        (method-ref
                                         __self173222
                                         'compile-top-syntax)))
                                  (if __method173223
                                      (__method173223 __self173222 _stx168625_)
                                      (error '"Missing method"
                                             __self173222
                                             'compile-top-syntax)))
                                (_E168628168637_)))))
                      (_E168628168637_)))))
          (_E168627168651_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self168585_ _stx168586_)
        (let* ((_self168587168595_ _self168585_)
               (_E168589168599_
                (lambda () (error '"No clause matching" _self168587168595_)))
               (_K168590168611_
                (lambda (_K168602_)
                  (let ((_$e168604_ (gx#stx-source _stx168586_)))
                    (if _$e168604_
                        ((lambda (_g168606168608_)
                           (gx#stx-wrap-source
                            (_K168602_ _stx168586_)
                            _g168606168608_))
                         _$e168604_)
                        (_K168602_ _stx168586_))))))
          (if (##structure-instance-of?
               _self168587168595_
               'gx#core-expander::t)
              (let* ((_e168591168614_
                      (##unchecked-structure-ref
                       _self168587168595_
                       '1
                       gx#expander::t
                       '#f))
                     (_e168592168617_
                      (##unchecked-structure-ref
                       _self168587168595_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e168593168620_
                      (##unchecked-structure-ref
                       _self168587168595_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K168623_ _e168593168620_))
                (_K168590168611_ _K168623_))
              (_E168589168599_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx168459_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx168459_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx168429_)
        (let* ((_e168430168437_ _stx168429_)
               (_E168432168441_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168430168437_)))
               (_E168431168455_
                (lambda ()
                  (if (gx#stx-pair? _e168430168437_)
                      (let ((_e168433168445_ (gx#syntax-e _e168430168437_)))
                        (let ((_hd168434168448_ (##car _e168433168445_))
                              (_tl168435168450_ (##cdr _e168433168445_)))
                          (let ((_body168453_ _tl168435168450_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body168453_))
                                (_E168432168441_)))))
                      (_E168432168441_)))))
          (_E168431168455_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx168398_)
        (let* ((_e168399168406_ _stx168398_)
               (_E168401168410_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168399168406_)))
               (_E168400168425_
                (lambda ()
                  (if (gx#stx-pair? _e168399168406_)
                      (let ((_e168402168414_ (gx#syntax-e _e168399168406_)))
                        (let ((_hd168403168417_ (##car _e168402168414_))
                              (_tl168404168419_ (##cdr _e168402168414_)))
                          (let ((_body168422_ _tl168404168419_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body168422_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E168401168410_)))))
                      (_E168401168410_)))))
          (_E168400168425_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx168368_)
        (let* ((_e168369168376_ _stx168368_)
               (_E168371168380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168369168376_)))
               (_E168370168394_
                (lambda ()
                  (if (gx#stx-pair? _e168369168376_)
                      (let ((_e168372168384_ (gx#syntax-e _e168369168376_)))
                        (let ((_hd168373168387_ (##car _e168372168384_))
                              (_tl168374168389_ (##cdr _e168372168384_)))
                          (let ((_body168392_ _tl168374168389_))
                            (if '#t
                                (cons '%#begin-foreign _body168392_)
                                (_E168371168380_)))))
                      (_E168371168380_)))))
          (_E168370168394_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx168314_)
        (let* ((_e168315168328_ _stx168314_)
               (_E168317168332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168315168328_)))
               (_E168316168364_
                (lambda ()
                  (if (gx#stx-pair? _e168315168328_)
                      (let ((_e168318168336_ (gx#syntax-e _e168315168328_)))
                        (let ((_hd168319168339_ (##car _e168318168336_))
                              (_tl168320168341_ (##cdr _e168318168336_)))
                          (if (gx#stx-pair? _tl168320168341_)
                              (let ((_e168321168344_
                                     (gx#syntax-e _tl168320168341_)))
                                (let ((_hd168322168347_
                                       (##car _e168321168344_))
                                      (_tl168323168349_
                                       (##cdr _e168321168344_)))
                                  (let ((_ann168352_ _hd168322168347_))
                                    (if (gx#stx-pair? _tl168323168349_)
                                        (let ((_e168324168354_
                                               (gx#syntax-e _tl168323168349_)))
                                          (let ((_hd168325168357_
                                                 (##car _e168324168354_))
                                                (_tl168326168359_
                                                 (##cdr _e168324168354_)))
                                            (let ((_expr168362_
                                                   _hd168325168357_))
                                              (if (gx#stx-null?
                                                   _tl168326168359_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr168362_)
                                                      (_E168317168332_))
                                                  (_E168317168332_)))))
                                        (_E168317168332_)))))
                              (_E168317168332_))))
                      (_E168317168332_)))))
          (_E168316168364_))))
    (define gx#core-compile-top-import%
      (lambda (_stx168284_)
        (let* ((_e168285168292_ _stx168284_)
               (_E168287168296_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168285168292_)))
               (_E168286168310_
                (lambda ()
                  (if (gx#stx-pair? _e168285168292_)
                      (let ((_e168288168300_ (gx#syntax-e _e168285168292_)))
                        (let ((_hd168289168303_ (##car _e168288168300_))
                              (_tl168290168305_ (##cdr _e168288168300_)))
                          (let ((_body168308_ _tl168290168305_))
                            (if '#t
                                (cons '%#import _body168308_)
                                (_E168287168296_)))))
                      (_E168287168296_)))))
          (_E168286168310_))))
    (define gx#core-compile-top-module%
      (lambda (_stx168241_)
        (let* ((_e168242168252_ _stx168241_)
               (_E168244168256_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168242168252_)))
               (_E168243168280_
                (lambda ()
                  (if (gx#stx-pair? _e168242168252_)
                      (let ((_e168245168260_ (gx#syntax-e _e168242168252_)))
                        (let ((_hd168246168263_ (##car _e168245168260_))
                              (_tl168247168265_ (##cdr _e168245168260_)))
                          (if (gx#stx-pair? _tl168247168265_)
                              (let ((_e168248168268_
                                     (gx#syntax-e _tl168247168265_)))
                                (let ((_hd168249168271_
                                       (##car _e168248168268_))
                                      (_tl168250168273_
                                       (##cdr _e168248168268_)))
                                  (let* ((_hd168276_ _hd168249168271_)
                                         (_body168278_ _tl168250168273_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd168276_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body168278_)))
                                        (_E168244168256_)))))
                              (_E168244168256_))))
                      (_E168244168256_)))))
          (_E168243168280_))))
    (define gx#core-compile-top-export%
      (lambda (_stx168211_)
        (let* ((_e168212168219_ _stx168211_)
               (_E168214168223_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168212168219_)))
               (_E168213168237_
                (lambda ()
                  (if (gx#stx-pair? _e168212168219_)
                      (let ((_e168215168227_ (gx#syntax-e _e168212168219_)))
                        (let ((_hd168216168230_ (##car _e168215168227_))
                              (_tl168217168232_ (##cdr _e168215168227_)))
                          (let ((_body168235_ _tl168217168232_))
                            (if '#t
                                (cons '%#export _body168235_)
                                (_E168214168223_)))))
                      (_E168214168223_)))))
          (_E168213168237_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx168181_)
        (let* ((_e168182168189_ _stx168181_)
               (_E168184168193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168182168189_)))
               (_E168183168207_
                (lambda ()
                  (if (gx#stx-pair? _e168182168189_)
                      (let ((_e168185168197_ (gx#syntax-e _e168182168189_)))
                        (let ((_hd168186168200_ (##car _e168185168197_))
                              (_tl168187168202_ (##cdr _e168185168197_)))
                          (let ((_body168205_ _tl168187168202_))
                            (if '#t
                                (cons '%#provide _body168205_)
                                (_E168184168193_)))))
                      (_E168184168193_)))))
          (_E168183168207_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx168151_)
        (let* ((_e168152168159_ _stx168151_)
               (_E168154168163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168152168159_)))
               (_E168153168177_
                (lambda ()
                  (if (gx#stx-pair? _e168152168159_)
                      (let ((_e168155168167_ (gx#syntax-e _e168152168159_)))
                        (let ((_hd168156168170_ (##car _e168155168167_))
                              (_tl168157168172_ (##cdr _e168155168167_)))
                          (let ((_body168175_ _tl168157168172_))
                            (if '#t
                                (cons '%#extern _body168175_)
                                (_E168154168163_)))))
                      (_E168154168163_)))))
          (_E168153168177_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx168097_)
        (let* ((_e168098168111_ _stx168097_)
               (_E168100168115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168098168111_)))
               (_E168099168147_
                (lambda ()
                  (if (gx#stx-pair? _e168098168111_)
                      (let ((_e168101168119_ (gx#syntax-e _e168098168111_)))
                        (let ((_hd168102168122_ (##car _e168101168119_))
                              (_tl168103168124_ (##cdr _e168101168119_)))
                          (if (gx#stx-pair? _tl168103168124_)
                              (let ((_e168104168127_
                                     (gx#syntax-e _tl168103168124_)))
                                (let ((_hd168105168130_
                                       (##car _e168104168127_))
                                      (_tl168106168132_
                                       (##cdr _e168104168127_)))
                                  (let ((_hd168135_ _hd168105168130_))
                                    (if (gx#stx-pair? _tl168106168132_)
                                        (let ((_e168107168137_
                                               (gx#syntax-e _tl168106168132_)))
                                          (let ((_hd168108168140_
                                                 (##car _e168107168137_))
                                                (_tl168109168142_
                                                 (##cdr _e168107168137_)))
                                            (let ((_expr168145_
                                                   _hd168108168140_))
                                              (if (gx#stx-null?
                                                   _tl168109168142_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd168135_)
                          (cons (gx#core-compile-top-syntax _expr168145_)
                                '())))
              (_E168100168115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168100168115_)))))
                                        (_E168100168115_)))))
                              (_E168100168115_))))
                      (_E168100168115_)))))
          (_E168099168147_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx168042_)
        (let* ((_e168043168056_ _stx168042_)
               (_E168045168060_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168043168056_)))
               (_E168044168093_
                (lambda ()
                  (if (gx#stx-pair? _e168043168056_)
                      (let ((_e168046168064_ (gx#syntax-e _e168043168056_)))
                        (let ((_hd168047168067_ (##car _e168046168064_))
                              (_tl168048168069_ (##cdr _e168046168064_)))
                          (if (gx#stx-pair? _tl168048168069_)
                              (let ((_e168049168072_
                                     (gx#syntax-e _tl168048168069_)))
                                (let ((_hd168050168075_
                                       (##car _e168049168072_))
                                      (_tl168051168077_
                                       (##cdr _e168049168072_)))
                                  (let ((_hd168080_ _hd168050168075_))
                                    (if (gx#stx-pair? _tl168051168077_)
                                        (let ((_e168052168082_
                                               (gx#syntax-e _tl168051168077_)))
                                          (let ((_hd168053168085_
                                                 (##car _e168052168082_))
                                                (_tl168054168087_
                                                 (##cdr _e168052168082_)))
                                            (let ((_expr168090_
                                                   _hd168053168085_))
                                              (if (gx#stx-null?
                                                   _tl168054168087_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd168080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr168090_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E168045168060_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E168045168060_)))))
                                        (_E168045168060_)))))
                              (_E168045168060_))))
                      (_E168045168060_)))))
          (_E168044168093_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx168012_)
        (let* ((_e168013168020_ _stx168012_)
               (_E168015168024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e168013168020_)))
               (_E168014168038_
                (lambda ()
                  (if (gx#stx-pair? _e168013168020_)
                      (let ((_e168016168028_ (gx#syntax-e _e168013168020_)))
                        (let ((_hd168017168031_ (##car _e168016168028_))
                              (_tl168018168033_ (##cdr _e168016168028_)))
                          (let ((_body168036_ _tl168018168033_))
                            (if '#t
                                (cons '%#define-alias _body168036_)
                                (_E168015168024_)))))
                      (_E168015168024_)))))
          (_E168014168038_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx167982_)
        (let* ((_e167983167990_ _stx167982_)
               (_E167985167994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167983167990_)))
               (_E167984168008_
                (lambda ()
                  (if (gx#stx-pair? _e167983167990_)
                      (let ((_e167986167998_ (gx#syntax-e _e167983167990_)))
                        (let ((_hd167987168001_ (##car _e167986167998_))
                              (_tl167988168003_ (##cdr _e167986167998_)))
                          (let ((_body168006_ _tl167988168003_))
                            (if '#t
                                (cons '%#define-runtime _body168006_)
                                (_E167985167994_)))))
                      (_E167985167994_)))))
          (_E167984168008_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx167952_)
        (let* ((_e167953167960_ _stx167952_)
               (_E167955167964_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167953167960_)))
               (_E167954167978_
                (lambda ()
                  (if (gx#stx-pair? _e167953167960_)
                      (let ((_e167956167968_ (gx#syntax-e _e167953167960_)))
                        (let ((_hd167957167971_ (##car _e167956167968_))
                              (_tl167958167973_ (##cdr _e167956167968_)))
                          (let ((_decls167976_ _tl167958167973_))
                            (if '#t
                                (cons '%#declare _decls167976_)
                                (_E167955167964_)))))
                      (_E167955167964_)))))
          (_E167954167978_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx167922_)
        (let* ((_e167923167930_ _stx167922_)
               (_E167925167934_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167923167930_)))
               (_E167924167948_
                (lambda ()
                  (if (gx#stx-pair? _e167923167930_)
                      (let ((_e167926167938_ (gx#syntax-e _e167923167930_)))
                        (let ((_hd167927167941_ (##car _e167926167938_))
                              (_tl167928167943_ (##cdr _e167926167938_)))
                          (let ((_clause167946_ _tl167928167943_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause167946_))
                                (_E167925167934_)))))
                      (_E167925167934_)))))
          (_E167924167948_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx167879_)
        (let* ((_e167880167890_ _stx167879_)
               (_E167882167894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167880167890_)))
               (_E167881167918_
                (lambda ()
                  (if (gx#stx-pair? _e167880167890_)
                      (let ((_e167883167898_ (gx#syntax-e _e167880167890_)))
                        (let ((_hd167884167901_ (##car _e167883167898_))
                              (_tl167885167903_ (##cdr _e167883167898_)))
                          (let ((_hd167906_ _hd167884167901_))
                            (if (gx#stx-pair? _tl167885167903_)
                                (let ((_e167886167908_
                                       (gx#syntax-e _tl167885167903_)))
                                  (let ((_hd167887167911_
                                         (##car _e167886167908_))
                                        (_tl167888167913_
                                         (##cdr _e167886167908_)))
                                    (let ((_body167916_ _hd167887167911_))
                                      (if (gx#stx-null? _tl167888167913_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd167906_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body167916_)
                                                          '()))
                                              (_E167882167894_))
                                          (_E167882167894_)))))
                                (_E167882167894_)))))
                      (_E167882167894_)))))
          (_E167881167918_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx167849_)
        (let* ((_e167850167857_ _stx167849_)
               (_E167852167861_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167850167857_)))
               (_E167851167875_
                (lambda ()
                  (if (gx#stx-pair? _e167850167857_)
                      (let ((_e167853167865_ (gx#syntax-e _e167850167857_)))
                        (let ((_hd167854167868_ (##car _e167853167865_))
                              (_tl167855167870_ (##cdr _e167853167865_)))
                          (let ((_clauses167873_ _tl167855167870_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses167873_))
                                (_E167852167861_)))))
                      (_E167852167861_)))))
          (_E167851167875_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx167784_ _form167785_)
        (let* ((_e167786167799_ _stx167784_)
               (_E167788167803_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167786167799_)))
               (_E167787167835_
                (lambda ()
                  (if (gx#stx-pair? _e167786167799_)
                      (let ((_e167789167807_ (gx#syntax-e _e167786167799_)))
                        (let ((_hd167790167810_ (##car _e167789167807_))
                              (_tl167791167812_ (##cdr _e167789167807_)))
                          (if (gx#stx-pair? _tl167791167812_)
                              (let ((_e167792167815_
                                     (gx#syntax-e _tl167791167812_)))
                                (let ((_hd167793167818_
                                       (##car _e167792167815_))
                                      (_tl167794167820_
                                       (##cdr _e167792167815_)))
                                  (let ((_hd167823_ _hd167793167818_))
                                    (if (gx#stx-pair? _tl167794167820_)
                                        (let ((_e167795167825_
                                               (gx#syntax-e _tl167794167820_)))
                                          (let ((_hd167796167828_
                                                 (##car _e167795167825_))
                                                (_tl167797167830_
                                                 (##cdr _e167795167825_)))
                                            (let ((_body167833_
                                                   _hd167796167828_))
                                              (if (gx#stx-null?
                                                   _tl167797167830_)
                                                  (if '#t
                                                      (cons _form167785_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd167823_)
                          (cons (gx#core-compile-top-syntax _body167833_)
                                '())))
              (_E167788167803_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167788167803_)))))
                                        (_E167788167803_)))))
                              (_E167788167803_))))
                      (_E167788167803_)))))
          (_E167787167835_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx167842_)
        (let ((_form167844_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx167842_ _form167844_))))
    (define gx#core-compile-top-let-values%
      (lambda _g173225_
        (let ((_g173224_ (##length _g173225_)))
          (cond ((##fx= _g173224_ 1)
                 (apply (lambda (_stx167842_)
                          (gx#core-compile-top-let-values%__0 _stx167842_))
                        _g173225_))
                ((##fx= _g173224_ 2)
                 (apply (lambda (_stx167846_ _form167847_)
                          (gx#core-compile-top-let-values%__%
                           _stx167846_
                           _form167847_))
                        _g173225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g173225_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx167781_)
        (gx#core-compile-top-let-values%__% _stx167781_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx167779_)
        (gx#core-compile-top-let-values%__% _stx167779_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx167738_)
        (let* ((_e167739167749_ _stx167738_)
               (_E167741167753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167739167749_)))
               (_E167740167775_
                (lambda ()
                  (if (gx#stx-pair? _e167739167749_)
                      (let ((_e167742167757_ (gx#syntax-e _e167739167749_)))
                        (let ((_hd167743167760_ (##car _e167742167757_))
                              (_tl167744167762_ (##cdr _e167742167757_)))
                          (if (gx#stx-pair? _tl167744167762_)
                              (let ((_e167745167765_
                                     (gx#syntax-e _tl167744167762_)))
                                (let ((_hd167746167768_
                                       (##car _e167745167765_))
                                      (_tl167747167770_
                                       (##cdr _e167745167765_)))
                                  (let ((_e167773_ _hd167746167768_))
                                    (if (gx#stx-null? _tl167747167770_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e167773_)
                                                        '()))
                                            (_E167741167753_))
                                        (_E167741167753_)))))
                              (_E167741167753_))))
                      (_E167741167753_)))))
          (_E167740167775_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx167697_)
        (let* ((_e167698167708_ _stx167697_)
               (_E167700167712_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167698167708_)))
               (_E167699167734_
                (lambda ()
                  (if (gx#stx-pair? _e167698167708_)
                      (let ((_e167701167716_ (gx#syntax-e _e167698167708_)))
                        (let ((_hd167702167719_ (##car _e167701167716_))
                              (_tl167703167721_ (##cdr _e167701167716_)))
                          (if (gx#stx-pair? _tl167703167721_)
                              (let ((_e167704167724_
                                     (gx#syntax-e _tl167703167721_)))
                                (let ((_hd167705167727_
                                       (##car _e167704167724_))
                                      (_tl167706167729_
                                       (##cdr _e167704167724_)))
                                  (let ((_e167732_ _hd167705167727_))
                                    (if (gx#stx-null? _tl167706167729_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e167732_)
                                                        '()))
                                            (_E167700167712_))
                                        (_E167700167712_)))))
                              (_E167700167712_))))
                      (_E167700167712_)))))
          (_E167699167734_))))
    (define gx#core-compile-top-call%
      (lambda (_stx167654_)
        (let* ((_e167655167665_ _stx167654_)
               (_E167657167669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167655167665_)))
               (_E167656167693_
                (lambda ()
                  (if (gx#stx-pair? _e167655167665_)
                      (let ((_e167658167673_ (gx#syntax-e _e167655167665_)))
                        (let ((_hd167659167676_ (##car _e167658167673_))
                              (_tl167660167678_ (##cdr _e167658167673_)))
                          (if (gx#stx-pair? _tl167660167678_)
                              (let ((_e167661167681_
                                     (gx#syntax-e _tl167660167678_)))
                                (let ((_hd167662167684_
                                       (##car _e167661167681_))
                                      (_tl167663167686_
                                       (##cdr _e167661167681_)))
                                  (let* ((_rator167689_ _hd167662167684_)
                                         (_args167691_ _tl167663167686_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator167689_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args167691_)))
                                        (_E167657167669_)))))
                              (_E167657167669_))))
                      (_E167657167669_)))))
          (_E167656167693_))))
    (define gx#core-compile-top-if%
      (lambda (_stx167587_)
        (let* ((_e167588167604_ _stx167587_)
               (_E167590167608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167588167604_)))
               (_E167589167650_
                (lambda ()
                  (if (gx#stx-pair? _e167588167604_)
                      (let ((_e167591167612_ (gx#syntax-e _e167588167604_)))
                        (let ((_hd167592167615_ (##car _e167591167612_))
                              (_tl167593167617_ (##cdr _e167591167612_)))
                          (if (gx#stx-pair? _tl167593167617_)
                              (let ((_e167594167620_
                                     (gx#syntax-e _tl167593167617_)))
                                (let ((_hd167595167623_
                                       (##car _e167594167620_))
                                      (_tl167596167625_
                                       (##cdr _e167594167620_)))
                                  (let ((_test167628_ _hd167595167623_))
                                    (if (gx#stx-pair? _tl167596167625_)
                                        (let ((_e167597167630_
                                               (gx#syntax-e _tl167596167625_)))
                                          (let ((_hd167598167633_
                                                 (##car _e167597167630_))
                                                (_tl167599167635_
                                                 (##cdr _e167597167630_)))
                                            (let ((_K167638_ _hd167598167633_))
                                              (if (gx#stx-pair?
                                                   _tl167599167635_)
                                                  (let ((_e167600167640_
                                                         (gx#syntax-e
                                                          _tl167599167635_)))
                                                    (let ((_hd167601167643_
                                                           (##car _e167600167640_))
                                                          (_tl167602167645_
                                                           (##cdr _e167600167640_)))
                                                      (let ((_E167648_
                                                             _hd167601167643_))
                                                        (if (gx#stx-null?
                                                             _tl167602167645_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test167628_)
                                    (cons (gx#core-compile-top-syntax
                                           _K167638_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E167648_)
                                                '()))))
                        (_E167590167608_))
                    (_E167590167608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167590167608_)))))
                                        (_E167590167608_)))))
                              (_E167590167608_))))
                      (_E167590167608_)))))
          (_E167589167650_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx167546_)
        (let* ((_e167547167557_ _stx167546_)
               (_E167549167561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167547167557_)))
               (_E167548167583_
                (lambda ()
                  (if (gx#stx-pair? _e167547167557_)
                      (let ((_e167550167565_ (gx#syntax-e _e167547167557_)))
                        (let ((_hd167551167568_ (##car _e167550167565_))
                              (_tl167552167570_ (##cdr _e167550167565_)))
                          (if (gx#stx-pair? _tl167552167570_)
                              (let ((_e167553167573_
                                     (gx#syntax-e _tl167552167570_)))
                                (let ((_hd167554167576_
                                       (##car _e167553167573_))
                                      (_tl167555167578_
                                       (##cdr _e167553167573_)))
                                  (let ((_id167581_ _hd167554167576_))
                                    (if (gx#stx-null? _tl167555167578_)
                                        (if (gx#identifier? _id167581_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id167581_)
                                                        '()))
                                            (_E167549167561_))
                                        (_E167549167561_)))))
                              (_E167549167561_))))
                      (_E167549167561_)))))
          (_E167548167583_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx167492_)
        (let* ((_e167493167506_ _stx167492_)
               (_E167495167510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167493167506_)))
               (_E167494167542_
                (lambda ()
                  (if (gx#stx-pair? _e167493167506_)
                      (let ((_e167496167514_ (gx#syntax-e _e167493167506_)))
                        (let ((_hd167497167517_ (##car _e167496167514_))
                              (_tl167498167519_ (##cdr _e167496167514_)))
                          (if (gx#stx-pair? _tl167498167519_)
                              (let ((_e167499167522_
                                     (gx#syntax-e _tl167498167519_)))
                                (let ((_hd167500167525_
                                       (##car _e167499167522_))
                                      (_tl167501167527_
                                       (##cdr _e167499167522_)))
                                  (let ((_id167530_ _hd167500167525_))
                                    (if (gx#stx-pair? _tl167501167527_)
                                        (let ((_e167502167532_
                                               (gx#syntax-e _tl167501167527_)))
                                          (let ((_hd167503167535_
                                                 (##car _e167502167532_))
                                                (_tl167504167537_
                                                 (##cdr _e167502167532_)))
                                            (let ((_expr167540_
                                                   _hd167503167535_))
                                              (if (gx#stx-null?
                                                   _tl167504167537_)
                                                  (if (gx#identifier?
                                                       _id167530_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id167530_)
                          (cons (gx#core-compile-top-syntax _expr167540_)
                                '())))
              (_E167495167510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167495167510_)))))
                                        (_E167495167510_)))))
                              (_E167495167510_))))
                      (_E167495167510_)))))
          (_E167494167542_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id167487_)
        (let ((_$e167489_ (gx#resolve-identifier__0 _id167487_)))
          (if _$e167489_
              (##unchecked-structure-ref _$e167489_ '1 gx#binding::t '#f)
              _id167487_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd167485_)
        (if (gx#identifier? _hd167485_)
            (gx#core-compile-top-runtime-ref _hd167485_)
            '#f)))))
