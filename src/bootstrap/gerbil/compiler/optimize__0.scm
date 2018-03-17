(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj36014 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj36014) __obj36014))))))
  (define gxc#optimize!
    (lambda (_ctx36009_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx36009_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx36009_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code36012_
                  (gxc#optimize-source
                   (##structure-ref _ctx36009_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx36009_
              _code36012_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx35954_)
      (letrec* ((_deps35956_
                 (let* ((_imports36000_
                         (##structure-ref
                          _ctx35954_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e36002_ (gx#core-context-prelude__% _ctx35954_)))
                   (if _$e36002_
                       ((lambda (_g3600436006_)
                          (cons _g3600436006_ _imports36000_))
                        _$e36002_)
                       _imports36000_))))
        (let _lp35958_ ((_rest35960_ _deps35956_))
          (let* ((_rest3596135969_ _rest35960_)
                 (_else3596335977_ (lambda () '#!void))
                 (_K3596535988_
                  (lambda (_rest35980_ _hd35981_)
                    (if (##structure-instance-of?
                         _hd35981_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd35981_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e35983_
                                       (gx#core-context-prelude__% _hd35981_)))
                                  (if _$e35983_
                                      ((lambda (_pre35986_)
                                         (_lp35958_
                                          (cons _pre35986_
                                                (##structure-ref
                                                 _hd35981_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e35983_)
                                      (_lp35958_
                                       (##structure-ref
                                        _hd35981_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd35981_)))
                          (_lp35958_ _rest35980_))
                        (if (##structure-instance-of?
                             _hd35981_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd35981_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp35958_
                                     (##structure-ref
                                      _hd35981_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd35981_)))
                              (_lp35958_ _rest35980_))
                            (if (##structure-direct-instance-of?
                                 _hd35981_
                                 'gx#module-import::t)
                                (_lp35958_
                                 (cons (##direct-structure-ref
                                        _hd35981_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest35980_))
                                (if (##structure-direct-instance-of?
                                     _hd35981_
                                     'gx#module-export::t)
                                    (_lp35958_
                                     (cons (##direct-structure-ref
                                            _hd35981_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest35980_))
                                    (if (##structure-direct-instance-of?
                                         _hd35981_
                                         'gx#import-set::t)
                                        (_lp35958_
                                         (cons (##direct-structure-ref
                                                _hd35981_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest35980_))
                                        (error '"Unexpected module import"
                                               _hd35981_)))))))))
            (if (##pair? _rest3596135969_)
                (let ((_hd3596635991_ (##car _rest3596135969_))
                      (_tl3596735993_ (##cdr _rest3596135969_)))
                  (let* ((_hd35996_ _hd3596635991_)
                         (_rest35998_ _tl3596735993_))
                    (_K3596535988_ _rest35998_ _hd35996_)))
                (_else3596335977_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx35934_)
      (if (if (##structure-instance-of? _ctx35934_ 'gx#module-context::t)
              (list? (##structure-ref _ctx35934_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht35936_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id35938_
                  (##structure-ref _ctx35934_ '1 gx#expander-context::t '#f))
                 (_mod35940_ (table-ref _ht35936_ _id35938_ '#f)))
            (let ((_$e35943_ _mod35940_))
              (if _$e35943_
                  _$e35943_
                  (let* ((_mod35946_ (gxc#optimizer-import-ssxi _ctx35934_))
                         (_val35951_
                          (let ((_$e35948_ _mod35946_))
                            (if _$e35948_ _$e35948_ '#!void))))
                    (begin
                      (table-set! _ht35936_ _id35938_ _val35951_)
                      _val35951_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx35911_)
      (letrec ((_catch-e35913_
                (lambda (_exn35932_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx35911_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn35932_))
                        '#!void)
                    '#f)))
               (_import-e35914_
                (lambda ()
                  (let* ((_str-id35917_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx35911_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path35925_
                          (let ((_odir3591835920_
                                 (gxc#current-compile-output-dir)))
                            (if _odir3591835920_
                                (let ((_odir35923_ _odir3591835920_))
                                  (path-expand
                                   (string-append _str-id35917_ '".ss")
                                   _odir35923_))
                                '#f)))
                         (_library-path35927_
                          (string->symbol
                           (string-append '":" _str-id35917_ '".ss")))
                         (_ssxi-path35929_
                          (if (if _artefact-path35925_
                                  (file-exists? _artefact-path35925_)
                                  '#f)
                              _artefact-path35925_
                              _library-path35927_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path35929_)
                      (gx#import-module__% _ssxi-path35929_ '#t '#t))))))
        (if (##structure-ref _ctx35911_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e35913_ _import-e35914_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx35905_)
      (begin
        (gxc#apply-collect-mutators _stx35905_)
        (let ((_stx35907_ (gxc#apply-lift-top-lambdas _stx35905_)))
          (begin
            (gxc#apply-collect-type-info _stx35907_)
            (let ((_stx35909_ (gxc#apply-optimize-annotated _stx35907_)))
              (gxc#apply-optimize-call _stx35909_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl35902_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl35902_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl35902_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl35902_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl35902_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl35902_ '%#call gxc#generate-ssxi-call%)
           _tbl35902_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx35895_ . _args35897_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx35895_ _args35897_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx35835_)
      (let* ((_g3583735851_
              (lambda (_g3583835848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3583835848_)))
             (_g3583635892_
              (lambda (_g3583835854_)
                (if (gx#stx-pair? _g3583835854_)
                    (let ((_e3584135856_ (gx#stx-e _g3583835854_)))
                      (let ((_hd3584235859_ (##car _e3584135856_))
                            (_tl3584335861_ (##cdr _e3584135856_)))
                        (if (gx#stx-pair? _tl3584335861_)
                            (let ((_e3584435864_ (gx#stx-e _tl3584335861_)))
                              (let ((_hd3584535867_ (##car _e3584435864_))
                                    (_tl3584635869_ (##cdr _e3584435864_)))
                                ((lambda (_L35872_ _L35873_)
                                   (let* ((_ctx35886_
                                           (gx#syntax-local-e__0 _L35873_))
                                          (_code35888_
                                           (##structure-ref
                                            _ctx35886_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code35888_))
                                      gx#current-expander-context
                                      _ctx35886_)))
                                 _tl3584635869_
                                 _hd3584535867_)))
                            (_g3583735851_ _g3583835854_))))
                    (_g3583735851_ _g3583835854_)))))
        (_g3583635892_ _stx35835_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx35645_)
      (letrec ((_generate-e35647_
                (lambda (_id35824_)
                  (let* ((_sym35826_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id35824_)
                              '#f))
                         (_$e35828_
                          (if _sym35826_
                              (gxc#optimizer-lookup-type _sym35826_)
                              '#f)))
                    (if _$e35828_
                        ((lambda (_type35831_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym35826_)
                             (let ((_typedecl35833_
                                    (call-method _type35831_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym35826_
                                           (cons _typedecl35833_ '()))))))
                         _$e35828_)
                        '(begin))))))
        (let* ((_g3565035688_
                (lambda (_g3565135685_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3565135685_)))
               (_g3564935769_
                (lambda (_g3565135691_)
                  (if (gx#stx-pair? _g3565135691_)
                      (let ((_e3566635693_ (gx#stx-e _g3565135691_)))
                        (let ((_hd3566735696_ (##car _e3566635693_))
                              (_tl3566835698_ (##cdr _e3566635693_)))
                          (if (gx#stx-pair? _tl3566835698_)
                              (let ((_e3566935701_ (gx#stx-e _tl3566835698_)))
                                (let ((_hd3567035704_ (##car _e3566935701_))
                                      (_tl3567135706_ (##cdr _e3566935701_)))
                                  (if (gx#stx-pair/null? _hd3567035704_)
                                      (if (fx>= (gx#stx-length _hd3567035704_)
                                                '0)
                                          (let ((_g36015_
                                                 (gx#syntax-split-splice
                                                  _hd3567035704_
                                                  '0)))
                                            (begin
                                              (let ((_g36016_
                                                     (if (##values? _g36015_)
                                                         (##vector-length
                                                          _g36015_)
                                                         1)))
                                                (if (not (##fx= _g36016_ 2))
                                                    (error "Context expects 2 values"
                                                           _g36016_)))
                                              (let ((_target3567235709_
                                                     (##vector-ref _g36015_ 0))
                                                    (_tl3567435711_
                                                     (##vector-ref
                                                      _g36015_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl3567435711_)
                                                    (letrec ((_loop3567535714_
                                                              (lambda (_hd3567335717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id3567935719_)
                        (if (gx#stx-pair? _hd3567335717_)
                            (let ((_e3567635722_ (gx#stx-e _hd3567335717_)))
                              (let ((_lp-hd3567735725_ (##car _e3567635722_))
                                    (_lp-tl3567835727_ (##cdr _e3567635722_)))
                                (_loop3567535714_
                                 _lp-tl3567835727_
                                 (cons _lp-hd3567735725_ _id3567935719_))))
                            (let ((_id3568035730_ (reverse _id3567935719_)))
                              (if (gx#stx-pair? _tl3567135706_)
                                  (let ((_e3568135733_
                                         (gx#stx-e _tl3567135706_)))
                                    (let ((_hd3568235736_
                                           (##car _e3568135733_))
                                          (_tl3568335738_
                                           (##cdr _e3568135733_)))
                                      (if (gx#stx-null? _tl3568335738_)
                                          ((lambda (_L35741_)
                                             (let ((_types35767_
                                                    (map _generate-e35647_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3575935762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3576035764_)
                             (cons _g3575935762_ _g3576035764_))
                           '()
                           _L35741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types35767_)))
                                           _id3568035730_)
                                          (_g3565035688_ _g3565135691_))))
                                  (_g3565035688_ _g3565135691_)))))))
              (_loop3567535714_ _target3567235709_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3565035688_
                                                     _g3565135691_)))))
                                          (_g3565035688_ _g3565135691_))
                                      (_g3565035688_ _g3565135691_))))
                              (_g3565035688_ _g3565135691_))))
                      (_g3565035688_ _g3565135691_))))
               (_g3564835821_
                (lambda (_g3565135772_)
                  (if (gx#stx-pair? _g3565135772_)
                      (let ((_e3565335774_ (gx#stx-e _g3565135772_)))
                        (let ((_hd3565435777_ (##car _e3565335774_))
                              (_tl3565535779_ (##cdr _e3565335774_)))
                          (if (gx#stx-pair? _tl3565535779_)
                              (let ((_e3565635782_ (gx#stx-e _tl3565535779_)))
                                (let ((_hd3565735785_ (##car _e3565635782_))
                                      (_tl3565835787_ (##cdr _e3565635782_)))
                                  (if (gx#stx-pair? _hd3565735785_)
                                      (let ((_e3565935790_
                                             (gx#stx-e _hd3565735785_)))
                                        (let ((_hd3566035793_
                                               (##car _e3565935790_))
                                              (_tl3566135795_
                                               (##cdr _e3565935790_)))
                                          (if (gx#stx-null? _tl3566135795_)
                                              (if (gx#stx-pair? _tl3565835787_)
                                                  (let ((_e3566235798_
                                                         (gx#stx-e
                                                          _tl3565835787_)))
                                                    (let ((_hd3566335801_
                                                           (##car _e3566235798_))
                                                          (_tl3566435803_
                                                           (##cdr _e3566235798_)))
                                                      (if (gx#stx-null?
                                                           _tl3566435803_)
                                                          ((lambda (_L35806_)
                                                             (_generate-e35647_
                                                              _L35806_))
                                                           _hd3566035793_)
                                                          (_g3564935769_
                                                           _g3565135772_))))
                                                  (_g3564935769_
                                                   _g3565135772_))
                                              (_g3564935769_ _g3565135772_))))
                                      (_g3564935769_ _g3565135772_))))
                              (_g3564935769_ _g3565135772_))))
                      (_g3564935769_ _g3565135772_)))))
          (_g3564835821_ _stx35645_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx35199_)
      (let* ((_g3520335305_
              (lambda (_g3520435302_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3520435302_)))
             (_g3520235312_ (lambda (_g3520435308_) ((lambda () '(begin)))))
             (_g3520135462_
              (lambda (_g3520435315_)
                (if (gx#stx-pair? _g3520435315_)
                    (let ((_e3526235317_ (gx#stx-e _g3520435315_)))
                      (let ((_hd3526335320_ (##car _e3526235317_))
                            (_tl3526435322_ (##cdr _e3526235317_)))
                        (if (gx#stx-pair? _tl3526435322_)
                            (let ((_e3526535325_ (gx#stx-e _tl3526435322_)))
                              (let ((_hd3526635328_ (##car _e3526535325_))
                                    (_tl3526735330_ (##cdr _e3526535325_)))
                                (if (gx#stx-pair? _hd3526635328_)
                                    (let ((_e3526835333_
                                           (gx#stx-e _hd3526635328_)))
                                      (let ((_hd3526935336_
                                             (##car _e3526835333_))
                                            (_tl3527035338_
                                             (##cdr _e3526835333_)))
                                        (if (gx#identifier? _hd3526935336_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3526935336_)
                                                (if (gx#stx-pair?
                                                     _tl3527035338_)
                                                    (let ((_e3527135341_
                                                           (gx#stx-e
                                                            _tl3527035338_)))
                                                      (let ((_hd3527235344_
                                                             (##car _e3527135341_))
                                                            (_tl3527335346_
                                                             (##cdr _e3527135341_)))
                                                        (if (gx#stx-null?
                                                             _tl3527335346_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3526735330_)
                        (let ((_e3527435349_ (gx#stx-e _tl3526735330_)))
                          (let ((_hd3527535352_ (##car _e3527435349_))
                                (_tl3527635354_ (##cdr _e3527435349_)))
                            (if (gx#stx-pair? _hd3527535352_)
                                (let ((_e3527735357_
                                       (gx#stx-e _hd3527535352_)))
                                  (let ((_hd3527835360_ (##car _e3527735357_))
                                        (_tl3527935362_ (##cdr _e3527735357_)))
                                    (if (gx#identifier? _hd3527835360_)
                                        (if (gx#stx-eq? '%#ref _hd3527835360_)
                                            (if (gx#stx-pair? _tl3527935362_)
                                                (let ((_e3528035365_
                                                       (gx#stx-e
                                                        _tl3527935362_)))
                                                  (let ((_hd3528135368_
                                                         (##car _e3528035365_))
                                                        (_tl3528235370_
                                                         (##cdr _e3528035365_)))
                                                    (if (gx#stx-null?
                                                         _tl3528235370_)
                                                        (if (gx#stx-pair?
                                                             _tl3527635354_)
                                                            (let ((_e3528335373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3527635354_)))
                      (let ((_hd3528435376_ (##car _e3528335373_))
                            (_tl3528535378_ (##cdr _e3528335373_)))
                        (if (gx#stx-pair? _hd3528435376_)
                            (let ((_e3528635381_ (gx#stx-e _hd3528435376_)))
                              (let ((_hd3528735384_ (##car _e3528635381_))
                                    (_tl3528835386_ (##cdr _e3528635381_)))
                                (if (gx#identifier? _hd3528735384_)
                                    (if (gx#stx-eq? '%#quote _hd3528735384_)
                                        (if (gx#stx-pair? _tl3528835386_)
                                            (let ((_e3528935389_
                                                   (gx#stx-e _tl3528835386_)))
                                              (let ((_hd3529035392_
                                                     (##car _e3528935389_))
                                                    (_tl3529135394_
                                                     (##cdr _e3528935389_)))
                                                (if (gx#stx-null?
                                                     _tl3529135394_)
                                                    (if (gx#stx-pair?
                                                         _tl3528535378_)
                                                        (let ((_e3529235397_
                                                               (gx#stx-e
                                                                _tl3528535378_)))
                                                          (let ((_hd3529335400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3529235397_))
                        (_tl3529435402_ (##cdr _e3529235397_)))
                    (if (gx#stx-pair? _hd3529335400_)
                        (let ((_e3529535405_ (gx#stx-e _hd3529335400_)))
                          (let ((_hd3529635408_ (##car _e3529535405_))
                                (_tl3529735410_ (##cdr _e3529535405_)))
                            (if (gx#identifier? _hd3529635408_)
                                (if (gx#stx-eq? '%#ref _hd3529635408_)
                                    (if (gx#stx-pair? _tl3529735410_)
                                        (let ((_e3529835413_
                                               (gx#stx-e _tl3529735410_)))
                                          (let ((_hd3529935416_
                                                 (##car _e3529835413_))
                                                (_tl3530035418_
                                                 (##cdr _e3529835413_)))
                                            (if (gx#stx-null? _tl3530035418_)
                                                (if (gx#stx-null?
                                                     _tl3529435402_)
                                                    ((lambda (_L35421_
                                                              _L35422_
                                                              _L35423_
                                                              _L35424_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L35423_)
                               (cons (gx#stx-e _L35422_)
                                     (cons (gxc#identifier-symbol _L35421_)
                                           (cons '#f '())))))
                   (_g3520235312_ _g3520435315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3529935416_
                                                     _hd3529035392_
                                                     _hd3528135368_
                                                     _hd3527235344_)
                                                    (_g3520235312_
                                                     _g3520435315_))
                                                (_g3520235312_
                                                 _g3520435315_))))
                                        (_g3520235312_ _g3520435315_))
                                    (_g3520235312_ _g3520435315_))
                                (_g3520235312_ _g3520435315_))))
                        (_g3520235312_ _g3520435315_))))
                (_g3520235312_ _g3520435315_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3520235312_
                                                     _g3520435315_))))
                                            (_g3520235312_ _g3520435315_))
                                        (_g3520235312_ _g3520435315_))
                                    (_g3520235312_ _g3520435315_))))
                            (_g3520235312_ _g3520435315_))))
                    (_g3520235312_ _g3520435315_))
                (_g3520235312_ _g3520435315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3520235312_ _g3520435315_))
                                            (_g3520235312_ _g3520435315_))
                                        (_g3520235312_ _g3520435315_))))
                                (_g3520235312_ _g3520435315_))))
                        (_g3520235312_ _g3520435315_))
                    (_g3520235312_ _g3520435315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3520235312_
                                                     _g3520435315_))
                                                (_g3520235312_ _g3520435315_))
                                            (_g3520235312_ _g3520435315_))))
                                    (_g3520235312_ _g3520435315_))))
                            (_g3520235312_ _g3520435315_))))
                    (_g3520235312_ _g3520435315_))))
             (_g3520035642_
              (lambda (_g3520435465_)
                (if (gx#stx-pair? _g3520435465_)
                    (let ((_e3521035467_ (gx#stx-e _g3520435465_)))
                      (let ((_hd3521135470_ (##car _e3521035467_))
                            (_tl3521235472_ (##cdr _e3521035467_)))
                        (if (gx#stx-pair? _tl3521235472_)
                            (let ((_e3521335475_ (gx#stx-e _tl3521235472_)))
                              (let ((_hd3521435478_ (##car _e3521335475_))
                                    (_tl3521535480_ (##cdr _e3521335475_)))
                                (if (gx#stx-pair? _hd3521435478_)
                                    (let ((_e3521635483_
                                           (gx#stx-e _hd3521435478_)))
                                      (let ((_hd3521735486_
                                             (##car _e3521635483_))
                                            (_tl3521835488_
                                             (##cdr _e3521635483_)))
                                        (if (gx#identifier? _hd3521735486_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3521735486_)
                                                (if (gx#stx-pair?
                                                     _tl3521835488_)
                                                    (let ((_e3521935491_
                                                           (gx#stx-e
                                                            _tl3521835488_)))
                                                      (let ((_hd3522035494_
                                                             (##car _e3521935491_))
                                                            (_tl3522135496_
                                                             (##cdr _e3521935491_)))
                                                        (if (gx#stx-null?
                                                             _tl3522135496_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3521535480_)
                        (let ((_e3522235499_ (gx#stx-e _tl3521535480_)))
                          (let ((_hd3522335502_ (##car _e3522235499_))
                                (_tl3522435504_ (##cdr _e3522235499_)))
                            (if (gx#stx-pair? _hd3522335502_)
                                (let ((_e3522535507_
                                       (gx#stx-e _hd3522335502_)))
                                  (let ((_hd3522635510_ (##car _e3522535507_))
                                        (_tl3522735512_ (##cdr _e3522535507_)))
                                    (if (gx#identifier? _hd3522635510_)
                                        (if (gx#stx-eq? '%#ref _hd3522635510_)
                                            (if (gx#stx-pair? _tl3522735512_)
                                                (let ((_e3522835515_
                                                       (gx#stx-e
                                                        _tl3522735512_)))
                                                  (let ((_hd3522935518_
                                                         (##car _e3522835515_))
                                                        (_tl3523035520_
                                                         (##cdr _e3522835515_)))
                                                    (if (gx#stx-null?
                                                         _tl3523035520_)
                                                        (if (gx#stx-pair?
                                                             _tl3522435504_)
                                                            (let ((_e3523135523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3522435504_)))
                      (let ((_hd3523235526_ (##car _e3523135523_))
                            (_tl3523335528_ (##cdr _e3523135523_)))
                        (if (gx#stx-pair? _hd3523235526_)
                            (let ((_e3523435531_ (gx#stx-e _hd3523235526_)))
                              (let ((_hd3523535534_ (##car _e3523435531_))
                                    (_tl3523635536_ (##cdr _e3523435531_)))
                                (if (gx#identifier? _hd3523535534_)
                                    (if (gx#stx-eq? '%#quote _hd3523535534_)
                                        (if (gx#stx-pair? _tl3523635536_)
                                            (let ((_e3523735539_
                                                   (gx#stx-e _tl3523635536_)))
                                              (let ((_hd3523835542_
                                                     (##car _e3523735539_))
                                                    (_tl3523935544_
                                                     (##cdr _e3523735539_)))
                                                (if (gx#stx-null?
                                                     _tl3523935544_)
                                                    (if (gx#stx-pair?
                                                         _tl3523335528_)
                                                        (let ((_e3524035547_
                                                               (gx#stx-e
                                                                _tl3523335528_)))
                                                          (let ((_hd3524135550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3524035547_))
                        (_tl3524235552_ (##cdr _e3524035547_)))
                    (if (gx#stx-pair? _hd3524135550_)
                        (let ((_e3524335555_ (gx#stx-e _hd3524135550_)))
                          (let ((_hd3524435558_ (##car _e3524335555_))
                                (_tl3524535560_ (##cdr _e3524335555_)))
                            (if (gx#identifier? _hd3524435558_)
                                (if (gx#stx-eq? '%#ref _hd3524435558_)
                                    (if (gx#stx-pair? _tl3524535560_)
                                        (let ((_e3524635563_
                                               (gx#stx-e _tl3524535560_)))
                                          (let ((_hd3524735566_
                                                 (##car _e3524635563_))
                                                (_tl3524835568_
                                                 (##cdr _e3524635563_)))
                                            (if (gx#stx-null? _tl3524835568_)
                                                (if (gx#stx-pair?
                                                     _tl3524235552_)
                                                    (let ((_e3524935571_
                                                           (gx#stx-e
                                                            _tl3524235552_)))
                                                      (let ((_hd3525035574_
                                                             (##car _e3524935571_))
                                                            (_tl3525135576_
                                                             (##cdr _e3524935571_)))
                                                        (if (gx#stx-pair?
                                                             _hd3525035574_)
                                                            (let ((_e3525235579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3525035574_)))
                      (let ((_hd3525335582_ (##car _e3525235579_))
                            (_tl3525435584_ (##cdr _e3525235579_)))
                        (if (gx#identifier? _hd3525335582_)
                            (if (gx#stx-eq? '%#quote _hd3525335582_)
                                (if (gx#stx-pair? _tl3525435584_)
                                    (let ((_e3525535587_
                                           (gx#stx-e _tl3525435584_)))
                                      (let ((_hd3525635590_
                                             (##car _e3525535587_))
                                            (_tl3525735592_
                                             (##cdr _e3525535587_)))
                                        (if (gx#stx-null? _tl3525735592_)
                                            (if (gx#stx-null? _tl3525135576_)
                                                ((lambda (_L35595_
                                                          _L35596_
                                                          _L35597_
                                                          _L35598_
                                                          _L35599_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L35599_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L35598_)
                           (cons (gx#stx-e _L35597_)
                                 (cons (gxc#identifier-symbol _L35596_)
                                       (cons (gx#stx-e _L35595_) '())))))
               (_g3520135462_ _g3520435465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3525635590_
                                                 _hd3524735566_
                                                 _hd3523835542_
                                                 _hd3522935518_
                                                 _hd3522035494_)
                                                (_g3520135462_ _g3520435465_))
                                            (_g3520135462_ _g3520435465_))))
                                    (_g3520135462_ _g3520435465_))
                                (_g3520135462_ _g3520435465_))
                            (_g3520135462_ _g3520435465_))))
                    (_g3520135462_ _g3520435465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3520135462_
                                                     _g3520435465_))
                                                (_g3520135462_
                                                 _g3520435465_))))
                                        (_g3520135462_ _g3520435465_))
                                    (_g3520135462_ _g3520435465_))
                                (_g3520135462_ _g3520435465_))))
                        (_g3520135462_ _g3520435465_))))
                (_g3520135462_ _g3520435465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3520135462_
                                                     _g3520435465_))))
                                            (_g3520135462_ _g3520435465_))
                                        (_g3520135462_ _g3520435465_))
                                    (_g3520135462_ _g3520435465_))))
                            (_g3520135462_ _g3520435465_))))
                    (_g3520135462_ _g3520435465_))
                (_g3520135462_ _g3520435465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3520135462_ _g3520435465_))
                                            (_g3520135462_ _g3520435465_))
                                        (_g3520135462_ _g3520435465_))))
                                (_g3520135462_ _g3520435465_))))
                        (_g3520135462_ _g3520435465_))
                    (_g3520135462_ _g3520435465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3520135462_
                                                     _g3520435465_))
                                                (_g3520135462_ _g3520435465_))
                                            (_g3520135462_ _g3520435465_))))
                                    (_g3520135462_ _g3520435465_))))
                            (_g3520135462_ _g3520435465_))))
                    (_g3520135462_ _g3520435465_)))))
        (_g3520035642_ _stx35199_))))
  (define gxc#!alias::typedecl
    (lambda (_self35175_)
      (let* ((_self3517635182_ _self35175_)
             (_E3517835186_
              (lambda () (error '"No clause matching" _self3517635182_)))
             (_K3517935191_
              (lambda (_alias-id35189_)
                (cons '@alias (cons _alias-id35189_ '())))))
        (if (##structure-instance-of? _self3517635182_ 'gxc#!alias::t)
            (let* ((_e3518035194_ (##vector-ref _self3517635182_ '1))
                   (_alias-id35197_ _e3518035194_))
              (_K3517935191_ _alias-id35197_))
            (_E3517835186_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self34997_)
      (let* ((_self3499835009_ _self34997_)
             (_E3500035013_
              (lambda () (error '"No clause matching" _self3499835009_)))
             (_K3500135022_
              (lambda (_plist35016_
                       _ctor35017_
                       _fields35018_
                       _super35019_
                       _type-id35020_)
                (cons '@struct-type
                      (cons _type-id35020_
                            (cons _super35019_
                                  (cons _fields35018_
                                        (cons _ctor35017_
                                              (cons _plist35016_ '())))))))))
        (if (##structure-instance-of? _self3499835009_ 'gxc#!struct-type::t)
            (let* ((_e3500235025_ (##vector-ref _self3499835009_ '1))
                   (_type-id35028_ _e3500235025_)
                   (_e3500335030_ (##vector-ref _self3499835009_ '2))
                   (_super35033_ _e3500335030_)
                   (_e3500435035_ (##vector-ref _self3499835009_ '3))
                   (_fields35038_ _e3500435035_)
                   (_e3500535040_ (##vector-ref _self3499835009_ '4))
                   (_e3500635043_ (##vector-ref _self3499835009_ '5))
                   (_ctor35046_ _e3500635043_)
                   (_e3500735048_ (##vector-ref _self3499835009_ '6))
                   (_plist35051_ _e3500735048_))
              (_K3500135022_
               _plist35051_
               _ctor35046_
               _fields35038_
               _super35033_
               _type-id35028_))
            (_E3500035013_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self34851_)
      (let* ((_self3485234858_ _self34851_)
             (_E3485434862_
              (lambda () (error '"No clause matching" _self3485234858_)))
             (_K3485534867_
              (lambda (_struct-t34865_)
                (cons '@struct-pred (cons _struct-t34865_ '())))))
        (if (##structure-instance-of? _self3485234858_ 'gxc#!struct-pred::t)
            (let* ((_e3485634870_ (##vector-ref _self3485234858_ '1))
                   (_struct-t34873_ _e3485634870_))
              (_K3485534867_ _struct-t34873_))
            (_E3485434862_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self34705_)
      (let* ((_self3470634712_ _self34705_)
             (_E3470834716_
              (lambda () (error '"No clause matching" _self3470634712_)))
             (_K3470934721_
              (lambda (_struct-t34719_)
                (cons '@struct-cons (cons _struct-t34719_ '())))))
        (if (##structure-instance-of? _self3470634712_ 'gxc#!struct-cons::t)
            (let* ((_e3471034724_ (##vector-ref _self3470634712_ '1))
                   (_struct-t34727_ _e3471034724_))
              (_K3470934721_ _struct-t34727_))
            (_E3470834716_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self34545_)
      (let* ((_self3454634554_ _self34545_)
             (_E3454834558_
              (lambda () (error '"No clause matching" _self3454634554_)))
             (_K3454934565_
              (lambda (_unchecked?34561_ _off34562_ _struct-t34563_)
                (cons '@struct-getf
                      (cons _struct-t34563_
                            (cons _off34562_ (cons _unchecked?34561_ '())))))))
        (if (##structure-instance-of? _self3454634554_ 'gxc#!struct-getf::t)
            (let* ((_e3455034568_ (##vector-ref _self3454634554_ '1))
                   (_struct-t34571_ _e3455034568_)
                   (_e3455134573_ (##vector-ref _self3454634554_ '2))
                   (_off34576_ _e3455134573_)
                   (_e3455234578_ (##vector-ref _self3454634554_ '3))
                   (_unchecked?34581_ _e3455234578_))
              (_K3454934565_ _unchecked?34581_ _off34576_ _struct-t34571_))
            (_E3454834558_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self34385_)
      (let* ((_self3438634394_ _self34385_)
             (_E3438834398_
              (lambda () (error '"No clause matching" _self3438634394_)))
             (_K3438934405_
              (lambda (_unchecked?34401_ _off34402_ _struct-t34403_)
                (cons '@struct-setf
                      (cons _struct-t34403_
                            (cons _off34402_ (cons _unchecked?34401_ '())))))))
        (if (##structure-instance-of? _self3438634394_ 'gxc#!struct-setf::t)
            (let* ((_e3439034408_ (##vector-ref _self3438634394_ '1))
                   (_struct-t34411_ _e3439034408_)
                   (_e3439134413_ (##vector-ref _self3438634394_ '2))
                   (_off34416_ _e3439134413_)
                   (_e3439234418_ (##vector-ref _self3438634394_ '3))
                   (_unchecked?34421_ _e3439234418_))
              (_K3438934405_ _unchecked?34421_ _off34416_ _struct-t34411_))
            (_E3438834398_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self34211_)
      (let* ((_self3421234222_ _self34211_)
             (_E3421434226_
              (lambda () (error '"No clause matching" _self3421234222_)))
             (_K3421534237_
              (lambda (_typedecl34229_
                       _inline34230_
                       _dispatch34231_
                       _arity34232_)
                (if _inline34230_
                    (let ((_$e34234_ _typedecl34229_))
                      (if _$e34234_
                          _$e34234_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity34232_ (cons _dispatch34231_ '())))))))
        (if (##structure-instance-of? _self3421234222_ 'gxc#!lambda::t)
            (let* ((_e3421634240_ (##vector-ref _self3421234222_ '1))
                   (_e3421734243_ (##vector-ref _self3421234222_ '2))
                   (_arity34246_ _e3421734243_)
                   (_e3421834248_ (##vector-ref _self3421234222_ '3))
                   (_dispatch34251_ _e3421834248_)
                   (_e3421934253_ (##vector-ref _self3421234222_ '4))
                   (_inline34256_ _e3421934253_)
                   (_e3422034258_ (##vector-ref _self3421234222_ '5))
                   (_typedecl34261_ _e3422034258_))
              (_K3421534237_
               _typedecl34261_
               _inline34256_
               _dispatch34251_
               _arity34246_))
            (_E3421434226_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self34022_)
      (letrec ((_clause-e34024_
                (lambda (_clause34054_)
                  (let* ((_clause3405534063_ _clause34054_)
                         (_E3405734067_
                          (lambda ()
                            (error '"No clause matching" _clause3405534063_)))
                         (_K3405834073_
                          (lambda (_dispatch34070_ _arity34071_)
                            (cons _arity34071_ (cons _dispatch34070_ '())))))
                    (if (##structure-instance-of?
                         _clause3405534063_
                         'gxc#!lambda::t)
                        (let* ((_e3405934076_
                                (##vector-ref _clause3405534063_ '1))
                               (_e3406034079_
                                (##vector-ref _clause3405534063_ '2))
                               (_arity34082_ _e3406034079_)
                               (_e3406134084_
                                (##vector-ref _clause3405534063_ '3))
                               (_dispatch34087_ _e3406134084_))
                          (_K3405834073_ _dispatch34087_ _arity34082_))
                        (_E3405734067_))))))
        (let* ((_self3402534032_ _self34022_)
               (_E3402734036_
                (lambda () (error '"No clause matching" _self3402534032_)))
               (_K3402834043_
                (lambda (_clauses34039_)
                  (let ((_clauses34041_ (map _clause-e34024_ _clauses34039_)))
                    (cons '@case-lambda _clauses34041_)))))
          (if (##structure-instance-of? _self3402534032_ 'gxc#!case-lambda::t)
              (let* ((_e3402934046_ (##vector-ref _self3402534032_ '1))
                     (_e3403034049_ (##vector-ref _self3402534032_ '2))
                     (_clauses34052_ _e3403034049_))
                (_K3402834043_ _clauses34052_))
              (_E3402734036_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self33865_)
      (let* ((_self3386633874_ _self33865_)
             (_E3386833878_
              (lambda () (error '"No clause matching" _self3386633874_)))
             (_K3386933884_
              (lambda (_dispatch33881_ _table33882_)
                (cons '@kw-lambda
                      (cons _table33882_ (cons _dispatch33881_ '()))))))
        (if (##structure-instance-of? _self3386633874_ 'gxc#!kw-lambda::t)
            (let* ((_e3387033887_ (##vector-ref _self3386633874_ '1))
                   (_e3387133890_ (##vector-ref _self3386633874_ '2))
                   (_table33893_ _e3387133890_)
                   (_e3387233895_ (##vector-ref _self3386633874_ '3))
                   (_dispatch33898_ _e3387233895_))
              (_K3386933884_ _dispatch33898_ _table33893_))
            (_E3386833878_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self33708_)
      (let* ((_self3370933717_ _self33708_)
             (_E3371133721_
              (lambda () (error '"No clause matching" _self3370933717_)))
             (_K3371233727_
              (lambda (_main33724_ _keys33725_)
                (cons '@kw-lambda-dispatch
                      (cons _keys33725_ (cons _main33724_ '()))))))
        (if (##structure-instance-of?
             _self3370933717_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e3371333730_ (##vector-ref _self3370933717_ '1))
                   (_e3371433733_ (##vector-ref _self3370933717_ '2))
                   (_keys33736_ _e3371433733_)
                   (_e3371533738_ (##vector-ref _self3370933717_ '3))
                   (_main33741_ _e3371533738_))
              (_K3371233727_ _main33741_ _keys33736_))
            (_E3371133721_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
