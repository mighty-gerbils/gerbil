(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj48199 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj48199) __obj48199))))))
  (define gxc#optimize!
    (lambda (_ctx47892_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47892_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47892_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47895_
                  (gxc#optimize-source
                   (##structure-ref _ctx47892_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47892_
              _code47895_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47837_)
      (letrec* ((_deps47839_
                 (let* ((_imports47883_
                         (##structure-ref
                          _ctx47837_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47885_ (gx#core-context-prelude__% _ctx47837_)))
                   (if _$e47885_
                       ((lambda (_g4788747889_)
                          (cons _g4788747889_ _imports47883_))
                        _$e47885_)
                       _imports47883_))))
        (let _lp47841_ ((_rest47843_ _deps47839_))
          (let* ((_rest4784447852_ _rest47843_)
                 (_else4784647860_ (lambda () '#!void))
                 (_K4784847871_
                  (lambda (_rest47863_ _hd47864_)
                    (if (##structure-instance-of?
                         _hd47864_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47864_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47866_
                                       (gx#core-context-prelude__% _hd47864_)))
                                  (if _$e47866_
                                      ((lambda (_pre47869_)
                                         (_lp47841_
                                          (cons _pre47869_
                                                (##structure-ref
                                                 _hd47864_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47866_)
                                      (_lp47841_
                                       (##structure-ref
                                        _hd47864_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47864_)))
                          (_lp47841_ _rest47863_))
                        (if (##structure-instance-of?
                             _hd47864_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47864_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47841_
                                     (##structure-ref
                                      _hd47864_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47864_)))
                              (_lp47841_ _rest47863_))
                            (if (##structure-direct-instance-of?
                                 _hd47864_
                                 'gx#module-import::t)
                                (_lp47841_
                                 (cons (##direct-structure-ref
                                        _hd47864_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47863_))
                                (if (##structure-direct-instance-of?
                                     _hd47864_
                                     'gx#module-export::t)
                                    (_lp47841_
                                     (cons (##direct-structure-ref
                                            _hd47864_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47863_))
                                    (if (##structure-direct-instance-of?
                                         _hd47864_
                                         'gx#import-set::t)
                                        (_lp47841_
                                         (cons (##direct-structure-ref
                                                _hd47864_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47863_))
                                        (error '"Unexpected module import"
                                               _hd47864_)))))))))
            (if (##pair? _rest4784447852_)
                (let ((_hd4784947874_ (##car _rest4784447852_))
                      (_tl4785047876_ (##cdr _rest4784447852_)))
                  (let* ((_hd47879_ _hd4784947874_)
                         (_rest47881_ _tl4785047876_))
                    (_K4784847871_ _rest47881_ _hd47879_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47817_)
      (if (if (##structure-instance-of? _ctx47817_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47817_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47819_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47821_
                  (##structure-ref _ctx47817_ '1 gx#expander-context::t '#f))
                 (_mod47823_ (table-ref _ht47819_ _id47821_ '#f)))
            (let ((_$e47826_ _mod47823_))
              (if _$e47826_
                  _$e47826_
                  (let* ((_mod47829_ (gxc#optimizer-import-ssxi _ctx47817_))
                         (_val47834_
                          (let ((_$e47831_ _mod47829_))
                            (if _$e47831_ _$e47831_ '#!void))))
                    (begin
                      (table-set! _ht47819_ _id47821_ _val47834_)
                      _val47834_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47794_)
      (letrec ((_catch-e47796_
                (lambda (_exn47815_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47794_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47815_))
                        '#!void)
                    '#f)))
               (_import-e47797_
                (lambda ()
                  (let* ((_str-id47800_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47794_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47808_
                          (let ((_odir4780147803_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4780147803_
                                (let ((_odir47806_ _odir4780147803_))
                                  (path-expand
                                   (string-append _str-id47800_ '".ss")
                                   _odir47806_))
                                '#f)))
                         (_library-path47810_
                          (string->symbol
                           (string-append '":" _str-id47800_ '".ss")))
                         (_ssxi-path47812_
                          (if (if _artefact-path47808_
                                  (file-exists? _artefact-path47808_)
                                  '#f)
                              _artefact-path47808_
                              _library-path47810_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47812_)
                      (gx#import-module__% _ssxi-path47812_ '#t '#t))))))
        (if (##structure-ref _ctx47794_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47796_ _import-e47797_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47788_)
      (begin
        (gxc#apply-collect-mutators _stx47788_)
        (let ((_stx47790_ (gxc#apply-lift-top-lambdas _stx47788_)))
          (begin
            (gxc#apply-collect-type-info _stx47790_)
            (let ((_stx47792_ (gxc#apply-optimize-annotated _stx47790_)))
              (gxc#apply-optimize-call _stx47792_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl47785_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47785_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47785_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47785_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47785_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47785_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47785_ '%#call gxc#generate-ssxi-call%)
           _tbl47785_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47778_ . _args47780_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47778_ _args47780_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47739_)
      (let* ((_g4774147751_
              (lambda (_g4774247748_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4774247748_)))
             (_g4774047775_
              (lambda (_g4774247754_)
                (if (gx#stx-pair? _g4774247754_)
                    (let ((_e4774447756_ (gx#stx-e _g4774247754_)))
                      (let ((_hd4774547759_ (##car _e4774447756_))
                            (_tl4774647761_ (##cdr _e4774447756_)))
                        ((lambda (_L47764_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47739_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4774647761_)))
                    (_g4774147751_ _g4774247754_)))))
        (_g4774047775_ _stx47739_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47679_)
      (let* ((_g4768147695_
              (lambda (_g4768247692_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4768247692_)))
             (_g4768047736_
              (lambda (_g4768247698_)
                (if (gx#stx-pair? _g4768247698_)
                    (let ((_e4768547700_ (gx#stx-e _g4768247698_)))
                      (let ((_hd4768647703_ (##car _e4768547700_))
                            (_tl4768747705_ (##cdr _e4768547700_)))
                        (if (gx#stx-pair? _tl4768747705_)
                            (let ((_e4768847708_ (gx#stx-e _tl4768747705_)))
                              (let ((_hd4768947711_ (##car _e4768847708_))
                                    (_tl4769047713_ (##cdr _e4768847708_)))
                                ((lambda (_L47716_ _L47717_)
                                   (let* ((_ctx47730_
                                           (gx#syntax-local-e__0 _L47717_))
                                          (_code47732_
                                           (##structure-ref
                                            _ctx47730_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47732_))
                                      gx#current-expander-context
                                      _ctx47730_)))
                                 _tl4769047713_
                                 _hd4768947711_)))
                            (_g4768147695_ _g4768247698_))))
                    (_g4768147695_ _g4768247698_)))))
        (_g4768047736_ _stx47679_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47489_)
      (letrec ((_generate-e47491_
                (lambda (_id47668_)
                  (let* ((_sym47670_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47668_)
                              '#f))
                         (_$e47672_
                          (if _sym47670_
                              (gxc#optimizer-lookup-type _sym47670_)
                              '#f)))
                    (if _$e47672_
                        ((lambda (_type47675_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47670_)
                             (let ((_typedecl47677_
                                    (call-method _type47675_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47670_
                                           (cons _typedecl47677_ '()))))))
                         _$e47672_)
                        '(begin))))))
        (let* ((___stx4789847899_ _stx47489_)
               (_g4749447532_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4789847899_))))
          (let ((___kont4790047901_
                 (lambda (_L47650_) (_generate-e47491_ _L47650_)))
                (___kont4790247903_
                 (lambda (_L47585_)
                   (let ((_types47611_
                          (map _generate-e47491_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4760347606_ _g4760447608_)
                                           (cons _g4760347606_ _g4760447608_))
                                         '()
                                         _L47585_)))))
                     (cons 'begin _types47611_)))))
            (let ((___match4795347954_
                   (lambda (_e4751047537_
                            _hd4751147540_
                            _tl4751247542_
                            _e4751347545_
                            _hd4751447548_
                            _tl4751547550_
                            ___splice4790447905_
                            _target4751647553_
                            _tl4751847555_)
                     (letrec ((_loop4751947558_
                               (lambda (_hd4751747561_ _id4752347563_)
                                 (if (gx#stx-pair? _hd4751747561_)
                                     (let ((_e4752047566_
                                            (gx#stx-e _hd4751747561_)))
                                       (let ((_lp-tl4752247571_
                                              (##cdr _e4752047566_))
                                             (_lp-hd4752147569_
                                              (##car _e4752047566_)))
                                         (_loop4751947558_
                                          _lp-tl4752247571_
                                          (cons _lp-hd4752147569_
                                                _id4752347563_))))
                                     (let ((_id4752447574_
                                            (reverse _id4752347563_)))
                                       (if (gx#stx-pair? _tl4751547550_)
                                           (let ((_e4752547577_
                                                  (gx#stx-e _tl4751547550_)))
                                             (let ((_tl4752747582_
                                                    (##cdr _e4752547577_))
                                                   (_hd4752647580_
                                                    (##car _e4752547577_)))
                                               (if (gx#stx-null?
                                                    _tl4752747582_)
                                                   (___kont4790247903_
                                                    _id4752447574_)
                                                   (_g4749447532_))))
                                           (_g4749447532_)))))))
                       (_loop4751947558_ _target4751647553_ '())))))
              (if (gx#stx-pair? ___stx4789847899_)
                  (let ((_e4749747618_ (gx#stx-e ___stx4789847899_)))
                    (let ((_tl4749947623_ (##cdr _e4749747618_))
                          (_hd4749847621_ (##car _e4749747618_)))
                      (if (gx#stx-pair? _tl4749947623_)
                          (let ((_e4750047626_ (gx#stx-e _tl4749947623_)))
                            (let ((_tl4750247631_ (##cdr _e4750047626_))
                                  (_hd4750147629_ (##car _e4750047626_)))
                              (if (gx#stx-pair? _hd4750147629_)
                                  (let ((_e4750347634_
                                         (gx#stx-e _hd4750147629_)))
                                    (let ((_tl4750547639_
                                           (##cdr _e4750347634_))
                                          (_hd4750447637_
                                           (##car _e4750347634_)))
                                      (if (gx#stx-null? _tl4750547639_)
                                          (if (gx#stx-pair? _tl4750247631_)
                                              (let ((_e4750647642_
                                                     (gx#stx-e
                                                      _tl4750247631_)))
                                                (let ((_tl4750847647_
                                                       (##cdr _e4750647642_))
                                                      (_hd4750747645_
                                                       (##car _e4750647642_)))
                                                  (if (gx#stx-null?
                                                       _tl4750847647_)
                                                      (___kont4790047901_
                                                       _hd4750447637_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4750147629_)
                                                          (let ((___splice4790447905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4750147629_ '0)))
                    (let ((_tl4751847555_
                           (##vector-ref ___splice4790447905_ '1))
                          (_target4751647553_
                           (##vector-ref ___splice4790447905_ '0)))
                      (if (gx#stx-null? _tl4751847555_)
                          (___match4795347954_
                           _e4749747618_
                           _hd4749847621_
                           _tl4749947623_
                           _e4750047626_
                           _hd4750147629_
                           _tl4750247631_
                           ___splice4790447905_
                           _target4751647553_
                           _tl4751847555_)
                          (_g4749447532_))))
                  (_g4749447532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4750147629_)
                                                  (let ((___splice4790447905_
                                                         (gx#syntax-split-splice
                                                          _hd4750147629_
                                                          '0)))
                                                    (let ((_tl4751847555_
                                                           (##vector-ref
                                                            ___splice4790447905_
                                                            '1))
                                                          (_target4751647553_
                                                           (##vector-ref
                                                            ___splice4790447905_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4751847555_)
                                                          (___match4795347954_
                                                           _e4749747618_
                                                           _hd4749847621_
                                                           _tl4749947623_
                                                           _e4750047626_
                                                           _hd4750147629_
                                                           _tl4750247631_
                                                           ___splice4790447905_
                                                           _target4751647553_
                                                           _tl4751847555_)
                                                          (_g4749447532_))))
                                                  (_g4749447532_)))
                                          (if (gx#stx-pair/null?
                                               _hd4750147629_)
                                              (let ((___splice4790447905_
                                                     (gx#syntax-split-splice
                                                      _hd4750147629_
                                                      '0)))
                                                (let ((_tl4751847555_
                                                       (##vector-ref
                                                        ___splice4790447905_
                                                        '1))
                                                      (_target4751647553_
                                                       (##vector-ref
                                                        ___splice4790447905_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4751847555_)
                                                      (___match4795347954_
                                                       _e4749747618_
                                                       _hd4749847621_
                                                       _tl4749947623_
                                                       _e4750047626_
                                                       _hd4750147629_
                                                       _tl4750247631_
                                                       ___splice4790447905_
                                                       _target4751647553_
                                                       _tl4751847555_)
                                                      (_g4749447532_))))
                                              (_g4749447532_)))))
                                  (if (gx#stx-pair/null? _hd4750147629_)
                                      (let ((___splice4790447905_
                                             (gx#syntax-split-splice
                                              _hd4750147629_
                                              '0)))
                                        (let ((_tl4751847555_
                                               (##vector-ref
                                                ___splice4790447905_
                                                '1))
                                              (_target4751647553_
                                               (##vector-ref
                                                ___splice4790447905_
                                                '0)))
                                          (if (gx#stx-null? _tl4751847555_)
                                              (___match4795347954_
                                               _e4749747618_
                                               _hd4749847621_
                                               _tl4749947623_
                                               _e4750047626_
                                               _hd4750147629_
                                               _tl4750247631_
                                               ___splice4790447905_
                                               _target4751647553_
                                               _tl4751847555_)
                                              (_g4749447532_))))
                                      (_g4749447532_)))))
                          (_g4749447532_))))
                  (_g4749447532_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx47043_)
      (let* ((___stx4795647957_ _stx47043_)
             (_g4704747149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4795647957_))))
        (let ((___kont4795847959_
               (lambda (_L47439_ _L47440_ _L47441_ _L47442_ _L47443_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47442_)
                             (cons (gx#stx-e _L47441_)
                                   (cons (gxc#identifier-symbol _L47440_)
                                         (cons (gx#stx-e _L47439_) '())))))))
              (___kont4796047961_
               (lambda (_L47265_ _L47266_ _L47267_ _L47268_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47267_)
                             (cons (gx#stx-e _L47266_)
                                   (cons (gxc#identifier-symbol _L47265_)
                                         (cons '#f '())))))))
              (___kont4796247963_ (lambda () '(begin))))
          (let ((___match4809148092_
                 (lambda (_e4705447311_
                          _hd4705547314_
                          _tl4705647316_
                          _e4705747319_
                          _hd4705847322_
                          _tl4705947324_
                          _e4706047327_
                          _hd4706147330_
                          _tl4706247332_
                          _e4706347335_
                          _hd4706447338_
                          _tl4706547340_
                          _e4706647343_
                          _hd4706747346_
                          _tl4706847348_
                          _e4706947351_
                          _hd4707047354_
                          _tl4707147356_
                          _e4707247359_
                          _hd4707347362_
                          _tl4707447364_
                          _e4707547367_
                          _hd4707647370_
                          _tl4707747372_
                          _e4707847375_
                          _hd4707947378_
                          _tl4708047380_
                          _e4708147383_
                          _hd4708247386_
                          _tl4708347388_
                          _e4708447391_
                          _hd4708547394_
                          _tl4708647396_
                          _e4708747399_
                          _hd4708847402_
                          _tl4708947404_
                          _e4709047407_
                          _hd4709147410_
                          _tl4709247412_
                          _e4709347415_
                          _hd4709447418_
                          _tl4709547420_
                          _e4709647423_
                          _hd4709747426_
                          _tl4709847428_
                          _e4709947431_
                          _hd4710047434_
                          _tl4710147436_)
                   (let ((_L47439_ _hd4710047434_)
                         (_L47440_ _hd4709147410_)
                         (_L47441_ _hd4708247386_)
                         (_L47442_ _hd4707347362_)
                         (_L47443_ _hd4706447338_))
                     (if (gxc#runtime-identifier=? _L47443_ 'bind-method!)
                         (___kont4795847959_
                          _L47439_
                          _L47440_
                          _L47441_
                          _L47442_
                          _L47443_)
                         (___kont4796247963_))))))
            (if (gx#stx-pair? ___stx4795647957_)
                (let ((_e4705447311_ (gx#stx-e ___stx4795647957_)))
                  (let ((_tl4705647316_ (##cdr _e4705447311_))
                        (_hd4705547314_ (##car _e4705447311_)))
                    (if (gx#stx-pair? _tl4705647316_)
                        (let ((_e4705747319_ (gx#stx-e _tl4705647316_)))
                          (let ((_tl4705947324_ (##cdr _e4705747319_))
                                (_hd4705847322_ (##car _e4705747319_)))
                            (if (gx#stx-pair? _hd4705847322_)
                                (let ((_e4706047327_
                                       (gx#stx-e _hd4705847322_)))
                                  (let ((_tl4706247332_ (##cdr _e4706047327_))
                                        (_hd4706147330_ (##car _e4706047327_)))
                                    (if (gx#identifier? _hd4706147330_)
                                        (if (gx#stx-eq? '%#ref _hd4706147330_)
                                            (if (gx#stx-pair? _tl4706247332_)
                                                (let ((_e4706347335_
                                                       (gx#stx-e
                                                        _tl4706247332_)))
                                                  (let ((_tl4706547340_
                                                         (##cdr _e4706347335_))
                                                        (_hd4706447338_
                                                         (##car _e4706347335_)))
                                                    (if (gx#stx-null?
                                                         _tl4706547340_)
                                                        (if (gx#stx-pair?
                                                             _tl4705947324_)
                                                            (let ((_e4706647343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4705947324_)))
                      (let ((_tl4706847348_ (##cdr _e4706647343_))
                            (_hd4706747346_ (##car _e4706647343_)))
                        (if (gx#stx-pair? _hd4706747346_)
                            (let ((_e4706947351_ (gx#stx-e _hd4706747346_)))
                              (let ((_tl4707147356_ (##cdr _e4706947351_))
                                    (_hd4707047354_ (##car _e4706947351_)))
                                (if (gx#identifier? _hd4707047354_)
                                    (if (gx#stx-eq? '%#ref _hd4707047354_)
                                        (if (gx#stx-pair? _tl4707147356_)
                                            (let ((_e4707247359_
                                                   (gx#stx-e _tl4707147356_)))
                                              (let ((_tl4707447364_
                                                     (##cdr _e4707247359_))
                                                    (_hd4707347362_
                                                     (##car _e4707247359_)))
                                                (if (gx#stx-null?
                                                     _tl4707447364_)
                                                    (if (gx#stx-pair?
                                                         _tl4706847348_)
                                                        (let ((_e4707547367_
                                                               (gx#stx-e
                                                                _tl4706847348_)))
                                                          (let ((_tl4707747372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4707547367_))
                        (_hd4707647370_ (##car _e4707547367_)))
                    (if (gx#stx-pair? _hd4707647370_)
                        (let ((_e4707847375_ (gx#stx-e _hd4707647370_)))
                          (let ((_tl4708047380_ (##cdr _e4707847375_))
                                (_hd4707947378_ (##car _e4707847375_)))
                            (if (gx#identifier? _hd4707947378_)
                                (if (gx#stx-eq? '%#quote _hd4707947378_)
                                    (if (gx#stx-pair? _tl4708047380_)
                                        (let ((_e4708147383_
                                               (gx#stx-e _tl4708047380_)))
                                          (let ((_tl4708347388_
                                                 (##cdr _e4708147383_))
                                                (_hd4708247386_
                                                 (##car _e4708147383_)))
                                            (if (gx#stx-null? _tl4708347388_)
                                                (if (gx#stx-pair?
                                                     _tl4707747372_)
                                                    (let ((_e4708447391_
                                                           (gx#stx-e
                                                            _tl4707747372_)))
                                                      (let ((_tl4708647396_
                                                             (##cdr _e4708447391_))
                                                            (_hd4708547394_
                                                             (##car _e4708447391_)))
                                                        (if (gx#stx-pair?
                                                             _hd4708547394_)
                                                            (let ((_e4708747399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4708547394_)))
                      (let ((_tl4708947404_ (##cdr _e4708747399_))
                            (_hd4708847402_ (##car _e4708747399_)))
                        (if (gx#identifier? _hd4708847402_)
                            (if (gx#stx-eq? '%#ref _hd4708847402_)
                                (if (gx#stx-pair? _tl4708947404_)
                                    (let ((_e4709047407_
                                           (gx#stx-e _tl4708947404_)))
                                      (let ((_tl4709247412_
                                             (##cdr _e4709047407_))
                                            (_hd4709147410_
                                             (##car _e4709047407_)))
                                        (if (gx#stx-null? _tl4709247412_)
                                            (if (gx#stx-pair? _tl4708647396_)
                                                (let ((_e4709347415_
                                                       (gx#stx-e
                                                        _tl4708647396_)))
                                                  (let ((_tl4709547420_
                                                         (##cdr _e4709347415_))
                                                        (_hd4709447418_
                                                         (##car _e4709347415_)))
                                                    (if (gx#stx-pair?
                                                         _hd4709447418_)
                                                        (let ((_e4709647423_
                                                               (gx#stx-e
                                                                _hd4709447418_)))
                                                          (let ((_tl4709847428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4709647423_))
                        (_hd4709747426_ (##car _e4709647423_)))
                    (if (gx#identifier? _hd4709747426_)
                        (if (gx#stx-eq? '%#quote _hd4709747426_)
                            (if (gx#stx-pair? _tl4709847428_)
                                (let ((_e4709947431_
                                       (gx#stx-e _tl4709847428_)))
                                  (let ((_tl4710147436_ (##cdr _e4709947431_))
                                        (_hd4710047434_ (##car _e4709947431_)))
                                    (if (gx#stx-null? _tl4710147436_)
                                        (if (gx#stx-null? _tl4709547420_)
                                            (___match4809148092_
                                             _e4705447311_
                                             _hd4705547314_
                                             _tl4705647316_
                                             _e4705747319_
                                             _hd4705847322_
                                             _tl4705947324_
                                             _e4706047327_
                                             _hd4706147330_
                                             _tl4706247332_
                                             _e4706347335_
                                             _hd4706447338_
                                             _tl4706547340_
                                             _e4706647343_
                                             _hd4706747346_
                                             _tl4706847348_
                                             _e4706947351_
                                             _hd4707047354_
                                             _tl4707147356_
                                             _e4707247359_
                                             _hd4707347362_
                                             _tl4707447364_
                                             _e4707547367_
                                             _hd4707647370_
                                             _tl4707747372_
                                             _e4707847375_
                                             _hd4707947378_
                                             _tl4708047380_
                                             _e4708147383_
                                             _hd4708247386_
                                             _tl4708347388_
                                             _e4708447391_
                                             _hd4708547394_
                                             _tl4708647396_
                                             _e4708747399_
                                             _hd4708847402_
                                             _tl4708947404_
                                             _e4709047407_
                                             _hd4709147410_
                                             _tl4709247412_
                                             _e4709347415_
                                             _hd4709447418_
                                             _tl4709547420_
                                             _e4709647423_
                                             _hd4709747426_
                                             _tl4709847428_
                                             _e4709947431_
                                             _hd4710047434_
                                             _tl4710147436_)
                                            (___kont4796247963_))
                                        (___kont4796247963_))))
                                (___kont4796247963_))
                            (___kont4796247963_))
                        (___kont4796247963_))))
                (___kont4796247963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4708647396_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47265_
                                                               _hd4709147410_)
                                                              (_L47266_
                                                               _hd4708247386_)
                                                              (_L47267_
                                                               _hd4707347362_)
                                                              (_L47268_
                                                               _hd4706447338_))
                                                          (___kont4796047961_
                                                           _L47265_
                                                           _L47266_
                                                           _L47267_
                                                           _L47268_))
                                                        (___kont4796247963_))
                                                    (___kont4796247963_)))
                                            (___kont4796247963_))))
                                    (___kont4796247963_))
                                (___kont4796247963_))
                            (___kont4796247963_))))
                    (___kont4796247963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4796247963_))
                                                (___kont4796247963_))))
                                        (___kont4796247963_))
                                    (___kont4796247963_))
                                (___kont4796247963_))))
                        (___kont4796247963_))))
                (___kont4796247963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4796247963_))))
                                            (___kont4796247963_))
                                        (___kont4796247963_))
                                    (___kont4796247963_))))
                            (___kont4796247963_))))
                    (___kont4796247963_))
                (___kont4796247963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4796247963_))
                                            (___kont4796247963_))
                                        (___kont4796247963_))))
                                (___kont4796247963_))))
                        (___kont4796247963_))))
                (___kont4796247963_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self47019_)
      (let* ((_self4702047026_ _self47019_)
             (_E4702247030_
              (lambda () (error '"No clause matching" _self4702047026_)))
             (_K4702347035_
              (lambda (_alias-id47033_)
                (cons '@alias (cons _alias-id47033_ '())))))
        (if (##structure-instance-of? _self4702047026_ 'gxc#!alias::t)
            (let* ((_e4702447038_ (##vector-ref _self4702047026_ '1))
                   (_alias-id47041_ _e4702447038_))
              (_K4702347035_ _alias-id47041_))
            (_E4702247030_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46841_)
      (let* ((_self4684246853_ _self46841_)
             (_E4684446857_
              (lambda () (error '"No clause matching" _self4684246853_)))
             (_K4684546866_
              (lambda (_plist46860_
                       _ctor46861_
                       _fields46862_
                       _super46863_
                       _type-id46864_)
                (cons '@struct-type
                      (cons _type-id46864_
                            (cons _super46863_
                                  (cons _fields46862_
                                        (cons _ctor46861_
                                              (cons _plist46860_ '())))))))))
        (if (##structure-instance-of? _self4684246853_ 'gxc#!struct-type::t)
            (let* ((_e4684646869_ (##vector-ref _self4684246853_ '1))
                   (_type-id46872_ _e4684646869_)
                   (_e4684746874_ (##vector-ref _self4684246853_ '2))
                   (_super46877_ _e4684746874_)
                   (_e4684846879_ (##vector-ref _self4684246853_ '3))
                   (_fields46882_ _e4684846879_)
                   (_e4684946884_ (##vector-ref _self4684246853_ '4))
                   (_e4685046887_ (##vector-ref _self4684246853_ '5))
                   (_ctor46890_ _e4685046887_)
                   (_e4685146892_ (##vector-ref _self4684246853_ '6))
                   (_plist46895_ _e4685146892_))
              (_K4684546866_
               _plist46895_
               _ctor46890_
               _fields46882_
               _super46877_
               _type-id46872_))
            (_E4684446857_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46695_)
      (let* ((_self4669646702_ _self46695_)
             (_E4669846706_
              (lambda () (error '"No clause matching" _self4669646702_)))
             (_K4669946711_
              (lambda (_struct-t46709_)
                (cons '@struct-pred (cons _struct-t46709_ '())))))
        (if (##structure-instance-of? _self4669646702_ 'gxc#!struct-pred::t)
            (let* ((_e4670046714_ (##vector-ref _self4669646702_ '1))
                   (_struct-t46717_ _e4670046714_))
              (_K4669946711_ _struct-t46717_))
            (_E4669846706_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46549_)
      (let* ((_self4655046556_ _self46549_)
             (_E4655246560_
              (lambda () (error '"No clause matching" _self4655046556_)))
             (_K4655346565_
              (lambda (_struct-t46563_)
                (cons '@struct-cons (cons _struct-t46563_ '())))))
        (if (##structure-instance-of? _self4655046556_ 'gxc#!struct-cons::t)
            (let* ((_e4655446568_ (##vector-ref _self4655046556_ '1))
                   (_struct-t46571_ _e4655446568_))
              (_K4655346565_ _struct-t46571_))
            (_E4655246560_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46389_)
      (let* ((_self4639046398_ _self46389_)
             (_E4639246402_
              (lambda () (error '"No clause matching" _self4639046398_)))
             (_K4639346409_
              (lambda (_unchecked?46405_ _off46406_ _struct-t46407_)
                (cons '@struct-getf
                      (cons _struct-t46407_
                            (cons _off46406_ (cons _unchecked?46405_ '())))))))
        (if (##structure-instance-of? _self4639046398_ 'gxc#!struct-getf::t)
            (let* ((_e4639446412_ (##vector-ref _self4639046398_ '1))
                   (_struct-t46415_ _e4639446412_)
                   (_e4639546417_ (##vector-ref _self4639046398_ '2))
                   (_off46420_ _e4639546417_)
                   (_e4639646422_ (##vector-ref _self4639046398_ '3))
                   (_unchecked?46425_ _e4639646422_))
              (_K4639346409_ _unchecked?46425_ _off46420_ _struct-t46415_))
            (_E4639246402_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46229_)
      (let* ((_self4623046238_ _self46229_)
             (_E4623246242_
              (lambda () (error '"No clause matching" _self4623046238_)))
             (_K4623346249_
              (lambda (_unchecked?46245_ _off46246_ _struct-t46247_)
                (cons '@struct-setf
                      (cons _struct-t46247_
                            (cons _off46246_ (cons _unchecked?46245_ '())))))))
        (if (##structure-instance-of? _self4623046238_ 'gxc#!struct-setf::t)
            (let* ((_e4623446252_ (##vector-ref _self4623046238_ '1))
                   (_struct-t46255_ _e4623446252_)
                   (_e4623546257_ (##vector-ref _self4623046238_ '2))
                   (_off46260_ _e4623546257_)
                   (_e4623646262_ (##vector-ref _self4623046238_ '3))
                   (_unchecked?46265_ _e4623646262_))
              (_K4623346249_ _unchecked?46265_ _off46260_ _struct-t46255_))
            (_E4623246242_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self46055_)
      (let* ((_self4605646066_ _self46055_)
             (_E4605846070_
              (lambda () (error '"No clause matching" _self4605646066_)))
             (_K4605946081_
              (lambda (_typedecl46073_
                       _inline46074_
                       _dispatch46075_
                       _arity46076_)
                (if _inline46074_
                    (let ((_$e46078_ _typedecl46073_))
                      (if _$e46078_
                          _$e46078_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity46076_ (cons _dispatch46075_ '())))))))
        (if (##structure-instance-of? _self4605646066_ 'gxc#!lambda::t)
            (let* ((_e4606046084_ (##vector-ref _self4605646066_ '1))
                   (_e4606146087_ (##vector-ref _self4605646066_ '2))
                   (_arity46090_ _e4606146087_)
                   (_e4606246092_ (##vector-ref _self4605646066_ '3))
                   (_dispatch46095_ _e4606246092_)
                   (_e4606346097_ (##vector-ref _self4605646066_ '4))
                   (_inline46100_ _e4606346097_)
                   (_e4606446102_ (##vector-ref _self4605646066_ '5))
                   (_typedecl46105_ _e4606446102_))
              (_K4605946081_
               _typedecl46105_
               _inline46100_
               _dispatch46095_
               _arity46090_))
            (_E4605846070_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45866_)
      (letrec ((_clause-e45868_
                (lambda (_clause45898_)
                  (let* ((_clause4589945907_ _clause45898_)
                         (_E4590145911_
                          (lambda ()
                            (error '"No clause matching" _clause4589945907_)))
                         (_K4590245917_
                          (lambda (_dispatch45914_ _arity45915_)
                            (cons _arity45915_ (cons _dispatch45914_ '())))))
                    (if (##structure-instance-of?
                         _clause4589945907_
                         'gxc#!lambda::t)
                        (let* ((_e4590345920_
                                (##vector-ref _clause4589945907_ '1))
                               (_e4590445923_
                                (##vector-ref _clause4589945907_ '2))
                               (_arity45926_ _e4590445923_)
                               (_e4590545928_
                                (##vector-ref _clause4589945907_ '3))
                               (_dispatch45931_ _e4590545928_))
                          (_K4590245917_ _dispatch45931_ _arity45926_))
                        (_E4590145911_))))))
        (let* ((_self4586945876_ _self45866_)
               (_E4587145880_
                (lambda () (error '"No clause matching" _self4586945876_)))
               (_K4587245887_
                (lambda (_clauses45883_)
                  (let ((_clauses45885_ (map _clause-e45868_ _clauses45883_)))
                    (cons '@case-lambda _clauses45885_)))))
          (if (##structure-instance-of? _self4586945876_ 'gxc#!case-lambda::t)
              (let* ((_e4587345890_ (##vector-ref _self4586945876_ '1))
                     (_e4587445893_ (##vector-ref _self4586945876_ '2))
                     (_clauses45896_ _e4587445893_))
                (_K4587245887_ _clauses45896_))
              (_E4587145880_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45709_)
      (let* ((_self4571045718_ _self45709_)
             (_E4571245722_
              (lambda () (error '"No clause matching" _self4571045718_)))
             (_K4571345728_
              (lambda (_dispatch45725_ _table45726_)
                (cons '@kw-lambda
                      (cons _table45726_ (cons _dispatch45725_ '()))))))
        (if (##structure-instance-of? _self4571045718_ 'gxc#!kw-lambda::t)
            (let* ((_e4571445731_ (##vector-ref _self4571045718_ '1))
                   (_e4571545734_ (##vector-ref _self4571045718_ '2))
                   (_table45737_ _e4571545734_)
                   (_e4571645739_ (##vector-ref _self4571045718_ '3))
                   (_dispatch45742_ _e4571645739_))
              (_K4571345728_ _dispatch45742_ _table45737_))
            (_E4571245722_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45552_)
      (let* ((_self4555345561_ _self45552_)
             (_E4555545565_
              (lambda () (error '"No clause matching" _self4555345561_)))
             (_K4555645571_
              (lambda (_main45568_ _keys45569_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45569_ (cons _main45568_ '()))))))
        (if (##structure-instance-of?
             _self4555345561_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4555745574_ (##vector-ref _self4555345561_ '1))
                   (_e4555845577_ (##vector-ref _self4555345561_ '2))
                   (_keys45580_ _e4555845577_)
                   (_e4555945582_ (##vector-ref _self4555345561_ '3))
                   (_main45585_ _e4555945582_))
              (_K4555645571_ _main45585_ _keys45580_))
            (_E4555545565_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
