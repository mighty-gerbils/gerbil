(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj48093 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj48093) __obj48093))))))
  (define gxc#optimize!
    (lambda (_ctx47786_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47786_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47786_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47789_
                  (gxc#optimize-source
                   (##structure-ref _ctx47786_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47786_
              _code47789_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47731_)
      (letrec* ((_deps47733_
                 (let* ((_imports47777_
                         (##structure-ref
                          _ctx47731_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47779_ (gx#core-context-prelude__% _ctx47731_)))
                   (if _$e47779_
                       ((lambda (_g4778147783_)
                          (cons _g4778147783_ _imports47777_))
                        _$e47779_)
                       _imports47777_))))
        (let _lp47735_ ((_rest47737_ _deps47733_))
          (let* ((_rest4773847746_ _rest47737_)
                 (_else4774047754_ (lambda () '#!void))
                 (_K4774247765_
                  (lambda (_rest47757_ _hd47758_)
                    (if (##structure-instance-of?
                         _hd47758_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47758_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47760_
                                       (gx#core-context-prelude__% _hd47758_)))
                                  (if _$e47760_
                                      ((lambda (_pre47763_)
                                         (_lp47735_
                                          (cons _pre47763_
                                                (##structure-ref
                                                 _hd47758_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47760_)
                                      (_lp47735_
                                       (##structure-ref
                                        _hd47758_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47758_)))
                          (_lp47735_ _rest47757_))
                        (if (##structure-instance-of?
                             _hd47758_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47758_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47735_
                                     (##structure-ref
                                      _hd47758_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47758_)))
                              (_lp47735_ _rest47757_))
                            (if (##structure-direct-instance-of?
                                 _hd47758_
                                 'gx#module-import::t)
                                (_lp47735_
                                 (cons (##direct-structure-ref
                                        _hd47758_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47757_))
                                (if (##structure-direct-instance-of?
                                     _hd47758_
                                     'gx#module-export::t)
                                    (_lp47735_
                                     (cons (##direct-structure-ref
                                            _hd47758_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47757_))
                                    (if (##structure-direct-instance-of?
                                         _hd47758_
                                         'gx#import-set::t)
                                        (_lp47735_
                                         (cons (##direct-structure-ref
                                                _hd47758_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47757_))
                                        (error '"Unexpected module import"
                                               _hd47758_)))))))))
            (if (##pair? _rest4773847746_)
                (let ((_hd4774347768_ (##car _rest4773847746_))
                      (_tl4774447770_ (##cdr _rest4773847746_)))
                  (let* ((_hd47773_ _hd4774347768_)
                         (_rest47775_ _tl4774447770_))
                    (_K4774247765_ _rest47775_ _hd47773_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47711_)
      (if (if (##structure-instance-of? _ctx47711_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47711_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47713_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47715_
                  (##structure-ref _ctx47711_ '1 gx#expander-context::t '#f))
                 (_mod47717_ (table-ref _ht47713_ _id47715_ '#f)))
            (let ((_$e47720_ _mod47717_))
              (if _$e47720_
                  _$e47720_
                  (let* ((_mod47723_ (gxc#optimizer-import-ssxi _ctx47711_))
                         (_val47728_
                          (let ((_$e47725_ _mod47723_))
                            (if _$e47725_ _$e47725_ '#!void))))
                    (begin
                      (table-set! _ht47713_ _id47715_ _val47728_)
                      _val47728_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47688_)
      (letrec ((_catch-e47690_
                (lambda (_exn47709_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47688_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47709_))
                        '#!void)
                    '#f)))
               (_import-e47691_
                (lambda ()
                  (let* ((_str-id47694_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47688_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47702_
                          (let ((_odir4769547697_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4769547697_
                                (let ((_odir47700_ _odir4769547697_))
                                  (path-expand
                                   (string-append _str-id47694_ '".ss")
                                   _odir47700_))
                                '#f)))
                         (_library-path47704_
                          (string->symbol
                           (string-append '":" _str-id47694_ '".ss")))
                         (_ssxi-path47706_
                          (if (if _artefact-path47702_
                                  (file-exists? _artefact-path47702_)
                                  '#f)
                              _artefact-path47702_
                              _library-path47704_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47706_)
                      (gx#import-module__% _ssxi-path47706_ '#t '#t))))))
        (if (##structure-ref _ctx47688_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47690_ _import-e47691_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47682_)
      (begin
        (gxc#apply-collect-mutators _stx47682_)
        (let ((_stx47684_ (gxc#apply-lift-top-lambdas _stx47682_)))
          (begin
            (gxc#apply-collect-type-info _stx47684_)
            (let ((_stx47686_ (gxc#apply-optimize-annotated _stx47684_)))
              (gxc#apply-optimize-call _stx47686_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl47679_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47679_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47679_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47679_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47679_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47679_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47679_ '%#call gxc#generate-ssxi-call%)
           _tbl47679_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47672_ . _args47674_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47672_ _args47674_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47633_)
      (let* ((_g4763547645_
              (lambda (_g4763647642_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4763647642_)))
             (_g4763447669_
              (lambda (_g4763647648_)
                (if (gx#stx-pair? _g4763647648_)
                    (let ((_e4763847650_ (gx#stx-e _g4763647648_)))
                      (let ((_hd4763947653_ (##car _e4763847650_))
                            (_tl4764047655_ (##cdr _e4763847650_)))
                        ((lambda (_L47658_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47633_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4764047655_)))
                    (_g4763547645_ _g4763647648_)))))
        (_g4763447669_ _stx47633_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47573_)
      (let* ((_g4757547589_
              (lambda (_g4757647586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4757647586_)))
             (_g4757447630_
              (lambda (_g4757647592_)
                (if (gx#stx-pair? _g4757647592_)
                    (let ((_e4757947594_ (gx#stx-e _g4757647592_)))
                      (let ((_hd4758047597_ (##car _e4757947594_))
                            (_tl4758147599_ (##cdr _e4757947594_)))
                        (if (gx#stx-pair? _tl4758147599_)
                            (let ((_e4758247602_ (gx#stx-e _tl4758147599_)))
                              (let ((_hd4758347605_ (##car _e4758247602_))
                                    (_tl4758447607_ (##cdr _e4758247602_)))
                                ((lambda (_L47610_ _L47611_)
                                   (let* ((_ctx47624_
                                           (gx#syntax-local-e__0 _L47611_))
                                          (_code47626_
                                           (##structure-ref
                                            _ctx47624_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47626_))
                                      gx#current-expander-context
                                      _ctx47624_)))
                                 _tl4758447607_
                                 _hd4758347605_)))
                            (_g4757547589_ _g4757647592_))))
                    (_g4757547589_ _g4757647592_)))))
        (_g4757447630_ _stx47573_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47383_)
      (letrec ((_generate-e47385_
                (lambda (_id47562_)
                  (let* ((_sym47564_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47562_)
                              '#f))
                         (_$e47566_
                          (if _sym47564_
                              (gxc#optimizer-lookup-type _sym47564_)
                              '#f)))
                    (if _$e47566_
                        ((lambda (_type47569_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47564_)
                             (let ((_typedecl47571_
                                    (call-method _type47569_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47564_
                                           (cons _typedecl47571_ '()))))))
                         _$e47566_)
                        '(begin))))))
        (let* ((___stx4779247793_ _stx47383_)
               (_g4738847426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4779247793_))))
          (let ((___kont4779447795_
                 (lambda (_L47544_) (_generate-e47385_ _L47544_)))
                (___kont4779647797_
                 (lambda (_L47479_)
                   (let ((_types47505_
                          (map _generate-e47385_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4749747500_ _g4749847502_)
                                           (cons _g4749747500_ _g4749847502_))
                                         '()
                                         _L47479_)))))
                     (cons 'begin _types47505_)))))
            (let ((___match4784747848_
                   (lambda (_e4740447431_
                            _hd4740547434_
                            _tl4740647436_
                            _e4740747439_
                            _hd4740847442_
                            _tl4740947444_
                            ___splice4779847799_
                            _target4741047447_
                            _tl4741247449_)
                     (letrec ((_loop4741347452_
                               (lambda (_hd4741147455_ _id4741747457_)
                                 (if (gx#stx-pair? _hd4741147455_)
                                     (let ((_e4741447460_
                                            (gx#stx-e _hd4741147455_)))
                                       (let ((_lp-tl4741647465_
                                              (##cdr _e4741447460_))
                                             (_lp-hd4741547463_
                                              (##car _e4741447460_)))
                                         (_loop4741347452_
                                          _lp-tl4741647465_
                                          (cons _lp-hd4741547463_
                                                _id4741747457_))))
                                     (let ((_id4741847468_
                                            (reverse _id4741747457_)))
                                       (if (gx#stx-pair? _tl4740947444_)
                                           (let ((_e4741947471_
                                                  (gx#stx-e _tl4740947444_)))
                                             (let ((_tl4742147476_
                                                    (##cdr _e4741947471_))
                                                   (_hd4742047474_
                                                    (##car _e4741947471_)))
                                               (if (gx#stx-null?
                                                    _tl4742147476_)
                                                   (___kont4779647797_
                                                    _id4741847468_)
                                                   (_g4738847426_))))
                                           (_g4738847426_)))))))
                       (_loop4741347452_ _target4741047447_ '())))))
              (if (gx#stx-pair? ___stx4779247793_)
                  (let ((_e4739147512_ (gx#stx-e ___stx4779247793_)))
                    (let ((_tl4739347517_ (##cdr _e4739147512_))
                          (_hd4739247515_ (##car _e4739147512_)))
                      (if (gx#stx-pair? _tl4739347517_)
                          (let ((_e4739447520_ (gx#stx-e _tl4739347517_)))
                            (let ((_tl4739647525_ (##cdr _e4739447520_))
                                  (_hd4739547523_ (##car _e4739447520_)))
                              (if (gx#stx-pair? _hd4739547523_)
                                  (let ((_e4739747528_
                                         (gx#stx-e _hd4739547523_)))
                                    (let ((_tl4739947533_
                                           (##cdr _e4739747528_))
                                          (_hd4739847531_
                                           (##car _e4739747528_)))
                                      (if (gx#stx-null? _tl4739947533_)
                                          (if (gx#stx-pair? _tl4739647525_)
                                              (let ((_e4740047536_
                                                     (gx#stx-e
                                                      _tl4739647525_)))
                                                (let ((_tl4740247541_
                                                       (##cdr _e4740047536_))
                                                      (_hd4740147539_
                                                       (##car _e4740047536_)))
                                                  (if (gx#stx-null?
                                                       _tl4740247541_)
                                                      (___kont4779447795_
                                                       _hd4739847531_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4739547523_)
                                                          (let ((___splice4779847799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4739547523_ '0)))
                    (let ((_tl4741247449_
                           (##vector-ref ___splice4779847799_ '1))
                          (_target4741047447_
                           (##vector-ref ___splice4779847799_ '0)))
                      (if (gx#stx-null? _tl4741247449_)
                          (___match4784747848_
                           _e4739147512_
                           _hd4739247515_
                           _tl4739347517_
                           _e4739447520_
                           _hd4739547523_
                           _tl4739647525_
                           ___splice4779847799_
                           _target4741047447_
                           _tl4741247449_)
                          (_g4738847426_))))
                  (_g4738847426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4739547523_)
                                                  (let ((___splice4779847799_
                                                         (gx#syntax-split-splice
                                                          _hd4739547523_
                                                          '0)))
                                                    (let ((_tl4741247449_
                                                           (##vector-ref
                                                            ___splice4779847799_
                                                            '1))
                                                          (_target4741047447_
                                                           (##vector-ref
                                                            ___splice4779847799_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4741247449_)
                                                          (___match4784747848_
                                                           _e4739147512_
                                                           _hd4739247515_
                                                           _tl4739347517_
                                                           _e4739447520_
                                                           _hd4739547523_
                                                           _tl4739647525_
                                                           ___splice4779847799_
                                                           _target4741047447_
                                                           _tl4741247449_)
                                                          (_g4738847426_))))
                                                  (_g4738847426_)))
                                          (if (gx#stx-pair/null?
                                               _hd4739547523_)
                                              (let ((___splice4779847799_
                                                     (gx#syntax-split-splice
                                                      _hd4739547523_
                                                      '0)))
                                                (let ((_tl4741247449_
                                                       (##vector-ref
                                                        ___splice4779847799_
                                                        '1))
                                                      (_target4741047447_
                                                       (##vector-ref
                                                        ___splice4779847799_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4741247449_)
                                                      (___match4784747848_
                                                       _e4739147512_
                                                       _hd4739247515_
                                                       _tl4739347517_
                                                       _e4739447520_
                                                       _hd4739547523_
                                                       _tl4739647525_
                                                       ___splice4779847799_
                                                       _target4741047447_
                                                       _tl4741247449_)
                                                      (_g4738847426_))))
                                              (_g4738847426_)))))
                                  (if (gx#stx-pair/null? _hd4739547523_)
                                      (let ((___splice4779847799_
                                             (gx#syntax-split-splice
                                              _hd4739547523_
                                              '0)))
                                        (let ((_tl4741247449_
                                               (##vector-ref
                                                ___splice4779847799_
                                                '1))
                                              (_target4741047447_
                                               (##vector-ref
                                                ___splice4779847799_
                                                '0)))
                                          (if (gx#stx-null? _tl4741247449_)
                                              (___match4784747848_
                                               _e4739147512_
                                               _hd4739247515_
                                               _tl4739347517_
                                               _e4739447520_
                                               _hd4739547523_
                                               _tl4739647525_
                                               ___splice4779847799_
                                               _target4741047447_
                                               _tl4741247449_)
                                              (_g4738847426_))))
                                      (_g4738847426_)))))
                          (_g4738847426_))))
                  (_g4738847426_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx46937_)
      (let* ((___stx4785047851_ _stx46937_)
             (_g4694147043_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4785047851_))))
        (let ((___kont4785247853_
               (lambda (_L47333_ _L47334_ _L47335_ _L47336_ _L47337_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47336_)
                             (cons (gx#stx-e _L47335_)
                                   (cons (gxc#identifier-symbol _L47334_)
                                         (cons (gx#stx-e _L47333_) '())))))))
              (___kont4785447855_
               (lambda (_L47159_ _L47160_ _L47161_ _L47162_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47161_)
                             (cons (gx#stx-e _L47160_)
                                   (cons (gxc#identifier-symbol _L47159_)
                                         (cons '#f '())))))))
              (___kont4785647857_ (lambda () '(begin))))
          (let ((___match4798547986_
                 (lambda (_e4694847205_
                          _hd4694947208_
                          _tl4695047210_
                          _e4695147213_
                          _hd4695247216_
                          _tl4695347218_
                          _e4695447221_
                          _hd4695547224_
                          _tl4695647226_
                          _e4695747229_
                          _hd4695847232_
                          _tl4695947234_
                          _e4696047237_
                          _hd4696147240_
                          _tl4696247242_
                          _e4696347245_
                          _hd4696447248_
                          _tl4696547250_
                          _e4696647253_
                          _hd4696747256_
                          _tl4696847258_
                          _e4696947261_
                          _hd4697047264_
                          _tl4697147266_
                          _e4697247269_
                          _hd4697347272_
                          _tl4697447274_
                          _e4697547277_
                          _hd4697647280_
                          _tl4697747282_
                          _e4697847285_
                          _hd4697947288_
                          _tl4698047290_
                          _e4698147293_
                          _hd4698247296_
                          _tl4698347298_
                          _e4698447301_
                          _hd4698547304_
                          _tl4698647306_
                          _e4698747309_
                          _hd4698847312_
                          _tl4698947314_
                          _e4699047317_
                          _hd4699147320_
                          _tl4699247322_
                          _e4699347325_
                          _hd4699447328_
                          _tl4699547330_)
                   (let ((_L47333_ _hd4699447328_)
                         (_L47334_ _hd4698547304_)
                         (_L47335_ _hd4697647280_)
                         (_L47336_ _hd4696747256_)
                         (_L47337_ _hd4695847232_))
                     (if (gxc#runtime-identifier=? _L47337_ 'bind-method!)
                         (___kont4785247853_
                          _L47333_
                          _L47334_
                          _L47335_
                          _L47336_
                          _L47337_)
                         (___kont4785647857_))))))
            (if (gx#stx-pair? ___stx4785047851_)
                (let ((_e4694847205_ (gx#stx-e ___stx4785047851_)))
                  (let ((_tl4695047210_ (##cdr _e4694847205_))
                        (_hd4694947208_ (##car _e4694847205_)))
                    (if (gx#stx-pair? _tl4695047210_)
                        (let ((_e4695147213_ (gx#stx-e _tl4695047210_)))
                          (let ((_tl4695347218_ (##cdr _e4695147213_))
                                (_hd4695247216_ (##car _e4695147213_)))
                            (if (gx#stx-pair? _hd4695247216_)
                                (let ((_e4695447221_
                                       (gx#stx-e _hd4695247216_)))
                                  (let ((_tl4695647226_ (##cdr _e4695447221_))
                                        (_hd4695547224_ (##car _e4695447221_)))
                                    (if (gx#identifier? _hd4695547224_)
                                        (if (gx#stx-eq? '%#ref _hd4695547224_)
                                            (if (gx#stx-pair? _tl4695647226_)
                                                (let ((_e4695747229_
                                                       (gx#stx-e
                                                        _tl4695647226_)))
                                                  (let ((_tl4695947234_
                                                         (##cdr _e4695747229_))
                                                        (_hd4695847232_
                                                         (##car _e4695747229_)))
                                                    (if (gx#stx-null?
                                                         _tl4695947234_)
                                                        (if (gx#stx-pair?
                                                             _tl4695347218_)
                                                            (let ((_e4696047237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4695347218_)))
                      (let ((_tl4696247242_ (##cdr _e4696047237_))
                            (_hd4696147240_ (##car _e4696047237_)))
                        (if (gx#stx-pair? _hd4696147240_)
                            (let ((_e4696347245_ (gx#stx-e _hd4696147240_)))
                              (let ((_tl4696547250_ (##cdr _e4696347245_))
                                    (_hd4696447248_ (##car _e4696347245_)))
                                (if (gx#identifier? _hd4696447248_)
                                    (if (gx#stx-eq? '%#ref _hd4696447248_)
                                        (if (gx#stx-pair? _tl4696547250_)
                                            (let ((_e4696647253_
                                                   (gx#stx-e _tl4696547250_)))
                                              (let ((_tl4696847258_
                                                     (##cdr _e4696647253_))
                                                    (_hd4696747256_
                                                     (##car _e4696647253_)))
                                                (if (gx#stx-null?
                                                     _tl4696847258_)
                                                    (if (gx#stx-pair?
                                                         _tl4696247242_)
                                                        (let ((_e4696947261_
                                                               (gx#stx-e
                                                                _tl4696247242_)))
                                                          (let ((_tl4697147266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4696947261_))
                        (_hd4697047264_ (##car _e4696947261_)))
                    (if (gx#stx-pair? _hd4697047264_)
                        (let ((_e4697247269_ (gx#stx-e _hd4697047264_)))
                          (let ((_tl4697447274_ (##cdr _e4697247269_))
                                (_hd4697347272_ (##car _e4697247269_)))
                            (if (gx#identifier? _hd4697347272_)
                                (if (gx#stx-eq? '%#quote _hd4697347272_)
                                    (if (gx#stx-pair? _tl4697447274_)
                                        (let ((_e4697547277_
                                               (gx#stx-e _tl4697447274_)))
                                          (let ((_tl4697747282_
                                                 (##cdr _e4697547277_))
                                                (_hd4697647280_
                                                 (##car _e4697547277_)))
                                            (if (gx#stx-null? _tl4697747282_)
                                                (if (gx#stx-pair?
                                                     _tl4697147266_)
                                                    (let ((_e4697847285_
                                                           (gx#stx-e
                                                            _tl4697147266_)))
                                                      (let ((_tl4698047290_
                                                             (##cdr _e4697847285_))
                                                            (_hd4697947288_
                                                             (##car _e4697847285_)))
                                                        (if (gx#stx-pair?
                                                             _hd4697947288_)
                                                            (let ((_e4698147293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4697947288_)))
                      (let ((_tl4698347298_ (##cdr _e4698147293_))
                            (_hd4698247296_ (##car _e4698147293_)))
                        (if (gx#identifier? _hd4698247296_)
                            (if (gx#stx-eq? '%#ref _hd4698247296_)
                                (if (gx#stx-pair? _tl4698347298_)
                                    (let ((_e4698447301_
                                           (gx#stx-e _tl4698347298_)))
                                      (let ((_tl4698647306_
                                             (##cdr _e4698447301_))
                                            (_hd4698547304_
                                             (##car _e4698447301_)))
                                        (if (gx#stx-null? _tl4698647306_)
                                            (if (gx#stx-pair? _tl4698047290_)
                                                (let ((_e4698747309_
                                                       (gx#stx-e
                                                        _tl4698047290_)))
                                                  (let ((_tl4698947314_
                                                         (##cdr _e4698747309_))
                                                        (_hd4698847312_
                                                         (##car _e4698747309_)))
                                                    (if (gx#stx-pair?
                                                         _hd4698847312_)
                                                        (let ((_e4699047317_
                                                               (gx#stx-e
                                                                _hd4698847312_)))
                                                          (let ((_tl4699247322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4699047317_))
                        (_hd4699147320_ (##car _e4699047317_)))
                    (if (gx#identifier? _hd4699147320_)
                        (if (gx#stx-eq? '%#quote _hd4699147320_)
                            (if (gx#stx-pair? _tl4699247322_)
                                (let ((_e4699347325_
                                       (gx#stx-e _tl4699247322_)))
                                  (let ((_tl4699547330_ (##cdr _e4699347325_))
                                        (_hd4699447328_ (##car _e4699347325_)))
                                    (if (gx#stx-null? _tl4699547330_)
                                        (if (gx#stx-null? _tl4698947314_)
                                            (___match4798547986_
                                             _e4694847205_
                                             _hd4694947208_
                                             _tl4695047210_
                                             _e4695147213_
                                             _hd4695247216_
                                             _tl4695347218_
                                             _e4695447221_
                                             _hd4695547224_
                                             _tl4695647226_
                                             _e4695747229_
                                             _hd4695847232_
                                             _tl4695947234_
                                             _e4696047237_
                                             _hd4696147240_
                                             _tl4696247242_
                                             _e4696347245_
                                             _hd4696447248_
                                             _tl4696547250_
                                             _e4696647253_
                                             _hd4696747256_
                                             _tl4696847258_
                                             _e4696947261_
                                             _hd4697047264_
                                             _tl4697147266_
                                             _e4697247269_
                                             _hd4697347272_
                                             _tl4697447274_
                                             _e4697547277_
                                             _hd4697647280_
                                             _tl4697747282_
                                             _e4697847285_
                                             _hd4697947288_
                                             _tl4698047290_
                                             _e4698147293_
                                             _hd4698247296_
                                             _tl4698347298_
                                             _e4698447301_
                                             _hd4698547304_
                                             _tl4698647306_
                                             _e4698747309_
                                             _hd4698847312_
                                             _tl4698947314_
                                             _e4699047317_
                                             _hd4699147320_
                                             _tl4699247322_
                                             _e4699347325_
                                             _hd4699447328_
                                             _tl4699547330_)
                                            (___kont4785647857_))
                                        (___kont4785647857_))))
                                (___kont4785647857_))
                            (___kont4785647857_))
                        (___kont4785647857_))))
                (___kont4785647857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4698047290_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47159_
                                                               _hd4698547304_)
                                                              (_L47160_
                                                               _hd4697647280_)
                                                              (_L47161_
                                                               _hd4696747256_)
                                                              (_L47162_
                                                               _hd4695847232_))
                                                          (___kont4785447855_
                                                           _L47159_
                                                           _L47160_
                                                           _L47161_
                                                           _L47162_))
                                                        (___kont4785647857_))
                                                    (___kont4785647857_)))
                                            (___kont4785647857_))))
                                    (___kont4785647857_))
                                (___kont4785647857_))
                            (___kont4785647857_))))
                    (___kont4785647857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4785647857_))
                                                (___kont4785647857_))))
                                        (___kont4785647857_))
                                    (___kont4785647857_))
                                (___kont4785647857_))))
                        (___kont4785647857_))))
                (___kont4785647857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4785647857_))))
                                            (___kont4785647857_))
                                        (___kont4785647857_))
                                    (___kont4785647857_))))
                            (___kont4785647857_))))
                    (___kont4785647857_))
                (___kont4785647857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4785647857_))
                                            (___kont4785647857_))
                                        (___kont4785647857_))))
                                (___kont4785647857_))))
                        (___kont4785647857_))))
                (___kont4785647857_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self46913_)
      (let* ((_self4691446920_ _self46913_)
             (_E4691646924_
              (lambda () (error '"No clause matching" _self4691446920_)))
             (_K4691746929_
              (lambda (_alias-id46927_)
                (cons '@alias (cons _alias-id46927_ '())))))
        (if (##structure-instance-of? _self4691446920_ 'gxc#!alias::t)
            (let* ((_e4691846932_ (##vector-ref _self4691446920_ '1))
                   (_alias-id46935_ _e4691846932_))
              (_K4691746929_ _alias-id46935_))
            (_E4691646924_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46735_)
      (let* ((_self4673646747_ _self46735_)
             (_E4673846751_
              (lambda () (error '"No clause matching" _self4673646747_)))
             (_K4673946760_
              (lambda (_plist46754_
                       _ctor46755_
                       _fields46756_
                       _super46757_
                       _type-id46758_)
                (cons '@struct-type
                      (cons _type-id46758_
                            (cons _super46757_
                                  (cons _fields46756_
                                        (cons _ctor46755_
                                              (cons _plist46754_ '())))))))))
        (if (##structure-instance-of? _self4673646747_ 'gxc#!struct-type::t)
            (let* ((_e4674046763_ (##vector-ref _self4673646747_ '1))
                   (_type-id46766_ _e4674046763_)
                   (_e4674146768_ (##vector-ref _self4673646747_ '2))
                   (_super46771_ _e4674146768_)
                   (_e4674246773_ (##vector-ref _self4673646747_ '3))
                   (_fields46776_ _e4674246773_)
                   (_e4674346778_ (##vector-ref _self4673646747_ '4))
                   (_e4674446781_ (##vector-ref _self4673646747_ '5))
                   (_ctor46784_ _e4674446781_)
                   (_e4674546786_ (##vector-ref _self4673646747_ '6))
                   (_plist46789_ _e4674546786_))
              (_K4673946760_
               _plist46789_
               _ctor46784_
               _fields46776_
               _super46771_
               _type-id46766_))
            (_E4673846751_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46589_)
      (let* ((_self4659046596_ _self46589_)
             (_E4659246600_
              (lambda () (error '"No clause matching" _self4659046596_)))
             (_K4659346605_
              (lambda (_struct-t46603_)
                (cons '@struct-pred (cons _struct-t46603_ '())))))
        (if (##structure-instance-of? _self4659046596_ 'gxc#!struct-pred::t)
            (let* ((_e4659446608_ (##vector-ref _self4659046596_ '1))
                   (_struct-t46611_ _e4659446608_))
              (_K4659346605_ _struct-t46611_))
            (_E4659246600_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46443_)
      (let* ((_self4644446450_ _self46443_)
             (_E4644646454_
              (lambda () (error '"No clause matching" _self4644446450_)))
             (_K4644746459_
              (lambda (_struct-t46457_)
                (cons '@struct-cons (cons _struct-t46457_ '())))))
        (if (##structure-instance-of? _self4644446450_ 'gxc#!struct-cons::t)
            (let* ((_e4644846462_ (##vector-ref _self4644446450_ '1))
                   (_struct-t46465_ _e4644846462_))
              (_K4644746459_ _struct-t46465_))
            (_E4644646454_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46283_)
      (let* ((_self4628446292_ _self46283_)
             (_E4628646296_
              (lambda () (error '"No clause matching" _self4628446292_)))
             (_K4628746303_
              (lambda (_unchecked?46299_ _off46300_ _struct-t46301_)
                (cons '@struct-getf
                      (cons _struct-t46301_
                            (cons _off46300_ (cons _unchecked?46299_ '())))))))
        (if (##structure-instance-of? _self4628446292_ 'gxc#!struct-getf::t)
            (let* ((_e4628846306_ (##vector-ref _self4628446292_ '1))
                   (_struct-t46309_ _e4628846306_)
                   (_e4628946311_ (##vector-ref _self4628446292_ '2))
                   (_off46314_ _e4628946311_)
                   (_e4629046316_ (##vector-ref _self4628446292_ '3))
                   (_unchecked?46319_ _e4629046316_))
              (_K4628746303_ _unchecked?46319_ _off46314_ _struct-t46309_))
            (_E4628646296_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46123_)
      (let* ((_self4612446132_ _self46123_)
             (_E4612646136_
              (lambda () (error '"No clause matching" _self4612446132_)))
             (_K4612746143_
              (lambda (_unchecked?46139_ _off46140_ _struct-t46141_)
                (cons '@struct-setf
                      (cons _struct-t46141_
                            (cons _off46140_ (cons _unchecked?46139_ '())))))))
        (if (##structure-instance-of? _self4612446132_ 'gxc#!struct-setf::t)
            (let* ((_e4612846146_ (##vector-ref _self4612446132_ '1))
                   (_struct-t46149_ _e4612846146_)
                   (_e4612946151_ (##vector-ref _self4612446132_ '2))
                   (_off46154_ _e4612946151_)
                   (_e4613046156_ (##vector-ref _self4612446132_ '3))
                   (_unchecked?46159_ _e4613046156_))
              (_K4612746143_ _unchecked?46159_ _off46154_ _struct-t46149_))
            (_E4612646136_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self45949_)
      (let* ((_self4595045960_ _self45949_)
             (_E4595245964_
              (lambda () (error '"No clause matching" _self4595045960_)))
             (_K4595345975_
              (lambda (_typedecl45967_
                       _inline45968_
                       _dispatch45969_
                       _arity45970_)
                (if _inline45968_
                    (let ((_$e45972_ _typedecl45967_))
                      (if _$e45972_
                          _$e45972_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity45970_ (cons _dispatch45969_ '())))))))
        (if (##structure-instance-of? _self4595045960_ 'gxc#!lambda::t)
            (let* ((_e4595445978_ (##vector-ref _self4595045960_ '1))
                   (_e4595545981_ (##vector-ref _self4595045960_ '2))
                   (_arity45984_ _e4595545981_)
                   (_e4595645986_ (##vector-ref _self4595045960_ '3))
                   (_dispatch45989_ _e4595645986_)
                   (_e4595745991_ (##vector-ref _self4595045960_ '4))
                   (_inline45994_ _e4595745991_)
                   (_e4595845996_ (##vector-ref _self4595045960_ '5))
                   (_typedecl45999_ _e4595845996_))
              (_K4595345975_
               _typedecl45999_
               _inline45994_
               _dispatch45989_
               _arity45984_))
            (_E4595245964_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45760_)
      (letrec ((_clause-e45762_
                (lambda (_clause45792_)
                  (let* ((_clause4579345801_ _clause45792_)
                         (_E4579545805_
                          (lambda ()
                            (error '"No clause matching" _clause4579345801_)))
                         (_K4579645811_
                          (lambda (_dispatch45808_ _arity45809_)
                            (cons _arity45809_ (cons _dispatch45808_ '())))))
                    (if (##structure-instance-of?
                         _clause4579345801_
                         'gxc#!lambda::t)
                        (let* ((_e4579745814_
                                (##vector-ref _clause4579345801_ '1))
                               (_e4579845817_
                                (##vector-ref _clause4579345801_ '2))
                               (_arity45820_ _e4579845817_)
                               (_e4579945822_
                                (##vector-ref _clause4579345801_ '3))
                               (_dispatch45825_ _e4579945822_))
                          (_K4579645811_ _dispatch45825_ _arity45820_))
                        (_E4579545805_))))))
        (let* ((_self4576345770_ _self45760_)
               (_E4576545774_
                (lambda () (error '"No clause matching" _self4576345770_)))
               (_K4576645781_
                (lambda (_clauses45777_)
                  (let ((_clauses45779_ (map _clause-e45762_ _clauses45777_)))
                    (cons '@case-lambda _clauses45779_)))))
          (if (##structure-instance-of? _self4576345770_ 'gxc#!case-lambda::t)
              (let* ((_e4576745784_ (##vector-ref _self4576345770_ '1))
                     (_e4576845787_ (##vector-ref _self4576345770_ '2))
                     (_clauses45790_ _e4576845787_))
                (_K4576645781_ _clauses45790_))
              (_E4576545774_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45603_)
      (let* ((_self4560445612_ _self45603_)
             (_E4560645616_
              (lambda () (error '"No clause matching" _self4560445612_)))
             (_K4560745622_
              (lambda (_dispatch45619_ _table45620_)
                (cons '@kw-lambda
                      (cons _table45620_ (cons _dispatch45619_ '()))))))
        (if (##structure-instance-of? _self4560445612_ 'gxc#!kw-lambda::t)
            (let* ((_e4560845625_ (##vector-ref _self4560445612_ '1))
                   (_e4560945628_ (##vector-ref _self4560445612_ '2))
                   (_table45631_ _e4560945628_)
                   (_e4561045633_ (##vector-ref _self4560445612_ '3))
                   (_dispatch45636_ _e4561045633_))
              (_K4560745622_ _dispatch45636_ _table45631_))
            (_E4560645616_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45446_)
      (let* ((_self4544745455_ _self45446_)
             (_E4544945459_
              (lambda () (error '"No clause matching" _self4544745455_)))
             (_K4545045465_
              (lambda (_main45462_ _keys45463_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45463_ (cons _main45462_ '()))))))
        (if (##structure-instance-of?
             _self4544745455_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4545145468_ (##vector-ref _self4544745455_ '1))
                   (_e4545245471_ (##vector-ref _self4544745455_ '2))
                   (_keys45474_ _e4545245471_)
                   (_e4545345476_ (##vector-ref _self4544745455_ '3))
                   (_main45479_ _e4545345476_))
              (_K4545045465_ _main45479_ _keys45474_))
            (_E4544945459_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
