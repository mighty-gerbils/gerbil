(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj47984 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj47984) __obj47984))))))
  (define gxc#optimize!
    (lambda (_ctx47677_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47677_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47677_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47680_
                  (gxc#optimize-source
                   (##structure-ref _ctx47677_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47677_
              _code47680_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47622_)
      (letrec* ((_deps47624_
                 (let* ((_imports47668_
                         (##structure-ref
                          _ctx47622_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47670_ (gx#core-context-prelude__% _ctx47622_)))
                   (if _$e47670_
                       ((lambda (_g4767247674_)
                          (cons _g4767247674_ _imports47668_))
                        _$e47670_)
                       _imports47668_))))
        (let _lp47626_ ((_rest47628_ _deps47624_))
          (let* ((_rest4762947637_ _rest47628_)
                 (_else4763147645_ (lambda () '#!void))
                 (_K4763347656_
                  (lambda (_rest47648_ _hd47649_)
                    (if (##structure-instance-of?
                         _hd47649_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47649_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47651_
                                       (gx#core-context-prelude__% _hd47649_)))
                                  (if _$e47651_
                                      ((lambda (_pre47654_)
                                         (_lp47626_
                                          (cons _pre47654_
                                                (##structure-ref
                                                 _hd47649_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47651_)
                                      (_lp47626_
                                       (##structure-ref
                                        _hd47649_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47649_)))
                          (_lp47626_ _rest47648_))
                        (if (##structure-instance-of?
                             _hd47649_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47649_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47626_
                                     (##structure-ref
                                      _hd47649_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47649_)))
                              (_lp47626_ _rest47648_))
                            (if (##structure-direct-instance-of?
                                 _hd47649_
                                 'gx#module-import::t)
                                (_lp47626_
                                 (cons (##direct-structure-ref
                                        _hd47649_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47648_))
                                (if (##structure-direct-instance-of?
                                     _hd47649_
                                     'gx#module-export::t)
                                    (_lp47626_
                                     (cons (##direct-structure-ref
                                            _hd47649_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47648_))
                                    (if (##structure-direct-instance-of?
                                         _hd47649_
                                         'gx#import-set::t)
                                        (_lp47626_
                                         (cons (##direct-structure-ref
                                                _hd47649_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47648_))
                                        (error '"Unexpected module import"
                                               _hd47649_)))))))))
            (if (##pair? _rest4762947637_)
                (let ((_hd4763447659_ (##car _rest4762947637_))
                      (_tl4763547661_ (##cdr _rest4762947637_)))
                  (let* ((_hd47664_ _hd4763447659_)
                         (_rest47666_ _tl4763547661_))
                    (_K4763347656_ _rest47666_ _hd47664_)))
                (_else4763147645_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47602_)
      (if (if (##structure-instance-of? _ctx47602_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47602_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47604_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47606_
                  (##structure-ref _ctx47602_ '1 gx#expander-context::t '#f))
                 (_mod47608_ (table-ref _ht47604_ _id47606_ '#f)))
            (let ((_$e47611_ _mod47608_))
              (if _$e47611_
                  _$e47611_
                  (let* ((_mod47614_ (gxc#optimizer-import-ssxi _ctx47602_))
                         (_val47619_
                          (let ((_$e47616_ _mod47614_))
                            (if _$e47616_ _$e47616_ '#!void))))
                    (begin
                      (table-set! _ht47604_ _id47606_ _val47619_)
                      _val47619_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47579_)
      (letrec ((_catch-e47581_
                (lambda (_exn47600_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47579_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47600_))
                        '#!void)
                    '#f)))
               (_import-e47582_
                (lambda ()
                  (let* ((_str-id47585_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47579_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47593_
                          (let ((_odir4758647588_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4758647588_
                                (let ((_odir47591_ _odir4758647588_))
                                  (path-expand
                                   (string-append _str-id47585_ '".ss")
                                   _odir47591_))
                                '#f)))
                         (_library-path47595_
                          (string->symbol
                           (string-append '":" _str-id47585_ '".ss")))
                         (_ssxi-path47597_
                          (if (if _artefact-path47593_
                                  (file-exists? _artefact-path47593_)
                                  '#f)
                              _artefact-path47593_
                              _library-path47595_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47597_)
                      (gx#import-module__% _ssxi-path47597_ '#t '#t))))))
        (if (##structure-ref _ctx47579_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47581_ _import-e47582_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47573_)
      (begin
        (gxc#apply-collect-mutators _stx47573_)
        (let ((_stx47575_ (gxc#apply-lift-top-lambdas _stx47573_)))
          (begin
            (gxc#apply-collect-type-info _stx47575_)
            (let ((_stx47577_ (gxc#apply-optimize-annotated _stx47575_)))
              (gxc#apply-optimize-call _stx47577_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl47570_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47570_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47570_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47570_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47570_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47570_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47570_ '%#call gxc#generate-ssxi-call%)
           _tbl47570_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47563_ . _args47565_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47563_ _args47565_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47524_)
      (let* ((_g4752647536_
              (lambda (_g4752747533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4752747533_)))
             (_g4752547560_
              (lambda (_g4752747539_)
                (if (gx#stx-pair? _g4752747539_)
                    (let ((_e4752947541_ (gx#stx-e _g4752747539_)))
                      (let ((_hd4753047544_ (##car _e4752947541_))
                            (_tl4753147546_ (##cdr _e4752947541_)))
                        ((lambda (_L47549_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47524_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4753147546_)))
                    (_g4752647536_ _g4752747539_)))))
        (_g4752547560_ _stx47524_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47464_)
      (let* ((_g4746647480_
              (lambda (_g4746747477_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4746747477_)))
             (_g4746547521_
              (lambda (_g4746747483_)
                (if (gx#stx-pair? _g4746747483_)
                    (let ((_e4747047485_ (gx#stx-e _g4746747483_)))
                      (let ((_hd4747147488_ (##car _e4747047485_))
                            (_tl4747247490_ (##cdr _e4747047485_)))
                        (if (gx#stx-pair? _tl4747247490_)
                            (let ((_e4747347493_ (gx#stx-e _tl4747247490_)))
                              (let ((_hd4747447496_ (##car _e4747347493_))
                                    (_tl4747547498_ (##cdr _e4747347493_)))
                                ((lambda (_L47501_ _L47502_)
                                   (let* ((_ctx47515_
                                           (gx#syntax-local-e__0 _L47502_))
                                          (_code47517_
                                           (##structure-ref
                                            _ctx47515_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47517_))
                                      gx#current-expander-context
                                      _ctx47515_)))
                                 _tl4747547498_
                                 _hd4747447496_)))
                            (_g4746647480_ _g4746747483_))))
                    (_g4746647480_ _g4746747483_)))))
        (_g4746547521_ _stx47464_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47274_)
      (letrec ((_generate-e47276_
                (lambda (_id47453_)
                  (let* ((_sym47455_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47453_)
                              '#f))
                         (_$e47457_
                          (if _sym47455_
                              (gxc#optimizer-lookup-type _sym47455_)
                              '#f)))
                    (if _$e47457_
                        ((lambda (_type47460_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47455_)
                             (let ((_typedecl47462_
                                    (call-method _type47460_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47455_
                                           (cons _typedecl47462_ '()))))))
                         _$e47457_)
                        '(begin))))))
        (let* ((___stx4768347684_ _stx47274_)
               (_g4727947317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4768347684_))))
          (let ((___kont4768547686_
                 (lambda (_L47435_) (_generate-e47276_ _L47435_)))
                (___kont4768747688_
                 (lambda (_L47370_)
                   (let ((_types47396_
                          (map _generate-e47276_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4738847391_ _g4738947393_)
                                           (cons _g4738847391_ _g4738947393_))
                                         '()
                                         _L47370_)))))
                     (cons 'begin _types47396_)))))
            (let ((___match4773847739_
                   (lambda (_e4729547322_
                            _hd4729647325_
                            _tl4729747327_
                            _e4729847330_
                            _hd4729947333_
                            _tl4730047335_
                            ___splice4768947690_
                            _target4730147338_
                            _tl4730347340_)
                     (letrec ((_loop4730447343_
                               (lambda (_hd4730247346_ _id4730847348_)
                                 (if (gx#stx-pair? _hd4730247346_)
                                     (let ((_e4730547351_
                                            (gx#stx-e _hd4730247346_)))
                                       (let ((_lp-tl4730747356_
                                              (##cdr _e4730547351_))
                                             (_lp-hd4730647354_
                                              (##car _e4730547351_)))
                                         (_loop4730447343_
                                          _lp-tl4730747356_
                                          (cons _lp-hd4730647354_
                                                _id4730847348_))))
                                     (let ((_id4730947359_
                                            (reverse _id4730847348_)))
                                       (if (gx#stx-pair? _tl4730047335_)
                                           (let ((_e4731047362_
                                                  (gx#stx-e _tl4730047335_)))
                                             (let ((_tl4731247367_
                                                    (##cdr _e4731047362_))
                                                   (_hd4731147365_
                                                    (##car _e4731047362_)))
                                               (if (gx#stx-null?
                                                    _tl4731247367_)
                                                   (___kont4768747688_
                                                    _id4730947359_)
                                                   (_g4727947317_))))
                                           (_g4727947317_)))))))
                       (_loop4730447343_ _target4730147338_ '())))))
              (if (gx#stx-pair? ___stx4768347684_)
                  (let ((_e4728247403_ (gx#stx-e ___stx4768347684_)))
                    (let ((_tl4728447408_ (##cdr _e4728247403_))
                          (_hd4728347406_ (##car _e4728247403_)))
                      (if (gx#stx-pair? _tl4728447408_)
                          (let ((_e4728547411_ (gx#stx-e _tl4728447408_)))
                            (let ((_tl4728747416_ (##cdr _e4728547411_))
                                  (_hd4728647414_ (##car _e4728547411_)))
                              (if (gx#stx-pair? _hd4728647414_)
                                  (let ((_e4728847419_
                                         (gx#stx-e _hd4728647414_)))
                                    (let ((_tl4729047424_
                                           (##cdr _e4728847419_))
                                          (_hd4728947422_
                                           (##car _e4728847419_)))
                                      (if (gx#stx-null? _tl4729047424_)
                                          (if (gx#stx-pair? _tl4728747416_)
                                              (let ((_e4729147427_
                                                     (gx#stx-e
                                                      _tl4728747416_)))
                                                (let ((_tl4729347432_
                                                       (##cdr _e4729147427_))
                                                      (_hd4729247430_
                                                       (##car _e4729147427_)))
                                                  (if (gx#stx-null?
                                                       _tl4729347432_)
                                                      (___kont4768547686_
                                                       _hd4728947422_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4728647414_)
                                                          (let ((___splice4768947690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4728647414_ '0)))
                    (let ((_tl4730347340_
                           (##vector-ref ___splice4768947690_ '1))
                          (_target4730147338_
                           (##vector-ref ___splice4768947690_ '0)))
                      (if (gx#stx-null? _tl4730347340_)
                          (___match4773847739_
                           _e4728247403_
                           _hd4728347406_
                           _tl4728447408_
                           _e4728547411_
                           _hd4728647414_
                           _tl4728747416_
                           ___splice4768947690_
                           _target4730147338_
                           _tl4730347340_)
                          (_g4727947317_))))
                  (_g4727947317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4728647414_)
                                                  (let ((___splice4768947690_
                                                         (gx#syntax-split-splice
                                                          _hd4728647414_
                                                          '0)))
                                                    (let ((_tl4730347340_
                                                           (##vector-ref
                                                            ___splice4768947690_
                                                            '1))
                                                          (_target4730147338_
                                                           (##vector-ref
                                                            ___splice4768947690_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4730347340_)
                                                          (___match4773847739_
                                                           _e4728247403_
                                                           _hd4728347406_
                                                           _tl4728447408_
                                                           _e4728547411_
                                                           _hd4728647414_
                                                           _tl4728747416_
                                                           ___splice4768947690_
                                                           _target4730147338_
                                                           _tl4730347340_)
                                                          (_g4727947317_))))
                                                  (_g4727947317_)))
                                          (if (gx#stx-pair/null?
                                               _hd4728647414_)
                                              (let ((___splice4768947690_
                                                     (gx#syntax-split-splice
                                                      _hd4728647414_
                                                      '0)))
                                                (let ((_tl4730347340_
                                                       (##vector-ref
                                                        ___splice4768947690_
                                                        '1))
                                                      (_target4730147338_
                                                       (##vector-ref
                                                        ___splice4768947690_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4730347340_)
                                                      (___match4773847739_
                                                       _e4728247403_
                                                       _hd4728347406_
                                                       _tl4728447408_
                                                       _e4728547411_
                                                       _hd4728647414_
                                                       _tl4728747416_
                                                       ___splice4768947690_
                                                       _target4730147338_
                                                       _tl4730347340_)
                                                      (_g4727947317_))))
                                              (_g4727947317_)))))
                                  (if (gx#stx-pair/null? _hd4728647414_)
                                      (let ((___splice4768947690_
                                             (gx#syntax-split-splice
                                              _hd4728647414_
                                              '0)))
                                        (let ((_tl4730347340_
                                               (##vector-ref
                                                ___splice4768947690_
                                                '1))
                                              (_target4730147338_
                                               (##vector-ref
                                                ___splice4768947690_
                                                '0)))
                                          (if (gx#stx-null? _tl4730347340_)
                                              (___match4773847739_
                                               _e4728247403_
                                               _hd4728347406_
                                               _tl4728447408_
                                               _e4728547411_
                                               _hd4728647414_
                                               _tl4728747416_
                                               ___splice4768947690_
                                               _target4730147338_
                                               _tl4730347340_)
                                              (_g4727947317_))))
                                      (_g4727947317_)))))
                          (_g4727947317_))))
                  (_g4727947317_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx46828_)
      (let* ((___stx4774147742_ _stx46828_)
             (_g4683246934_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4774147742_))))
        (let ((___kont4774347744_
               (lambda (_L47224_ _L47225_ _L47226_ _L47227_ _L47228_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47227_)
                             (cons (gx#stx-e _L47226_)
                                   (cons (gxc#identifier-symbol _L47225_)
                                         (cons (gx#stx-e _L47224_) '())))))))
              (___kont4774547746_
               (lambda (_L47050_ _L47051_ _L47052_ _L47053_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47052_)
                             (cons (gx#stx-e _L47051_)
                                   (cons (gxc#identifier-symbol _L47050_)
                                         (cons '#f '())))))))
              (___kont4774747748_ (lambda () '(begin))))
          (let ((___match4787647877_
                 (lambda (_e4683947096_
                          _hd4684047099_
                          _tl4684147101_
                          _e4684247104_
                          _hd4684347107_
                          _tl4684447109_
                          _e4684547112_
                          _hd4684647115_
                          _tl4684747117_
                          _e4684847120_
                          _hd4684947123_
                          _tl4685047125_
                          _e4685147128_
                          _hd4685247131_
                          _tl4685347133_
                          _e4685447136_
                          _hd4685547139_
                          _tl4685647141_
                          _e4685747144_
                          _hd4685847147_
                          _tl4685947149_
                          _e4686047152_
                          _hd4686147155_
                          _tl4686247157_
                          _e4686347160_
                          _hd4686447163_
                          _tl4686547165_
                          _e4686647168_
                          _hd4686747171_
                          _tl4686847173_
                          _e4686947176_
                          _hd4687047179_
                          _tl4687147181_
                          _e4687247184_
                          _hd4687347187_
                          _tl4687447189_
                          _e4687547192_
                          _hd4687647195_
                          _tl4687747197_
                          _e4687847200_
                          _hd4687947203_
                          _tl4688047205_
                          _e4688147208_
                          _hd4688247211_
                          _tl4688347213_
                          _e4688447216_
                          _hd4688547219_
                          _tl4688647221_)
                   (let ((_L47224_ _hd4688547219_)
                         (_L47225_ _hd4687647195_)
                         (_L47226_ _hd4686747171_)
                         (_L47227_ _hd4685847147_)
                         (_L47228_ _hd4684947123_))
                     (if (gxc#runtime-identifier=? _L47228_ 'bind-method!)
                         (___kont4774347744_
                          _L47224_
                          _L47225_
                          _L47226_
                          _L47227_
                          _L47228_)
                         (___kont4774747748_))))))
            (if (gx#stx-pair? ___stx4774147742_)
                (let ((_e4683947096_ (gx#stx-e ___stx4774147742_)))
                  (let ((_tl4684147101_ (##cdr _e4683947096_))
                        (_hd4684047099_ (##car _e4683947096_)))
                    (if (gx#stx-pair? _tl4684147101_)
                        (let ((_e4684247104_ (gx#stx-e _tl4684147101_)))
                          (let ((_tl4684447109_ (##cdr _e4684247104_))
                                (_hd4684347107_ (##car _e4684247104_)))
                            (if (gx#stx-pair? _hd4684347107_)
                                (let ((_e4684547112_
                                       (gx#stx-e _hd4684347107_)))
                                  (let ((_tl4684747117_ (##cdr _e4684547112_))
                                        (_hd4684647115_ (##car _e4684547112_)))
                                    (if (gx#identifier? _hd4684647115_)
                                        (if (gx#stx-eq? '%#ref _hd4684647115_)
                                            (if (gx#stx-pair? _tl4684747117_)
                                                (let ((_e4684847120_
                                                       (gx#stx-e
                                                        _tl4684747117_)))
                                                  (let ((_tl4685047125_
                                                         (##cdr _e4684847120_))
                                                        (_hd4684947123_
                                                         (##car _e4684847120_)))
                                                    (if (gx#stx-null?
                                                         _tl4685047125_)
                                                        (if (gx#stx-pair?
                                                             _tl4684447109_)
                                                            (let ((_e4685147128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4684447109_)))
                      (let ((_tl4685347133_ (##cdr _e4685147128_))
                            (_hd4685247131_ (##car _e4685147128_)))
                        (if (gx#stx-pair? _hd4685247131_)
                            (let ((_e4685447136_ (gx#stx-e _hd4685247131_)))
                              (let ((_tl4685647141_ (##cdr _e4685447136_))
                                    (_hd4685547139_ (##car _e4685447136_)))
                                (if (gx#identifier? _hd4685547139_)
                                    (if (gx#stx-eq? '%#ref _hd4685547139_)
                                        (if (gx#stx-pair? _tl4685647141_)
                                            (let ((_e4685747144_
                                                   (gx#stx-e _tl4685647141_)))
                                              (let ((_tl4685947149_
                                                     (##cdr _e4685747144_))
                                                    (_hd4685847147_
                                                     (##car _e4685747144_)))
                                                (if (gx#stx-null?
                                                     _tl4685947149_)
                                                    (if (gx#stx-pair?
                                                         _tl4685347133_)
                                                        (let ((_e4686047152_
                                                               (gx#stx-e
                                                                _tl4685347133_)))
                                                          (let ((_tl4686247157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4686047152_))
                        (_hd4686147155_ (##car _e4686047152_)))
                    (if (gx#stx-pair? _hd4686147155_)
                        (let ((_e4686347160_ (gx#stx-e _hd4686147155_)))
                          (let ((_tl4686547165_ (##cdr _e4686347160_))
                                (_hd4686447163_ (##car _e4686347160_)))
                            (if (gx#identifier? _hd4686447163_)
                                (if (gx#stx-eq? '%#quote _hd4686447163_)
                                    (if (gx#stx-pair? _tl4686547165_)
                                        (let ((_e4686647168_
                                               (gx#stx-e _tl4686547165_)))
                                          (let ((_tl4686847173_
                                                 (##cdr _e4686647168_))
                                                (_hd4686747171_
                                                 (##car _e4686647168_)))
                                            (if (gx#stx-null? _tl4686847173_)
                                                (if (gx#stx-pair?
                                                     _tl4686247157_)
                                                    (let ((_e4686947176_
                                                           (gx#stx-e
                                                            _tl4686247157_)))
                                                      (let ((_tl4687147181_
                                                             (##cdr _e4686947176_))
                                                            (_hd4687047179_
                                                             (##car _e4686947176_)))
                                                        (if (gx#stx-pair?
                                                             _hd4687047179_)
                                                            (let ((_e4687247184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4687047179_)))
                      (let ((_tl4687447189_ (##cdr _e4687247184_))
                            (_hd4687347187_ (##car _e4687247184_)))
                        (if (gx#identifier? _hd4687347187_)
                            (if (gx#stx-eq? '%#ref _hd4687347187_)
                                (if (gx#stx-pair? _tl4687447189_)
                                    (let ((_e4687547192_
                                           (gx#stx-e _tl4687447189_)))
                                      (let ((_tl4687747197_
                                             (##cdr _e4687547192_))
                                            (_hd4687647195_
                                             (##car _e4687547192_)))
                                        (if (gx#stx-null? _tl4687747197_)
                                            (if (gx#stx-pair? _tl4687147181_)
                                                (let ((_e4687847200_
                                                       (gx#stx-e
                                                        _tl4687147181_)))
                                                  (let ((_tl4688047205_
                                                         (##cdr _e4687847200_))
                                                        (_hd4687947203_
                                                         (##car _e4687847200_)))
                                                    (if (gx#stx-pair?
                                                         _hd4687947203_)
                                                        (let ((_e4688147208_
                                                               (gx#stx-e
                                                                _hd4687947203_)))
                                                          (let ((_tl4688347213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4688147208_))
                        (_hd4688247211_ (##car _e4688147208_)))
                    (if (gx#identifier? _hd4688247211_)
                        (if (gx#stx-eq? '%#quote _hd4688247211_)
                            (if (gx#stx-pair? _tl4688347213_)
                                (let ((_e4688447216_
                                       (gx#stx-e _tl4688347213_)))
                                  (let ((_tl4688647221_ (##cdr _e4688447216_))
                                        (_hd4688547219_ (##car _e4688447216_)))
                                    (if (gx#stx-null? _tl4688647221_)
                                        (if (gx#stx-null? _tl4688047205_)
                                            (___match4787647877_
                                             _e4683947096_
                                             _hd4684047099_
                                             _tl4684147101_
                                             _e4684247104_
                                             _hd4684347107_
                                             _tl4684447109_
                                             _e4684547112_
                                             _hd4684647115_
                                             _tl4684747117_
                                             _e4684847120_
                                             _hd4684947123_
                                             _tl4685047125_
                                             _e4685147128_
                                             _hd4685247131_
                                             _tl4685347133_
                                             _e4685447136_
                                             _hd4685547139_
                                             _tl4685647141_
                                             _e4685747144_
                                             _hd4685847147_
                                             _tl4685947149_
                                             _e4686047152_
                                             _hd4686147155_
                                             _tl4686247157_
                                             _e4686347160_
                                             _hd4686447163_
                                             _tl4686547165_
                                             _e4686647168_
                                             _hd4686747171_
                                             _tl4686847173_
                                             _e4686947176_
                                             _hd4687047179_
                                             _tl4687147181_
                                             _e4687247184_
                                             _hd4687347187_
                                             _tl4687447189_
                                             _e4687547192_
                                             _hd4687647195_
                                             _tl4687747197_
                                             _e4687847200_
                                             _hd4687947203_
                                             _tl4688047205_
                                             _e4688147208_
                                             _hd4688247211_
                                             _tl4688347213_
                                             _e4688447216_
                                             _hd4688547219_
                                             _tl4688647221_)
                                            (___kont4774747748_))
                                        (___kont4774747748_))))
                                (___kont4774747748_))
                            (___kont4774747748_))
                        (___kont4774747748_))))
                (___kont4774747748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4687147181_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47050_
                                                               _hd4687647195_)
                                                              (_L47051_
                                                               _hd4686747171_)
                                                              (_L47052_
                                                               _hd4685847147_)
                                                              (_L47053_
                                                               _hd4684947123_))
                                                          (___kont4774547746_
                                                           _L47050_
                                                           _L47051_
                                                           _L47052_
                                                           _L47053_))
                                                        (___kont4774747748_))
                                                    (___kont4774747748_)))
                                            (___kont4774747748_))))
                                    (___kont4774747748_))
                                (___kont4774747748_))
                            (___kont4774747748_))))
                    (___kont4774747748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4774747748_))
                                                (___kont4774747748_))))
                                        (___kont4774747748_))
                                    (___kont4774747748_))
                                (___kont4774747748_))))
                        (___kont4774747748_))))
                (___kont4774747748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4774747748_))))
                                            (___kont4774747748_))
                                        (___kont4774747748_))
                                    (___kont4774747748_))))
                            (___kont4774747748_))))
                    (___kont4774747748_))
                (___kont4774747748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4774747748_))
                                            (___kont4774747748_))
                                        (___kont4774747748_))))
                                (___kont4774747748_))))
                        (___kont4774747748_))))
                (___kont4774747748_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self46804_)
      (let* ((_self4680546811_ _self46804_)
             (_E4680746815_
              (lambda () (error '"No clause matching" _self4680546811_)))
             (_K4680846820_
              (lambda (_alias-id46818_)
                (cons '@alias (cons _alias-id46818_ '())))))
        (if (##structure-instance-of? _self4680546811_ 'gxc#!alias::t)
            (let* ((_e4680946823_ (##vector-ref _self4680546811_ '1))
                   (_alias-id46826_ _e4680946823_))
              (_K4680846820_ _alias-id46826_))
            (_E4680746815_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46626_)
      (let* ((_self4662746638_ _self46626_)
             (_E4662946642_
              (lambda () (error '"No clause matching" _self4662746638_)))
             (_K4663046651_
              (lambda (_plist46645_
                       _ctor46646_
                       _fields46647_
                       _super46648_
                       _type-id46649_)
                (cons '@struct-type
                      (cons _type-id46649_
                            (cons _super46648_
                                  (cons _fields46647_
                                        (cons _ctor46646_
                                              (cons _plist46645_ '())))))))))
        (if (##structure-instance-of? _self4662746638_ 'gxc#!struct-type::t)
            (let* ((_e4663146654_ (##vector-ref _self4662746638_ '1))
                   (_type-id46657_ _e4663146654_)
                   (_e4663246659_ (##vector-ref _self4662746638_ '2))
                   (_super46662_ _e4663246659_)
                   (_e4663346664_ (##vector-ref _self4662746638_ '3))
                   (_fields46667_ _e4663346664_)
                   (_e4663446669_ (##vector-ref _self4662746638_ '4))
                   (_e4663546672_ (##vector-ref _self4662746638_ '5))
                   (_ctor46675_ _e4663546672_)
                   (_e4663646677_ (##vector-ref _self4662746638_ '6))
                   (_plist46680_ _e4663646677_))
              (_K4663046651_
               _plist46680_
               _ctor46675_
               _fields46667_
               _super46662_
               _type-id46657_))
            (_E4662946642_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46480_)
      (let* ((_self4648146487_ _self46480_)
             (_E4648346491_
              (lambda () (error '"No clause matching" _self4648146487_)))
             (_K4648446496_
              (lambda (_struct-t46494_)
                (cons '@struct-pred (cons _struct-t46494_ '())))))
        (if (##structure-instance-of? _self4648146487_ 'gxc#!struct-pred::t)
            (let* ((_e4648546499_ (##vector-ref _self4648146487_ '1))
                   (_struct-t46502_ _e4648546499_))
              (_K4648446496_ _struct-t46502_))
            (_E4648346491_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46334_)
      (let* ((_self4633546341_ _self46334_)
             (_E4633746345_
              (lambda () (error '"No clause matching" _self4633546341_)))
             (_K4633846350_
              (lambda (_struct-t46348_)
                (cons '@struct-cons (cons _struct-t46348_ '())))))
        (if (##structure-instance-of? _self4633546341_ 'gxc#!struct-cons::t)
            (let* ((_e4633946353_ (##vector-ref _self4633546341_ '1))
                   (_struct-t46356_ _e4633946353_))
              (_K4633846350_ _struct-t46356_))
            (_E4633746345_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46174_)
      (let* ((_self4617546183_ _self46174_)
             (_E4617746187_
              (lambda () (error '"No clause matching" _self4617546183_)))
             (_K4617846194_
              (lambda (_unchecked?46190_ _off46191_ _struct-t46192_)
                (cons '@struct-getf
                      (cons _struct-t46192_
                            (cons _off46191_ (cons _unchecked?46190_ '())))))))
        (if (##structure-instance-of? _self4617546183_ 'gxc#!struct-getf::t)
            (let* ((_e4617946197_ (##vector-ref _self4617546183_ '1))
                   (_struct-t46200_ _e4617946197_)
                   (_e4618046202_ (##vector-ref _self4617546183_ '2))
                   (_off46205_ _e4618046202_)
                   (_e4618146207_ (##vector-ref _self4617546183_ '3))
                   (_unchecked?46210_ _e4618146207_))
              (_K4617846194_ _unchecked?46210_ _off46205_ _struct-t46200_))
            (_E4617746187_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46014_)
      (let* ((_self4601546023_ _self46014_)
             (_E4601746027_
              (lambda () (error '"No clause matching" _self4601546023_)))
             (_K4601846034_
              (lambda (_unchecked?46030_ _off46031_ _struct-t46032_)
                (cons '@struct-setf
                      (cons _struct-t46032_
                            (cons _off46031_ (cons _unchecked?46030_ '())))))))
        (if (##structure-instance-of? _self4601546023_ 'gxc#!struct-setf::t)
            (let* ((_e4601946037_ (##vector-ref _self4601546023_ '1))
                   (_struct-t46040_ _e4601946037_)
                   (_e4602046042_ (##vector-ref _self4601546023_ '2))
                   (_off46045_ _e4602046042_)
                   (_e4602146047_ (##vector-ref _self4601546023_ '3))
                   (_unchecked?46050_ _e4602146047_))
              (_K4601846034_ _unchecked?46050_ _off46045_ _struct-t46040_))
            (_E4601746027_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self45840_)
      (let* ((_self4584145851_ _self45840_)
             (_E4584345855_
              (lambda () (error '"No clause matching" _self4584145851_)))
             (_K4584445866_
              (lambda (_typedecl45858_
                       _inline45859_
                       _dispatch45860_
                       _arity45861_)
                (if _inline45859_
                    (let ((_$e45863_ _typedecl45858_))
                      (if _$e45863_
                          _$e45863_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity45861_ (cons _dispatch45860_ '())))))))
        (if (##structure-instance-of? _self4584145851_ 'gxc#!lambda::t)
            (let* ((_e4584545869_ (##vector-ref _self4584145851_ '1))
                   (_e4584645872_ (##vector-ref _self4584145851_ '2))
                   (_arity45875_ _e4584645872_)
                   (_e4584745877_ (##vector-ref _self4584145851_ '3))
                   (_dispatch45880_ _e4584745877_)
                   (_e4584845882_ (##vector-ref _self4584145851_ '4))
                   (_inline45885_ _e4584845882_)
                   (_e4584945887_ (##vector-ref _self4584145851_ '5))
                   (_typedecl45890_ _e4584945887_))
              (_K4584445866_
               _typedecl45890_
               _inline45885_
               _dispatch45880_
               _arity45875_))
            (_E4584345855_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45651_)
      (letrec ((_clause-e45653_
                (lambda (_clause45683_)
                  (let* ((_clause4568445692_ _clause45683_)
                         (_E4568645696_
                          (lambda ()
                            (error '"No clause matching" _clause4568445692_)))
                         (_K4568745702_
                          (lambda (_dispatch45699_ _arity45700_)
                            (cons _arity45700_ (cons _dispatch45699_ '())))))
                    (if (##structure-instance-of?
                         _clause4568445692_
                         'gxc#!lambda::t)
                        (let* ((_e4568845705_
                                (##vector-ref _clause4568445692_ '1))
                               (_e4568945708_
                                (##vector-ref _clause4568445692_ '2))
                               (_arity45711_ _e4568945708_)
                               (_e4569045713_
                                (##vector-ref _clause4568445692_ '3))
                               (_dispatch45716_ _e4569045713_))
                          (_K4568745702_ _dispatch45716_ _arity45711_))
                        (_E4568645696_))))))
        (let* ((_self4565445661_ _self45651_)
               (_E4565645665_
                (lambda () (error '"No clause matching" _self4565445661_)))
               (_K4565745672_
                (lambda (_clauses45668_)
                  (let ((_clauses45670_ (map _clause-e45653_ _clauses45668_)))
                    (cons '@case-lambda _clauses45670_)))))
          (if (##structure-instance-of? _self4565445661_ 'gxc#!case-lambda::t)
              (let* ((_e4565845675_ (##vector-ref _self4565445661_ '1))
                     (_e4565945678_ (##vector-ref _self4565445661_ '2))
                     (_clauses45681_ _e4565945678_))
                (_K4565745672_ _clauses45681_))
              (_E4565645665_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45494_)
      (let* ((_self4549545503_ _self45494_)
             (_E4549745507_
              (lambda () (error '"No clause matching" _self4549545503_)))
             (_K4549845513_
              (lambda (_dispatch45510_ _table45511_)
                (cons '@kw-lambda
                      (cons _table45511_ (cons _dispatch45510_ '()))))))
        (if (##structure-instance-of? _self4549545503_ 'gxc#!kw-lambda::t)
            (let* ((_e4549945516_ (##vector-ref _self4549545503_ '1))
                   (_e4550045519_ (##vector-ref _self4549545503_ '2))
                   (_table45522_ _e4550045519_)
                   (_e4550145524_ (##vector-ref _self4549545503_ '3))
                   (_dispatch45527_ _e4550145524_))
              (_K4549845513_ _dispatch45527_ _table45522_))
            (_E4549745507_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45337_)
      (let* ((_self4533845346_ _self45337_)
             (_E4534045350_
              (lambda () (error '"No clause matching" _self4533845346_)))
             (_K4534145356_
              (lambda (_main45353_ _keys45354_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45354_ (cons _main45353_ '()))))))
        (if (##structure-instance-of?
             _self4533845346_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4534245359_ (##vector-ref _self4533845346_ '1))
                   (_e4534345362_ (##vector-ref _self4533845346_ '2))
                   (_keys45365_ _e4534345362_)
                   (_e4534445367_ (##vector-ref _self4533845346_ '3))
                   (_main45370_ _e4534445367_))
              (_K4534145356_ _main45370_ _keys45365_))
            (_E4534045350_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
