(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj47996 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj47996) __obj47996))))))
  (define gxc#optimize!
    (lambda (_ctx47689_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47689_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47689_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47692_
                  (gxc#optimize-source
                   (##structure-ref _ctx47689_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47689_
              _code47692_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47634_)
      (letrec* ((_deps47636_
                 (let* ((_imports47680_
                         (##structure-ref
                          _ctx47634_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47682_ (gx#core-context-prelude__% _ctx47634_)))
                   (if _$e47682_
                       ((lambda (_g4768447686_)
                          (cons _g4768447686_ _imports47680_))
                        _$e47682_)
                       _imports47680_))))
        (let _lp47638_ ((_rest47640_ _deps47636_))
          (let* ((_rest4764147649_ _rest47640_)
                 (_else4764347657_ (lambda () '#!void))
                 (_K4764547668_
                  (lambda (_rest47660_ _hd47661_)
                    (if (##structure-instance-of?
                         _hd47661_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47661_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47663_
                                       (gx#core-context-prelude__% _hd47661_)))
                                  (if _$e47663_
                                      ((lambda (_pre47666_)
                                         (_lp47638_
                                          (cons _pre47666_
                                                (##structure-ref
                                                 _hd47661_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47663_)
                                      (_lp47638_
                                       (##structure-ref
                                        _hd47661_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47661_)))
                          (_lp47638_ _rest47660_))
                        (if (##structure-instance-of?
                             _hd47661_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47661_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47638_
                                     (##structure-ref
                                      _hd47661_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47661_)))
                              (_lp47638_ _rest47660_))
                            (if (##structure-direct-instance-of?
                                 _hd47661_
                                 'gx#module-import::t)
                                (_lp47638_
                                 (cons (##direct-structure-ref
                                        _hd47661_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47660_))
                                (if (##structure-direct-instance-of?
                                     _hd47661_
                                     'gx#module-export::t)
                                    (_lp47638_
                                     (cons (##direct-structure-ref
                                            _hd47661_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47660_))
                                    (if (##structure-direct-instance-of?
                                         _hd47661_
                                         'gx#import-set::t)
                                        (_lp47638_
                                         (cons (##direct-structure-ref
                                                _hd47661_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47660_))
                                        (error '"Unexpected module import"
                                               _hd47661_)))))))))
            (if (##pair? _rest4764147649_)
                (let ((_hd4764647671_ (##car _rest4764147649_))
                      (_tl4764747673_ (##cdr _rest4764147649_)))
                  (let* ((_hd47676_ _hd4764647671_)
                         (_rest47678_ _tl4764747673_))
                    (_K4764547668_ _rest47678_ _hd47676_)))
                (_else4764347657_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47614_)
      (if (if (##structure-instance-of? _ctx47614_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47614_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47616_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47618_
                  (##structure-ref _ctx47614_ '1 gx#expander-context::t '#f))
                 (_mod47620_ (table-ref _ht47616_ _id47618_ '#f)))
            (let ((_$e47623_ _mod47620_))
              (if _$e47623_
                  _$e47623_
                  (let* ((_mod47626_ (gxc#optimizer-import-ssxi _ctx47614_))
                         (_val47631_
                          (let ((_$e47628_ _mod47626_))
                            (if _$e47628_ _$e47628_ '#!void))))
                    (begin
                      (table-set! _ht47616_ _id47618_ _val47631_)
                      _val47631_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47591_)
      (letrec ((_catch-e47593_
                (lambda (_exn47612_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47591_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47612_))
                        '#!void)
                    '#f)))
               (_import-e47594_
                (lambda ()
                  (let* ((_str-id47597_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47591_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47605_
                          (let ((_odir4759847600_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4759847600_
                                (let ((_odir47603_ _odir4759847600_))
                                  (path-expand
                                   (string-append _str-id47597_ '".ss")
                                   _odir47603_))
                                '#f)))
                         (_library-path47607_
                          (string->symbol
                           (string-append '":" _str-id47597_ '".ss")))
                         (_ssxi-path47609_
                          (if (if _artefact-path47605_
                                  (file-exists? _artefact-path47605_)
                                  '#f)
                              _artefact-path47605_
                              _library-path47607_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47609_)
                      (gx#import-module__% _ssxi-path47609_ '#t '#t))))))
        (if (##structure-ref _ctx47591_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47593_ _import-e47594_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47585_)
      (begin
        (gxc#apply-collect-mutators _stx47585_)
        (let ((_stx47587_ (gxc#apply-lift-top-lambdas _stx47585_)))
          (begin
            (gxc#apply-collect-type-info _stx47587_)
            (let ((_stx47589_ (gxc#apply-optimize-annotated _stx47587_)))
              (gxc#apply-optimize-call _stx47589_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl47582_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47582_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47582_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47582_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47582_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47582_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47582_ '%#call gxc#generate-ssxi-call%)
           _tbl47582_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47575_ . _args47577_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47575_ _args47577_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47536_)
      (let* ((_g4753847548_
              (lambda (_g4753947545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4753947545_)))
             (_g4753747572_
              (lambda (_g4753947551_)
                (if (gx#stx-pair? _g4753947551_)
                    (let ((_e4754147553_ (gx#stx-e _g4753947551_)))
                      (let ((_hd4754247556_ (##car _e4754147553_))
                            (_tl4754347558_ (##cdr _e4754147553_)))
                        ((lambda (_L47561_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47536_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4754347558_)))
                    (_g4753847548_ _g4753947551_)))))
        (_g4753747572_ _stx47536_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47476_)
      (let* ((_g4747847492_
              (lambda (_g4747947489_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4747947489_)))
             (_g4747747533_
              (lambda (_g4747947495_)
                (if (gx#stx-pair? _g4747947495_)
                    (let ((_e4748247497_ (gx#stx-e _g4747947495_)))
                      (let ((_hd4748347500_ (##car _e4748247497_))
                            (_tl4748447502_ (##cdr _e4748247497_)))
                        (if (gx#stx-pair? _tl4748447502_)
                            (let ((_e4748547505_ (gx#stx-e _tl4748447502_)))
                              (let ((_hd4748647508_ (##car _e4748547505_))
                                    (_tl4748747510_ (##cdr _e4748547505_)))
                                ((lambda (_L47513_ _L47514_)
                                   (let* ((_ctx47527_
                                           (gx#syntax-local-e__0 _L47514_))
                                          (_code47529_
                                           (##structure-ref
                                            _ctx47527_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47529_))
                                      gx#current-expander-context
                                      _ctx47527_)))
                                 _tl4748747510_
                                 _hd4748647508_)))
                            (_g4747847492_ _g4747947495_))))
                    (_g4747847492_ _g4747947495_)))))
        (_g4747747533_ _stx47476_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47286_)
      (letrec ((_generate-e47288_
                (lambda (_id47465_)
                  (let* ((_sym47467_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47465_)
                              '#f))
                         (_$e47469_
                          (if _sym47467_
                              (gxc#optimizer-lookup-type _sym47467_)
                              '#f)))
                    (if _$e47469_
                        ((lambda (_type47472_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47467_)
                             (let ((_typedecl47474_
                                    (call-method _type47472_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47467_
                                           (cons _typedecl47474_ '()))))))
                         _$e47469_)
                        '(begin))))))
        (let* ((___stx4769547696_ _stx47286_)
               (_g4729147329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4769547696_))))
          (let ((___kont4769747698_
                 (lambda (_L47447_) (_generate-e47288_ _L47447_)))
                (___kont4769947700_
                 (lambda (_L47382_)
                   (let ((_types47408_
                          (map _generate-e47288_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4740047403_ _g4740147405_)
                                           (cons _g4740047403_ _g4740147405_))
                                         '()
                                         _L47382_)))))
                     (cons 'begin _types47408_)))))
            (let ((___match4775047751_
                   (lambda (_e4730747334_
                            _hd4730847337_
                            _tl4730947339_
                            _e4731047342_
                            _hd4731147345_
                            _tl4731247347_
                            ___splice4770147702_
                            _target4731347350_
                            _tl4731547352_)
                     (letrec ((_loop4731647355_
                               (lambda (_hd4731447358_ _id4732047360_)
                                 (if (gx#stx-pair? _hd4731447358_)
                                     (let ((_e4731747363_
                                            (gx#stx-e _hd4731447358_)))
                                       (let ((_lp-tl4731947368_
                                              (##cdr _e4731747363_))
                                             (_lp-hd4731847366_
                                              (##car _e4731747363_)))
                                         (_loop4731647355_
                                          _lp-tl4731947368_
                                          (cons _lp-hd4731847366_
                                                _id4732047360_))))
                                     (let ((_id4732147371_
                                            (reverse _id4732047360_)))
                                       (if (gx#stx-pair? _tl4731247347_)
                                           (let ((_e4732247374_
                                                  (gx#stx-e _tl4731247347_)))
                                             (let ((_tl4732447379_
                                                    (##cdr _e4732247374_))
                                                   (_hd4732347377_
                                                    (##car _e4732247374_)))
                                               (if (gx#stx-null?
                                                    _tl4732447379_)
                                                   (___kont4769947700_
                                                    _id4732147371_)
                                                   (_g4729147329_))))
                                           (_g4729147329_)))))))
                       (_loop4731647355_ _target4731347350_ '())))))
              (if (gx#stx-pair? ___stx4769547696_)
                  (let ((_e4729447415_ (gx#stx-e ___stx4769547696_)))
                    (let ((_tl4729647420_ (##cdr _e4729447415_))
                          (_hd4729547418_ (##car _e4729447415_)))
                      (if (gx#stx-pair? _tl4729647420_)
                          (let ((_e4729747423_ (gx#stx-e _tl4729647420_)))
                            (let ((_tl4729947428_ (##cdr _e4729747423_))
                                  (_hd4729847426_ (##car _e4729747423_)))
                              (if (gx#stx-pair? _hd4729847426_)
                                  (let ((_e4730047431_
                                         (gx#stx-e _hd4729847426_)))
                                    (let ((_tl4730247436_
                                           (##cdr _e4730047431_))
                                          (_hd4730147434_
                                           (##car _e4730047431_)))
                                      (if (gx#stx-null? _tl4730247436_)
                                          (if (gx#stx-pair? _tl4729947428_)
                                              (let ((_e4730347439_
                                                     (gx#stx-e
                                                      _tl4729947428_)))
                                                (let ((_tl4730547444_
                                                       (##cdr _e4730347439_))
                                                      (_hd4730447442_
                                                       (##car _e4730347439_)))
                                                  (if (gx#stx-null?
                                                       _tl4730547444_)
                                                      (___kont4769747698_
                                                       _hd4730147434_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4729847426_)
                                                          (let ((___splice4770147702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4729847426_ '0)))
                    (let ((_tl4731547352_
                           (##vector-ref ___splice4770147702_ '1))
                          (_target4731347350_
                           (##vector-ref ___splice4770147702_ '0)))
                      (if (gx#stx-null? _tl4731547352_)
                          (___match4775047751_
                           _e4729447415_
                           _hd4729547418_
                           _tl4729647420_
                           _e4729747423_
                           _hd4729847426_
                           _tl4729947428_
                           ___splice4770147702_
                           _target4731347350_
                           _tl4731547352_)
                          (_g4729147329_))))
                  (_g4729147329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4729847426_)
                                                  (let ((___splice4770147702_
                                                         (gx#syntax-split-splice
                                                          _hd4729847426_
                                                          '0)))
                                                    (let ((_tl4731547352_
                                                           (##vector-ref
                                                            ___splice4770147702_
                                                            '1))
                                                          (_target4731347350_
                                                           (##vector-ref
                                                            ___splice4770147702_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4731547352_)
                                                          (___match4775047751_
                                                           _e4729447415_
                                                           _hd4729547418_
                                                           _tl4729647420_
                                                           _e4729747423_
                                                           _hd4729847426_
                                                           _tl4729947428_
                                                           ___splice4770147702_
                                                           _target4731347350_
                                                           _tl4731547352_)
                                                          (_g4729147329_))))
                                                  (_g4729147329_)))
                                          (if (gx#stx-pair/null?
                                               _hd4729847426_)
                                              (let ((___splice4770147702_
                                                     (gx#syntax-split-splice
                                                      _hd4729847426_
                                                      '0)))
                                                (let ((_tl4731547352_
                                                       (##vector-ref
                                                        ___splice4770147702_
                                                        '1))
                                                      (_target4731347350_
                                                       (##vector-ref
                                                        ___splice4770147702_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4731547352_)
                                                      (___match4775047751_
                                                       _e4729447415_
                                                       _hd4729547418_
                                                       _tl4729647420_
                                                       _e4729747423_
                                                       _hd4729847426_
                                                       _tl4729947428_
                                                       ___splice4770147702_
                                                       _target4731347350_
                                                       _tl4731547352_)
                                                      (_g4729147329_))))
                                              (_g4729147329_)))))
                                  (if (gx#stx-pair/null? _hd4729847426_)
                                      (let ((___splice4770147702_
                                             (gx#syntax-split-splice
                                              _hd4729847426_
                                              '0)))
                                        (let ((_tl4731547352_
                                               (##vector-ref
                                                ___splice4770147702_
                                                '1))
                                              (_target4731347350_
                                               (##vector-ref
                                                ___splice4770147702_
                                                '0)))
                                          (if (gx#stx-null? _tl4731547352_)
                                              (___match4775047751_
                                               _e4729447415_
                                               _hd4729547418_
                                               _tl4729647420_
                                               _e4729747423_
                                               _hd4729847426_
                                               _tl4729947428_
                                               ___splice4770147702_
                                               _target4731347350_
                                               _tl4731547352_)
                                              (_g4729147329_))))
                                      (_g4729147329_)))))
                          (_g4729147329_))))
                  (_g4729147329_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx46840_)
      (let* ((___stx4775347754_ _stx46840_)
             (_g4684446946_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4775347754_))))
        (let ((___kont4775547756_
               (lambda (_L47236_ _L47237_ _L47238_ _L47239_ _L47240_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47239_)
                             (cons (gx#stx-e _L47238_)
                                   (cons (gxc#identifier-symbol _L47237_)
                                         (cons (gx#stx-e _L47236_) '())))))))
              (___kont4775747758_
               (lambda (_L47062_ _L47063_ _L47064_ _L47065_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47064_)
                             (cons (gx#stx-e _L47063_)
                                   (cons (gxc#identifier-symbol _L47062_)
                                         (cons '#f '())))))))
              (___kont4775947760_ (lambda () '(begin))))
          (let ((___match4788847889_
                 (lambda (_e4685147108_
                          _hd4685247111_
                          _tl4685347113_
                          _e4685447116_
                          _hd4685547119_
                          _tl4685647121_
                          _e4685747124_
                          _hd4685847127_
                          _tl4685947129_
                          _e4686047132_
                          _hd4686147135_
                          _tl4686247137_
                          _e4686347140_
                          _hd4686447143_
                          _tl4686547145_
                          _e4686647148_
                          _hd4686747151_
                          _tl4686847153_
                          _e4686947156_
                          _hd4687047159_
                          _tl4687147161_
                          _e4687247164_
                          _hd4687347167_
                          _tl4687447169_
                          _e4687547172_
                          _hd4687647175_
                          _tl4687747177_
                          _e4687847180_
                          _hd4687947183_
                          _tl4688047185_
                          _e4688147188_
                          _hd4688247191_
                          _tl4688347193_
                          _e4688447196_
                          _hd4688547199_
                          _tl4688647201_
                          _e4688747204_
                          _hd4688847207_
                          _tl4688947209_
                          _e4689047212_
                          _hd4689147215_
                          _tl4689247217_
                          _e4689347220_
                          _hd4689447223_
                          _tl4689547225_
                          _e4689647228_
                          _hd4689747231_
                          _tl4689847233_)
                   (let ((_L47236_ _hd4689747231_)
                         (_L47237_ _hd4688847207_)
                         (_L47238_ _hd4687947183_)
                         (_L47239_ _hd4687047159_)
                         (_L47240_ _hd4686147135_))
                     (if (gxc#runtime-identifier=? _L47240_ 'bind-method!)
                         (___kont4775547756_
                          _L47236_
                          _L47237_
                          _L47238_
                          _L47239_
                          _L47240_)
                         (___kont4775947760_))))))
            (if (gx#stx-pair? ___stx4775347754_)
                (let ((_e4685147108_ (gx#stx-e ___stx4775347754_)))
                  (let ((_tl4685347113_ (##cdr _e4685147108_))
                        (_hd4685247111_ (##car _e4685147108_)))
                    (if (gx#stx-pair? _tl4685347113_)
                        (let ((_e4685447116_ (gx#stx-e _tl4685347113_)))
                          (let ((_tl4685647121_ (##cdr _e4685447116_))
                                (_hd4685547119_ (##car _e4685447116_)))
                            (if (gx#stx-pair? _hd4685547119_)
                                (let ((_e4685747124_
                                       (gx#stx-e _hd4685547119_)))
                                  (let ((_tl4685947129_ (##cdr _e4685747124_))
                                        (_hd4685847127_ (##car _e4685747124_)))
                                    (if (gx#identifier? _hd4685847127_)
                                        (if (gx#stx-eq? '%#ref _hd4685847127_)
                                            (if (gx#stx-pair? _tl4685947129_)
                                                (let ((_e4686047132_
                                                       (gx#stx-e
                                                        _tl4685947129_)))
                                                  (let ((_tl4686247137_
                                                         (##cdr _e4686047132_))
                                                        (_hd4686147135_
                                                         (##car _e4686047132_)))
                                                    (if (gx#stx-null?
                                                         _tl4686247137_)
                                                        (if (gx#stx-pair?
                                                             _tl4685647121_)
                                                            (let ((_e4686347140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4685647121_)))
                      (let ((_tl4686547145_ (##cdr _e4686347140_))
                            (_hd4686447143_ (##car _e4686347140_)))
                        (if (gx#stx-pair? _hd4686447143_)
                            (let ((_e4686647148_ (gx#stx-e _hd4686447143_)))
                              (let ((_tl4686847153_ (##cdr _e4686647148_))
                                    (_hd4686747151_ (##car _e4686647148_)))
                                (if (gx#identifier? _hd4686747151_)
                                    (if (gx#stx-eq? '%#ref _hd4686747151_)
                                        (if (gx#stx-pair? _tl4686847153_)
                                            (let ((_e4686947156_
                                                   (gx#stx-e _tl4686847153_)))
                                              (let ((_tl4687147161_
                                                     (##cdr _e4686947156_))
                                                    (_hd4687047159_
                                                     (##car _e4686947156_)))
                                                (if (gx#stx-null?
                                                     _tl4687147161_)
                                                    (if (gx#stx-pair?
                                                         _tl4686547145_)
                                                        (let ((_e4687247164_
                                                               (gx#stx-e
                                                                _tl4686547145_)))
                                                          (let ((_tl4687447169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4687247164_))
                        (_hd4687347167_ (##car _e4687247164_)))
                    (if (gx#stx-pair? _hd4687347167_)
                        (let ((_e4687547172_ (gx#stx-e _hd4687347167_)))
                          (let ((_tl4687747177_ (##cdr _e4687547172_))
                                (_hd4687647175_ (##car _e4687547172_)))
                            (if (gx#identifier? _hd4687647175_)
                                (if (gx#stx-eq? '%#quote _hd4687647175_)
                                    (if (gx#stx-pair? _tl4687747177_)
                                        (let ((_e4687847180_
                                               (gx#stx-e _tl4687747177_)))
                                          (let ((_tl4688047185_
                                                 (##cdr _e4687847180_))
                                                (_hd4687947183_
                                                 (##car _e4687847180_)))
                                            (if (gx#stx-null? _tl4688047185_)
                                                (if (gx#stx-pair?
                                                     _tl4687447169_)
                                                    (let ((_e4688147188_
                                                           (gx#stx-e
                                                            _tl4687447169_)))
                                                      (let ((_tl4688347193_
                                                             (##cdr _e4688147188_))
                                                            (_hd4688247191_
                                                             (##car _e4688147188_)))
                                                        (if (gx#stx-pair?
                                                             _hd4688247191_)
                                                            (let ((_e4688447196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4688247191_)))
                      (let ((_tl4688647201_ (##cdr _e4688447196_))
                            (_hd4688547199_ (##car _e4688447196_)))
                        (if (gx#identifier? _hd4688547199_)
                            (if (gx#stx-eq? '%#ref _hd4688547199_)
                                (if (gx#stx-pair? _tl4688647201_)
                                    (let ((_e4688747204_
                                           (gx#stx-e _tl4688647201_)))
                                      (let ((_tl4688947209_
                                             (##cdr _e4688747204_))
                                            (_hd4688847207_
                                             (##car _e4688747204_)))
                                        (if (gx#stx-null? _tl4688947209_)
                                            (if (gx#stx-pair? _tl4688347193_)
                                                (let ((_e4689047212_
                                                       (gx#stx-e
                                                        _tl4688347193_)))
                                                  (let ((_tl4689247217_
                                                         (##cdr _e4689047212_))
                                                        (_hd4689147215_
                                                         (##car _e4689047212_)))
                                                    (if (gx#stx-pair?
                                                         _hd4689147215_)
                                                        (let ((_e4689347220_
                                                               (gx#stx-e
                                                                _hd4689147215_)))
                                                          (let ((_tl4689547225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4689347220_))
                        (_hd4689447223_ (##car _e4689347220_)))
                    (if (gx#identifier? _hd4689447223_)
                        (if (gx#stx-eq? '%#quote _hd4689447223_)
                            (if (gx#stx-pair? _tl4689547225_)
                                (let ((_e4689647228_
                                       (gx#stx-e _tl4689547225_)))
                                  (let ((_tl4689847233_ (##cdr _e4689647228_))
                                        (_hd4689747231_ (##car _e4689647228_)))
                                    (if (gx#stx-null? _tl4689847233_)
                                        (if (gx#stx-null? _tl4689247217_)
                                            (___match4788847889_
                                             _e4685147108_
                                             _hd4685247111_
                                             _tl4685347113_
                                             _e4685447116_
                                             _hd4685547119_
                                             _tl4685647121_
                                             _e4685747124_
                                             _hd4685847127_
                                             _tl4685947129_
                                             _e4686047132_
                                             _hd4686147135_
                                             _tl4686247137_
                                             _e4686347140_
                                             _hd4686447143_
                                             _tl4686547145_
                                             _e4686647148_
                                             _hd4686747151_
                                             _tl4686847153_
                                             _e4686947156_
                                             _hd4687047159_
                                             _tl4687147161_
                                             _e4687247164_
                                             _hd4687347167_
                                             _tl4687447169_
                                             _e4687547172_
                                             _hd4687647175_
                                             _tl4687747177_
                                             _e4687847180_
                                             _hd4687947183_
                                             _tl4688047185_
                                             _e4688147188_
                                             _hd4688247191_
                                             _tl4688347193_
                                             _e4688447196_
                                             _hd4688547199_
                                             _tl4688647201_
                                             _e4688747204_
                                             _hd4688847207_
                                             _tl4688947209_
                                             _e4689047212_
                                             _hd4689147215_
                                             _tl4689247217_
                                             _e4689347220_
                                             _hd4689447223_
                                             _tl4689547225_
                                             _e4689647228_
                                             _hd4689747231_
                                             _tl4689847233_)
                                            (___kont4775947760_))
                                        (___kont4775947760_))))
                                (___kont4775947760_))
                            (___kont4775947760_))
                        (___kont4775947760_))))
                (___kont4775947760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4688347193_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47062_
                                                               _hd4688847207_)
                                                              (_L47063_
                                                               _hd4687947183_)
                                                              (_L47064_
                                                               _hd4687047159_)
                                                              (_L47065_
                                                               _hd4686147135_))
                                                          (___kont4775747758_
                                                           _L47062_
                                                           _L47063_
                                                           _L47064_
                                                           _L47065_))
                                                        (___kont4775947760_))
                                                    (___kont4775947760_)))
                                            (___kont4775947760_))))
                                    (___kont4775947760_))
                                (___kont4775947760_))
                            (___kont4775947760_))))
                    (___kont4775947760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4775947760_))
                                                (___kont4775947760_))))
                                        (___kont4775947760_))
                                    (___kont4775947760_))
                                (___kont4775947760_))))
                        (___kont4775947760_))))
                (___kont4775947760_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4775947760_))))
                                            (___kont4775947760_))
                                        (___kont4775947760_))
                                    (___kont4775947760_))))
                            (___kont4775947760_))))
                    (___kont4775947760_))
                (___kont4775947760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4775947760_))
                                            (___kont4775947760_))
                                        (___kont4775947760_))))
                                (___kont4775947760_))))
                        (___kont4775947760_))))
                (___kont4775947760_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self46816_)
      (let* ((_self4681746823_ _self46816_)
             (_E4681946827_
              (lambda () (error '"No clause matching" _self4681746823_)))
             (_K4682046832_
              (lambda (_alias-id46830_)
                (cons '@alias (cons _alias-id46830_ '())))))
        (if (##structure-instance-of? _self4681746823_ 'gxc#!alias::t)
            (let* ((_e4682146835_ (##vector-ref _self4681746823_ '1))
                   (_alias-id46838_ _e4682146835_))
              (_K4682046832_ _alias-id46838_))
            (_E4681946827_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46638_)
      (let* ((_self4663946650_ _self46638_)
             (_E4664146654_
              (lambda () (error '"No clause matching" _self4663946650_)))
             (_K4664246663_
              (lambda (_plist46657_
                       _ctor46658_
                       _fields46659_
                       _super46660_
                       _type-id46661_)
                (cons '@struct-type
                      (cons _type-id46661_
                            (cons _super46660_
                                  (cons _fields46659_
                                        (cons _ctor46658_
                                              (cons _plist46657_ '())))))))))
        (if (##structure-instance-of? _self4663946650_ 'gxc#!struct-type::t)
            (let* ((_e4664346666_ (##vector-ref _self4663946650_ '1))
                   (_type-id46669_ _e4664346666_)
                   (_e4664446671_ (##vector-ref _self4663946650_ '2))
                   (_super46674_ _e4664446671_)
                   (_e4664546676_ (##vector-ref _self4663946650_ '3))
                   (_fields46679_ _e4664546676_)
                   (_e4664646681_ (##vector-ref _self4663946650_ '4))
                   (_e4664746684_ (##vector-ref _self4663946650_ '5))
                   (_ctor46687_ _e4664746684_)
                   (_e4664846689_ (##vector-ref _self4663946650_ '6))
                   (_plist46692_ _e4664846689_))
              (_K4664246663_
               _plist46692_
               _ctor46687_
               _fields46679_
               _super46674_
               _type-id46669_))
            (_E4664146654_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46492_)
      (let* ((_self4649346499_ _self46492_)
             (_E4649546503_
              (lambda () (error '"No clause matching" _self4649346499_)))
             (_K4649646508_
              (lambda (_struct-t46506_)
                (cons '@struct-pred (cons _struct-t46506_ '())))))
        (if (##structure-instance-of? _self4649346499_ 'gxc#!struct-pred::t)
            (let* ((_e4649746511_ (##vector-ref _self4649346499_ '1))
                   (_struct-t46514_ _e4649746511_))
              (_K4649646508_ _struct-t46514_))
            (_E4649546503_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46346_)
      (let* ((_self4634746353_ _self46346_)
             (_E4634946357_
              (lambda () (error '"No clause matching" _self4634746353_)))
             (_K4635046362_
              (lambda (_struct-t46360_)
                (cons '@struct-cons (cons _struct-t46360_ '())))))
        (if (##structure-instance-of? _self4634746353_ 'gxc#!struct-cons::t)
            (let* ((_e4635146365_ (##vector-ref _self4634746353_ '1))
                   (_struct-t46368_ _e4635146365_))
              (_K4635046362_ _struct-t46368_))
            (_E4634946357_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46186_)
      (let* ((_self4618746195_ _self46186_)
             (_E4618946199_
              (lambda () (error '"No clause matching" _self4618746195_)))
             (_K4619046206_
              (lambda (_unchecked?46202_ _off46203_ _struct-t46204_)
                (cons '@struct-getf
                      (cons _struct-t46204_
                            (cons _off46203_ (cons _unchecked?46202_ '())))))))
        (if (##structure-instance-of? _self4618746195_ 'gxc#!struct-getf::t)
            (let* ((_e4619146209_ (##vector-ref _self4618746195_ '1))
                   (_struct-t46212_ _e4619146209_)
                   (_e4619246214_ (##vector-ref _self4618746195_ '2))
                   (_off46217_ _e4619246214_)
                   (_e4619346219_ (##vector-ref _self4618746195_ '3))
                   (_unchecked?46222_ _e4619346219_))
              (_K4619046206_ _unchecked?46222_ _off46217_ _struct-t46212_))
            (_E4618946199_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46026_)
      (let* ((_self4602746035_ _self46026_)
             (_E4602946039_
              (lambda () (error '"No clause matching" _self4602746035_)))
             (_K4603046046_
              (lambda (_unchecked?46042_ _off46043_ _struct-t46044_)
                (cons '@struct-setf
                      (cons _struct-t46044_
                            (cons _off46043_ (cons _unchecked?46042_ '())))))))
        (if (##structure-instance-of? _self4602746035_ 'gxc#!struct-setf::t)
            (let* ((_e4603146049_ (##vector-ref _self4602746035_ '1))
                   (_struct-t46052_ _e4603146049_)
                   (_e4603246054_ (##vector-ref _self4602746035_ '2))
                   (_off46057_ _e4603246054_)
                   (_e4603346059_ (##vector-ref _self4602746035_ '3))
                   (_unchecked?46062_ _e4603346059_))
              (_K4603046046_ _unchecked?46062_ _off46057_ _struct-t46052_))
            (_E4602946039_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self45852_)
      (let* ((_self4585345863_ _self45852_)
             (_E4585545867_
              (lambda () (error '"No clause matching" _self4585345863_)))
             (_K4585645878_
              (lambda (_typedecl45870_
                       _inline45871_
                       _dispatch45872_
                       _arity45873_)
                (if _inline45871_
                    (let ((_$e45875_ _typedecl45870_))
                      (if _$e45875_
                          _$e45875_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity45873_ (cons _dispatch45872_ '())))))))
        (if (##structure-instance-of? _self4585345863_ 'gxc#!lambda::t)
            (let* ((_e4585745881_ (##vector-ref _self4585345863_ '1))
                   (_e4585845884_ (##vector-ref _self4585345863_ '2))
                   (_arity45887_ _e4585845884_)
                   (_e4585945889_ (##vector-ref _self4585345863_ '3))
                   (_dispatch45892_ _e4585945889_)
                   (_e4586045894_ (##vector-ref _self4585345863_ '4))
                   (_inline45897_ _e4586045894_)
                   (_e4586145899_ (##vector-ref _self4585345863_ '5))
                   (_typedecl45902_ _e4586145899_))
              (_K4585645878_
               _typedecl45902_
               _inline45897_
               _dispatch45892_
               _arity45887_))
            (_E4585545867_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45663_)
      (letrec ((_clause-e45665_
                (lambda (_clause45695_)
                  (let* ((_clause4569645704_ _clause45695_)
                         (_E4569845708_
                          (lambda ()
                            (error '"No clause matching" _clause4569645704_)))
                         (_K4569945714_
                          (lambda (_dispatch45711_ _arity45712_)
                            (cons _arity45712_ (cons _dispatch45711_ '())))))
                    (if (##structure-instance-of?
                         _clause4569645704_
                         'gxc#!lambda::t)
                        (let* ((_e4570045717_
                                (##vector-ref _clause4569645704_ '1))
                               (_e4570145720_
                                (##vector-ref _clause4569645704_ '2))
                               (_arity45723_ _e4570145720_)
                               (_e4570245725_
                                (##vector-ref _clause4569645704_ '3))
                               (_dispatch45728_ _e4570245725_))
                          (_K4569945714_ _dispatch45728_ _arity45723_))
                        (_E4569845708_))))))
        (let* ((_self4566645673_ _self45663_)
               (_E4566845677_
                (lambda () (error '"No clause matching" _self4566645673_)))
               (_K4566945684_
                (lambda (_clauses45680_)
                  (let ((_clauses45682_ (map _clause-e45665_ _clauses45680_)))
                    (cons '@case-lambda _clauses45682_)))))
          (if (##structure-instance-of? _self4566645673_ 'gxc#!case-lambda::t)
              (let* ((_e4567045687_ (##vector-ref _self4566645673_ '1))
                     (_e4567145690_ (##vector-ref _self4566645673_ '2))
                     (_clauses45693_ _e4567145690_))
                (_K4566945684_ _clauses45693_))
              (_E4566845677_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45506_)
      (let* ((_self4550745515_ _self45506_)
             (_E4550945519_
              (lambda () (error '"No clause matching" _self4550745515_)))
             (_K4551045525_
              (lambda (_dispatch45522_ _table45523_)
                (cons '@kw-lambda
                      (cons _table45523_ (cons _dispatch45522_ '()))))))
        (if (##structure-instance-of? _self4550745515_ 'gxc#!kw-lambda::t)
            (let* ((_e4551145528_ (##vector-ref _self4550745515_ '1))
                   (_e4551245531_ (##vector-ref _self4550745515_ '2))
                   (_table45534_ _e4551245531_)
                   (_e4551345536_ (##vector-ref _self4550745515_ '3))
                   (_dispatch45539_ _e4551345536_))
              (_K4551045525_ _dispatch45539_ _table45534_))
            (_E4550945519_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45349_)
      (let* ((_self4535045358_ _self45349_)
             (_E4535245362_
              (lambda () (error '"No clause matching" _self4535045358_)))
             (_K4535345368_
              (lambda (_main45365_ _keys45366_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45366_ (cons _main45365_ '()))))))
        (if (##structure-instance-of?
             _self4535045358_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4535445371_ (##vector-ref _self4535045358_ '1))
                   (_e4535545374_ (##vector-ref _self4535045358_ '2))
                   (_keys45377_ _e4535545374_)
                   (_e4535645379_ (##vector-ref _self4535045358_ '3))
                   (_main45382_ _e4535645379_))
              (_K4535345368_ _main45382_ _keys45377_))
            (_E4535245362_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
