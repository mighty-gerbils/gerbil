(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj48395 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj48395) __obj48395))))))
  (define gxc#optimize!
    (lambda (_ctx48088_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx48088_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx48088_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code48091_
                  (gxc#optimize-source
                   (##structure-ref _ctx48088_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx48088_
              _code48091_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx48033_)
      (letrec* ((_deps48035_
                 (let* ((_imports48079_
                         (##structure-ref
                          _ctx48033_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e48081_ (gx#core-context-prelude__% _ctx48033_)))
                   (if _$e48081_
                       ((lambda (_g4808348085_)
                          (cons _g4808348085_ _imports48079_))
                        _$e48081_)
                       _imports48079_))))
        (let _lp48037_ ((_rest48039_ _deps48035_))
          (let* ((_rest4804048048_ _rest48039_)
                 (_else4804248056_ (lambda () '#!void))
                 (_K4804448067_
                  (lambda (_rest48059_ _hd48060_)
                    (if (##structure-instance-of?
                         _hd48060_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd48060_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e48062_
                                       (gx#core-context-prelude__% _hd48060_)))
                                  (if _$e48062_
                                      ((lambda (_pre48065_)
                                         (_lp48037_
                                          (cons _pre48065_
                                                (##structure-ref
                                                 _hd48060_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e48062_)
                                      (_lp48037_
                                       (##structure-ref
                                        _hd48060_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd48060_)))
                          (_lp48037_ _rest48059_))
                        (if (##structure-instance-of?
                             _hd48060_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd48060_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp48037_
                                     (##structure-ref
                                      _hd48060_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd48060_)))
                              (_lp48037_ _rest48059_))
                            (if (##structure-direct-instance-of?
                                 _hd48060_
                                 'gx#module-import::t)
                                (_lp48037_
                                 (cons (##direct-structure-ref
                                        _hd48060_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest48059_))
                                (if (##structure-direct-instance-of?
                                     _hd48060_
                                     'gx#module-export::t)
                                    (_lp48037_
                                     (cons (##direct-structure-ref
                                            _hd48060_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest48059_))
                                    (if (##structure-direct-instance-of?
                                         _hd48060_
                                         'gx#import-set::t)
                                        (_lp48037_
                                         (cons (##direct-structure-ref
                                                _hd48060_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest48059_))
                                        (error '"Unexpected module import"
                                               _hd48060_)))))))))
            (if (##pair? _rest4804048048_)
                (let ((_hd4804548070_ (##car _rest4804048048_))
                      (_tl4804648072_ (##cdr _rest4804048048_)))
                  (let* ((_hd48075_ _hd4804548070_)
                         (_rest48077_ _tl4804648072_))
                    (_K4804448067_ _rest48077_ _hd48075_)))
                (_else4804248056_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx48013_)
      (if (if (##structure-instance-of? _ctx48013_ 'gx#module-context::t)
              (list? (##structure-ref _ctx48013_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht48015_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id48017_
                  (##structure-ref _ctx48013_ '1 gx#expander-context::t '#f))
                 (_mod48019_ (table-ref _ht48015_ _id48017_ '#f)))
            (let ((_$e48022_ _mod48019_))
              (if _$e48022_
                  _$e48022_
                  (let* ((_mod48025_ (gxc#optimizer-import-ssxi _ctx48013_))
                         (_val48030_
                          (let ((_$e48027_ _mod48025_))
                            (if _$e48027_ _$e48027_ '#!void))))
                    (begin
                      (table-set! _ht48015_ _id48017_ _val48030_)
                      _val48030_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47990_)
      (letrec ((_catch-e47992_
                (lambda (_exn48011_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47990_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn48011_))
                        '#!void)
                    '#f)))
               (_import-e47993_
                (lambda ()
                  (let* ((_str-id47996_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47990_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path48004_
                          (let ((_odir4799747999_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4799747999_
                                (let ((_odir48002_ _odir4799747999_))
                                  (path-expand
                                   (string-append _str-id47996_ '".ss")
                                   _odir48002_))
                                '#f)))
                         (_library-path48006_
                          (string->symbol
                           (string-append '":" _str-id47996_ '".ss")))
                         (_ssxi-path48008_
                          (if (if _artefact-path48004_
                                  (file-exists? _artefact-path48004_)
                                  '#f)
                              _artefact-path48004_
                              _library-path48006_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path48008_)
                      (gx#import-module__% _ssxi-path48008_ '#t '#t))))))
        (if (##structure-ref _ctx47990_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47992_ _import-e47993_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47984_)
      (begin
        (gxc#apply-collect-mutators _stx47984_)
        (let ((_stx47986_ (gxc#apply-lift-top-lambdas _stx47984_)))
          (begin
            (gxc#apply-collect-type-info _stx47986_)
            (let ((_stx47988_ (gxc#apply-optimize-annotated _stx47986_)))
              (gxc#apply-optimize-call _stx47988_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl47981_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47981_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47981_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47981_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47981_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47981_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47981_ '%#call gxc#generate-ssxi-call%)
           _tbl47981_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47974_ . _args47976_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47974_ _args47976_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47935_)
      (let* ((_g4793747947_
              (lambda (_g4793847944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4793847944_)))
             (_g4793647971_
              (lambda (_g4793847950_)
                (if (gx#stx-pair? _g4793847950_)
                    (let ((_e4794047952_ (gx#stx-e _g4793847950_)))
                      (let ((_hd4794147955_ (##car _e4794047952_))
                            (_tl4794247957_ (##cdr _e4794047952_)))
                        ((lambda (_L47960_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47935_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4794247957_)))
                    (_g4793747947_ _g4793847950_)))))
        (_g4793647971_ _stx47935_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47875_)
      (let* ((_g4787747891_
              (lambda (_g4787847888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4787847888_)))
             (_g4787647932_
              (lambda (_g4787847894_)
                (if (gx#stx-pair? _g4787847894_)
                    (let ((_e4788147896_ (gx#stx-e _g4787847894_)))
                      (let ((_hd4788247899_ (##car _e4788147896_))
                            (_tl4788347901_ (##cdr _e4788147896_)))
                        (if (gx#stx-pair? _tl4788347901_)
                            (let ((_e4788447904_ (gx#stx-e _tl4788347901_)))
                              (let ((_hd4788547907_ (##car _e4788447904_))
                                    (_tl4788647909_ (##cdr _e4788447904_)))
                                ((lambda (_L47912_ _L47913_)
                                   (let* ((_ctx47926_
                                           (gx#syntax-local-e__0 _L47913_))
                                          (_code47928_
                                           (##structure-ref
                                            _ctx47926_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47928_))
                                      gx#current-expander-context
                                      _ctx47926_)))
                                 _tl4788647909_
                                 _hd4788547907_)))
                            (_g4787747891_ _g4787847894_))))
                    (_g4787747891_ _g4787847894_)))))
        (_g4787647932_ _stx47875_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47685_)
      (letrec ((_generate-e47687_
                (lambda (_id47864_)
                  (let* ((_sym47866_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47864_)
                              '#f))
                         (_$e47868_
                          (if _sym47866_
                              (gxc#optimizer-lookup-type _sym47866_)
                              '#f)))
                    (if _$e47868_
                        ((lambda (_type47871_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47866_)
                             (let ((_typedecl47873_
                                    (call-method _type47871_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47866_
                                           (cons _typedecl47873_ '()))))))
                         _$e47868_)
                        '(begin))))))
        (let* ((___stx4809448095_ _stx47685_)
               (_g4769047728_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4809448095_))))
          (let ((___kont4809648097_
                 (lambda (_L47846_) (_generate-e47687_ _L47846_)))
                (___kont4809848099_
                 (lambda (_L47781_)
                   (let ((_types47807_
                          (map _generate-e47687_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4779947802_ _g4780047804_)
                                           (cons _g4779947802_ _g4780047804_))
                                         '()
                                         _L47781_)))))
                     (cons 'begin _types47807_)))))
            (let ((___match4814948150_
                   (lambda (_e4770647733_
                            _hd4770747736_
                            _tl4770847738_
                            _e4770947741_
                            _hd4771047744_
                            _tl4771147746_
                            ___splice4810048101_
                            _target4771247749_
                            _tl4771447751_)
                     (letrec ((_loop4771547754_
                               (lambda (_hd4771347757_ _id4771947759_)
                                 (if (gx#stx-pair? _hd4771347757_)
                                     (let ((_e4771647762_
                                            (gx#stx-e _hd4771347757_)))
                                       (let ((_lp-tl4771847767_
                                              (##cdr _e4771647762_))
                                             (_lp-hd4771747765_
                                              (##car _e4771647762_)))
                                         (_loop4771547754_
                                          _lp-tl4771847767_
                                          (cons _lp-hd4771747765_
                                                _id4771947759_))))
                                     (let ((_id4772047770_
                                            (reverse _id4771947759_)))
                                       (if (gx#stx-pair? _tl4771147746_)
                                           (let ((_e4772147773_
                                                  (gx#stx-e _tl4771147746_)))
                                             (let ((_tl4772347778_
                                                    (##cdr _e4772147773_))
                                                   (_hd4772247776_
                                                    (##car _e4772147773_)))
                                               (if (gx#stx-null?
                                                    _tl4772347778_)
                                                   (___kont4809848099_
                                                    _id4772047770_)
                                                   (_g4769047728_))))
                                           (_g4769047728_)))))))
                       (_loop4771547754_ _target4771247749_ '())))))
              (if (gx#stx-pair? ___stx4809448095_)
                  (let ((_e4769347814_ (gx#stx-e ___stx4809448095_)))
                    (let ((_tl4769547819_ (##cdr _e4769347814_))
                          (_hd4769447817_ (##car _e4769347814_)))
                      (if (gx#stx-pair? _tl4769547819_)
                          (let ((_e4769647822_ (gx#stx-e _tl4769547819_)))
                            (let ((_tl4769847827_ (##cdr _e4769647822_))
                                  (_hd4769747825_ (##car _e4769647822_)))
                              (if (gx#stx-pair? _hd4769747825_)
                                  (let ((_e4769947830_
                                         (gx#stx-e _hd4769747825_)))
                                    (let ((_tl4770147835_
                                           (##cdr _e4769947830_))
                                          (_hd4770047833_
                                           (##car _e4769947830_)))
                                      (if (gx#stx-null? _tl4770147835_)
                                          (if (gx#stx-pair? _tl4769847827_)
                                              (let ((_e4770247838_
                                                     (gx#stx-e
                                                      _tl4769847827_)))
                                                (let ((_tl4770447843_
                                                       (##cdr _e4770247838_))
                                                      (_hd4770347841_
                                                       (##car _e4770247838_)))
                                                  (if (gx#stx-null?
                                                       _tl4770447843_)
                                                      (___kont4809648097_
                                                       _hd4770047833_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4769747825_)
                                                          (let ((___splice4810048101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4769747825_ '0)))
                    (let ((_tl4771447751_
                           (##vector-ref ___splice4810048101_ '1))
                          (_target4771247749_
                           (##vector-ref ___splice4810048101_ '0)))
                      (if (gx#stx-null? _tl4771447751_)
                          (___match4814948150_
                           _e4769347814_
                           _hd4769447817_
                           _tl4769547819_
                           _e4769647822_
                           _hd4769747825_
                           _tl4769847827_
                           ___splice4810048101_
                           _target4771247749_
                           _tl4771447751_)
                          (_g4769047728_))))
                  (_g4769047728_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4769747825_)
                                                  (let ((___splice4810048101_
                                                         (gx#syntax-split-splice
                                                          _hd4769747825_
                                                          '0)))
                                                    (let ((_tl4771447751_
                                                           (##vector-ref
                                                            ___splice4810048101_
                                                            '1))
                                                          (_target4771247749_
                                                           (##vector-ref
                                                            ___splice4810048101_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4771447751_)
                                                          (___match4814948150_
                                                           _e4769347814_
                                                           _hd4769447817_
                                                           _tl4769547819_
                                                           _e4769647822_
                                                           _hd4769747825_
                                                           _tl4769847827_
                                                           ___splice4810048101_
                                                           _target4771247749_
                                                           _tl4771447751_)
                                                          (_g4769047728_))))
                                                  (_g4769047728_)))
                                          (if (gx#stx-pair/null?
                                               _hd4769747825_)
                                              (let ((___splice4810048101_
                                                     (gx#syntax-split-splice
                                                      _hd4769747825_
                                                      '0)))
                                                (let ((_tl4771447751_
                                                       (##vector-ref
                                                        ___splice4810048101_
                                                        '1))
                                                      (_target4771247749_
                                                       (##vector-ref
                                                        ___splice4810048101_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4771447751_)
                                                      (___match4814948150_
                                                       _e4769347814_
                                                       _hd4769447817_
                                                       _tl4769547819_
                                                       _e4769647822_
                                                       _hd4769747825_
                                                       _tl4769847827_
                                                       ___splice4810048101_
                                                       _target4771247749_
                                                       _tl4771447751_)
                                                      (_g4769047728_))))
                                              (_g4769047728_)))))
                                  (if (gx#stx-pair/null? _hd4769747825_)
                                      (let ((___splice4810048101_
                                             (gx#syntax-split-splice
                                              _hd4769747825_
                                              '0)))
                                        (let ((_tl4771447751_
                                               (##vector-ref
                                                ___splice4810048101_
                                                '1))
                                              (_target4771247749_
                                               (##vector-ref
                                                ___splice4810048101_
                                                '0)))
                                          (if (gx#stx-null? _tl4771447751_)
                                              (___match4814948150_
                                               _e4769347814_
                                               _hd4769447817_
                                               _tl4769547819_
                                               _e4769647822_
                                               _hd4769747825_
                                               _tl4769847827_
                                               ___splice4810048101_
                                               _target4771247749_
                                               _tl4771447751_)
                                              (_g4769047728_))))
                                      (_g4769047728_)))))
                          (_g4769047728_))))
                  (_g4769047728_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx47239_)
      (let* ((___stx4815248153_ _stx47239_)
             (_g4724347345_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4815248153_))))
        (let ((___kont4815448155_
               (lambda (_L47635_ _L47636_ _L47637_ _L47638_ _L47639_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47638_)
                             (cons (gx#stx-e _L47637_)
                                   (cons (gxc#identifier-symbol _L47636_)
                                         (cons (gx#stx-e _L47635_) '())))))))
              (___kont4815648157_
               (lambda (_L47461_ _L47462_ _L47463_ _L47464_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47463_)
                             (cons (gx#stx-e _L47462_)
                                   (cons (gxc#identifier-symbol _L47461_)
                                         (cons '#f '())))))))
              (___kont4815848159_ (lambda () '(begin))))
          (let ((___match4828748288_
                 (lambda (_e4725047507_
                          _hd4725147510_
                          _tl4725247512_
                          _e4725347515_
                          _hd4725447518_
                          _tl4725547520_
                          _e4725647523_
                          _hd4725747526_
                          _tl4725847528_
                          _e4725947531_
                          _hd4726047534_
                          _tl4726147536_
                          _e4726247539_
                          _hd4726347542_
                          _tl4726447544_
                          _e4726547547_
                          _hd4726647550_
                          _tl4726747552_
                          _e4726847555_
                          _hd4726947558_
                          _tl4727047560_
                          _e4727147563_
                          _hd4727247566_
                          _tl4727347568_
                          _e4727447571_
                          _hd4727547574_
                          _tl4727647576_
                          _e4727747579_
                          _hd4727847582_
                          _tl4727947584_
                          _e4728047587_
                          _hd4728147590_
                          _tl4728247592_
                          _e4728347595_
                          _hd4728447598_
                          _tl4728547600_
                          _e4728647603_
                          _hd4728747606_
                          _tl4728847608_
                          _e4728947611_
                          _hd4729047614_
                          _tl4729147616_
                          _e4729247619_
                          _hd4729347622_
                          _tl4729447624_
                          _e4729547627_
                          _hd4729647630_
                          _tl4729747632_)
                   (let ((_L47635_ _hd4729647630_)
                         (_L47636_ _hd4728747606_)
                         (_L47637_ _hd4727847582_)
                         (_L47638_ _hd4726947558_)
                         (_L47639_ _hd4726047534_))
                     (if (gxc#runtime-identifier=? _L47639_ 'bind-method!)
                         (___kont4815448155_
                          _L47635_
                          _L47636_
                          _L47637_
                          _L47638_
                          _L47639_)
                         (___kont4815848159_))))))
            (if (gx#stx-pair? ___stx4815248153_)
                (let ((_e4725047507_ (gx#stx-e ___stx4815248153_)))
                  (let ((_tl4725247512_ (##cdr _e4725047507_))
                        (_hd4725147510_ (##car _e4725047507_)))
                    (if (gx#stx-pair? _tl4725247512_)
                        (let ((_e4725347515_ (gx#stx-e _tl4725247512_)))
                          (let ((_tl4725547520_ (##cdr _e4725347515_))
                                (_hd4725447518_ (##car _e4725347515_)))
                            (if (gx#stx-pair? _hd4725447518_)
                                (let ((_e4725647523_
                                       (gx#stx-e _hd4725447518_)))
                                  (let ((_tl4725847528_ (##cdr _e4725647523_))
                                        (_hd4725747526_ (##car _e4725647523_)))
                                    (if (gx#identifier? _hd4725747526_)
                                        (if (gx#stx-eq? '%#ref _hd4725747526_)
                                            (if (gx#stx-pair? _tl4725847528_)
                                                (let ((_e4725947531_
                                                       (gx#stx-e
                                                        _tl4725847528_)))
                                                  (let ((_tl4726147536_
                                                         (##cdr _e4725947531_))
                                                        (_hd4726047534_
                                                         (##car _e4725947531_)))
                                                    (if (gx#stx-null?
                                                         _tl4726147536_)
                                                        (if (gx#stx-pair?
                                                             _tl4725547520_)
                                                            (let ((_e4726247539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4725547520_)))
                      (let ((_tl4726447544_ (##cdr _e4726247539_))
                            (_hd4726347542_ (##car _e4726247539_)))
                        (if (gx#stx-pair? _hd4726347542_)
                            (let ((_e4726547547_ (gx#stx-e _hd4726347542_)))
                              (let ((_tl4726747552_ (##cdr _e4726547547_))
                                    (_hd4726647550_ (##car _e4726547547_)))
                                (if (gx#identifier? _hd4726647550_)
                                    (if (gx#stx-eq? '%#ref _hd4726647550_)
                                        (if (gx#stx-pair? _tl4726747552_)
                                            (let ((_e4726847555_
                                                   (gx#stx-e _tl4726747552_)))
                                              (let ((_tl4727047560_
                                                     (##cdr _e4726847555_))
                                                    (_hd4726947558_
                                                     (##car _e4726847555_)))
                                                (if (gx#stx-null?
                                                     _tl4727047560_)
                                                    (if (gx#stx-pair?
                                                         _tl4726447544_)
                                                        (let ((_e4727147563_
                                                               (gx#stx-e
                                                                _tl4726447544_)))
                                                          (let ((_tl4727347568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4727147563_))
                        (_hd4727247566_ (##car _e4727147563_)))
                    (if (gx#stx-pair? _hd4727247566_)
                        (let ((_e4727447571_ (gx#stx-e _hd4727247566_)))
                          (let ((_tl4727647576_ (##cdr _e4727447571_))
                                (_hd4727547574_ (##car _e4727447571_)))
                            (if (gx#identifier? _hd4727547574_)
                                (if (gx#stx-eq? '%#quote _hd4727547574_)
                                    (if (gx#stx-pair? _tl4727647576_)
                                        (let ((_e4727747579_
                                               (gx#stx-e _tl4727647576_)))
                                          (let ((_tl4727947584_
                                                 (##cdr _e4727747579_))
                                                (_hd4727847582_
                                                 (##car _e4727747579_)))
                                            (if (gx#stx-null? _tl4727947584_)
                                                (if (gx#stx-pair?
                                                     _tl4727347568_)
                                                    (let ((_e4728047587_
                                                           (gx#stx-e
                                                            _tl4727347568_)))
                                                      (let ((_tl4728247592_
                                                             (##cdr _e4728047587_))
                                                            (_hd4728147590_
                                                             (##car _e4728047587_)))
                                                        (if (gx#stx-pair?
                                                             _hd4728147590_)
                                                            (let ((_e4728347595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4728147590_)))
                      (let ((_tl4728547600_ (##cdr _e4728347595_))
                            (_hd4728447598_ (##car _e4728347595_)))
                        (if (gx#identifier? _hd4728447598_)
                            (if (gx#stx-eq? '%#ref _hd4728447598_)
                                (if (gx#stx-pair? _tl4728547600_)
                                    (let ((_e4728647603_
                                           (gx#stx-e _tl4728547600_)))
                                      (let ((_tl4728847608_
                                             (##cdr _e4728647603_))
                                            (_hd4728747606_
                                             (##car _e4728647603_)))
                                        (if (gx#stx-null? _tl4728847608_)
                                            (if (gx#stx-pair? _tl4728247592_)
                                                (let ((_e4728947611_
                                                       (gx#stx-e
                                                        _tl4728247592_)))
                                                  (let ((_tl4729147616_
                                                         (##cdr _e4728947611_))
                                                        (_hd4729047614_
                                                         (##car _e4728947611_)))
                                                    (if (gx#stx-pair?
                                                         _hd4729047614_)
                                                        (let ((_e4729247619_
                                                               (gx#stx-e
                                                                _hd4729047614_)))
                                                          (let ((_tl4729447624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4729247619_))
                        (_hd4729347622_ (##car _e4729247619_)))
                    (if (gx#identifier? _hd4729347622_)
                        (if (gx#stx-eq? '%#quote _hd4729347622_)
                            (if (gx#stx-pair? _tl4729447624_)
                                (let ((_e4729547627_
                                       (gx#stx-e _tl4729447624_)))
                                  (let ((_tl4729747632_ (##cdr _e4729547627_))
                                        (_hd4729647630_ (##car _e4729547627_)))
                                    (if (gx#stx-null? _tl4729747632_)
                                        (if (gx#stx-null? _tl4729147616_)
                                            (___match4828748288_
                                             _e4725047507_
                                             _hd4725147510_
                                             _tl4725247512_
                                             _e4725347515_
                                             _hd4725447518_
                                             _tl4725547520_
                                             _e4725647523_
                                             _hd4725747526_
                                             _tl4725847528_
                                             _e4725947531_
                                             _hd4726047534_
                                             _tl4726147536_
                                             _e4726247539_
                                             _hd4726347542_
                                             _tl4726447544_
                                             _e4726547547_
                                             _hd4726647550_
                                             _tl4726747552_
                                             _e4726847555_
                                             _hd4726947558_
                                             _tl4727047560_
                                             _e4727147563_
                                             _hd4727247566_
                                             _tl4727347568_
                                             _e4727447571_
                                             _hd4727547574_
                                             _tl4727647576_
                                             _e4727747579_
                                             _hd4727847582_
                                             _tl4727947584_
                                             _e4728047587_
                                             _hd4728147590_
                                             _tl4728247592_
                                             _e4728347595_
                                             _hd4728447598_
                                             _tl4728547600_
                                             _e4728647603_
                                             _hd4728747606_
                                             _tl4728847608_
                                             _e4728947611_
                                             _hd4729047614_
                                             _tl4729147616_
                                             _e4729247619_
                                             _hd4729347622_
                                             _tl4729447624_
                                             _e4729547627_
                                             _hd4729647630_
                                             _tl4729747632_)
                                            (___kont4815848159_))
                                        (___kont4815848159_))))
                                (___kont4815848159_))
                            (___kont4815848159_))
                        (___kont4815848159_))))
                (___kont4815848159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4728247592_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47461_
                                                               _hd4728747606_)
                                                              (_L47462_
                                                               _hd4727847582_)
                                                              (_L47463_
                                                               _hd4726947558_)
                                                              (_L47464_
                                                               _hd4726047534_))
                                                          (___kont4815648157_
                                                           _L47461_
                                                           _L47462_
                                                           _L47463_
                                                           _L47464_))
                                                        (___kont4815848159_))
                                                    (___kont4815848159_)))
                                            (___kont4815848159_))))
                                    (___kont4815848159_))
                                (___kont4815848159_))
                            (___kont4815848159_))))
                    (___kont4815848159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4815848159_))
                                                (___kont4815848159_))))
                                        (___kont4815848159_))
                                    (___kont4815848159_))
                                (___kont4815848159_))))
                        (___kont4815848159_))))
                (___kont4815848159_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4815848159_))))
                                            (___kont4815848159_))
                                        (___kont4815848159_))
                                    (___kont4815848159_))))
                            (___kont4815848159_))))
                    (___kont4815848159_))
                (___kont4815848159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4815848159_))
                                            (___kont4815848159_))
                                        (___kont4815848159_))))
                                (___kont4815848159_))))
                        (___kont4815848159_))))
                (___kont4815848159_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self47215_)
      (let* ((_self4721647222_ _self47215_)
             (_E4721847226_
              (lambda () (error '"No clause matching" _self4721647222_)))
             (_K4721947231_
              (lambda (_alias-id47229_)
                (cons '@alias (cons _alias-id47229_ '())))))
        (if (##structure-instance-of? _self4721647222_ 'gxc#!alias::t)
            (let* ((_e4722047234_ (##vector-ref _self4721647222_ '1))
                   (_alias-id47237_ _e4722047234_))
              (_K4721947231_ _alias-id47237_))
            (_E4721847226_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self47037_)
      (let* ((_self4703847049_ _self47037_)
             (_E4704047053_
              (lambda () (error '"No clause matching" _self4703847049_)))
             (_K4704147062_
              (lambda (_plist47056_
                       _ctor47057_
                       _fields47058_
                       _super47059_
                       _type-id47060_)
                (cons '@struct-type
                      (cons _type-id47060_
                            (cons _super47059_
                                  (cons _fields47058_
                                        (cons _ctor47057_
                                              (cons _plist47056_ '())))))))))
        (if (##structure-instance-of? _self4703847049_ 'gxc#!struct-type::t)
            (let* ((_e4704247065_ (##vector-ref _self4703847049_ '1))
                   (_type-id47068_ _e4704247065_)
                   (_e4704347070_ (##vector-ref _self4703847049_ '2))
                   (_super47073_ _e4704347070_)
                   (_e4704447075_ (##vector-ref _self4703847049_ '3))
                   (_fields47078_ _e4704447075_)
                   (_e4704547080_ (##vector-ref _self4703847049_ '4))
                   (_e4704647083_ (##vector-ref _self4703847049_ '5))
                   (_ctor47086_ _e4704647083_)
                   (_e4704747088_ (##vector-ref _self4703847049_ '6))
                   (_plist47091_ _e4704747088_))
              (_K4704147062_
               _plist47091_
               _ctor47086_
               _fields47078_
               _super47073_
               _type-id47068_))
            (_E4704047053_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46891_)
      (let* ((_self4689246898_ _self46891_)
             (_E4689446902_
              (lambda () (error '"No clause matching" _self4689246898_)))
             (_K4689546907_
              (lambda (_struct-t46905_)
                (cons '@struct-pred (cons _struct-t46905_ '())))))
        (if (##structure-instance-of? _self4689246898_ 'gxc#!struct-pred::t)
            (let* ((_e4689646910_ (##vector-ref _self4689246898_ '1))
                   (_struct-t46913_ _e4689646910_))
              (_K4689546907_ _struct-t46913_))
            (_E4689446902_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46745_)
      (let* ((_self4674646752_ _self46745_)
             (_E4674846756_
              (lambda () (error '"No clause matching" _self4674646752_)))
             (_K4674946761_
              (lambda (_struct-t46759_)
                (cons '@struct-cons (cons _struct-t46759_ '())))))
        (if (##structure-instance-of? _self4674646752_ 'gxc#!struct-cons::t)
            (let* ((_e4675046764_ (##vector-ref _self4674646752_ '1))
                   (_struct-t46767_ _e4675046764_))
              (_K4674946761_ _struct-t46767_))
            (_E4674846756_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46585_)
      (let* ((_self4658646594_ _self46585_)
             (_E4658846598_
              (lambda () (error '"No clause matching" _self4658646594_)))
             (_K4658946605_
              (lambda (_unchecked?46601_ _off46602_ _struct-t46603_)
                (cons '@struct-getf
                      (cons _struct-t46603_
                            (cons _off46602_ (cons _unchecked?46601_ '())))))))
        (if (##structure-instance-of? _self4658646594_ 'gxc#!struct-getf::t)
            (let* ((_e4659046608_ (##vector-ref _self4658646594_ '1))
                   (_struct-t46611_ _e4659046608_)
                   (_e4659146613_ (##vector-ref _self4658646594_ '2))
                   (_off46616_ _e4659146613_)
                   (_e4659246618_ (##vector-ref _self4658646594_ '3))
                   (_unchecked?46621_ _e4659246618_))
              (_K4658946605_ _unchecked?46621_ _off46616_ _struct-t46611_))
            (_E4658846598_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46425_)
      (let* ((_self4642646434_ _self46425_)
             (_E4642846438_
              (lambda () (error '"No clause matching" _self4642646434_)))
             (_K4642946445_
              (lambda (_unchecked?46441_ _off46442_ _struct-t46443_)
                (cons '@struct-setf
                      (cons _struct-t46443_
                            (cons _off46442_ (cons _unchecked?46441_ '())))))))
        (if (##structure-instance-of? _self4642646434_ 'gxc#!struct-setf::t)
            (let* ((_e4643046448_ (##vector-ref _self4642646434_ '1))
                   (_struct-t46451_ _e4643046448_)
                   (_e4643146453_ (##vector-ref _self4642646434_ '2))
                   (_off46456_ _e4643146453_)
                   (_e4643246458_ (##vector-ref _self4642646434_ '3))
                   (_unchecked?46461_ _e4643246458_))
              (_K4642946445_ _unchecked?46461_ _off46456_ _struct-t46451_))
            (_E4642846438_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self46251_)
      (let* ((_self4625246262_ _self46251_)
             (_E4625446266_
              (lambda () (error '"No clause matching" _self4625246262_)))
             (_K4625546277_
              (lambda (_typedecl46269_
                       _inline46270_
                       _dispatch46271_
                       _arity46272_)
                (if _inline46270_
                    (let ((_$e46274_ _typedecl46269_))
                      (if _$e46274_
                          _$e46274_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity46272_ (cons _dispatch46271_ '())))))))
        (if (##structure-instance-of? _self4625246262_ 'gxc#!lambda::t)
            (let* ((_e4625646280_ (##vector-ref _self4625246262_ '1))
                   (_e4625746283_ (##vector-ref _self4625246262_ '2))
                   (_arity46286_ _e4625746283_)
                   (_e4625846288_ (##vector-ref _self4625246262_ '3))
                   (_dispatch46291_ _e4625846288_)
                   (_e4625946293_ (##vector-ref _self4625246262_ '4))
                   (_inline46296_ _e4625946293_)
                   (_e4626046298_ (##vector-ref _self4625246262_ '5))
                   (_typedecl46301_ _e4626046298_))
              (_K4625546277_
               _typedecl46301_
               _inline46296_
               _dispatch46291_
               _arity46286_))
            (_E4625446266_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self46062_)
      (letrec ((_clause-e46064_
                (lambda (_clause46094_)
                  (let* ((_clause4609546103_ _clause46094_)
                         (_E4609746107_
                          (lambda ()
                            (error '"No clause matching" _clause4609546103_)))
                         (_K4609846113_
                          (lambda (_dispatch46110_ _arity46111_)
                            (cons _arity46111_ (cons _dispatch46110_ '())))))
                    (if (##structure-instance-of?
                         _clause4609546103_
                         'gxc#!lambda::t)
                        (let* ((_e4609946116_
                                (##vector-ref _clause4609546103_ '1))
                               (_e4610046119_
                                (##vector-ref _clause4609546103_ '2))
                               (_arity46122_ _e4610046119_)
                               (_e4610146124_
                                (##vector-ref _clause4609546103_ '3))
                               (_dispatch46127_ _e4610146124_))
                          (_K4609846113_ _dispatch46127_ _arity46122_))
                        (_E4609746107_))))))
        (let* ((_self4606546072_ _self46062_)
               (_E4606746076_
                (lambda () (error '"No clause matching" _self4606546072_)))
               (_K4606846083_
                (lambda (_clauses46079_)
                  (let ((_clauses46081_ (map _clause-e46064_ _clauses46079_)))
                    (cons '@case-lambda _clauses46081_)))))
          (if (##structure-instance-of? _self4606546072_ 'gxc#!case-lambda::t)
              (let* ((_e4606946086_ (##vector-ref _self4606546072_ '1))
                     (_e4607046089_ (##vector-ref _self4606546072_ '2))
                     (_clauses46092_ _e4607046089_))
                (_K4606846083_ _clauses46092_))
              (_E4606746076_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45905_)
      (let* ((_self4590645914_ _self45905_)
             (_E4590845918_
              (lambda () (error '"No clause matching" _self4590645914_)))
             (_K4590945924_
              (lambda (_dispatch45921_ _table45922_)
                (cons '@kw-lambda
                      (cons _table45922_ (cons _dispatch45921_ '()))))))
        (if (##structure-instance-of? _self4590645914_ 'gxc#!kw-lambda::t)
            (let* ((_e4591045927_ (##vector-ref _self4590645914_ '1))
                   (_e4591145930_ (##vector-ref _self4590645914_ '2))
                   (_table45933_ _e4591145930_)
                   (_e4591245935_ (##vector-ref _self4590645914_ '3))
                   (_dispatch45938_ _e4591245935_))
              (_K4590945924_ _dispatch45938_ _table45933_))
            (_E4590845918_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45748_)
      (let* ((_self4574945757_ _self45748_)
             (_E4575145761_
              (lambda () (error '"No clause matching" _self4574945757_)))
             (_K4575245767_
              (lambda (_main45764_ _keys45765_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45765_ (cons _main45764_ '()))))))
        (if (##structure-instance-of?
             _self4574945757_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4575345770_ (##vector-ref _self4574945757_ '1))
                   (_e4575445773_ (##vector-ref _self4574945757_ '2))
                   (_keys45776_ _e4575445773_)
                   (_e4575545778_ (##vector-ref _self4574945757_ '3))
                   (_main45781_ _e4575545778_))
              (_K4575245767_ _main45781_ _keys45776_))
            (_E4575145761_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
