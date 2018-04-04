(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj49558 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj49558) __obj49558))))))
  (define gxc#optimize!
    (lambda (_ctx49251_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx49251_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx49251_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code49254_
                  (gxc#optimize-source
                   (##structure-ref _ctx49251_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx49251_
              _code49254_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-table 'test: eq?)
       gxc#current-compile-local-type
       (make-table 'test: eq?))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx49196_)
      (letrec* ((_deps49198_
                 (let* ((_imports49242_
                         (##structure-ref
                          _ctx49196_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e49244_ (gx#core-context-prelude__% _ctx49196_)))
                   (if _$e49244_
                       ((lambda (_g4924649248_)
                          (cons _g4924649248_ _imports49242_))
                        _$e49244_)
                       _imports49242_))))
        (let _lp49200_ ((_rest49202_ _deps49198_))
          (let* ((_rest4920349211_ _rest49202_)
                 (_else4920549219_ (lambda () '#!void))
                 (_K4920749230_
                  (lambda (_rest49222_ _hd49223_)
                    (if (##structure-instance-of?
                         _hd49223_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd49223_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e49225_
                                       (gx#core-context-prelude__% _hd49223_)))
                                  (if _$e49225_
                                      ((lambda (_pre49228_)
                                         (_lp49200_
                                          (cons _pre49228_
                                                (##structure-ref
                                                 _hd49223_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e49225_)
                                      (_lp49200_
                                       (##structure-ref
                                        _hd49223_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd49223_)))
                          (_lp49200_ _rest49222_))
                        (if (##structure-instance-of?
                             _hd49223_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd49223_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp49200_
                                     (##structure-ref
                                      _hd49223_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd49223_)))
                              (_lp49200_ _rest49222_))
                            (if (##structure-direct-instance-of?
                                 _hd49223_
                                 'gx#module-import::t)
                                (_lp49200_
                                 (cons (##direct-structure-ref
                                        _hd49223_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest49222_))
                                (if (##structure-direct-instance-of?
                                     _hd49223_
                                     'gx#module-export::t)
                                    (_lp49200_
                                     (cons (##direct-structure-ref
                                            _hd49223_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest49222_))
                                    (if (##structure-direct-instance-of?
                                         _hd49223_
                                         'gx#import-set::t)
                                        (_lp49200_
                                         (cons (##direct-structure-ref
                                                _hd49223_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest49222_))
                                        (error '"Unexpected module import"
                                               _hd49223_)))))))))
            (if (##pair? _rest4920349211_)
                (let ((_hd4920849233_ (##car _rest4920349211_))
                      (_tl4920949235_ (##cdr _rest4920349211_)))
                  (let* ((_hd49238_ _hd4920849233_)
                         (_rest49240_ _tl4920949235_))
                    (_K4920749230_ _rest49240_ _hd49238_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx49176_)
      (if (if (##structure-instance-of? _ctx49176_ 'gx#module-context::t)
              (list? (##structure-ref _ctx49176_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht49178_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id49180_
                  (##structure-ref _ctx49176_ '1 gx#expander-context::t '#f))
                 (_mod49182_ (table-ref _ht49178_ _id49180_ '#f)))
            (let ((_$e49185_ _mod49182_))
              (if _$e49185_
                  _$e49185_
                  (let* ((_mod49188_ (gxc#optimizer-import-ssxi _ctx49176_))
                         (_val49193_
                          (let ((_$e49190_ _mod49188_))
                            (if _$e49190_ _$e49190_ '#!void))))
                    (begin
                      (table-set! _ht49178_ _id49180_ _val49193_)
                      _val49193_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx49153_)
      (letrec ((_catch-e49155_
                (lambda (_exn49174_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx49153_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn49174_))
                        '#!void)
                    '#f)))
               (_import-e49156_
                (lambda ()
                  (let* ((_str-id49159_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx49153_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path49167_
                          (let ((_odir4916049162_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4916049162_
                                (let ((_odir49165_ _odir4916049162_))
                                  (path-expand
                                   (string-append _str-id49159_ '".ss")
                                   _odir49165_))
                                '#f)))
                         (_library-path49169_
                          (string->symbol
                           (string-append '":" _str-id49159_ '".ss")))
                         (_ssxi-path49171_
                          (if (if _artefact-path49167_
                                  (file-exists? _artefact-path49167_)
                                  '#f)
                              _artefact-path49167_
                              _library-path49169_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path49171_)
                      (gx#import-module__% _ssxi-path49171_ '#t '#t))))))
        (if (##structure-ref _ctx49153_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e49155_ _import-e49156_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx49147_)
      (begin
        (gxc#apply-collect-mutators _stx49147_)
        (let ((_stx49149_ (gxc#apply-lift-top-lambdas _stx49147_)))
          (begin
            (gxc#apply-collect-type-info _stx49149_)
            (let ((_stx49151_ (gxc#apply-optimize-annotated _stx49149_)))
              (gxc#apply-optimize-call _stx49151_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl49144_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl49144_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl49144_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl49144_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl49144_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl49144_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl49144_ '%#call gxc#generate-ssxi-call%)
           _tbl49144_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx49137_ . _args49139_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx49137_ _args49139_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx49098_)
      (let* ((_g4910049110_
              (lambda (_g4910149107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4910149107_)))
             (_g4909949134_
              (lambda (_g4910149113_)
                (if (gx#stx-pair? _g4910149113_)
                    (let ((_e4910349115_ (gx#stx-e _g4910149113_)))
                      (let ((_hd4910449118_ (##car _e4910349115_))
                            (_tl4910549120_ (##cdr _e4910349115_)))
                        ((lambda (_L49123_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx49098_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4910549120_)))
                    (_g4910049110_ _g4910149113_)))))
        (_g4909949134_ _stx49098_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx49038_)
      (let* ((_g4904049054_
              (lambda (_g4904149051_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4904149051_)))
             (_g4903949095_
              (lambda (_g4904149057_)
                (if (gx#stx-pair? _g4904149057_)
                    (let ((_e4904449059_ (gx#stx-e _g4904149057_)))
                      (let ((_hd4904549062_ (##car _e4904449059_))
                            (_tl4904649064_ (##cdr _e4904449059_)))
                        (if (gx#stx-pair? _tl4904649064_)
                            (let ((_e4904749067_ (gx#stx-e _tl4904649064_)))
                              (let ((_hd4904849070_ (##car _e4904749067_))
                                    (_tl4904949072_ (##cdr _e4904749067_)))
                                ((lambda (_L49075_ _L49076_)
                                   (let* ((_ctx49089_
                                           (gx#syntax-local-e__0 _L49076_))
                                          (_code49091_
                                           (##structure-ref
                                            _ctx49089_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code49091_))
                                      gx#current-expander-context
                                      _ctx49089_)))
                                 _tl4904949072_
                                 _hd4904849070_)))
                            (_g4904049054_ _g4904149057_))))
                    (_g4904049054_ _g4904149057_)))))
        (_g4903949095_ _stx49038_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx48848_)
      (letrec ((_generate-e48850_
                (lambda (_id49027_)
                  (let* ((_sym49029_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id49027_)
                              '#f))
                         (_$e49031_
                          (if _sym49029_
                              (gxc#optimizer-lookup-type _sym49029_)
                              '#f)))
                    (if _$e49031_
                        ((lambda (_type49034_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym49029_)
                             (let ((_typedecl49036_
                                    (call-method _type49034_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym49029_
                                           (cons _typedecl49036_ '()))))))
                         _$e49031_)
                        '(begin))))))
        (let* ((___stx4925749258_ _stx48848_)
               (_g4885348891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4925749258_))))
          (let ((___kont4925949260_
                 (lambda (_L49009_) (_generate-e48850_ _L49009_)))
                (___kont4926149262_
                 (lambda (_L48944_)
                   (let ((_types48970_
                          (map _generate-e48850_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4896248965_ _g4896348967_)
                                           (cons _g4896248965_ _g4896348967_))
                                         '()
                                         _L48944_)))))
                     (cons 'begin _types48970_)))))
            (let ((___match4931249313_
                   (lambda (_e4886948896_
                            _hd4887048899_
                            _tl4887148901_
                            _e4887248904_
                            _hd4887348907_
                            _tl4887448909_
                            ___splice4926349264_
                            _target4887548912_
                            _tl4887748914_)
                     (letrec ((_loop4887848917_
                               (lambda (_hd4887648920_ _id4888248922_)
                                 (if (gx#stx-pair? _hd4887648920_)
                                     (let ((_e4887948925_
                                            (gx#stx-e _hd4887648920_)))
                                       (let ((_lp-tl4888148930_
                                              (##cdr _e4887948925_))
                                             (_lp-hd4888048928_
                                              (##car _e4887948925_)))
                                         (_loop4887848917_
                                          _lp-tl4888148930_
                                          (cons _lp-hd4888048928_
                                                _id4888248922_))))
                                     (let ((_id4888348933_
                                            (reverse _id4888248922_)))
                                       (if (gx#stx-pair? _tl4887448909_)
                                           (let ((_e4888448936_
                                                  (gx#stx-e _tl4887448909_)))
                                             (let ((_tl4888648941_
                                                    (##cdr _e4888448936_))
                                                   (_hd4888548939_
                                                    (##car _e4888448936_)))
                                               (if (gx#stx-null?
                                                    _tl4888648941_)
                                                   (___kont4926149262_
                                                    _id4888348933_)
                                                   (_g4885348891_))))
                                           (_g4885348891_)))))))
                       (_loop4887848917_ _target4887548912_ '())))))
              (if (gx#stx-pair? ___stx4925749258_)
                  (let ((_e4885648977_ (gx#stx-e ___stx4925749258_)))
                    (let ((_tl4885848982_ (##cdr _e4885648977_))
                          (_hd4885748980_ (##car _e4885648977_)))
                      (if (gx#stx-pair? _tl4885848982_)
                          (let ((_e4885948985_ (gx#stx-e _tl4885848982_)))
                            (let ((_tl4886148990_ (##cdr _e4885948985_))
                                  (_hd4886048988_ (##car _e4885948985_)))
                              (if (gx#stx-pair? _hd4886048988_)
                                  (let ((_e4886248993_
                                         (gx#stx-e _hd4886048988_)))
                                    (let ((_tl4886448998_
                                           (##cdr _e4886248993_))
                                          (_hd4886348996_
                                           (##car _e4886248993_)))
                                      (if (gx#stx-null? _tl4886448998_)
                                          (if (gx#stx-pair? _tl4886148990_)
                                              (let ((_e4886549001_
                                                     (gx#stx-e
                                                      _tl4886148990_)))
                                                (let ((_tl4886749006_
                                                       (##cdr _e4886549001_))
                                                      (_hd4886649004_
                                                       (##car _e4886549001_)))
                                                  (if (gx#stx-null?
                                                       _tl4886749006_)
                                                      (___kont4925949260_
                                                       _hd4886348996_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4886048988_)
                                                          (let ((___splice4926349264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4886048988_ '0)))
                    (let ((_tl4887748914_
                           (##vector-ref ___splice4926349264_ '1))
                          (_target4887548912_
                           (##vector-ref ___splice4926349264_ '0)))
                      (if (gx#stx-null? _tl4887748914_)
                          (___match4931249313_
                           _e4885648977_
                           _hd4885748980_
                           _tl4885848982_
                           _e4885948985_
                           _hd4886048988_
                           _tl4886148990_
                           ___splice4926349264_
                           _target4887548912_
                           _tl4887748914_)
                          (_g4885348891_))))
                  (_g4885348891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4886048988_)
                                                  (let ((___splice4926349264_
                                                         (gx#syntax-split-splice
                                                          _hd4886048988_
                                                          '0)))
                                                    (let ((_tl4887748914_
                                                           (##vector-ref
                                                            ___splice4926349264_
                                                            '1))
                                                          (_target4887548912_
                                                           (##vector-ref
                                                            ___splice4926349264_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4887748914_)
                                                          (___match4931249313_
                                                           _e4885648977_
                                                           _hd4885748980_
                                                           _tl4885848982_
                                                           _e4885948985_
                                                           _hd4886048988_
                                                           _tl4886148990_
                                                           ___splice4926349264_
                                                           _target4887548912_
                                                           _tl4887748914_)
                                                          (_g4885348891_))))
                                                  (_g4885348891_)))
                                          (if (gx#stx-pair/null?
                                               _hd4886048988_)
                                              (let ((___splice4926349264_
                                                     (gx#syntax-split-splice
                                                      _hd4886048988_
                                                      '0)))
                                                (let ((_tl4887748914_
                                                       (##vector-ref
                                                        ___splice4926349264_
                                                        '1))
                                                      (_target4887548912_
                                                       (##vector-ref
                                                        ___splice4926349264_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4887748914_)
                                                      (___match4931249313_
                                                       _e4885648977_
                                                       _hd4885748980_
                                                       _tl4885848982_
                                                       _e4885948985_
                                                       _hd4886048988_
                                                       _tl4886148990_
                                                       ___splice4926349264_
                                                       _target4887548912_
                                                       _tl4887748914_)
                                                      (_g4885348891_))))
                                              (_g4885348891_)))))
                                  (if (gx#stx-pair/null? _hd4886048988_)
                                      (let ((___splice4926349264_
                                             (gx#syntax-split-splice
                                              _hd4886048988_
                                              '0)))
                                        (let ((_tl4887748914_
                                               (##vector-ref
                                                ___splice4926349264_
                                                '1))
                                              (_target4887548912_
                                               (##vector-ref
                                                ___splice4926349264_
                                                '0)))
                                          (if (gx#stx-null? _tl4887748914_)
                                              (___match4931249313_
                                               _e4885648977_
                                               _hd4885748980_
                                               _tl4885848982_
                                               _e4885948985_
                                               _hd4886048988_
                                               _tl4886148990_
                                               ___splice4926349264_
                                               _target4887548912_
                                               _tl4887748914_)
                                              (_g4885348891_))))
                                      (_g4885348891_)))))
                          (_g4885348891_))))
                  (_g4885348891_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx48402_)
      (let* ((___stx4931549316_ _stx48402_)
             (_g4840648508_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4931549316_))))
        (let ((___kont4931749318_
               (lambda (_L48798_ _L48799_ _L48800_ _L48801_ _L48802_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48801_)
                             (cons (gx#stx-e _L48800_)
                                   (cons (gxc#identifier-symbol _L48799_)
                                         (cons (gx#stx-e _L48798_) '())))))))
              (___kont4931949320_
               (lambda (_L48624_ _L48625_ _L48626_ _L48627_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48626_)
                             (cons (gx#stx-e _L48625_)
                                   (cons (gxc#identifier-symbol _L48624_)
                                         (cons '#f '())))))))
              (___kont4932149322_ (lambda () '(begin))))
          (let ((___match4945049451_
                 (lambda (_e4841348670_
                          _hd4841448673_
                          _tl4841548675_
                          _e4841648678_
                          _hd4841748681_
                          _tl4841848683_
                          _e4841948686_
                          _hd4842048689_
                          _tl4842148691_
                          _e4842248694_
                          _hd4842348697_
                          _tl4842448699_
                          _e4842548702_
                          _hd4842648705_
                          _tl4842748707_
                          _e4842848710_
                          _hd4842948713_
                          _tl4843048715_
                          _e4843148718_
                          _hd4843248721_
                          _tl4843348723_
                          _e4843448726_
                          _hd4843548729_
                          _tl4843648731_
                          _e4843748734_
                          _hd4843848737_
                          _tl4843948739_
                          _e4844048742_
                          _hd4844148745_
                          _tl4844248747_
                          _e4844348750_
                          _hd4844448753_
                          _tl4844548755_
                          _e4844648758_
                          _hd4844748761_
                          _tl4844848763_
                          _e4844948766_
                          _hd4845048769_
                          _tl4845148771_
                          _e4845248774_
                          _hd4845348777_
                          _tl4845448779_
                          _e4845548782_
                          _hd4845648785_
                          _tl4845748787_
                          _e4845848790_
                          _hd4845948793_
                          _tl4846048795_)
                   (let ((_L48798_ _hd4845948793_)
                         (_L48799_ _hd4845048769_)
                         (_L48800_ _hd4844148745_)
                         (_L48801_ _hd4843248721_)
                         (_L48802_ _hd4842348697_))
                     (if (gxc#runtime-identifier=? _L48802_ 'bind-method!)
                         (___kont4931749318_
                          _L48798_
                          _L48799_
                          _L48800_
                          _L48801_
                          _L48802_)
                         (___kont4932149322_))))))
            (if (gx#stx-pair? ___stx4931549316_)
                (let ((_e4841348670_ (gx#stx-e ___stx4931549316_)))
                  (let ((_tl4841548675_ (##cdr _e4841348670_))
                        (_hd4841448673_ (##car _e4841348670_)))
                    (if (gx#stx-pair? _tl4841548675_)
                        (let ((_e4841648678_ (gx#stx-e _tl4841548675_)))
                          (let ((_tl4841848683_ (##cdr _e4841648678_))
                                (_hd4841748681_ (##car _e4841648678_)))
                            (if (gx#stx-pair? _hd4841748681_)
                                (let ((_e4841948686_
                                       (gx#stx-e _hd4841748681_)))
                                  (let ((_tl4842148691_ (##cdr _e4841948686_))
                                        (_hd4842048689_ (##car _e4841948686_)))
                                    (if (gx#identifier? _hd4842048689_)
                                        (if (gx#stx-eq? '%#ref _hd4842048689_)
                                            (if (gx#stx-pair? _tl4842148691_)
                                                (let ((_e4842248694_
                                                       (gx#stx-e
                                                        _tl4842148691_)))
                                                  (let ((_tl4842448699_
                                                         (##cdr _e4842248694_))
                                                        (_hd4842348697_
                                                         (##car _e4842248694_)))
                                                    (if (gx#stx-null?
                                                         _tl4842448699_)
                                                        (if (gx#stx-pair?
                                                             _tl4841848683_)
                                                            (let ((_e4842548702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4841848683_)))
                      (let ((_tl4842748707_ (##cdr _e4842548702_))
                            (_hd4842648705_ (##car _e4842548702_)))
                        (if (gx#stx-pair? _hd4842648705_)
                            (let ((_e4842848710_ (gx#stx-e _hd4842648705_)))
                              (let ((_tl4843048715_ (##cdr _e4842848710_))
                                    (_hd4842948713_ (##car _e4842848710_)))
                                (if (gx#identifier? _hd4842948713_)
                                    (if (gx#stx-eq? '%#ref _hd4842948713_)
                                        (if (gx#stx-pair? _tl4843048715_)
                                            (let ((_e4843148718_
                                                   (gx#stx-e _tl4843048715_)))
                                              (let ((_tl4843348723_
                                                     (##cdr _e4843148718_))
                                                    (_hd4843248721_
                                                     (##car _e4843148718_)))
                                                (if (gx#stx-null?
                                                     _tl4843348723_)
                                                    (if (gx#stx-pair?
                                                         _tl4842748707_)
                                                        (let ((_e4843448726_
                                                               (gx#stx-e
                                                                _tl4842748707_)))
                                                          (let ((_tl4843648731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4843448726_))
                        (_hd4843548729_ (##car _e4843448726_)))
                    (if (gx#stx-pair? _hd4843548729_)
                        (let ((_e4843748734_ (gx#stx-e _hd4843548729_)))
                          (let ((_tl4843948739_ (##cdr _e4843748734_))
                                (_hd4843848737_ (##car _e4843748734_)))
                            (if (gx#identifier? _hd4843848737_)
                                (if (gx#stx-eq? '%#quote _hd4843848737_)
                                    (if (gx#stx-pair? _tl4843948739_)
                                        (let ((_e4844048742_
                                               (gx#stx-e _tl4843948739_)))
                                          (let ((_tl4844248747_
                                                 (##cdr _e4844048742_))
                                                (_hd4844148745_
                                                 (##car _e4844048742_)))
                                            (if (gx#stx-null? _tl4844248747_)
                                                (if (gx#stx-pair?
                                                     _tl4843648731_)
                                                    (let ((_e4844348750_
                                                           (gx#stx-e
                                                            _tl4843648731_)))
                                                      (let ((_tl4844548755_
                                                             (##cdr _e4844348750_))
                                                            (_hd4844448753_
                                                             (##car _e4844348750_)))
                                                        (if (gx#stx-pair?
                                                             _hd4844448753_)
                                                            (let ((_e4844648758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4844448753_)))
                      (let ((_tl4844848763_ (##cdr _e4844648758_))
                            (_hd4844748761_ (##car _e4844648758_)))
                        (if (gx#identifier? _hd4844748761_)
                            (if (gx#stx-eq? '%#ref _hd4844748761_)
                                (if (gx#stx-pair? _tl4844848763_)
                                    (let ((_e4844948766_
                                           (gx#stx-e _tl4844848763_)))
                                      (let ((_tl4845148771_
                                             (##cdr _e4844948766_))
                                            (_hd4845048769_
                                             (##car _e4844948766_)))
                                        (if (gx#stx-null? _tl4845148771_)
                                            (if (gx#stx-pair? _tl4844548755_)
                                                (let ((_e4845248774_
                                                       (gx#stx-e
                                                        _tl4844548755_)))
                                                  (let ((_tl4845448779_
                                                         (##cdr _e4845248774_))
                                                        (_hd4845348777_
                                                         (##car _e4845248774_)))
                                                    (if (gx#stx-pair?
                                                         _hd4845348777_)
                                                        (let ((_e4845548782_
                                                               (gx#stx-e
                                                                _hd4845348777_)))
                                                          (let ((_tl4845748787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4845548782_))
                        (_hd4845648785_ (##car _e4845548782_)))
                    (if (gx#identifier? _hd4845648785_)
                        (if (gx#stx-eq? '%#quote _hd4845648785_)
                            (if (gx#stx-pair? _tl4845748787_)
                                (let ((_e4845848790_
                                       (gx#stx-e _tl4845748787_)))
                                  (let ((_tl4846048795_ (##cdr _e4845848790_))
                                        (_hd4845948793_ (##car _e4845848790_)))
                                    (if (gx#stx-null? _tl4846048795_)
                                        (if (gx#stx-null? _tl4845448779_)
                                            (___match4945049451_
                                             _e4841348670_
                                             _hd4841448673_
                                             _tl4841548675_
                                             _e4841648678_
                                             _hd4841748681_
                                             _tl4841848683_
                                             _e4841948686_
                                             _hd4842048689_
                                             _tl4842148691_
                                             _e4842248694_
                                             _hd4842348697_
                                             _tl4842448699_
                                             _e4842548702_
                                             _hd4842648705_
                                             _tl4842748707_
                                             _e4842848710_
                                             _hd4842948713_
                                             _tl4843048715_
                                             _e4843148718_
                                             _hd4843248721_
                                             _tl4843348723_
                                             _e4843448726_
                                             _hd4843548729_
                                             _tl4843648731_
                                             _e4843748734_
                                             _hd4843848737_
                                             _tl4843948739_
                                             _e4844048742_
                                             _hd4844148745_
                                             _tl4844248747_
                                             _e4844348750_
                                             _hd4844448753_
                                             _tl4844548755_
                                             _e4844648758_
                                             _hd4844748761_
                                             _tl4844848763_
                                             _e4844948766_
                                             _hd4845048769_
                                             _tl4845148771_
                                             _e4845248774_
                                             _hd4845348777_
                                             _tl4845448779_
                                             _e4845548782_
                                             _hd4845648785_
                                             _tl4845748787_
                                             _e4845848790_
                                             _hd4845948793_
                                             _tl4846048795_)
                                            (___kont4932149322_))
                                        (___kont4932149322_))))
                                (___kont4932149322_))
                            (___kont4932149322_))
                        (___kont4932149322_))))
                (___kont4932149322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4844548755_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L48624_
                                                               _hd4845048769_)
                                                              (_L48625_
                                                               _hd4844148745_)
                                                              (_L48626_
                                                               _hd4843248721_)
                                                              (_L48627_
                                                               _hd4842348697_))
                                                          (___kont4931949320_
                                                           _L48624_
                                                           _L48625_
                                                           _L48626_
                                                           _L48627_))
                                                        (___kont4932149322_))
                                                    (___kont4932149322_)))
                                            (___kont4932149322_))))
                                    (___kont4932149322_))
                                (___kont4932149322_))
                            (___kont4932149322_))))
                    (___kont4932149322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932149322_))
                                                (___kont4932149322_))))
                                        (___kont4932149322_))
                                    (___kont4932149322_))
                                (___kont4932149322_))))
                        (___kont4932149322_))))
                (___kont4932149322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932149322_))))
                                            (___kont4932149322_))
                                        (___kont4932149322_))
                                    (___kont4932149322_))))
                            (___kont4932149322_))))
                    (___kont4932149322_))
                (___kont4932149322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4932149322_))
                                            (___kont4932149322_))
                                        (___kont4932149322_))))
                                (___kont4932149322_))))
                        (___kont4932149322_))))
                (___kont4932149322_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self48378_)
      (let* ((_self4837948385_ _self48378_)
             (_E4838148389_
              (lambda () (error '"No clause matching" _self4837948385_)))
             (_K4838248394_
              (lambda (_alias-id48392_)
                (cons '@alias (cons _alias-id48392_ '())))))
        (if (##structure-instance-of? _self4837948385_ 'gxc#!alias::t)
            (let* ((_e4838348397_ (##vector-ref _self4837948385_ '1))
                   (_alias-id48400_ _e4838348397_))
              (_K4838248394_ _alias-id48400_))
            (_E4838148389_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self48200_)
      (let* ((_self4820148212_ _self48200_)
             (_E4820348216_
              (lambda () (error '"No clause matching" _self4820148212_)))
             (_K4820448225_
              (lambda (_plist48219_
                       _ctor48220_
                       _fields48221_
                       _super48222_
                       _type-id48223_)
                (cons '@struct-type
                      (cons _type-id48223_
                            (cons _super48222_
                                  (cons _fields48221_
                                        (cons _ctor48220_
                                              (cons _plist48219_ '())))))))))
        (if (##structure-instance-of? _self4820148212_ 'gxc#!struct-type::t)
            (let* ((_e4820548228_ (##vector-ref _self4820148212_ '1))
                   (_type-id48231_ _e4820548228_)
                   (_e4820648233_ (##vector-ref _self4820148212_ '2))
                   (_super48236_ _e4820648233_)
                   (_e4820748238_ (##vector-ref _self4820148212_ '3))
                   (_fields48241_ _e4820748238_)
                   (_e4820848243_ (##vector-ref _self4820148212_ '4))
                   (_e4820948246_ (##vector-ref _self4820148212_ '5))
                   (_ctor48249_ _e4820948246_)
                   (_e4821048251_ (##vector-ref _self4820148212_ '6))
                   (_plist48254_ _e4821048251_))
              (_K4820448225_
               _plist48254_
               _ctor48249_
               _fields48241_
               _super48236_
               _type-id48231_))
            (_E4820348216_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self48054_)
      (let* ((_self4805548061_ _self48054_)
             (_E4805748065_
              (lambda () (error '"No clause matching" _self4805548061_)))
             (_K4805848070_
              (lambda (_struct-t48068_)
                (cons '@struct-pred (cons _struct-t48068_ '())))))
        (if (##structure-instance-of? _self4805548061_ 'gxc#!struct-pred::t)
            (let* ((_e4805948073_ (##vector-ref _self4805548061_ '1))
                   (_struct-t48076_ _e4805948073_))
              (_K4805848070_ _struct-t48076_))
            (_E4805748065_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self47908_)
      (let* ((_self4790947915_ _self47908_)
             (_E4791147919_
              (lambda () (error '"No clause matching" _self4790947915_)))
             (_K4791247924_
              (lambda (_struct-t47922_)
                (cons '@struct-cons (cons _struct-t47922_ '())))))
        (if (##structure-instance-of? _self4790947915_ 'gxc#!struct-cons::t)
            (let* ((_e4791347927_ (##vector-ref _self4790947915_ '1))
                   (_struct-t47930_ _e4791347927_))
              (_K4791247924_ _struct-t47930_))
            (_E4791147919_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self47748_)
      (let* ((_self4774947757_ _self47748_)
             (_E4775147761_
              (lambda () (error '"No clause matching" _self4774947757_)))
             (_K4775247768_
              (lambda (_unchecked?47764_ _off47765_ _struct-t47766_)
                (cons '@struct-getf
                      (cons _struct-t47766_
                            (cons _off47765_ (cons _unchecked?47764_ '())))))))
        (if (##structure-instance-of? _self4774947757_ 'gxc#!struct-getf::t)
            (let* ((_e4775347771_ (##vector-ref _self4774947757_ '1))
                   (_struct-t47774_ _e4775347771_)
                   (_e4775447776_ (##vector-ref _self4774947757_ '2))
                   (_off47779_ _e4775447776_)
                   (_e4775547781_ (##vector-ref _self4774947757_ '3))
                   (_unchecked?47784_ _e4775547781_))
              (_K4775247768_ _unchecked?47784_ _off47779_ _struct-t47774_))
            (_E4775147761_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self47588_)
      (let* ((_self4758947597_ _self47588_)
             (_E4759147601_
              (lambda () (error '"No clause matching" _self4758947597_)))
             (_K4759247608_
              (lambda (_unchecked?47604_ _off47605_ _struct-t47606_)
                (cons '@struct-setf
                      (cons _struct-t47606_
                            (cons _off47605_ (cons _unchecked?47604_ '())))))))
        (if (##structure-instance-of? _self4758947597_ 'gxc#!struct-setf::t)
            (let* ((_e4759347611_ (##vector-ref _self4758947597_ '1))
                   (_struct-t47614_ _e4759347611_)
                   (_e4759447616_ (##vector-ref _self4758947597_ '2))
                   (_off47619_ _e4759447616_)
                   (_e4759547621_ (##vector-ref _self4758947597_ '3))
                   (_unchecked?47624_ _e4759547621_))
              (_K4759247608_ _unchecked?47624_ _off47619_ _struct-t47614_))
            (_E4759147601_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self47414_)
      (let* ((_self4741547425_ _self47414_)
             (_E4741747429_
              (lambda () (error '"No clause matching" _self4741547425_)))
             (_K4741847440_
              (lambda (_typedecl47432_
                       _inline47433_
                       _dispatch47434_
                       _arity47435_)
                (if _inline47433_
                    (let ((_$e47437_ _typedecl47432_))
                      (if _$e47437_
                          _$e47437_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity47435_ (cons _dispatch47434_ '())))))))
        (if (##structure-instance-of? _self4741547425_ 'gxc#!lambda::t)
            (let* ((_e4741947443_ (##vector-ref _self4741547425_ '1))
                   (_e4742047446_ (##vector-ref _self4741547425_ '2))
                   (_arity47449_ _e4742047446_)
                   (_e4742147451_ (##vector-ref _self4741547425_ '3))
                   (_dispatch47454_ _e4742147451_)
                   (_e4742247456_ (##vector-ref _self4741547425_ '4))
                   (_inline47459_ _e4742247456_)
                   (_e4742347461_ (##vector-ref _self4741547425_ '5))
                   (_typedecl47464_ _e4742347461_))
              (_K4741847440_
               _typedecl47464_
               _inline47459_
               _dispatch47454_
               _arity47449_))
            (_E4741747429_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self47225_)
      (letrec ((_clause-e47227_
                (lambda (_clause47257_)
                  (let* ((_clause4725847266_ _clause47257_)
                         (_E4726047270_
                          (lambda ()
                            (error '"No clause matching" _clause4725847266_)))
                         (_K4726147276_
                          (lambda (_dispatch47273_ _arity47274_)
                            (cons _arity47274_ (cons _dispatch47273_ '())))))
                    (if (##structure-instance-of?
                         _clause4725847266_
                         'gxc#!lambda::t)
                        (let* ((_e4726247279_
                                (##vector-ref _clause4725847266_ '1))
                               (_e4726347282_
                                (##vector-ref _clause4725847266_ '2))
                               (_arity47285_ _e4726347282_)
                               (_e4726447287_
                                (##vector-ref _clause4725847266_ '3))
                               (_dispatch47290_ _e4726447287_))
                          (_K4726147276_ _dispatch47290_ _arity47285_))
                        (_E4726047270_))))))
        (let* ((_self4722847235_ _self47225_)
               (_E4723047239_
                (lambda () (error '"No clause matching" _self4722847235_)))
               (_K4723147246_
                (lambda (_clauses47242_)
                  (let ((_clauses47244_ (map _clause-e47227_ _clauses47242_)))
                    (cons '@case-lambda _clauses47244_)))))
          (if (##structure-instance-of? _self4722847235_ 'gxc#!case-lambda::t)
              (let* ((_e4723247249_ (##vector-ref _self4722847235_ '1))
                     (_e4723347252_ (##vector-ref _self4722847235_ '2))
                     (_clauses47255_ _e4723347252_))
                (_K4723147246_ _clauses47255_))
              (_E4723047239_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self47068_)
      (let* ((_self4706947077_ _self47068_)
             (_E4707147081_
              (lambda () (error '"No clause matching" _self4706947077_)))
             (_K4707247087_
              (lambda (_dispatch47084_ _table47085_)
                (cons '@kw-lambda
                      (cons _table47085_ (cons _dispatch47084_ '()))))))
        (if (##structure-instance-of? _self4706947077_ 'gxc#!kw-lambda::t)
            (let* ((_e4707347090_ (##vector-ref _self4706947077_ '1))
                   (_e4707447093_ (##vector-ref _self4706947077_ '2))
                   (_table47096_ _e4707447093_)
                   (_e4707547098_ (##vector-ref _self4706947077_ '3))
                   (_dispatch47101_ _e4707547098_))
              (_K4707247087_ _dispatch47101_ _table47096_))
            (_E4707147081_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self46911_)
      (let* ((_self4691246920_ _self46911_)
             (_E4691446924_
              (lambda () (error '"No clause matching" _self4691246920_)))
             (_K4691546930_
              (lambda (_main46927_ _keys46928_)
                (cons '@kw-lambda-dispatch
                      (cons _keys46928_ (cons _main46927_ '()))))))
        (if (##structure-instance-of?
             _self4691246920_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4691646933_ (##vector-ref _self4691246920_ '1))
                   (_e4691746936_ (##vector-ref _self4691246920_ '2))
                   (_keys46939_ _e4691746936_)
                   (_e4691846941_ (##vector-ref _self4691246920_ '3))
                   (_main46944_ _e4691846941_))
              (_K4691546930_ _main46944_ _keys46939_))
            (_E4691446924_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
