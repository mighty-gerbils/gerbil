(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj35734 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj35734) __obj35734))))))
  (define gxc#optimize!
    (lambda (_ctx35729_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx35729_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx35729_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code35732_
                  (gxc#optimize-source
                   (##structure-ref _ctx35729_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx35729_
              _code35732_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx35674_)
      (letrec* ((_deps35676_
                 (let* ((_imports35720_
                         (##structure-ref
                          _ctx35674_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e35722_ (gx#core-context-prelude__% _ctx35674_)))
                   (if _$e35722_
                       ((lambda (_g3572435726_)
                          (cons _g3572435726_ _imports35720_))
                        _$e35722_)
                       _imports35720_))))
        (let _lp35678_ ((_rest35680_ _deps35676_))
          (let* ((_rest3568135689_ _rest35680_)
                 (_else3568335697_ (lambda () '#!void))
                 (_K3568535708_
                  (lambda (_rest35700_ _hd35701_)
                    (if (##structure-instance-of?
                         _hd35701_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd35701_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e35703_
                                       (gx#core-context-prelude__% _hd35701_)))
                                  (if _$e35703_
                                      ((lambda (_pre35706_)
                                         (_lp35678_
                                          (cons _pre35706_
                                                (##structure-ref
                                                 _hd35701_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e35703_)
                                      (_lp35678_
                                       (##structure-ref
                                        _hd35701_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd35701_)))
                          (_lp35678_ _rest35700_))
                        (if (##structure-instance-of?
                             _hd35701_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd35701_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp35678_
                                     (##structure-ref
                                      _hd35701_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd35701_)))
                              (_lp35678_ _rest35700_))
                            (if (##structure-direct-instance-of?
                                 _hd35701_
                                 'gx#module-import::t)
                                (_lp35678_
                                 (cons (##direct-structure-ref
                                        _hd35701_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest35700_))
                                (if (##structure-direct-instance-of?
                                     _hd35701_
                                     'gx#module-export::t)
                                    (_lp35678_
                                     (cons (##direct-structure-ref
                                            _hd35701_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest35700_))
                                    (if (##structure-direct-instance-of?
                                         _hd35701_
                                         'gx#import-set::t)
                                        (_lp35678_
                                         (cons (##direct-structure-ref
                                                _hd35701_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest35700_))
                                        (error '"Unexpected module import"
                                               _hd35701_)))))))))
            (if (##pair? _rest3568135689_)
                (let ((_hd3568635711_ (##car _rest3568135689_))
                      (_tl3568735713_ (##cdr _rest3568135689_)))
                  (let* ((_hd35716_ _hd3568635711_)
                         (_rest35718_ _tl3568735713_))
                    (_K3568535708_ _rest35718_ _hd35716_)))
                (_else3568335697_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx35654_)
      (if (if (##structure-instance-of? _ctx35654_ 'gx#module-context::t)
              (list? (##structure-ref _ctx35654_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht35656_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id35658_
                  (##structure-ref _ctx35654_ '1 gx#expander-context::t '#f))
                 (_mod35660_ (table-ref _ht35656_ _id35658_ '#f)))
            (let ((_$e35663_ _mod35660_))
              (if _$e35663_
                  _$e35663_
                  (let* ((_mod35666_ (gxc#optimizer-import-ssxi _ctx35654_))
                         (_val35671_
                          (let ((_$e35668_ _mod35666_))
                            (if _$e35668_ _$e35668_ '#!void))))
                    (begin
                      (table-set! _ht35656_ _id35658_ _val35671_)
                      _val35671_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx35631_)
      (letrec ((_catch-e35633_
                (lambda (_exn35652_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx35631_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn35652_))
                        '#!void)
                    '#f)))
               (_import-e35634_
                (lambda ()
                  (let* ((_str-id35637_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx35631_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path35645_
                          (let ((_odir3563835640_
                                 (gxc#current-compile-output-dir)))
                            (if _odir3563835640_
                                (let ((_odir35643_ _odir3563835640_))
                                  (path-expand
                                   (string-append _str-id35637_ '".ss")
                                   _odir35643_))
                                '#f)))
                         (_library-path35647_
                          (string->symbol
                           (string-append '":" _str-id35637_ '".ss")))
                         (_ssxi-path35649_
                          (if (if _artefact-path35645_
                                  (file-exists? _artefact-path35645_)
                                  '#f)
                              _artefact-path35645_
                              _library-path35647_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path35649_)
                      (gx#import-module__% _ssxi-path35649_ '#t '#t))))))
        (if (##structure-ref _ctx35631_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e35633_ _import-e35634_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx35625_)
      (begin
        (gxc#apply-collect-mutators _stx35625_)
        (let ((_stx35627_ (gxc#apply-lift-top-lambdas _stx35625_)))
          (begin
            (gxc#apply-collect-type-info _stx35627_)
            (let ((_stx35629_ (gxc#apply-optimize-annotated _stx35627_)))
              (gxc#apply-optimize-call _stx35629_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl35622_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl35622_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl35622_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl35622_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl35622_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl35622_ '%#call gxc#generate-ssxi-call%)
           _tbl35622_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx35615_ . _args35617_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx35615_ _args35617_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx35555_)
      (let* ((_g3555735571_
              (lambda (_g3555835568_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3555835568_)))
             (_g3555635612_
              (lambda (_g3555835574_)
                (if (gx#stx-pair? _g3555835574_)
                    (let ((_e3556135576_ (gx#stx-e _g3555835574_)))
                      (let ((_hd3556235579_ (##car _e3556135576_))
                            (_tl3556335581_ (##cdr _e3556135576_)))
                        (if (gx#stx-pair? _tl3556335581_)
                            (let ((_e3556435584_ (gx#stx-e _tl3556335581_)))
                              (let ((_hd3556535587_ (##car _e3556435584_))
                                    (_tl3556635589_ (##cdr _e3556435584_)))
                                ((lambda (_L35592_ _L35593_)
                                   (let* ((_ctx35606_
                                           (gx#syntax-local-e__0 _L35593_))
                                          (_code35608_
                                           (##structure-ref
                                            _ctx35606_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code35608_))
                                      gx#current-expander-context
                                      _ctx35606_)))
                                 _tl3556635589_
                                 _hd3556535587_)))
                            (_g3555735571_ _g3555835574_))))
                    (_g3555735571_ _g3555835574_)))))
        (_g3555635612_ _stx35555_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx35365_)
      (letrec ((_generate-e35367_
                (lambda (_id35544_)
                  (let* ((_sym35546_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id35544_)
                              '#f))
                         (_$e35548_
                          (if _sym35546_
                              (gxc#optimizer-lookup-type _sym35546_)
                              '#f)))
                    (if _$e35548_
                        ((lambda (_type35551_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym35546_)
                             (let ((_typedecl35553_
                                    (call-method _type35551_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym35546_
                                           (cons _typedecl35553_ '()))))))
                         _$e35548_)
                        '(begin))))))
        (let* ((_g3537035408_
                (lambda (_g3537135405_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3537135405_)))
               (_g3536935489_
                (lambda (_g3537135411_)
                  (if (gx#stx-pair? _g3537135411_)
                      (let ((_e3538635413_ (gx#stx-e _g3537135411_)))
                        (let ((_hd3538735416_ (##car _e3538635413_))
                              (_tl3538835418_ (##cdr _e3538635413_)))
                          (if (gx#stx-pair? _tl3538835418_)
                              (let ((_e3538935421_ (gx#stx-e _tl3538835418_)))
                                (let ((_hd3539035424_ (##car _e3538935421_))
                                      (_tl3539135426_ (##cdr _e3538935421_)))
                                  (if (gx#stx-pair/null? _hd3539035424_)
                                      (if (fx>= (gx#stx-length _hd3539035424_)
                                                '0)
                                          (let ((_g35735_
                                                 (gx#syntax-split-splice
                                                  _hd3539035424_
                                                  '0)))
                                            (begin
                                              (let ((_g35736_
                                                     (if (##values? _g35735_)
                                                         (##vector-length
                                                          _g35735_)
                                                         1)))
                                                (if (not (##fx= _g35736_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35736_)))
                                              (let ((_target3539235429_
                                                     (##vector-ref _g35735_ 0))
                                                    (_tl3539435431_
                                                     (##vector-ref
                                                      _g35735_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl3539435431_)
                                                    (letrec ((_loop3539535434_
                                                              (lambda (_hd3539335437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id3539935439_)
                        (if (gx#stx-pair? _hd3539335437_)
                            (let ((_e3539635442_ (gx#stx-e _hd3539335437_)))
                              (let ((_lp-hd3539735445_ (##car _e3539635442_))
                                    (_lp-tl3539835447_ (##cdr _e3539635442_)))
                                (_loop3539535434_
                                 _lp-tl3539835447_
                                 (cons _lp-hd3539735445_ _id3539935439_))))
                            (let ((_id3540035450_ (reverse _id3539935439_)))
                              (if (gx#stx-pair? _tl3539135426_)
                                  (let ((_e3540135453_
                                         (gx#stx-e _tl3539135426_)))
                                    (let ((_hd3540235456_
                                           (##car _e3540135453_))
                                          (_tl3540335458_
                                           (##cdr _e3540135453_)))
                                      (if (gx#stx-null? _tl3540335458_)
                                          ((lambda (_L35461_)
                                             (let ((_types35487_
                                                    (map _generate-e35367_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3547935482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3548035484_)
                             (cons _g3547935482_ _g3548035484_))
                           '()
                           _L35461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types35487_)))
                                           _id3540035450_)
                                          (_g3537035408_ _g3537135411_))))
                                  (_g3537035408_ _g3537135411_)))))))
              (_loop3539535434_ _target3539235429_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3537035408_
                                                     _g3537135411_)))))
                                          (_g3537035408_ _g3537135411_))
                                      (_g3537035408_ _g3537135411_))))
                              (_g3537035408_ _g3537135411_))))
                      (_g3537035408_ _g3537135411_))))
               (_g3536835541_
                (lambda (_g3537135492_)
                  (if (gx#stx-pair? _g3537135492_)
                      (let ((_e3537335494_ (gx#stx-e _g3537135492_)))
                        (let ((_hd3537435497_ (##car _e3537335494_))
                              (_tl3537535499_ (##cdr _e3537335494_)))
                          (if (gx#stx-pair? _tl3537535499_)
                              (let ((_e3537635502_ (gx#stx-e _tl3537535499_)))
                                (let ((_hd3537735505_ (##car _e3537635502_))
                                      (_tl3537835507_ (##cdr _e3537635502_)))
                                  (if (gx#stx-pair? _hd3537735505_)
                                      (let ((_e3537935510_
                                             (gx#stx-e _hd3537735505_)))
                                        (let ((_hd3538035513_
                                               (##car _e3537935510_))
                                              (_tl3538135515_
                                               (##cdr _e3537935510_)))
                                          (if (gx#stx-null? _tl3538135515_)
                                              (if (gx#stx-pair? _tl3537835507_)
                                                  (let ((_e3538235518_
                                                         (gx#stx-e
                                                          _tl3537835507_)))
                                                    (let ((_hd3538335521_
                                                           (##car _e3538235518_))
                                                          (_tl3538435523_
                                                           (##cdr _e3538235518_)))
                                                      (if (gx#stx-null?
                                                           _tl3538435523_)
                                                          ((lambda (_L35526_)
                                                             (_generate-e35367_
                                                              _L35526_))
                                                           _hd3538035513_)
                                                          (_g3536935489_
                                                           _g3537135492_))))
                                                  (_g3536935489_
                                                   _g3537135492_))
                                              (_g3536935489_ _g3537135492_))))
                                      (_g3536935489_ _g3537135492_))))
                              (_g3536935489_ _g3537135492_))))
                      (_g3536935489_ _g3537135492_)))))
          (_g3536835541_ _stx35365_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx34919_)
      (let* ((_g3492335025_
              (lambda (_g3492435022_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3492435022_)))
             (_g3492235032_ (lambda (_g3492435028_) ((lambda () '(begin)))))
             (_g3492135182_
              (lambda (_g3492435035_)
                (if (gx#stx-pair? _g3492435035_)
                    (let ((_e3498235037_ (gx#stx-e _g3492435035_)))
                      (let ((_hd3498335040_ (##car _e3498235037_))
                            (_tl3498435042_ (##cdr _e3498235037_)))
                        (if (gx#stx-pair? _tl3498435042_)
                            (let ((_e3498535045_ (gx#stx-e _tl3498435042_)))
                              (let ((_hd3498635048_ (##car _e3498535045_))
                                    (_tl3498735050_ (##cdr _e3498535045_)))
                                (if (gx#stx-pair? _hd3498635048_)
                                    (let ((_e3498835053_
                                           (gx#stx-e _hd3498635048_)))
                                      (let ((_hd3498935056_
                                             (##car _e3498835053_))
                                            (_tl3499035058_
                                             (##cdr _e3498835053_)))
                                        (if (gx#identifier? _hd3498935056_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3498935056_)
                                                (if (gx#stx-pair?
                                                     _tl3499035058_)
                                                    (let ((_e3499135061_
                                                           (gx#stx-e
                                                            _tl3499035058_)))
                                                      (let ((_hd3499235064_
                                                             (##car _e3499135061_))
                                                            (_tl3499335066_
                                                             (##cdr _e3499135061_)))
                                                        (if (gx#stx-null?
                                                             _tl3499335066_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3498735050_)
                        (let ((_e3499435069_ (gx#stx-e _tl3498735050_)))
                          (let ((_hd3499535072_ (##car _e3499435069_))
                                (_tl3499635074_ (##cdr _e3499435069_)))
                            (if (gx#stx-pair? _hd3499535072_)
                                (let ((_e3499735077_
                                       (gx#stx-e _hd3499535072_)))
                                  (let ((_hd3499835080_ (##car _e3499735077_))
                                        (_tl3499935082_ (##cdr _e3499735077_)))
                                    (if (gx#identifier? _hd3499835080_)
                                        (if (gx#stx-eq? '%#ref _hd3499835080_)
                                            (if (gx#stx-pair? _tl3499935082_)
                                                (let ((_e3500035085_
                                                       (gx#stx-e
                                                        _tl3499935082_)))
                                                  (let ((_hd3500135088_
                                                         (##car _e3500035085_))
                                                        (_tl3500235090_
                                                         (##cdr _e3500035085_)))
                                                    (if (gx#stx-null?
                                                         _tl3500235090_)
                                                        (if (gx#stx-pair?
                                                             _tl3499635074_)
                                                            (let ((_e3500335093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3499635074_)))
                      (let ((_hd3500435096_ (##car _e3500335093_))
                            (_tl3500535098_ (##cdr _e3500335093_)))
                        (if (gx#stx-pair? _hd3500435096_)
                            (let ((_e3500635101_ (gx#stx-e _hd3500435096_)))
                              (let ((_hd3500735104_ (##car _e3500635101_))
                                    (_tl3500835106_ (##cdr _e3500635101_)))
                                (if (gx#identifier? _hd3500735104_)
                                    (if (gx#stx-eq? '%#quote _hd3500735104_)
                                        (if (gx#stx-pair? _tl3500835106_)
                                            (let ((_e3500935109_
                                                   (gx#stx-e _tl3500835106_)))
                                              (let ((_hd3501035112_
                                                     (##car _e3500935109_))
                                                    (_tl3501135114_
                                                     (##cdr _e3500935109_)))
                                                (if (gx#stx-null?
                                                     _tl3501135114_)
                                                    (if (gx#stx-pair?
                                                         _tl3500535098_)
                                                        (let ((_e3501235117_
                                                               (gx#stx-e
                                                                _tl3500535098_)))
                                                          (let ((_hd3501335120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3501235117_))
                        (_tl3501435122_ (##cdr _e3501235117_)))
                    (if (gx#stx-pair? _hd3501335120_)
                        (let ((_e3501535125_ (gx#stx-e _hd3501335120_)))
                          (let ((_hd3501635128_ (##car _e3501535125_))
                                (_tl3501735130_ (##cdr _e3501535125_)))
                            (if (gx#identifier? _hd3501635128_)
                                (if (gx#stx-eq? '%#ref _hd3501635128_)
                                    (if (gx#stx-pair? _tl3501735130_)
                                        (let ((_e3501835133_
                                               (gx#stx-e _tl3501735130_)))
                                          (let ((_hd3501935136_
                                                 (##car _e3501835133_))
                                                (_tl3502035138_
                                                 (##cdr _e3501835133_)))
                                            (if (gx#stx-null? _tl3502035138_)
                                                (if (gx#stx-null?
                                                     _tl3501435122_)
                                                    ((lambda (_L35141_
                                                              _L35142_
                                                              _L35143_
                                                              _L35144_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L35143_)
                               (cons (gx#stx-e _L35142_)
                                     (cons (gxc#identifier-symbol _L35141_)
                                           (cons '#f '())))))
                   (_g3492235032_ _g3492435035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3501935136_
                                                     _hd3501035112_
                                                     _hd3500135088_
                                                     _hd3499235064_)
                                                    (_g3492235032_
                                                     _g3492435035_))
                                                (_g3492235032_
                                                 _g3492435035_))))
                                        (_g3492235032_ _g3492435035_))
                                    (_g3492235032_ _g3492435035_))
                                (_g3492235032_ _g3492435035_))))
                        (_g3492235032_ _g3492435035_))))
                (_g3492235032_ _g3492435035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3492235032_
                                                     _g3492435035_))))
                                            (_g3492235032_ _g3492435035_))
                                        (_g3492235032_ _g3492435035_))
                                    (_g3492235032_ _g3492435035_))))
                            (_g3492235032_ _g3492435035_))))
                    (_g3492235032_ _g3492435035_))
                (_g3492235032_ _g3492435035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3492235032_ _g3492435035_))
                                            (_g3492235032_ _g3492435035_))
                                        (_g3492235032_ _g3492435035_))))
                                (_g3492235032_ _g3492435035_))))
                        (_g3492235032_ _g3492435035_))
                    (_g3492235032_ _g3492435035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3492235032_
                                                     _g3492435035_))
                                                (_g3492235032_ _g3492435035_))
                                            (_g3492235032_ _g3492435035_))))
                                    (_g3492235032_ _g3492435035_))))
                            (_g3492235032_ _g3492435035_))))
                    (_g3492235032_ _g3492435035_))))
             (_g3492035362_
              (lambda (_g3492435185_)
                (if (gx#stx-pair? _g3492435185_)
                    (let ((_e3493035187_ (gx#stx-e _g3492435185_)))
                      (let ((_hd3493135190_ (##car _e3493035187_))
                            (_tl3493235192_ (##cdr _e3493035187_)))
                        (if (gx#stx-pair? _tl3493235192_)
                            (let ((_e3493335195_ (gx#stx-e _tl3493235192_)))
                              (let ((_hd3493435198_ (##car _e3493335195_))
                                    (_tl3493535200_ (##cdr _e3493335195_)))
                                (if (gx#stx-pair? _hd3493435198_)
                                    (let ((_e3493635203_
                                           (gx#stx-e _hd3493435198_)))
                                      (let ((_hd3493735206_
                                             (##car _e3493635203_))
                                            (_tl3493835208_
                                             (##cdr _e3493635203_)))
                                        (if (gx#identifier? _hd3493735206_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3493735206_)
                                                (if (gx#stx-pair?
                                                     _tl3493835208_)
                                                    (let ((_e3493935211_
                                                           (gx#stx-e
                                                            _tl3493835208_)))
                                                      (let ((_hd3494035214_
                                                             (##car _e3493935211_))
                                                            (_tl3494135216_
                                                             (##cdr _e3493935211_)))
                                                        (if (gx#stx-null?
                                                             _tl3494135216_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3493535200_)
                        (let ((_e3494235219_ (gx#stx-e _tl3493535200_)))
                          (let ((_hd3494335222_ (##car _e3494235219_))
                                (_tl3494435224_ (##cdr _e3494235219_)))
                            (if (gx#stx-pair? _hd3494335222_)
                                (let ((_e3494535227_
                                       (gx#stx-e _hd3494335222_)))
                                  (let ((_hd3494635230_ (##car _e3494535227_))
                                        (_tl3494735232_ (##cdr _e3494535227_)))
                                    (if (gx#identifier? _hd3494635230_)
                                        (if (gx#stx-eq? '%#ref _hd3494635230_)
                                            (if (gx#stx-pair? _tl3494735232_)
                                                (let ((_e3494835235_
                                                       (gx#stx-e
                                                        _tl3494735232_)))
                                                  (let ((_hd3494935238_
                                                         (##car _e3494835235_))
                                                        (_tl3495035240_
                                                         (##cdr _e3494835235_)))
                                                    (if (gx#stx-null?
                                                         _tl3495035240_)
                                                        (if (gx#stx-pair?
                                                             _tl3494435224_)
                                                            (let ((_e3495135243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3494435224_)))
                      (let ((_hd3495235246_ (##car _e3495135243_))
                            (_tl3495335248_ (##cdr _e3495135243_)))
                        (if (gx#stx-pair? _hd3495235246_)
                            (let ((_e3495435251_ (gx#stx-e _hd3495235246_)))
                              (let ((_hd3495535254_ (##car _e3495435251_))
                                    (_tl3495635256_ (##cdr _e3495435251_)))
                                (if (gx#identifier? _hd3495535254_)
                                    (if (gx#stx-eq? '%#quote _hd3495535254_)
                                        (if (gx#stx-pair? _tl3495635256_)
                                            (let ((_e3495735259_
                                                   (gx#stx-e _tl3495635256_)))
                                              (let ((_hd3495835262_
                                                     (##car _e3495735259_))
                                                    (_tl3495935264_
                                                     (##cdr _e3495735259_)))
                                                (if (gx#stx-null?
                                                     _tl3495935264_)
                                                    (if (gx#stx-pair?
                                                         _tl3495335248_)
                                                        (let ((_e3496035267_
                                                               (gx#stx-e
                                                                _tl3495335248_)))
                                                          (let ((_hd3496135270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3496035267_))
                        (_tl3496235272_ (##cdr _e3496035267_)))
                    (if (gx#stx-pair? _hd3496135270_)
                        (let ((_e3496335275_ (gx#stx-e _hd3496135270_)))
                          (let ((_hd3496435278_ (##car _e3496335275_))
                                (_tl3496535280_ (##cdr _e3496335275_)))
                            (if (gx#identifier? _hd3496435278_)
                                (if (gx#stx-eq? '%#ref _hd3496435278_)
                                    (if (gx#stx-pair? _tl3496535280_)
                                        (let ((_e3496635283_
                                               (gx#stx-e _tl3496535280_)))
                                          (let ((_hd3496735286_
                                                 (##car _e3496635283_))
                                                (_tl3496835288_
                                                 (##cdr _e3496635283_)))
                                            (if (gx#stx-null? _tl3496835288_)
                                                (if (gx#stx-pair?
                                                     _tl3496235272_)
                                                    (let ((_e3496935291_
                                                           (gx#stx-e
                                                            _tl3496235272_)))
                                                      (let ((_hd3497035294_
                                                             (##car _e3496935291_))
                                                            (_tl3497135296_
                                                             (##cdr _e3496935291_)))
                                                        (if (gx#stx-pair?
                                                             _hd3497035294_)
                                                            (let ((_e3497235299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3497035294_)))
                      (let ((_hd3497335302_ (##car _e3497235299_))
                            (_tl3497435304_ (##cdr _e3497235299_)))
                        (if (gx#identifier? _hd3497335302_)
                            (if (gx#stx-eq? '%#quote _hd3497335302_)
                                (if (gx#stx-pair? _tl3497435304_)
                                    (let ((_e3497535307_
                                           (gx#stx-e _tl3497435304_)))
                                      (let ((_hd3497635310_
                                             (##car _e3497535307_))
                                            (_tl3497735312_
                                             (##cdr _e3497535307_)))
                                        (if (gx#stx-null? _tl3497735312_)
                                            (if (gx#stx-null? _tl3497135296_)
                                                ((lambda (_L35315_
                                                          _L35316_
                                                          _L35317_
                                                          _L35318_
                                                          _L35319_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L35319_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L35318_)
                           (cons (gx#stx-e _L35317_)
                                 (cons (gxc#identifier-symbol _L35316_)
                                       (cons (gx#stx-e _L35315_) '())))))
               (_g3492135182_ _g3492435185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3497635310_
                                                 _hd3496735286_
                                                 _hd3495835262_
                                                 _hd3494935238_
                                                 _hd3494035214_)
                                                (_g3492135182_ _g3492435185_))
                                            (_g3492135182_ _g3492435185_))))
                                    (_g3492135182_ _g3492435185_))
                                (_g3492135182_ _g3492435185_))
                            (_g3492135182_ _g3492435185_))))
                    (_g3492135182_ _g3492435185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3492135182_
                                                     _g3492435185_))
                                                (_g3492135182_
                                                 _g3492435185_))))
                                        (_g3492135182_ _g3492435185_))
                                    (_g3492135182_ _g3492435185_))
                                (_g3492135182_ _g3492435185_))))
                        (_g3492135182_ _g3492435185_))))
                (_g3492135182_ _g3492435185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3492135182_
                                                     _g3492435185_))))
                                            (_g3492135182_ _g3492435185_))
                                        (_g3492135182_ _g3492435185_))
                                    (_g3492135182_ _g3492435185_))))
                            (_g3492135182_ _g3492435185_))))
                    (_g3492135182_ _g3492435185_))
                (_g3492135182_ _g3492435185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3492135182_ _g3492435185_))
                                            (_g3492135182_ _g3492435185_))
                                        (_g3492135182_ _g3492435185_))))
                                (_g3492135182_ _g3492435185_))))
                        (_g3492135182_ _g3492435185_))
                    (_g3492135182_ _g3492435185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3492135182_
                                                     _g3492435185_))
                                                (_g3492135182_ _g3492435185_))
                                            (_g3492135182_ _g3492435185_))))
                                    (_g3492135182_ _g3492435185_))))
                            (_g3492135182_ _g3492435185_))))
                    (_g3492135182_ _g3492435185_)))))
        (_g3492035362_ _stx34919_))))
  (define gxc#!alias::typedecl
    (lambda (_self34895_)
      (let* ((_self3489634902_ _self34895_)
             (_E3489834906_
              (lambda () (error '"No clause matching" _self3489634902_)))
             (_K3489934911_
              (lambda (_alias-id34909_)
                (cons '@alias (cons _alias-id34909_ '())))))
        (if (##structure-instance-of? _self3489634902_ 'gxc#!alias::t)
            (let* ((_e3490034914_ (##vector-ref _self3489634902_ '1))
                   (_alias-id34917_ _e3490034914_))
              (_K3489934911_ _alias-id34917_))
            (_E3489834906_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self34717_)
      (let* ((_self3471834729_ _self34717_)
             (_E3472034733_
              (lambda () (error '"No clause matching" _self3471834729_)))
             (_K3472134742_
              (lambda (_plist34736_
                       _ctor34737_
                       _fields34738_
                       _super34739_
                       _type-id34740_)
                (cons '@struct-type
                      (cons _type-id34740_
                            (cons _super34739_
                                  (cons _fields34738_
                                        (cons _ctor34737_
                                              (cons _plist34736_ '())))))))))
        (if (##structure-instance-of? _self3471834729_ 'gxc#!struct-type::t)
            (let* ((_e3472234745_ (##vector-ref _self3471834729_ '1))
                   (_type-id34748_ _e3472234745_)
                   (_e3472334750_ (##vector-ref _self3471834729_ '2))
                   (_super34753_ _e3472334750_)
                   (_e3472434755_ (##vector-ref _self3471834729_ '3))
                   (_fields34758_ _e3472434755_)
                   (_e3472534760_ (##vector-ref _self3471834729_ '4))
                   (_e3472634763_ (##vector-ref _self3471834729_ '5))
                   (_ctor34766_ _e3472634763_)
                   (_e3472734768_ (##vector-ref _self3471834729_ '6))
                   (_plist34771_ _e3472734768_))
              (_K3472134742_
               _plist34771_
               _ctor34766_
               _fields34758_
               _super34753_
               _type-id34748_))
            (_E3472034733_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self34571_)
      (let* ((_self3457234578_ _self34571_)
             (_E3457434582_
              (lambda () (error '"No clause matching" _self3457234578_)))
             (_K3457534587_
              (lambda (_struct-t34585_)
                (cons '@struct-pred (cons _struct-t34585_ '())))))
        (if (##structure-instance-of? _self3457234578_ 'gxc#!struct-pred::t)
            (let* ((_e3457634590_ (##vector-ref _self3457234578_ '1))
                   (_struct-t34593_ _e3457634590_))
              (_K3457534587_ _struct-t34593_))
            (_E3457434582_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self34425_)
      (let* ((_self3442634432_ _self34425_)
             (_E3442834436_
              (lambda () (error '"No clause matching" _self3442634432_)))
             (_K3442934441_
              (lambda (_struct-t34439_)
                (cons '@struct-cons (cons _struct-t34439_ '())))))
        (if (##structure-instance-of? _self3442634432_ 'gxc#!struct-cons::t)
            (let* ((_e3443034444_ (##vector-ref _self3442634432_ '1))
                   (_struct-t34447_ _e3443034444_))
              (_K3442934441_ _struct-t34447_))
            (_E3442834436_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self34265_)
      (let* ((_self3426634274_ _self34265_)
             (_E3426834278_
              (lambda () (error '"No clause matching" _self3426634274_)))
             (_K3426934285_
              (lambda (_unchecked?34281_ _off34282_ _struct-t34283_)
                (cons '@struct-getf
                      (cons _struct-t34283_
                            (cons _off34282_ (cons _unchecked?34281_ '())))))))
        (if (##structure-instance-of? _self3426634274_ 'gxc#!struct-getf::t)
            (let* ((_e3427034288_ (##vector-ref _self3426634274_ '1))
                   (_struct-t34291_ _e3427034288_)
                   (_e3427134293_ (##vector-ref _self3426634274_ '2))
                   (_off34296_ _e3427134293_)
                   (_e3427234298_ (##vector-ref _self3426634274_ '3))
                   (_unchecked?34301_ _e3427234298_))
              (_K3426934285_ _unchecked?34301_ _off34296_ _struct-t34291_))
            (_E3426834278_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self34105_)
      (let* ((_self3410634114_ _self34105_)
             (_E3410834118_
              (lambda () (error '"No clause matching" _self3410634114_)))
             (_K3410934125_
              (lambda (_unchecked?34121_ _off34122_ _struct-t34123_)
                (cons '@struct-setf
                      (cons _struct-t34123_
                            (cons _off34122_ (cons _unchecked?34121_ '())))))))
        (if (##structure-instance-of? _self3410634114_ 'gxc#!struct-setf::t)
            (let* ((_e3411034128_ (##vector-ref _self3410634114_ '1))
                   (_struct-t34131_ _e3411034128_)
                   (_e3411134133_ (##vector-ref _self3410634114_ '2))
                   (_off34136_ _e3411134133_)
                   (_e3411234138_ (##vector-ref _self3410634114_ '3))
                   (_unchecked?34141_ _e3411234138_))
              (_K3410934125_ _unchecked?34141_ _off34136_ _struct-t34131_))
            (_E3410834118_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self33931_)
      (let* ((_self3393233942_ _self33931_)
             (_E3393433946_
              (lambda () (error '"No clause matching" _self3393233942_)))
             (_K3393533957_
              (lambda (_typedecl33949_
                       _inline33950_
                       _dispatch33951_
                       _arity33952_)
                (if _inline33950_
                    (let ((_$e33954_ _typedecl33949_))
                      (if _$e33954_
                          _$e33954_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity33952_ (cons _dispatch33951_ '())))))))
        (if (##structure-instance-of? _self3393233942_ 'gxc#!lambda::t)
            (let* ((_e3393633960_ (##vector-ref _self3393233942_ '1))
                   (_e3393733963_ (##vector-ref _self3393233942_ '2))
                   (_arity33966_ _e3393733963_)
                   (_e3393833968_ (##vector-ref _self3393233942_ '3))
                   (_dispatch33971_ _e3393833968_)
                   (_e3393933973_ (##vector-ref _self3393233942_ '4))
                   (_inline33976_ _e3393933973_)
                   (_e3394033978_ (##vector-ref _self3393233942_ '5))
                   (_typedecl33981_ _e3394033978_))
              (_K3393533957_
               _typedecl33981_
               _inline33976_
               _dispatch33971_
               _arity33966_))
            (_E3393433946_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self33742_)
      (letrec ((_clause-e33744_
                (lambda (_clause33774_)
                  (let* ((_clause3377533783_ _clause33774_)
                         (_E3377733787_
                          (lambda ()
                            (error '"No clause matching" _clause3377533783_)))
                         (_K3377833793_
                          (lambda (_dispatch33790_ _arity33791_)
                            (cons _arity33791_ (cons _dispatch33790_ '())))))
                    (if (##structure-instance-of?
                         _clause3377533783_
                         'gxc#!lambda::t)
                        (let* ((_e3377933796_
                                (##vector-ref _clause3377533783_ '1))
                               (_e3378033799_
                                (##vector-ref _clause3377533783_ '2))
                               (_arity33802_ _e3378033799_)
                               (_e3378133804_
                                (##vector-ref _clause3377533783_ '3))
                               (_dispatch33807_ _e3378133804_))
                          (_K3377833793_ _dispatch33807_ _arity33802_))
                        (_E3377733787_))))))
        (let* ((_self3374533752_ _self33742_)
               (_E3374733756_
                (lambda () (error '"No clause matching" _self3374533752_)))
               (_K3374833763_
                (lambda (_clauses33759_)
                  (let ((_clauses33761_ (map _clause-e33744_ _clauses33759_)))
                    (cons '@case-lambda _clauses33761_)))))
          (if (##structure-instance-of? _self3374533752_ 'gxc#!case-lambda::t)
              (let* ((_e3374933766_ (##vector-ref _self3374533752_ '1))
                     (_e3375033769_ (##vector-ref _self3374533752_ '2))
                     (_clauses33772_ _e3375033769_))
                (_K3374833763_ _clauses33772_))
              (_E3374733756_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self33585_)
      (let* ((_self3358633594_ _self33585_)
             (_E3358833598_
              (lambda () (error '"No clause matching" _self3358633594_)))
             (_K3358933604_
              (lambda (_dispatch33601_ _table33602_)
                (cons '@kw-lambda
                      (cons _table33602_ (cons _dispatch33601_ '()))))))
        (if (##structure-instance-of? _self3358633594_ 'gxc#!kw-lambda::t)
            (let* ((_e3359033607_ (##vector-ref _self3358633594_ '1))
                   (_e3359133610_ (##vector-ref _self3358633594_ '2))
                   (_table33613_ _e3359133610_)
                   (_e3359233615_ (##vector-ref _self3358633594_ '3))
                   (_dispatch33618_ _e3359233615_))
              (_K3358933604_ _dispatch33618_ _table33613_))
            (_E3358833598_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self33428_)
      (let* ((_self3342933437_ _self33428_)
             (_E3343133441_
              (lambda () (error '"No clause matching" _self3342933437_)))
             (_K3343233447_
              (lambda (_main33444_ _keys33445_)
                (cons '@kw-lambda-dispatch
                      (cons _keys33445_ (cons _main33444_ '()))))))
        (if (##structure-instance-of?
             _self3342933437_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e3343333450_ (##vector-ref _self3342933437_ '1))
                   (_e3343433453_ (##vector-ref _self3342933437_ '2))
                   (_keys33456_ _e3343433453_)
                   (_e3343533458_ (##vector-ref _self3342933437_ '3))
                   (_main33461_ _e3343533458_))
              (_K3343233447_ _main33461_ _keys33456_))
            (_E3343133441_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
