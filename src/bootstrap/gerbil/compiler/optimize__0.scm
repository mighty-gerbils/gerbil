(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj50303 (make-object gxc#optimizer-info::t '2)))
             (gxc#optimizer-info:::init! __obj50303)
             __obj50303)))))
  (define gxc#optimize!
    (lambda (_ctx49996_)
      (call-with-parameters
       (lambda ()
         (gxc#optimizer-load-ssxi-deps _ctx49996_)
         (table-set!
          (##structure-ref
           (gxc#current-compile-optimizer-info)
           '2
           gxc#optimizer-info::t
           '#f)
          (##structure-ref _ctx49996_ '1 gx#expander-context::t '#f)
          '#t)
         (let ((_code49999_
                (gxc#optimize-source
                 (##structure-ref _ctx49996_ '11 gx#module-context::t '#f))))
           (##structure-set!
            _ctx49996_
            _code49999_
            '11
            gx#module-context::t
            '#f)))
       gxc#current-compile-mutators
       (make-table 'test: eq?)
       gxc#current-compile-local-type
       (make-table 'test: eq?))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx49941_)
      (letrec* ((_deps49943_
                 (let* ((_imports49987_
                         (##structure-ref
                          _ctx49941_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e49989_ (gx#core-context-prelude__% _ctx49941_)))
                   (if _$e49989_
                       ((lambda (_g4999149993_)
                          (cons _g4999149993_ _imports49987_))
                        _$e49989_)
                       _imports49987_))))
        (let _lp49945_ ((_rest49947_ _deps49943_))
          (let* ((_rest4994849956_ _rest49947_)
                 (_else4995049964_ (lambda () '#!void))
                 (_K4995249975_
                  (lambda (_rest49967_ _hd49968_)
                    (if (##structure-instance-of?
                         _hd49968_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd49968_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e49970_
                                       (gx#core-context-prelude__% _hd49968_)))
                                  (if _$e49970_
                                      ((lambda (_pre49973_)
                                         (_lp49945_
                                          (cons _pre49973_
                                                (##structure-ref
                                                 _hd49968_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e49970_)
                                      (_lp49945_
                                       (##structure-ref
                                        _hd49968_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd49968_)))
                          (_lp49945_ _rest49967_))
                        (if (##structure-instance-of?
                             _hd49968_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd49968_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp49945_
                                     (##structure-ref
                                      _hd49968_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd49968_)))
                              (_lp49945_ _rest49967_))
                            (if (##structure-direct-instance-of?
                                 _hd49968_
                                 'gx#module-import::t)
                                (_lp49945_
                                 (cons (##direct-structure-ref
                                        _hd49968_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest49967_))
                                (if (##structure-direct-instance-of?
                                     _hd49968_
                                     'gx#module-export::t)
                                    (_lp49945_
                                     (cons (##direct-structure-ref
                                            _hd49968_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest49967_))
                                    (if (##structure-direct-instance-of?
                                         _hd49968_
                                         'gx#import-set::t)
                                        (_lp49945_
                                         (cons (##direct-structure-ref
                                                _hd49968_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest49967_))
                                        (error '"Unexpected module import"
                                               _hd49968_)))))))))
            (if (##pair? _rest4994849956_)
                (let ((_hd4995349978_ (##car _rest4994849956_))
                      (_tl4995449980_ (##cdr _rest4994849956_)))
                  (let* ((_hd49983_ _hd4995349978_)
                         (_rest49985_ _tl4995449980_))
                    (_K4995249975_ _rest49985_ _hd49983_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx49921_)
      (if (and (##structure-instance-of? _ctx49921_ 'gx#module-context::t)
               (list? (##structure-ref
                       _ctx49921_
                       '7
                       gx#module-context::t
                       '#f)))
          '#!void
          (let* ((_ht49923_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id49925_
                  (##structure-ref _ctx49921_ '1 gx#expander-context::t '#f))
                 (_mod49927_ (table-ref _ht49923_ _id49925_ '#f)))
            (let ((_$e49930_ _mod49927_))
              (if _$e49930_
                  _$e49930_
                  (let* ((_mod49933_ (gxc#optimizer-import-ssxi _ctx49921_))
                         (_val49938_
                          (let ((_$e49935_ _mod49933_))
                            (if _$e49935_ _$e49935_ '#!void))))
                    (table-set! _ht49923_ _id49925_ _val49938_)
                    _val49938_)))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx49898_)
      (letrec ((_catch-e49900_
                (lambda (_exn49919_)
                  (if (gxc#current-compile-verbose)
                      (begin
                        (displayln
                         '"Failed to load ssxi module for "
                         (##structure-ref
                          _ctx49898_
                          '1
                          gx#expander-context::t
                          '#f))
                        (display-exception _exn49919_))
                      '#!void)
                  '#f))
               (_import-e49901_
                (lambda ()
                  (let* ((_str-id49904_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx49898_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path49912_
                          (let ((_odir4990549907_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4990549907_
                                (let ((_odir49910_ _odir4990549907_))
                                  (path-expand
                                   (string-append _str-id49904_ '".ss")
                                   _odir49910_))
                                '#f)))
                         (_library-path49914_
                          (string->symbol
                           (string-append '":" _str-id49904_ '".ss")))
                         (_ssxi-path49916_
                          (if (and _artefact-path49912_
                                   (file-exists? _artefact-path49912_))
                              _artefact-path49912_
                              _library-path49914_)))
                    (gxc#verbose '"Loading ssxi module " _ssxi-path49916_)
                    (gx#import-module__% _ssxi-path49916_ '#t '#t)))))
        (if (##structure-ref _ctx49898_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e49900_ _import-e49901_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx49892_)
      (gxc#apply-collect-mutators _stx49892_)
      (let ((_stx49894_ (gxc#apply-lift-top-lambdas _stx49892_)))
        (gxc#apply-collect-type-info _stx49894_)
        (let ((_stx49896_ (gxc#apply-optimize-annotated _stx49894_)))
          (gxc#apply-optimize-call _stx49896_)))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl49889_ (make-table 'test: eq?)))
         (hash-copy! _tbl49889_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl49889_ '%#begin gxc#generate-runtime-begin%)
         (table-set!
          _tbl49889_
          '%#begin-syntax
          gxc#generate-ssxi-begin-syntax%)
         (table-set! _tbl49889_ '%#module gxc#generate-ssxi-module%)
         (table-set!
          _tbl49889_
          '%#define-values
          gxc#generate-ssxi-define-values%)
         (table-set! _tbl49889_ '%#call gxc#generate-ssxi-call%)
         _tbl49889_))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx49882_ . _args49884_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx49882_ _args49884_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx49843_)
      (let* ((_g4984549855_
              (lambda (_g4984649852_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4984649852_)))
             (_g4984449879_
              (lambda (_g4984649858_)
                (if (gx#stx-pair? _g4984649858_)
                    (let ((_e4984849860_ (gx#stx-e _g4984649858_)))
                      (let ((_hd4984949863_ (##car _e4984849860_))
                            (_tl4985049865_ (##cdr _e4984849860_)))
                        ((lambda (_L49868_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx49843_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4985049865_)))
                    (_g4984549855_ _g4984649858_)))))
        (_g4984449879_ _stx49843_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx49783_)
      (let* ((_g4978549799_
              (lambda (_g4978649796_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4978649796_)))
             (_g4978449840_
              (lambda (_g4978649802_)
                (if (gx#stx-pair? _g4978649802_)
                    (let ((_e4978949804_ (gx#stx-e _g4978649802_)))
                      (let ((_hd4979049807_ (##car _e4978949804_))
                            (_tl4979149809_ (##cdr _e4978949804_)))
                        (if (gx#stx-pair? _tl4979149809_)
                            (let ((_e4979249812_ (gx#stx-e _tl4979149809_)))
                              (let ((_hd4979349815_ (##car _e4979249812_))
                                    (_tl4979449817_ (##cdr _e4979249812_)))
                                ((lambda (_L49820_ _L49821_)
                                   (let* ((_ctx49834_
                                           (gx#syntax-local-e__0 _L49821_))
                                          (_code49836_
                                           (##structure-ref
                                            _ctx49834_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code49836_))
                                      gx#current-expander-context
                                      _ctx49834_)))
                                 _tl4979449817_
                                 _hd4979349815_)))
                            (_g4978549799_ _g4978649802_))))
                    (_g4978549799_ _g4978649802_)))))
        (_g4978449840_ _stx49783_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx49593_)
      (letrec ((_generate-e49595_
                (lambda (_id49772_)
                  (let* ((_sym49774_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id49772_)
                              '#f))
                         (_$e49776_
                          (if _sym49774_
                              (gxc#optimizer-lookup-type _sym49774_)
                              '#f)))
                    (if _$e49776_
                        ((lambda (_type49779_)
                           (gxc#verbose '"generate typedecl " _sym49774_)
                           (let ((_typedecl49781_
                                  (call-method _type49779_ 'typedecl)))
                             (cons 'declare-type
                                   (cons _sym49774_
                                         (cons _typedecl49781_ '())))))
                         _$e49776_)
                        '(begin))))))
        (let* ((___stx5000250003_ _stx49593_)
               (_g4959849636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5000250003_))))
          (let ((___kont5000450005_
                 (lambda (_L49754_) (_generate-e49595_ _L49754_)))
                (___kont5000650007_
                 (lambda (_L49689_)
                   (let ((_types49715_
                          (map _generate-e49595_
                               (foldr1 (lambda (_g4970749710_ _g4970849712_)
                                         (cons _g4970749710_ _g4970849712_))
                                       '()
                                       _L49689_))))
                     (cons 'begin _types49715_)))))
            (let ((___match5005750058_
                   (lambda (_e4961449641_
                            _hd4961549644_
                            _tl4961649646_
                            _e4961749649_
                            _hd4961849652_
                            _tl4961949654_
                            ___splice5000850009_
                            _target4962049657_
                            _tl4962249659_)
                     (letrec ((_loop4962349662_
                               (lambda (_hd4962149665_ _id4962749667_)
                                 (if (gx#stx-pair? _hd4962149665_)
                                     (let ((_e4962449670_
                                            (gx#stx-e _hd4962149665_)))
                                       (let ((_lp-tl4962649675_
                                              (##cdr _e4962449670_))
                                             (_lp-hd4962549673_
                                              (##car _e4962449670_)))
                                         (_loop4962349662_
                                          _lp-tl4962649675_
                                          (cons _lp-hd4962549673_
                                                _id4962749667_))))
                                     (let ((_id4962849678_
                                            (reverse _id4962749667_)))
                                       (if (gx#stx-pair? _tl4961949654_)
                                           (let ((_e4962949681_
                                                  (gx#stx-e _tl4961949654_)))
                                             (let ((_tl4963149686_
                                                    (##cdr _e4962949681_))
                                                   (_hd4963049684_
                                                    (##car _e4962949681_)))
                                               (if (gx#stx-null?
                                                    _tl4963149686_)
                                                   (___kont5000650007_
                                                    _id4962849678_)
                                                   (_g4959849636_))))
                                           (_g4959849636_)))))))
                       (_loop4962349662_ _target4962049657_ '())))))
              (if (gx#stx-pair? ___stx5000250003_)
                  (let ((_e4960149722_ (gx#stx-e ___stx5000250003_)))
                    (let ((_tl4960349727_ (##cdr _e4960149722_))
                          (_hd4960249725_ (##car _e4960149722_)))
                      (if (gx#stx-pair? _tl4960349727_)
                          (let ((_e4960449730_ (gx#stx-e _tl4960349727_)))
                            (let ((_tl4960649735_ (##cdr _e4960449730_))
                                  (_hd4960549733_ (##car _e4960449730_)))
                              (if (gx#stx-pair? _hd4960549733_)
                                  (let ((_e4960749738_
                                         (gx#stx-e _hd4960549733_)))
                                    (let ((_tl4960949743_
                                           (##cdr _e4960749738_))
                                          (_hd4960849741_
                                           (##car _e4960749738_)))
                                      (if (gx#stx-null? _tl4960949743_)
                                          (if (gx#stx-pair? _tl4960649735_)
                                              (let ((_e4961049746_
                                                     (gx#stx-e
                                                      _tl4960649735_)))
                                                (let ((_tl4961249751_
                                                       (##cdr _e4961049746_))
                                                      (_hd4961149749_
                                                       (##car _e4961049746_)))
                                                  (if (gx#stx-null?
                                                       _tl4961249751_)
                                                      (___kont5000450005_
                                                       _hd4960849741_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4960549733_)
                                                          (let ((___splice5000850009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4960549733_ '0)))
                    (let ((_tl4962249659_
                           (##vector-ref ___splice5000850009_ '1))
                          (_target4962049657_
                           (##vector-ref ___splice5000850009_ '0)))
                      (if (gx#stx-null? _tl4962249659_)
                          (___match5005750058_
                           _e4960149722_
                           _hd4960249725_
                           _tl4960349727_
                           _e4960449730_
                           _hd4960549733_
                           _tl4960649735_
                           ___splice5000850009_
                           _target4962049657_
                           _tl4962249659_)
                          (_g4959849636_))))
                  (_g4959849636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4960549733_)
                                                  (let ((___splice5000850009_
                                                         (gx#syntax-split-splice
                                                          _hd4960549733_
                                                          '0)))
                                                    (let ((_tl4962249659_
                                                           (##vector-ref
                                                            ___splice5000850009_
                                                            '1))
                                                          (_target4962049657_
                                                           (##vector-ref
                                                            ___splice5000850009_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4962249659_)
                                                          (___match5005750058_
                                                           _e4960149722_
                                                           _hd4960249725_
                                                           _tl4960349727_
                                                           _e4960449730_
                                                           _hd4960549733_
                                                           _tl4960649735_
                                                           ___splice5000850009_
                                                           _target4962049657_
                                                           _tl4962249659_)
                                                          (_g4959849636_))))
                                                  (_g4959849636_)))
                                          (if (gx#stx-pair/null?
                                               _hd4960549733_)
                                              (let ((___splice5000850009_
                                                     (gx#syntax-split-splice
                                                      _hd4960549733_
                                                      '0)))
                                                (let ((_tl4962249659_
                                                       (##vector-ref
                                                        ___splice5000850009_
                                                        '1))
                                                      (_target4962049657_
                                                       (##vector-ref
                                                        ___splice5000850009_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4962249659_)
                                                      (___match5005750058_
                                                       _e4960149722_
                                                       _hd4960249725_
                                                       _tl4960349727_
                                                       _e4960449730_
                                                       _hd4960549733_
                                                       _tl4960649735_
                                                       ___splice5000850009_
                                                       _target4962049657_
                                                       _tl4962249659_)
                                                      (_g4959849636_))))
                                              (_g4959849636_)))))
                                  (if (gx#stx-pair/null? _hd4960549733_)
                                      (let ((___splice5000850009_
                                             (gx#syntax-split-splice
                                              _hd4960549733_
                                              '0)))
                                        (let ((_tl4962249659_
                                               (##vector-ref
                                                ___splice5000850009_
                                                '1))
                                              (_target4962049657_
                                               (##vector-ref
                                                ___splice5000850009_
                                                '0)))
                                          (if (gx#stx-null? _tl4962249659_)
                                              (___match5005750058_
                                               _e4960149722_
                                               _hd4960249725_
                                               _tl4960349727_
                                               _e4960449730_
                                               _hd4960549733_
                                               _tl4960649735_
                                               ___splice5000850009_
                                               _target4962049657_
                                               _tl4962249659_)
                                              (_g4959849636_))))
                                      (_g4959849636_)))))
                          (_g4959849636_))))
                  (_g4959849636_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx49147_)
      (let* ((___stx5006050061_ _stx49147_)
             (_g4915149253_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5006050061_))))
        (let ((___kont5006250063_
               (lambda (_L49543_ _L49544_ _L49545_ _L49546_ _L49547_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L49546_)
                             (cons (gx#stx-e _L49545_)
                                   (cons (gxc#identifier-symbol _L49544_)
                                         (cons (gx#stx-e _L49543_) '())))))))
              (___kont5006450065_
               (lambda (_L49369_ _L49370_ _L49371_ _L49372_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L49371_)
                             (cons (gx#stx-e _L49370_)
                                   (cons (gxc#identifier-symbol _L49369_)
                                         (cons '#f '())))))))
              (___kont5006650067_ (lambda () '(begin))))
          (let ((___match5019550196_
                 (lambda (_e4915849415_
                          _hd4915949418_
                          _tl4916049420_
                          _e4916149423_
                          _hd4916249426_
                          _tl4916349428_
                          _e4916449431_
                          _hd4916549434_
                          _tl4916649436_
                          _e4916749439_
                          _hd4916849442_
                          _tl4916949444_
                          _e4917049447_
                          _hd4917149450_
                          _tl4917249452_
                          _e4917349455_
                          _hd4917449458_
                          _tl4917549460_
                          _e4917649463_
                          _hd4917749466_
                          _tl4917849468_
                          _e4917949471_
                          _hd4918049474_
                          _tl4918149476_
                          _e4918249479_
                          _hd4918349482_
                          _tl4918449484_
                          _e4918549487_
                          _hd4918649490_
                          _tl4918749492_
                          _e4918849495_
                          _hd4918949498_
                          _tl4919049500_
                          _e4919149503_
                          _hd4919249506_
                          _tl4919349508_
                          _e4919449511_
                          _hd4919549514_
                          _tl4919649516_
                          _e4919749519_
                          _hd4919849522_
                          _tl4919949524_
                          _e4920049527_
                          _hd4920149530_
                          _tl4920249532_
                          _e4920349535_
                          _hd4920449538_
                          _tl4920549540_)
                   (let ((_L49543_ _hd4920449538_)
                         (_L49544_ _hd4919549514_)
                         (_L49545_ _hd4918649490_)
                         (_L49546_ _hd4917749466_)
                         (_L49547_ _hd4916849442_))
                     (if (gxc#runtime-identifier=? _L49547_ 'bind-method!)
                         (___kont5006250063_
                          _L49543_
                          _L49544_
                          _L49545_
                          _L49546_
                          _L49547_)
                         (___kont5006650067_))))))
            (if (gx#stx-pair? ___stx5006050061_)
                (let ((_e4915849415_ (gx#stx-e ___stx5006050061_)))
                  (let ((_tl4916049420_ (##cdr _e4915849415_))
                        (_hd4915949418_ (##car _e4915849415_)))
                    (if (gx#stx-pair? _tl4916049420_)
                        (let ((_e4916149423_ (gx#stx-e _tl4916049420_)))
                          (let ((_tl4916349428_ (##cdr _e4916149423_))
                                (_hd4916249426_ (##car _e4916149423_)))
                            (if (gx#stx-pair? _hd4916249426_)
                                (let ((_e4916449431_
                                       (gx#stx-e _hd4916249426_)))
                                  (let ((_tl4916649436_ (##cdr _e4916449431_))
                                        (_hd4916549434_ (##car _e4916449431_)))
                                    (if (gx#identifier? _hd4916549434_)
                                        (if (gx#stx-eq? '%#ref _hd4916549434_)
                                            (if (gx#stx-pair? _tl4916649436_)
                                                (let ((_e4916749439_
                                                       (gx#stx-e
                                                        _tl4916649436_)))
                                                  (let ((_tl4916949444_
                                                         (##cdr _e4916749439_))
                                                        (_hd4916849442_
                                                         (##car _e4916749439_)))
                                                    (if (gx#stx-null?
                                                         _tl4916949444_)
                                                        (if (gx#stx-pair?
                                                             _tl4916349428_)
                                                            (let ((_e4917049447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4916349428_)))
                      (let ((_tl4917249452_ (##cdr _e4917049447_))
                            (_hd4917149450_ (##car _e4917049447_)))
                        (if (gx#stx-pair? _hd4917149450_)
                            (let ((_e4917349455_ (gx#stx-e _hd4917149450_)))
                              (let ((_tl4917549460_ (##cdr _e4917349455_))
                                    (_hd4917449458_ (##car _e4917349455_)))
                                (if (gx#identifier? _hd4917449458_)
                                    (if (gx#stx-eq? '%#ref _hd4917449458_)
                                        (if (gx#stx-pair? _tl4917549460_)
                                            (let ((_e4917649463_
                                                   (gx#stx-e _tl4917549460_)))
                                              (let ((_tl4917849468_
                                                     (##cdr _e4917649463_))
                                                    (_hd4917749466_
                                                     (##car _e4917649463_)))
                                                (if (gx#stx-null?
                                                     _tl4917849468_)
                                                    (if (gx#stx-pair?
                                                         _tl4917249452_)
                                                        (let ((_e4917949471_
                                                               (gx#stx-e
                                                                _tl4917249452_)))
                                                          (let ((_tl4918149476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4917949471_))
                        (_hd4918049474_ (##car _e4917949471_)))
                    (if (gx#stx-pair? _hd4918049474_)
                        (let ((_e4918249479_ (gx#stx-e _hd4918049474_)))
                          (let ((_tl4918449484_ (##cdr _e4918249479_))
                                (_hd4918349482_ (##car _e4918249479_)))
                            (if (gx#identifier? _hd4918349482_)
                                (if (gx#stx-eq? '%#quote _hd4918349482_)
                                    (if (gx#stx-pair? _tl4918449484_)
                                        (let ((_e4918549487_
                                               (gx#stx-e _tl4918449484_)))
                                          (let ((_tl4918749492_
                                                 (##cdr _e4918549487_))
                                                (_hd4918649490_
                                                 (##car _e4918549487_)))
                                            (if (gx#stx-null? _tl4918749492_)
                                                (if (gx#stx-pair?
                                                     _tl4918149476_)
                                                    (let ((_e4918849495_
                                                           (gx#stx-e
                                                            _tl4918149476_)))
                                                      (let ((_tl4919049500_
                                                             (##cdr _e4918849495_))
                                                            (_hd4918949498_
                                                             (##car _e4918849495_)))
                                                        (if (gx#stx-pair?
                                                             _hd4918949498_)
                                                            (let ((_e4919149503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4918949498_)))
                      (let ((_tl4919349508_ (##cdr _e4919149503_))
                            (_hd4919249506_ (##car _e4919149503_)))
                        (if (gx#identifier? _hd4919249506_)
                            (if (gx#stx-eq? '%#ref _hd4919249506_)
                                (if (gx#stx-pair? _tl4919349508_)
                                    (let ((_e4919449511_
                                           (gx#stx-e _tl4919349508_)))
                                      (let ((_tl4919649516_
                                             (##cdr _e4919449511_))
                                            (_hd4919549514_
                                             (##car _e4919449511_)))
                                        (if (gx#stx-null? _tl4919649516_)
                                            (if (gx#stx-pair? _tl4919049500_)
                                                (let ((_e4919749519_
                                                       (gx#stx-e
                                                        _tl4919049500_)))
                                                  (let ((_tl4919949524_
                                                         (##cdr _e4919749519_))
                                                        (_hd4919849522_
                                                         (##car _e4919749519_)))
                                                    (if (gx#stx-pair?
                                                         _hd4919849522_)
                                                        (let ((_e4920049527_
                                                               (gx#stx-e
                                                                _hd4919849522_)))
                                                          (let ((_tl4920249532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4920049527_))
                        (_hd4920149530_ (##car _e4920049527_)))
                    (if (gx#identifier? _hd4920149530_)
                        (if (gx#stx-eq? '%#quote _hd4920149530_)
                            (if (gx#stx-pair? _tl4920249532_)
                                (let ((_e4920349535_
                                       (gx#stx-e _tl4920249532_)))
                                  (let ((_tl4920549540_ (##cdr _e4920349535_))
                                        (_hd4920449538_ (##car _e4920349535_)))
                                    (if (gx#stx-null? _tl4920549540_)
                                        (if (gx#stx-null? _tl4919949524_)
                                            (___match5019550196_
                                             _e4915849415_
                                             _hd4915949418_
                                             _tl4916049420_
                                             _e4916149423_
                                             _hd4916249426_
                                             _tl4916349428_
                                             _e4916449431_
                                             _hd4916549434_
                                             _tl4916649436_
                                             _e4916749439_
                                             _hd4916849442_
                                             _tl4916949444_
                                             _e4917049447_
                                             _hd4917149450_
                                             _tl4917249452_
                                             _e4917349455_
                                             _hd4917449458_
                                             _tl4917549460_
                                             _e4917649463_
                                             _hd4917749466_
                                             _tl4917849468_
                                             _e4917949471_
                                             _hd4918049474_
                                             _tl4918149476_
                                             _e4918249479_
                                             _hd4918349482_
                                             _tl4918449484_
                                             _e4918549487_
                                             _hd4918649490_
                                             _tl4918749492_
                                             _e4918849495_
                                             _hd4918949498_
                                             _tl4919049500_
                                             _e4919149503_
                                             _hd4919249506_
                                             _tl4919349508_
                                             _e4919449511_
                                             _hd4919549514_
                                             _tl4919649516_
                                             _e4919749519_
                                             _hd4919849522_
                                             _tl4919949524_
                                             _e4920049527_
                                             _hd4920149530_
                                             _tl4920249532_
                                             _e4920349535_
                                             _hd4920449538_
                                             _tl4920549540_)
                                            (___kont5006650067_))
                                        (___kont5006650067_))))
                                (___kont5006650067_))
                            (___kont5006650067_))
                        (___kont5006650067_))))
                (___kont5006650067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4919049500_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L49369_
                                                               _hd4919549514_)
                                                              (_L49370_
                                                               _hd4918649490_)
                                                              (_L49371_
                                                               _hd4917749466_)
                                                              (_L49372_
                                                               _hd4916849442_))
                                                          (___kont5006450065_
                                                           _L49369_
                                                           _L49370_
                                                           _L49371_
                                                           _L49372_))
                                                        (___kont5006650067_))
                                                    (___kont5006650067_)))
                                            (___kont5006650067_))))
                                    (___kont5006650067_))
                                (___kont5006650067_))
                            (___kont5006650067_))))
                    (___kont5006650067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont5006650067_))
                                                (___kont5006650067_))))
                                        (___kont5006650067_))
                                    (___kont5006650067_))
                                (___kont5006650067_))))
                        (___kont5006650067_))))
                (___kont5006650067_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont5006650067_))))
                                            (___kont5006650067_))
                                        (___kont5006650067_))
                                    (___kont5006650067_))))
                            (___kont5006650067_))))
                    (___kont5006650067_))
                (___kont5006650067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5006650067_))
                                            (___kont5006650067_))
                                        (___kont5006650067_))))
                                (___kont5006650067_))))
                        (___kont5006650067_))))
                (___kont5006650067_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self49123_)
      (let* ((_self4912449130_ _self49123_)
             (_E4912649134_
              (lambda () (error '"No clause matching" _self4912449130_)))
             (_K4912749139_
              (lambda (_alias-id49137_)
                (cons '@alias (cons _alias-id49137_ '())))))
        (if (##structure-instance-of? _self4912449130_ 'gxc#!alias::t)
            (let* ((_e4912849142_ (##vector-ref _self4912449130_ '1))
                   (_alias-id49145_ _e4912849142_))
              (_K4912749139_ _alias-id49145_))
            (_E4912649134_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self48945_)
      (let* ((_self4894648957_ _self48945_)
             (_E4894848961_
              (lambda () (error '"No clause matching" _self4894648957_)))
             (_K4894948970_
              (lambda (_plist48964_
                       _ctor48965_
                       _fields48966_
                       _super48967_
                       _type-id48968_)
                (cons '@struct-type
                      (cons _type-id48968_
                            (cons _super48967_
                                  (cons _fields48966_
                                        (cons _ctor48965_
                                              (cons _plist48964_ '())))))))))
        (if (##structure-instance-of? _self4894648957_ 'gxc#!struct-type::t)
            (let* ((_e4895048973_ (##vector-ref _self4894648957_ '1))
                   (_type-id48976_ _e4895048973_)
                   (_e4895148978_ (##vector-ref _self4894648957_ '2))
                   (_super48981_ _e4895148978_)
                   (_e4895248983_ (##vector-ref _self4894648957_ '3))
                   (_fields48986_ _e4895248983_)
                   (_e4895348988_ (##vector-ref _self4894648957_ '4))
                   (_e4895448991_ (##vector-ref _self4894648957_ '5))
                   (_ctor48994_ _e4895448991_)
                   (_e4895548996_ (##vector-ref _self4894648957_ '6))
                   (_plist48999_ _e4895548996_))
              (_K4894948970_
               _plist48999_
               _ctor48994_
               _fields48986_
               _super48981_
               _type-id48976_))
            (_E4894848961_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self48799_)
      (let* ((_self4880048806_ _self48799_)
             (_E4880248810_
              (lambda () (error '"No clause matching" _self4880048806_)))
             (_K4880348815_
              (lambda (_struct-t48813_)
                (cons '@struct-pred (cons _struct-t48813_ '())))))
        (if (##structure-instance-of? _self4880048806_ 'gxc#!struct-pred::t)
            (let* ((_e4880448818_ (##vector-ref _self4880048806_ '1))
                   (_struct-t48821_ _e4880448818_))
              (_K4880348815_ _struct-t48821_))
            (_E4880248810_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self48653_)
      (let* ((_self4865448660_ _self48653_)
             (_E4865648664_
              (lambda () (error '"No clause matching" _self4865448660_)))
             (_K4865748669_
              (lambda (_struct-t48667_)
                (cons '@struct-cons (cons _struct-t48667_ '())))))
        (if (##structure-instance-of? _self4865448660_ 'gxc#!struct-cons::t)
            (let* ((_e4865848672_ (##vector-ref _self4865448660_ '1))
                   (_struct-t48675_ _e4865848672_))
              (_K4865748669_ _struct-t48675_))
            (_E4865648664_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self48493_)
      (let* ((_self4849448502_ _self48493_)
             (_E4849648506_
              (lambda () (error '"No clause matching" _self4849448502_)))
             (_K4849748513_
              (lambda (_unchecked?48509_ _off48510_ _struct-t48511_)
                (cons '@struct-getf
                      (cons _struct-t48511_
                            (cons _off48510_ (cons _unchecked?48509_ '())))))))
        (if (##structure-instance-of? _self4849448502_ 'gxc#!struct-getf::t)
            (let* ((_e4849848516_ (##vector-ref _self4849448502_ '1))
                   (_struct-t48519_ _e4849848516_)
                   (_e4849948521_ (##vector-ref _self4849448502_ '2))
                   (_off48524_ _e4849948521_)
                   (_e4850048526_ (##vector-ref _self4849448502_ '3))
                   (_unchecked?48529_ _e4850048526_))
              (_K4849748513_ _unchecked?48529_ _off48524_ _struct-t48519_))
            (_E4849648506_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self48333_)
      (let* ((_self4833448342_ _self48333_)
             (_E4833648346_
              (lambda () (error '"No clause matching" _self4833448342_)))
             (_K4833748353_
              (lambda (_unchecked?48349_ _off48350_ _struct-t48351_)
                (cons '@struct-setf
                      (cons _struct-t48351_
                            (cons _off48350_ (cons _unchecked?48349_ '())))))))
        (if (##structure-instance-of? _self4833448342_ 'gxc#!struct-setf::t)
            (let* ((_e4833848356_ (##vector-ref _self4833448342_ '1))
                   (_struct-t48359_ _e4833848356_)
                   (_e4833948361_ (##vector-ref _self4833448342_ '2))
                   (_off48364_ _e4833948361_)
                   (_e4834048366_ (##vector-ref _self4833448342_ '3))
                   (_unchecked?48369_ _e4834048366_))
              (_K4833748353_ _unchecked?48369_ _off48364_ _struct-t48359_))
            (_E4833648346_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self48159_)
      (let* ((_self4816048170_ _self48159_)
             (_E4816248174_
              (lambda () (error '"No clause matching" _self4816048170_)))
             (_K4816348185_
              (lambda (_typedecl48177_
                       _inline48178_
                       _dispatch48179_
                       _arity48180_)
                (if _inline48178_
                    (let ((_$e48182_ _typedecl48177_))
                      (if _$e48182_
                          _$e48182_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity48180_ (cons _dispatch48179_ '())))))))
        (if (##structure-instance-of? _self4816048170_ 'gxc#!lambda::t)
            (let* ((_e4816448188_ (##vector-ref _self4816048170_ '1))
                   (_e4816548191_ (##vector-ref _self4816048170_ '2))
                   (_arity48194_ _e4816548191_)
                   (_e4816648196_ (##vector-ref _self4816048170_ '3))
                   (_dispatch48199_ _e4816648196_)
                   (_e4816748201_ (##vector-ref _self4816048170_ '4))
                   (_inline48204_ _e4816748201_)
                   (_e4816848206_ (##vector-ref _self4816048170_ '5))
                   (_typedecl48209_ _e4816848206_))
              (_K4816348185_
               _typedecl48209_
               _inline48204_
               _dispatch48199_
               _arity48194_))
            (_E4816248174_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self47970_)
      (letrec ((_clause-e47972_
                (lambda (_clause48002_)
                  (let* ((_clause4800348011_ _clause48002_)
                         (_E4800548015_
                          (lambda ()
                            (error '"No clause matching" _clause4800348011_)))
                         (_K4800648021_
                          (lambda (_dispatch48018_ _arity48019_)
                            (cons _arity48019_ (cons _dispatch48018_ '())))))
                    (if (##structure-instance-of?
                         _clause4800348011_
                         'gxc#!lambda::t)
                        (let* ((_e4800748024_
                                (##vector-ref _clause4800348011_ '1))
                               (_e4800848027_
                                (##vector-ref _clause4800348011_ '2))
                               (_arity48030_ _e4800848027_)
                               (_e4800948032_
                                (##vector-ref _clause4800348011_ '3))
                               (_dispatch48035_ _e4800948032_))
                          (_K4800648021_ _dispatch48035_ _arity48030_))
                        (_E4800548015_))))))
        (let* ((_self4797347980_ _self47970_)
               (_E4797547984_
                (lambda () (error '"No clause matching" _self4797347980_)))
               (_K4797647991_
                (lambda (_clauses47987_)
                  (let ((_clauses47989_ (map _clause-e47972_ _clauses47987_)))
                    (cons '@case-lambda _clauses47989_)))))
          (if (##structure-instance-of? _self4797347980_ 'gxc#!case-lambda::t)
              (let* ((_e4797747994_ (##vector-ref _self4797347980_ '1))
                     (_e4797847997_ (##vector-ref _self4797347980_ '2))
                     (_clauses48000_ _e4797847997_))
                (_K4797647991_ _clauses48000_))
              (_E4797547984_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self47813_)
      (let* ((_self4781447822_ _self47813_)
             (_E4781647826_
              (lambda () (error '"No clause matching" _self4781447822_)))
             (_K4781747832_
              (lambda (_dispatch47829_ _table47830_)
                (cons '@kw-lambda
                      (cons _table47830_ (cons _dispatch47829_ '()))))))
        (if (##structure-instance-of? _self4781447822_ 'gxc#!kw-lambda::t)
            (let* ((_e4781847835_ (##vector-ref _self4781447822_ '1))
                   (_e4781947838_ (##vector-ref _self4781447822_ '2))
                   (_table47841_ _e4781947838_)
                   (_e4782047843_ (##vector-ref _self4781447822_ '3))
                   (_dispatch47846_ _e4782047843_))
              (_K4781747832_ _dispatch47846_ _table47841_))
            (_E4781647826_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self47656_)
      (let* ((_self4765747665_ _self47656_)
             (_E4765947669_
              (lambda () (error '"No clause matching" _self4765747665_)))
             (_K4766047675_
              (lambda (_main47672_ _keys47673_)
                (cons '@kw-lambda-dispatch
                      (cons _keys47673_ (cons _main47672_ '()))))))
        (if (##structure-instance-of?
             _self4765747665_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4766147678_ (##vector-ref _self4765747665_ '1))
                   (_e4766247681_ (##vector-ref _self4765747665_ '2))
                   (_keys47684_ _e4766247681_)
                   (_e4766347686_ (##vector-ref _self4765747665_ '3))
                   (_main47689_ _e4766347686_))
              (_K4766047675_ _main47689_ _keys47684_))
            (_E4765947669_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
