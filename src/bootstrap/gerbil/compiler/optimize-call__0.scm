(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optimize-call
    (##make-promise
     (lambda ()
       (let ((_tbl47241_ (make-table 'test: eq?)))
         (hash-copy! _tbl47241_ (force gxc#&basic-xform))
         (table-set! _tbl47241_ '%#call gxc#optimize-call%)
         _tbl47241_))))
  (define gxc#apply-optimize-call
    (lambda (_stx47234_ . _args47236_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47234_ _args47236_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#optimize-call%
    (lambda (_stx47140_)
      (let* ((___stx4724447245_ _stx47140_)
             (_g4714347163_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4724447245_))))
        (let ((___kont4724647247_
               (lambda (_L47207_ _L47208_)
                 (let* ((_rator-id47226_ (gxc#identifier-symbol _L47208_))
                        (_rator-type47228_
                         (gxc#optimizer-resolve-type _rator-id47226_)))
                   (if (##structure-instance-of?
                        _rator-type47228_
                        'gxc#!procedure::t)
                       (begin
                         (gxc#verbose
                          '"optimize-call "
                          _rator-id47226_
                          '" => "
                          _rator-type47228_
                          '" "
                          (##structure-ref
                           _rator-type47228_
                           '1
                           gxc#!type::t
                           '#f))
                         (call-method
                          _rator-type47228_
                          'optimize-call
                          _stx47140_
                          _L47207_))
                       (if (not _rator-type47228_)
                           (gxc#xform-call% _stx47140_)
                           (gxc#raise-compile-error
                            '"Illegal application; not a procedure"
                            _stx47140_
                            _rator-type47228_))))))
              (___kont4724847249_ (lambda () (gxc#xform-call% _stx47140_))))
          (if (gx#stx-pair? ___stx4724447245_)
              (let ((_e4714747175_ (gx#stx-e ___stx4724447245_)))
                (let ((_tl4714947180_ (##cdr _e4714747175_))
                      (_hd4714847178_ (##car _e4714747175_)))
                  (if (gx#stx-pair? _tl4714947180_)
                      (let ((_e4715047183_ (gx#stx-e _tl4714947180_)))
                        (let ((_tl4715247188_ (##cdr _e4715047183_))
                              (_hd4715147186_ (##car _e4715047183_)))
                          (if (gx#stx-pair? _hd4715147186_)
                              (let ((_e4715347191_ (gx#stx-e _hd4715147186_)))
                                (let ((_tl4715547196_ (##cdr _e4715347191_))
                                      (_hd4715447194_ (##car _e4715347191_)))
                                  (if (gx#identifier? _hd4715447194_)
                                      (if (gx#stx-eq? '%#ref _hd4715447194_)
                                          (if (gx#stx-pair? _tl4715547196_)
                                              (let ((_e4715647199_
                                                     (gx#stx-e
                                                      _tl4715547196_)))
                                                (let ((_tl4715847204_
                                                       (##cdr _e4715647199_))
                                                      (_hd4715747202_
                                                       (##car _e4715647199_)))
                                                  (if (gx#stx-null?
                                                       _tl4715847204_)
                                                      (___kont4724647247_
                                                       _tl4715247188_
                                                       _hd4715747202_)
                                                      (___kont4724847249_))))
                                              (___kont4724847249_))
                                          (___kont4724847249_))
                                      (___kont4724847249_))))
                              (___kont4724847249_))))
                      (___kont4724847249_))))
              (___kont4724847249_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self46994_ _stx46995_ _args46996_)
      (let* ((_self4699747003_ _self46994_)
             (_E4699947007_
              (lambda () (error '"No clause matching" _self4699747003_)))
             (_K4700047132_
              (lambda (_struct-t47010_)
                (let* ((_struct-type47012_
                        (gxc#optimizer-resolve-type _struct-t47010_))
                       (_struct-type4701347027_ _struct-type47012_)
                       (_else4701647035_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46995_
                           _struct-t47010_
                           _struct-type47012_))))
                  (let ((_K4701947107_
                         (lambda (_plist47046_ _struct-type-id47047_)
                           (let* ((___stx4728247283_ _args46996_)
                                  (_g4705047060_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4728247283_))))
                             (let ((___kont4728447285_
                                    (lambda (_L47080_)
                                      (let ((_expr47101_
                                             (gxc#compile-e _L47080_))
                                            (_op47102_
                                             (if (and _plist47046_
                                                      (assgetq 'final:
                                                               _plist47046_))
                                                 '%#struct-direct-instance?
                                                 '%#struct-instance?)))
                                        (gxc#xform-wrap-source
                                         (cons _op47102_
                                               (cons (cons '%#quote
                                                           (cons _struct-type-id47047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _expr47101_ '())))
                                         _stx46995_))))
                                   (___kont4728647287_
                                    (lambda ()
                                      (gxc#raise-compile-error
                                       '"Illegal struct predicate application"
                                       _stx46995_))))
                               (if (gx#stx-pair? ___stx4728247283_)
                                   (let ((_e4705347072_
                                          (gx#stx-e ___stx4728247283_)))
                                     (let ((_tl4705547077_
                                            (##cdr _e4705347072_))
                                           (_hd4705447075_
                                            (##car _e4705347072_)))
                                       (if (gx#stx-null? _tl4705547077_)
                                           (___kont4728447285_ _hd4705447075_)
                                           (___kont4728647287_))))
                                   (___kont4728647287_))))))
                        (_K4701847040_
                         (lambda () (gxc#xform-call% _stx46995_))))
                    (let ((_try-match4701547043_
                           (lambda ()
                             (if (##eq? _struct-type4701347027_ '#f)
                                 (_K4701847040_)
                                 (_else4701647035_)))))
                      (if (##structure-instance-of?
                           _struct-type4701347027_
                           'gxc#!struct-type::t)
                          (let* ((_e4702047110_
                                  (##vector-ref _struct-type4701347027_ '1))
                                 (_e4702147115_
                                  (##vector-ref _struct-type4701347027_ '2))
                                 (_e4702247118_
                                  (##vector-ref _struct-type4701347027_ '3))
                                 (_e4702347121_
                                  (##vector-ref _struct-type4701347027_ '4))
                                 (_e4702447124_
                                  (##vector-ref _struct-type4701347027_ '5))
                                 (_e4702547127_
                                  (##vector-ref _struct-type4701347027_ '6)))
                            (let ((_struct-type-id47113_ _e4702047110_)
                                  (_plist47130_ _e4702547127_))
                              (_K4701947107_
                               _plist47130_
                               _struct-type-id47113_)))
                          (_try-match4701547043_))))))))
        (if (##structure-instance-of? _self4699747003_ 'gxc#!struct-pred::t)
            (let* ((_e4700147135_ (##vector-ref _self4699747003_ '1))
                   (_struct-t47138_ _e4700147135_))
              (_K4700047132_ _struct-t47138_))
            (_E4699947007_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self46768_ _stx46769_ _args46770_)
      (let* ((_self4677146777_ _self46768_)
             (_E4677346781_
              (lambda () (error '"No clause matching" _self4677146777_)))
             (_K4677446864_
              (lambda (_struct-t46784_)
                (let* ((_struct-type46786_
                        (gxc#optimizer-resolve-type _struct-t46784_))
                       (_struct-type4678746800_ _struct-type46786_)
                       (_else4679046808_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx46769_
                           _struct-t46784_
                           _struct-type46786_))))
                  (let ((_K4679346838_
                         (lambda (_ctor46819_
                                  _xfields46820_
                                  _fields46821_
                                  _type-id46822_)
                           (let* ((_args46824_ (map gxc#compile-e _args46770_))
                                  (_$e46826_
                                   (if _ctor46819_
                                       (if _xfields46820_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type46786_
                                            _ctor46819_)
                                           '#f)
                                       '#f)))
                             (if _$e46826_
                                 ((lambda (_kons46829_)
                                    (let ((_$obj46831_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj46831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t46784_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields46821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields46820_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons _kons46829_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj46831_ '()))
                                                 _args46824_)))
                               _stx46769_))
                             (cons (cons '%#ref (cons _$obj46831_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx46769_)))
                                  _$e46826_)
                                 (if (or _ctor46819_ (not _xfields46820_))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t46784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args46824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx46769_)
                                     (let ((_arity46836_
                                            (fx+ _fields46821_
                                                 _xfields46820_)))
                                       (if (fx= _arity46836_
                                                (length _args46824_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t46784_ '())) _args46824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx46769_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx46769_
                                            _struct-t46784_
                                            _arity46836_))))))))
                        (_K4679246813_
                         (lambda ()
                           (gxc#verbose
                            '"cannot inline struct constructor; unknown struct type "
                            _struct-t46784_)
                           (gxc#xform-call% _stx46769_))))
                    (let ((_try-match4678946816_
                           (lambda ()
                             (if (##eq? _struct-type4678746800_ '#f)
                                 (_K4679246813_)
                                 (_else4679046808_)))))
                      (if (##structure-instance-of?
                           _struct-type4678746800_
                           'gxc#!struct-type::t)
                          (let* ((_e4679446841_
                                  (##vector-ref _struct-type4678746800_ '1))
                                 (_e4679546846_
                                  (##vector-ref _struct-type4678746800_ '2))
                                 (_e4679646849_
                                  (##vector-ref _struct-type4678746800_ '3))
                                 (_e4679746854_
                                  (##vector-ref _struct-type4678746800_ '4))
                                 (_e4679846859_
                                  (##vector-ref _struct-type4678746800_ '5)))
                            (let ((_type-id46844_ _e4679446841_)
                                  (_fields46852_ _e4679646849_)
                                  (_xfields46857_ _e4679746854_)
                                  (_ctor46862_ _e4679846859_))
                              (_K4679346838_
                               _ctor46862_
                               _xfields46857_
                               _fields46852_
                               _type-id46844_)))
                          (_try-match4678946816_))))))))
        (if (##structure-instance-of? _self4677146777_ 'gxc#!struct-cons::t)
            (let* ((_e4677546867_ (##vector-ref _self4677146777_ '1))
                   (_struct-t46870_ _e4677546867_))
              (_K4677446864_ _struct-t46870_))
            (_E4677346781_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self46479_ _stx46480_ _args46481_)
      (let* ((_self4648246490_ _self46479_)
             (_E4648446494_
              (lambda () (error '"No clause matching" _self4648246490_)))
             (_K4648546628_
              (lambda (_unchecked?46497_ _off46498_ _struct-t46499_)
                (let* ((_struct-type46501_
                        (gxc#optimizer-resolve-type _struct-t46499_))
                       (_struct-type4650246516_ _struct-type46501_)
                       (_else4650546524_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46480_
                           _struct-t46499_
                           _struct-type46501_))))
                  (let ((_K4650846599_
                         (lambda (_plist46535_
                                  _xfields46536_
                                  _fields46537_
                                  _struct-type-id46538_)
                           (if _xfields46536_
                               (let* ((___stx4733047331_ _args46481_)
                                      (_g4654146551_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4733047331_))))
                                 (let ((___kont4733247333_
                                        (lambda (_L46571_)
                                          (let ((_expr46592_
                                                 (gxc#compile-e _L46571_))
                                                (_off46593_
                                                 (fx+ _off46498_
                                                      _xfields46536_
                                                      '1))
                                                (_op46594_
                                                 (if _unchecked?46497_
                                                     '%#struct-unchecked-ref
                                                     (if (and _plist46535_
                                                              (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _plist46535_))
                 '%#struct-direct-ref
                 '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op46594_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t46499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off46593_ '()))
                       (cons _expr46592_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx46480_))))
                                       (___kont4733447335_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct accessor application"
                                           _stx46480_))))
                                   (if (gx#stx-pair? ___stx4733047331_)
                                       (let ((_e4654446563_
                                              (gx#stx-e ___stx4733047331_)))
                                         (let ((_tl4654646568_
                                                (##cdr _e4654446563_))
                                               (_hd4654546566_
                                                (##car _e4654446563_)))
                                           (if (gx#stx-null? _tl4654646568_)
                                               (___kont4733247333_
                                                _hd4654546566_)
                                               (___kont4733447335_))))
                                       (___kont4733447335_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id46538_)
                                 (gxc#xform-call% _stx46480_)))))
                        (_K4650746529_
                         (lambda () (gxc#xform-call% _stx46480_))))
                    (let ((_try-match4650446532_
                           (lambda ()
                             (if (##eq? _struct-type4650246516_ '#f)
                                 (_K4650746529_)
                                 (_else4650546524_)))))
                      (if (##structure-instance-of?
                           _struct-type4650246516_
                           'gxc#!struct-type::t)
                          (let* ((_e4650946602_
                                  (##vector-ref _struct-type4650246516_ '1))
                                 (_e4651046607_
                                  (##vector-ref _struct-type4650246516_ '2))
                                 (_e4651146610_
                                  (##vector-ref _struct-type4650246516_ '3))
                                 (_e4651246615_
                                  (##vector-ref _struct-type4650246516_ '4))
                                 (_e4651346620_
                                  (##vector-ref _struct-type4650246516_ '5))
                                 (_e4651446623_
                                  (##vector-ref _struct-type4650246516_ '6)))
                            (let ((_struct-type-id46605_ _e4650946602_)
                                  (_fields46613_ _e4651146610_)
                                  (_xfields46618_ _e4651246615_)
                                  (_plist46626_ _e4651446623_))
                              (_K4650846599_
                               _plist46626_
                               _xfields46618_
                               _fields46613_
                               _struct-type-id46605_)))
                          (_try-match4650446532_))))))))
        (if (##structure-instance-of? _self4648246490_ 'gxc#!struct-getf::t)
            (let* ((_e4648646631_ (##vector-ref _self4648246490_ '1))
                   (_struct-t46634_ _e4648646631_)
                   (_e4648746636_ (##vector-ref _self4648246490_ '2))
                   (_off46639_ _e4648746636_)
                   (_e4648846641_ (##vector-ref _self4648246490_ '3))
                   (_unchecked?46644_ _e4648846641_))
              (_K4648546628_ _unchecked?46644_ _off46639_ _struct-t46634_))
            (_E4648446494_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self46173_ _stx46174_ _args46175_)
      (let* ((_self4617646184_ _self46173_)
             (_E4617846188_
              (lambda () (error '"No clause matching" _self4617646184_)))
             (_K4617946339_
              (lambda (_unchecked?46191_ _off46192_ _struct-t46193_)
                (let* ((_struct-type46195_
                        (gxc#optimizer-resolve-type _struct-t46193_))
                       (_struct-type4619646210_ _struct-type46195_)
                       (_else4619946218_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx46174_
                           _struct-t46193_
                           _struct-type46195_))))
                  (let ((_K4620246310_
                         (lambda (_plist46229_
                                  _xfields46230_
                                  _fields46231_
                                  _struct-type-id46232_)
                           (if _xfields46230_
                               (let* ((___stx4736347364_ _args46175_)
                                      (_g4623546249_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4736347364_))))
                                 (let ((___kont4736547366_
                                        (lambda (_L46277_ _L46278_)
                                          (let ((_expr46302_
                                                 (gxc#compile-e _L46278_))
                                                (_val46303_
                                                 (gxc#compile-e _L46277_))
                                                (_off46304_
                                                 (fx+ _off46192_
                                                      _xfields46230_
                                                      '1))
                                                (_op46305_
                                                 (if _unchecked?46191_
                                                     '%#struct-unchecked-set!
                                                     (if (and _plist46229_
                                                              (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _plist46229_))
                 '%#struct-direct-set!
                 '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gxc#xform-wrap-source
                                             (cons _op46305_
                                                   (cons (cons '%#ref
                                                               (cons _struct-t46193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _off46304_ '()))
                       (cons _expr46302_ (cons _val46303_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx46174_))))
                                       (___kont4736747368_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"Illegal struct mutator application"
                                           _stx46174_))))
                                   (if (gx#stx-pair? ___stx4736347364_)
                                       (let ((_e4623946261_
                                              (gx#stx-e ___stx4736347364_)))
                                         (let ((_tl4624146266_
                                                (##cdr _e4623946261_))
                                               (_hd4624046264_
                                                (##car _e4623946261_)))
                                           (if (gx#stx-pair? _tl4624146266_)
                                               (let ((_e4624246269_
                                                      (gx#stx-e
                                                       _tl4624146266_)))
                                                 (let ((_tl4624446274_
                                                        (##cdr _e4624246269_))
                                                       (_hd4624346272_
                                                        (##car _e4624246269_)))
                                                   (if (gx#stx-null?
                                                        _tl4624446274_)
                                                       (___kont4736547366_
                                                        _hd4624346272_
                                                        _hd4624046264_)
                                                       (___kont4736747368_))))
                                               (___kont4736747368_))))
                                       (___kont4736747368_))))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id46232_)
                                 (gxc#xform-call% _stx46174_)))))
                        (_K4620146223_
                         (lambda () (gxc#xform-call% _stx46174_))))
                    (let ((_try-match4619846226_
                           (lambda ()
                             (if (##eq? _struct-type4619646210_ '#f)
                                 (_K4620146223_)
                                 (_else4619946218_)))))
                      (if (##structure-instance-of?
                           _struct-type4619646210_
                           'gxc#!struct-type::t)
                          (let* ((_e4620346313_
                                  (##vector-ref _struct-type4619646210_ '1))
                                 (_e4620446318_
                                  (##vector-ref _struct-type4619646210_ '2))
                                 (_e4620546321_
                                  (##vector-ref _struct-type4619646210_ '3))
                                 (_e4620646326_
                                  (##vector-ref _struct-type4619646210_ '4))
                                 (_e4620746331_
                                  (##vector-ref _struct-type4619646210_ '5))
                                 (_e4620846334_
                                  (##vector-ref _struct-type4619646210_ '6)))
                            (let ((_struct-type-id46316_ _e4620346313_)
                                  (_fields46324_ _e4620546321_)
                                  (_xfields46329_ _e4620646326_)
                                  (_plist46337_ _e4620846334_))
                              (_K4620246310_
                               _plist46337_
                               _xfields46329_
                               _fields46324_
                               _struct-type-id46316_)))
                          (_try-match4619846226_))))))))
        (if (##structure-instance-of? _self4617646184_ 'gxc#!struct-setf::t)
            (let* ((_e4618046342_ (##vector-ref _self4617646184_ '1))
                   (_struct-t46345_ _e4618046342_)
                   (_e4618146347_ (##vector-ref _self4617646184_ '2))
                   (_off46350_ _e4618146347_)
                   (_e4618246352_ (##vector-ref _self4617646184_ '3))
                   (_unchecked?46355_ _e4618246352_))
              (_K4617946339_ _unchecked?46355_ _off46350_ _struct-t46345_))
            (_E4617846188_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self46007_ _stx46008_ _args46009_)
      (let* ((_self4601046019_ _self46007_)
             (_E4601246023_
              (lambda () (error '"No clause matching" _self4601046019_)))
             (_K4601346030_
              (lambda (_inline46026_ _dispatch46027_ _arity46028_)
                (if (gxc#!lambda-arity-match? _self46007_ _args46009_)
                    '#!void
                    (gxc#raise-compile-error
                     '"Illegal lambda application; arity mismatch"
                     _stx46008_
                     _arity46028_))
                (if _inline46026_
                    (begin
                      (gxc#verbose '"inline lambda")
                      (gxc#compile-e
                       (gxc#xform-wrap-source
                        (_inline46026_ _stx46008_)
                        _stx46008_)))
                    (if _dispatch46027_
                        (begin
                          (gxc#verbose '"dispatch lambda => " _dispatch46027_)
                          (gxc#compile-e
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _dispatch46027_ '()))
                                        _args46009_))
                            _stx46008_)))
                        (gxc#xform-call% _stx46008_))))))
        (if (##structure-instance-of? _self4601046019_ 'gxc#!lambda::t)
            (let* ((_e4601446033_ (##vector-ref _self4601046019_ '1))
                   (_e4601546036_ (##vector-ref _self4601046019_ '2))
                   (_arity46039_ _e4601546036_)
                   (_e4601646041_ (##vector-ref _self4601046019_ '3))
                   (_dispatch46044_ _e4601646041_)
                   (_e4601746046_ (##vector-ref _self4601046019_ '4))
                   (_inline46049_ _e4601746046_))
              (_K4601346030_ _inline46049_ _dispatch46044_ _arity46039_))
            (_E4601246023_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self45846_ _stx45847_ _args45848_)
      (let* ((_self4584945856_ _self45846_)
             (_E4585145860_
              (lambda () (error '"No clause matching" _self4584945856_)))
             (_K4585245874_
              (lambda (_clauses45863_)
                (let ((_$e45869_
                       (find (lambda (_g4586445866_)
                               (gxc#!lambda-arity-match?
                                _g4586445866_
                                _args45848_))
                             _clauses45863_)))
                  (if _$e45869_
                      ((lambda (_clause45872_)
                         (call-method
                          _clause45872_
                          'optimize-call
                          _stx45847_
                          _args45848_))
                       _$e45869_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx45847_
                       (map gxc#!lambda-arity _clauses45863_)))))))
        (if (##structure-instance-of? _self4584945856_ 'gxc#!case-lambda::t)
            (let* ((_e4585345877_ (##vector-ref _self4584945856_ '1))
                   (_e4585445880_ (##vector-ref _self4584945856_ '2))
                   (_clauses45883_ _e4585445880_))
              (_K4585245874_ _clauses45883_))
            (_E4585145860_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self45660_ _args45661_)
      (let* ((_self4566245669_ _self45660_)
             (_E4566445673_
              (lambda () (error '"No clause matching" _self4566245669_)))
             (_K4566545713_
              (lambda (_arity45676_)
                (let* ((_arity4567745686_ _arity45676_)
                       (_E4568045690_
                        (lambda ()
                          (error '"No clause matching" _arity4567745686_))))
                  (let ((_K4568445710_
                         (lambda () (fx= (length _args45661_) _arity45676_)))
                        (_K4568145696_
                         (lambda (_arity45694_)
                           (fx>= (length _args45661_) _arity45694_))))
                    (let ((_try-match4567945706_
                           (lambda ()
                             (if (##pair? _arity4567745686_)
                                 (let ((_tl4568345701_
                                        (##cdr _arity4567745686_))
                                       (_hd4568245699_
                                        (##car _arity4567745686_)))
                                   (if (##null? _tl4568345701_)
                                       (let ((_arity45704_ _hd4568245699_))
                                         (_K4568145696_ _arity45704_))
                                       (_E4568045690_)))
                                 (_E4568045690_)))))
                      (if (fixnum? _arity4567745686_)
                          (_K4568445710_)
                          (_try-match4567945706_))))))))
        (if (##structure-instance-of? _self4566245669_ 'gxc#!lambda::t)
            (let* ((_e4566645716_ (##vector-ref _self4566245669_ '1))
                   (_e4566745719_ (##vector-ref _self4566245669_ '2))
                   (_arity45722_ _e4566745719_))
              (_K4566545713_ _arity45722_))
            (_E4566445673_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self45545_ _stx45546_ _args45547_)
      (let* ((_self4554845556_ _self45545_)
             (_E4555045560_
              (lambda () (error '"No clause matching" _self4554845556_)))
             (_K4555145644_
              (lambda (_dispatch45563_ _table45564_)
                (let* ((_g4556545574_
                        (gxc#optimizer-lookup-type _dispatch45563_))
                       (_else4556745582_
                        (lambda ()
                          (gxc#verbose
                           '"unknown keyword dispatch lambda "
                           _dispatch45563_)
                          (gxc#xform-call% _stx45546_)))
                       (_K4556945628_
                        (lambda (_main45585_ _keys45586_)
                          (let ((_g47528_
                                 (gxc#!kw-lambda-split-args
                                  _stx45546_
                                  _args45547_)))
                            (begin
                              (let ((_g47529_
                                     (if (##values? _g47528_)
                                         (##vector-length _g47528_)
                                         1)))
                                (if (not (##fx= _g47529_ 2))
                                    (error "Context expects 2 values"
                                           _g47529_)))
                              (let ((_pargs45588_ (##vector-ref _g47528_ 0))
                                    (_kwargs45589_ (##vector-ref _g47528_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main45585_)
                                  (if _table45564_
                                      (let ((_xargs45596_
                                             (map (lambda (_key45591_)
                                                    (let ((_$e45593_
                                                           (assgetq _key45591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs45589_)))
              (if _$e45593_ (values _$e45593_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys45586_)))
                                        (for-each
                                         (lambda (_kw45598_)
                                           (if (memq (car _kw45598_)
                                                     _keys45586_)
                                               '#!void
                                               (gxc#raise-compile-error
                                                '"Illegal keyword lambda application; unexpected keyword"
                                                _stx45546_
                                                _keys45586_
                                                _kw45598_)))
                                         _kwargs45589_)
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _main45585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons '#f '()))
                    (foldr1 cons _pargs45588_ _xargs45596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx45546_)))
                                      (let* ((_kwt45600_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars45603_
                                              (map (lambda (_g47530_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs45589_))
                                             (_kwbind45608_
                                              (map (lambda (_kw45605_
                                                            _kwvar45606_)
                                                     (cons (cons _kwvar45606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw45605_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs45589_
                                                   _kwvars45603_))
                                             (_kwset45613_
                                              (map (lambda (_kw45610_
                                                            _kwvar45611_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt45600_ '()))
                               (cons (cons '%#quote (cons (car _kw45610_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar45611_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs45589_
                                                   _kwvars45603_))
                                             (_xkwargs45618_
                                              (map (lambda (_kw45615_
                                                            _kwvar45616_)
                                                     (cons (car _kw45615_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar45616_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs45589_
                                                   _kwvars45603_))
                                             (_xargs45625_
                                              (map (lambda (_key45620_)
                                                     (let ((_$e45622_
                                                            (assgetq _key45620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs45618_)))
               (if _$e45622_ (values _$e45622_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys45586_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind45608_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt45600_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs45589_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx45546_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main45585_ '()))
                               (cons (cons '%#ref (cons _kwt45600_ '()))
                                     (foldr1 cons _pargs45588_ _xargs45625_))))
                   _stx45546_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset45613_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx45546_)))))))))))
                  (if (##structure-instance-of?
                       _g4556545574_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e4557045631_ (##vector-ref _g4556545574_ '1))
                             (_e4557145634_ (##vector-ref _g4556545574_ '2))
                             (_keys45637_ _e4557145634_)
                             (_e4557245639_ (##vector-ref _g4556545574_ '3))
                             (_main45642_ _e4557245639_))
                        (_K4556945628_ _main45642_ _keys45637_))
                      (_else4556745582_))))))
        (if (##structure-instance-of? _self4554845556_ 'gxc#!kw-lambda::t)
            (let* ((_e4555245647_ (##vector-ref _self4554845556_ '1))
                   (_e4555345650_ (##vector-ref _self4554845556_ '2))
                   (_table45653_ _e4555345650_)
                   (_e4555445655_ (##vector-ref _self4554845556_ '3))
                   (_dispatch45658_ _e4555445655_))
              (_K4555145644_ _dispatch45658_ _table45653_))
            (_E4555045560_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx45158_ _args45159_)
      (let _lp45161_ ((_rest45163_ _args45159_)
                      (_pargs45164_ '())
                      (_kwargs45165_ '()))
        (let* ((___stx4741147412_ _rest45163_)
               (_g4517145223_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4741147412_))))
          (let ((___kont4741347414_
                 (lambda (_L45402_ _L45403_)
                   (_lp45161_
                    _L45402_
                    (cons _L45403_ _pargs45164_)
                    _kwargs45165_)))
                (___kont4741547416_
                 (lambda (_L45348_)
                   (values (foldl1 cons _L45348_ _pargs45164_)
                           (reverse _kwargs45165_))))
                (___kont4741747418_
                 (lambda (_L45295_ _L45296_ _L45297_)
                   (let ((_kw45314_ (gx#stx-e _L45297_)))
                     (if (assq _kw45314_ _kwargs45165_)
                         (gxc#raise-compile-error
                          '"Illegal keyword lambda application; duplicate keyword"
                          _stx45158_
                          _kw45314_)
                         (_lp45161_
                          _L45295_
                          _pargs45164_
                          (cons (cons _kw45314_ _L45296_) _kwargs45165_))))))
                (___kont4741947420_
                 (lambda (_L45243_ _L45244_)
                   (_lp45161_
                    _L45243_
                    (cons _L45244_ _pargs45164_)
                    _kwargs45165_)))
                (___kont4742147422_
                 (lambda ()
                   (values (reverse _pargs45164_) (reverse _kwargs45165_)))))
            (let* ((_g4517045230_
                    (lambda ()
                      (if (gx#stx-null? ___stx4741147412_)
                          (___kont4742147422_)
                          (_g4517145223_))))
                   (___match4751847519_
                    (lambda (_e4520245263_
                             _hd4520345266_
                             _tl4520445268_
                             _e4520545271_
                             _hd4520645274_
                             _tl4520745276_
                             _e4520845279_
                             _hd4520945282_
                             _tl4521045284_
                             _e4521145287_
                             _hd4521245290_
                             _tl4521345292_)
                      (let ((_L45295_ _tl4521345292_)
                            (_L45296_ _hd4521245290_)
                            (_L45297_ _hd4520945282_))
                        (if (gx#stx-keyword? _L45297_)
                            (___kont4741747418_ _L45295_ _L45296_ _L45297_)
                            (___kont4741947420_
                             _tl4520445268_
                             _hd4520345266_))))))
              (if (gx#stx-pair? ___stx4741147412_)
                  (let ((_e4517545367_ (gx#stx-e ___stx4741147412_)))
                    (let ((_tl4517745372_ (##cdr _e4517545367_))
                          (_hd4517645370_ (##car _e4517545367_)))
                      (if (gx#stx-pair? _hd4517645370_)
                          (let ((_e4517845375_ (gx#stx-e _hd4517645370_)))
                            (let ((_tl4518045380_ (##cdr _e4517845375_))
                                  (_hd4517945378_ (##car _e4517845375_)))
                              (if (gx#identifier? _hd4517945378_)
                                  (if (gx#stx-eq? '%#quote _hd4517945378_)
                                      (if (gx#stx-pair? _tl4518045380_)
                                          (let ((_e4518145383_
                                                 (gx#stx-e _tl4518045380_)))
                                            (let ((_tl4518345388_
                                                   (##cdr _e4518145383_))
                                                  (_hd4518245386_
                                                   (##car _e4518145383_)))
                                              (if (gx#stx-datum?
                                                   _hd4518245386_)
                                                  (let ((_e4518445391_
                                                         (gx#stx-e
                                                          _hd4518245386_)))
                                                    (if (equal? _e4518445391_
                                                                '#!key)
                                                        (if (gx#stx-null?
                                                             _tl4518345388_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4517745372_)
                        (let ((_e4518545394_ (gx#stx-e _tl4517745372_)))
                          (let ((_tl4518745399_ (##cdr _e4518545394_))
                                (_hd4518645397_ (##car _e4518545394_)))
                            (___kont4741347414_
                             _tl4518745399_
                             _hd4518645397_)))
                        (___kont4741947420_ _tl4517745372_ _hd4517645370_))
                    (___kont4741947420_ _tl4517745372_ _hd4517645370_))
                (if (equal? _e4518445391_ '#!rest)
                    (if (gx#stx-null? _tl4518345388_)
                        (___kont4741547416_ _tl4517745372_)
                        (___kont4741947420_ _tl4517745372_ _hd4517645370_))
                    (if (gx#stx-null? _tl4518345388_)
                        (if (gx#stx-pair? _tl4517745372_)
                            (let ((_e4521145287_ (gx#stx-e _tl4517745372_)))
                              (let ((_tl4521345292_ (##cdr _e4521145287_))
                                    (_hd4521245290_ (##car _e4521145287_)))
                                (___match4751847519_
                                 _e4517545367_
                                 _hd4517645370_
                                 _tl4517745372_
                                 _e4517845375_
                                 _hd4517945378_
                                 _tl4518045380_
                                 _e4518145383_
                                 _hd4518245386_
                                 _tl4518345388_
                                 _e4521145287_
                                 _hd4521245290_
                                 _tl4521345292_)))
                            (___kont4741947420_ _tl4517745372_ _hd4517645370_))
                        (___kont4741947420_ _tl4517745372_ _hd4517645370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl4518345388_)
                                                      (if (gx#stx-pair?
                                                           _tl4517745372_)
                                                          (let ((_e4521145287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4517745372_)))
                    (let ((_tl4521345292_ (##cdr _e4521145287_))
                          (_hd4521245290_ (##car _e4521145287_)))
                      (___match4751847519_
                       _e4517545367_
                       _hd4517645370_
                       _tl4517745372_
                       _e4517845375_
                       _hd4517945378_
                       _tl4518045380_
                       _e4518145383_
                       _hd4518245386_
                       _tl4518345388_
                       _e4521145287_
                       _hd4521245290_
                       _tl4521345292_)))
                  (___kont4741947420_ _tl4517745372_ _hd4517645370_))
              (___kont4741947420_ _tl4517745372_ _hd4517645370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont4741947420_
                                           _tl4517745372_
                                           _hd4517645370_))
                                      (___kont4741947420_
                                       _tl4517745372_
                                       _hd4517645370_))
                                  (___kont4741947420_
                                   _tl4517745372_
                                   _hd4517645370_))))
                          (___kont4741947420_ _tl4517745372_ _hd4517645370_))))
                  (_g4517045230_))))))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self45154_ _stx45155_ _args45156_) (gxc#xform-call% _stx45155_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f))
