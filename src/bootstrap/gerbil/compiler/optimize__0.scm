(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj49560 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj49560) __obj49560))))))
  (define gxc#optimize!
    (lambda (_ctx49253_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx49253_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx49253_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code49256_
                  (gxc#optimize-source
                   (##structure-ref _ctx49253_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx49253_
              _code49256_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-table 'test: eq?)
       gxc#current-compile-local-type
       (make-table 'test: eq?))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx49198_)
      (letrec* ((_deps49200_
                 (let* ((_imports49244_
                         (##structure-ref
                          _ctx49198_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e49246_ (gx#core-context-prelude__% _ctx49198_)))
                   (if _$e49246_
                       ((lambda (_g4924849250_)
                          (cons _g4924849250_ _imports49244_))
                        _$e49246_)
                       _imports49244_))))
        (let _lp49202_ ((_rest49204_ _deps49200_))
          (let* ((_rest4920549213_ _rest49204_)
                 (_else4920749221_ (lambda () '#!void))
                 (_K4920949232_
                  (lambda (_rest49224_ _hd49225_)
                    (if (##structure-instance-of?
                         _hd49225_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd49225_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e49227_
                                       (gx#core-context-prelude__% _hd49225_)))
                                  (if _$e49227_
                                      ((lambda (_pre49230_)
                                         (_lp49202_
                                          (cons _pre49230_
                                                (##structure-ref
                                                 _hd49225_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e49227_)
                                      (_lp49202_
                                       (##structure-ref
                                        _hd49225_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd49225_)))
                          (_lp49202_ _rest49224_))
                        (if (##structure-instance-of?
                             _hd49225_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd49225_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp49202_
                                     (##structure-ref
                                      _hd49225_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd49225_)))
                              (_lp49202_ _rest49224_))
                            (if (##structure-direct-instance-of?
                                 _hd49225_
                                 'gx#module-import::t)
                                (_lp49202_
                                 (cons (##direct-structure-ref
                                        _hd49225_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest49224_))
                                (if (##structure-direct-instance-of?
                                     _hd49225_
                                     'gx#module-export::t)
                                    (_lp49202_
                                     (cons (##direct-structure-ref
                                            _hd49225_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest49224_))
                                    (if (##structure-direct-instance-of?
                                         _hd49225_
                                         'gx#import-set::t)
                                        (_lp49202_
                                         (cons (##direct-structure-ref
                                                _hd49225_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest49224_))
                                        (error '"Unexpected module import"
                                               _hd49225_)))))))))
            (if (##pair? _rest4920549213_)
                (let ((_hd4921049235_ (##car _rest4920549213_))
                      (_tl4921149237_ (##cdr _rest4920549213_)))
                  (let* ((_hd49240_ _hd4921049235_)
                         (_rest49242_ _tl4921149237_))
                    (_K4920949232_ _rest49242_ _hd49240_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx49178_)
      (if (if (##structure-instance-of? _ctx49178_ 'gx#module-context::t)
              (list? (##structure-ref _ctx49178_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht49180_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id49182_
                  (##structure-ref _ctx49178_ '1 gx#expander-context::t '#f))
                 (_mod49184_ (table-ref _ht49180_ _id49182_ '#f)))
            (let ((_$e49187_ _mod49184_))
              (if _$e49187_
                  _$e49187_
                  (let* ((_mod49190_ (gxc#optimizer-import-ssxi _ctx49178_))
                         (_val49195_
                          (let ((_$e49192_ _mod49190_))
                            (if _$e49192_ _$e49192_ '#!void))))
                    (begin
                      (table-set! _ht49180_ _id49182_ _val49195_)
                      _val49195_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx49155_)
      (letrec ((_catch-e49157_
                (lambda (_exn49176_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx49155_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn49176_))
                        '#!void)
                    '#f)))
               (_import-e49158_
                (lambda ()
                  (let* ((_str-id49161_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx49155_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path49169_
                          (let ((_odir4916249164_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4916249164_
                                (let ((_odir49167_ _odir4916249164_))
                                  (path-expand
                                   (string-append _str-id49161_ '".ss")
                                   _odir49167_))
                                '#f)))
                         (_library-path49171_
                          (string->symbol
                           (string-append '":" _str-id49161_ '".ss")))
                         (_ssxi-path49173_
                          (if (if _artefact-path49169_
                                  (file-exists? _artefact-path49169_)
                                  '#f)
                              _artefact-path49169_
                              _library-path49171_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path49173_)
                      (gx#import-module__% _ssxi-path49173_ '#t '#t))))))
        (if (##structure-ref _ctx49155_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e49157_ _import-e49158_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx49149_)
      (begin
        (gxc#apply-collect-mutators _stx49149_)
        (let ((_stx49151_ (gxc#apply-lift-top-lambdas _stx49149_)))
          (begin
            (gxc#apply-collect-type-info _stx49151_)
            (let ((_stx49153_ (gxc#apply-optimize-annotated _stx49151_)))
              (gxc#apply-optimize-call _stx49153_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl49146_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl49146_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl49146_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl49146_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl49146_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl49146_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl49146_ '%#call gxc#generate-ssxi-call%)
           _tbl49146_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx49139_ . _args49141_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx49139_ _args49141_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx49100_)
      (let* ((_g4910249112_
              (lambda (_g4910349109_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4910349109_)))
             (_g4910149136_
              (lambda (_g4910349115_)
                (if (gx#stx-pair? _g4910349115_)
                    (let ((_e4910549117_ (gx#stx-e _g4910349115_)))
                      (let ((_hd4910649120_ (##car _e4910549117_))
                            (_tl4910749122_ (##cdr _e4910549117_)))
                        ((lambda (_L49125_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx49100_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4910749122_)))
                    (_g4910249112_ _g4910349115_)))))
        (_g4910149136_ _stx49100_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx49040_)
      (let* ((_g4904249056_
              (lambda (_g4904349053_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4904349053_)))
             (_g4904149097_
              (lambda (_g4904349059_)
                (if (gx#stx-pair? _g4904349059_)
                    (let ((_e4904649061_ (gx#stx-e _g4904349059_)))
                      (let ((_hd4904749064_ (##car _e4904649061_))
                            (_tl4904849066_ (##cdr _e4904649061_)))
                        (if (gx#stx-pair? _tl4904849066_)
                            (let ((_e4904949069_ (gx#stx-e _tl4904849066_)))
                              (let ((_hd4905049072_ (##car _e4904949069_))
                                    (_tl4905149074_ (##cdr _e4904949069_)))
                                ((lambda (_L49077_ _L49078_)
                                   (let* ((_ctx49091_
                                           (gx#syntax-local-e__0 _L49078_))
                                          (_code49093_
                                           (##structure-ref
                                            _ctx49091_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code49093_))
                                      gx#current-expander-context
                                      _ctx49091_)))
                                 _tl4905149074_
                                 _hd4905049072_)))
                            (_g4904249056_ _g4904349059_))))
                    (_g4904249056_ _g4904349059_)))))
        (_g4904149097_ _stx49040_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx48850_)
      (letrec ((_generate-e48852_
                (lambda (_id49029_)
                  (let* ((_sym49031_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id49029_)
                              '#f))
                         (_$e49033_
                          (if _sym49031_
                              (gxc#optimizer-lookup-type _sym49031_)
                              '#f)))
                    (if _$e49033_
                        ((lambda (_type49036_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym49031_)
                             (let ((_typedecl49038_
                                    (call-method _type49036_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym49031_
                                           (cons _typedecl49038_ '()))))))
                         _$e49033_)
                        '(begin))))))
        (let* ((___stx4925949260_ _stx48850_)
               (_g4885548893_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4925949260_))))
          (let ((___kont4926149262_
                 (lambda (_L49011_) (_generate-e48852_ _L49011_)))
                (___kont4926349264_
                 (lambda (_L48946_)
                   (let ((_types48972_
                          (map _generate-e48852_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4896448967_ _g4896548969_)
                                           (cons _g4896448967_ _g4896548969_))
                                         '()
                                         _L48946_)))))
                     (cons 'begin _types48972_)))))
            (let ((___match4931449315_
                   (lambda (_e4887148898_
                            _hd4887248901_
                            _tl4887348903_
                            _e4887448906_
                            _hd4887548909_
                            _tl4887648911_
                            ___splice4926549266_
                            _target4887748914_
                            _tl4887948916_)
                     (letrec ((_loop4888048919_
                               (lambda (_hd4887848922_ _id4888448924_)
                                 (if (gx#stx-pair? _hd4887848922_)
                                     (let ((_e4888148927_
                                            (gx#stx-e _hd4887848922_)))
                                       (let ((_lp-tl4888348932_
                                              (##cdr _e4888148927_))
                                             (_lp-hd4888248930_
                                              (##car _e4888148927_)))
                                         (_loop4888048919_
                                          _lp-tl4888348932_
                                          (cons _lp-hd4888248930_
                                                _id4888448924_))))
                                     (let ((_id4888548935_
                                            (reverse _id4888448924_)))
                                       (if (gx#stx-pair? _tl4887648911_)
                                           (let ((_e4888648938_
                                                  (gx#stx-e _tl4887648911_)))
                                             (let ((_tl4888848943_
                                                    (##cdr _e4888648938_))
                                                   (_hd4888748941_
                                                    (##car _e4888648938_)))
                                               (if (gx#stx-null?
                                                    _tl4888848943_)
                                                   (___kont4926349264_
                                                    _id4888548935_)
                                                   (_g4885548893_))))
                                           (_g4885548893_)))))))
                       (_loop4888048919_ _target4887748914_ '())))))
              (if (gx#stx-pair? ___stx4925949260_)
                  (let ((_e4885848979_ (gx#stx-e ___stx4925949260_)))
                    (let ((_tl4886048984_ (##cdr _e4885848979_))
                          (_hd4885948982_ (##car _e4885848979_)))
                      (if (gx#stx-pair? _tl4886048984_)
                          (let ((_e4886148987_ (gx#stx-e _tl4886048984_)))
                            (let ((_tl4886348992_ (##cdr _e4886148987_))
                                  (_hd4886248990_ (##car _e4886148987_)))
                              (if (gx#stx-pair? _hd4886248990_)
                                  (let ((_e4886448995_
                                         (gx#stx-e _hd4886248990_)))
                                    (let ((_tl4886649000_
                                           (##cdr _e4886448995_))
                                          (_hd4886548998_
                                           (##car _e4886448995_)))
                                      (if (gx#stx-null? _tl4886649000_)
                                          (if (gx#stx-pair? _tl4886348992_)
                                              (let ((_e4886749003_
                                                     (gx#stx-e
                                                      _tl4886348992_)))
                                                (let ((_tl4886949008_
                                                       (##cdr _e4886749003_))
                                                      (_hd4886849006_
                                                       (##car _e4886749003_)))
                                                  (if (gx#stx-null?
                                                       _tl4886949008_)
                                                      (___kont4926149262_
                                                       _hd4886548998_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4886248990_)
                                                          (let ((___splice4926549266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4886248990_ '0)))
                    (let ((_tl4887948916_
                           (##vector-ref ___splice4926549266_ '1))
                          (_target4887748914_
                           (##vector-ref ___splice4926549266_ '0)))
                      (if (gx#stx-null? _tl4887948916_)
                          (___match4931449315_
                           _e4885848979_
                           _hd4885948982_
                           _tl4886048984_
                           _e4886148987_
                           _hd4886248990_
                           _tl4886348992_
                           ___splice4926549266_
                           _target4887748914_
                           _tl4887948916_)
                          (_g4885548893_))))
                  (_g4885548893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4886248990_)
                                                  (let ((___splice4926549266_
                                                         (gx#syntax-split-splice
                                                          _hd4886248990_
                                                          '0)))
                                                    (let ((_tl4887948916_
                                                           (##vector-ref
                                                            ___splice4926549266_
                                                            '1))
                                                          (_target4887748914_
                                                           (##vector-ref
                                                            ___splice4926549266_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4887948916_)
                                                          (___match4931449315_
                                                           _e4885848979_
                                                           _hd4885948982_
                                                           _tl4886048984_
                                                           _e4886148987_
                                                           _hd4886248990_
                                                           _tl4886348992_
                                                           ___splice4926549266_
                                                           _target4887748914_
                                                           _tl4887948916_)
                                                          (_g4885548893_))))
                                                  (_g4885548893_)))
                                          (if (gx#stx-pair/null?
                                               _hd4886248990_)
                                              (let ((___splice4926549266_
                                                     (gx#syntax-split-splice
                                                      _hd4886248990_
                                                      '0)))
                                                (let ((_tl4887948916_
                                                       (##vector-ref
                                                        ___splice4926549266_
                                                        '1))
                                                      (_target4887748914_
                                                       (##vector-ref
                                                        ___splice4926549266_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4887948916_)
                                                      (___match4931449315_
                                                       _e4885848979_
                                                       _hd4885948982_
                                                       _tl4886048984_
                                                       _e4886148987_
                                                       _hd4886248990_
                                                       _tl4886348992_
                                                       ___splice4926549266_
                                                       _target4887748914_
                                                       _tl4887948916_)
                                                      (_g4885548893_))))
                                              (_g4885548893_)))))
                                  (if (gx#stx-pair/null? _hd4886248990_)
                                      (let ((___splice4926549266_
                                             (gx#syntax-split-splice
                                              _hd4886248990_
                                              '0)))
                                        (let ((_tl4887948916_
                                               (##vector-ref
                                                ___splice4926549266_
                                                '1))
                                              (_target4887748914_
                                               (##vector-ref
                                                ___splice4926549266_
                                                '0)))
                                          (if (gx#stx-null? _tl4887948916_)
                                              (___match4931449315_
                                               _e4885848979_
                                               _hd4885948982_
                                               _tl4886048984_
                                               _e4886148987_
                                               _hd4886248990_
                                               _tl4886348992_
                                               ___splice4926549266_
                                               _target4887748914_
                                               _tl4887948916_)
                                              (_g4885548893_))))
                                      (_g4885548893_)))))
                          (_g4885548893_))))
                  (_g4885548893_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx48404_)
      (let* ((___stx4931749318_ _stx48404_)
             (_g4840848510_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4931749318_))))
        (let ((___kont4931949320_
               (lambda (_L48800_ _L48801_ _L48802_ _L48803_ _L48804_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48803_)
                             (cons (gx#stx-e _L48802_)
                                   (cons (gxc#identifier-symbol _L48801_)
                                         (cons (gx#stx-e _L48800_) '())))))))
              (___kont4932149322_
               (lambda (_L48626_ _L48627_ _L48628_ _L48629_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48628_)
                             (cons (gx#stx-e _L48627_)
                                   (cons (gxc#identifier-symbol _L48626_)
                                         (cons '#f '())))))))
              (___kont4932349324_ (lambda () '(begin))))
          (let ((___match4945249453_
                 (lambda (_e4841548672_
                          _hd4841648675_
                          _tl4841748677_
                          _e4841848680_
                          _hd4841948683_
                          _tl4842048685_
                          _e4842148688_
                          _hd4842248691_
                          _tl4842348693_
                          _e4842448696_
                          _hd4842548699_
                          _tl4842648701_
                          _e4842748704_
                          _hd4842848707_
                          _tl4842948709_
                          _e4843048712_
                          _hd4843148715_
                          _tl4843248717_
                          _e4843348720_
                          _hd4843448723_
                          _tl4843548725_
                          _e4843648728_
                          _hd4843748731_
                          _tl4843848733_
                          _e4843948736_
                          _hd4844048739_
                          _tl4844148741_
                          _e4844248744_
                          _hd4844348747_
                          _tl4844448749_
                          _e4844548752_
                          _hd4844648755_
                          _tl4844748757_
                          _e4844848760_
                          _hd4844948763_
                          _tl4845048765_
                          _e4845148768_
                          _hd4845248771_
                          _tl4845348773_
                          _e4845448776_
                          _hd4845548779_
                          _tl4845648781_
                          _e4845748784_
                          _hd4845848787_
                          _tl4845948789_
                          _e4846048792_
                          _hd4846148795_
                          _tl4846248797_)
                   (let ((_L48800_ _hd4846148795_)
                         (_L48801_ _hd4845248771_)
                         (_L48802_ _hd4844348747_)
                         (_L48803_ _hd4843448723_)
                         (_L48804_ _hd4842548699_))
                     (if (gxc#runtime-identifier=? _L48804_ 'bind-method!)
                         (___kont4931949320_
                          _L48800_
                          _L48801_
                          _L48802_
                          _L48803_
                          _L48804_)
                         (___kont4932349324_))))))
            (if (gx#stx-pair? ___stx4931749318_)
                (let ((_e4841548672_ (gx#stx-e ___stx4931749318_)))
                  (let ((_tl4841748677_ (##cdr _e4841548672_))
                        (_hd4841648675_ (##car _e4841548672_)))
                    (if (gx#stx-pair? _tl4841748677_)
                        (let ((_e4841848680_ (gx#stx-e _tl4841748677_)))
                          (let ((_tl4842048685_ (##cdr _e4841848680_))
                                (_hd4841948683_ (##car _e4841848680_)))
                            (if (gx#stx-pair? _hd4841948683_)
                                (let ((_e4842148688_
                                       (gx#stx-e _hd4841948683_)))
                                  (let ((_tl4842348693_ (##cdr _e4842148688_))
                                        (_hd4842248691_ (##car _e4842148688_)))
                                    (if (gx#identifier? _hd4842248691_)
                                        (if (gx#stx-eq? '%#ref _hd4842248691_)
                                            (if (gx#stx-pair? _tl4842348693_)
                                                (let ((_e4842448696_
                                                       (gx#stx-e
                                                        _tl4842348693_)))
                                                  (let ((_tl4842648701_
                                                         (##cdr _e4842448696_))
                                                        (_hd4842548699_
                                                         (##car _e4842448696_)))
                                                    (if (gx#stx-null?
                                                         _tl4842648701_)
                                                        (if (gx#stx-pair?
                                                             _tl4842048685_)
                                                            (let ((_e4842748704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4842048685_)))
                      (let ((_tl4842948709_ (##cdr _e4842748704_))
                            (_hd4842848707_ (##car _e4842748704_)))
                        (if (gx#stx-pair? _hd4842848707_)
                            (let ((_e4843048712_ (gx#stx-e _hd4842848707_)))
                              (let ((_tl4843248717_ (##cdr _e4843048712_))
                                    (_hd4843148715_ (##car _e4843048712_)))
                                (if (gx#identifier? _hd4843148715_)
                                    (if (gx#stx-eq? '%#ref _hd4843148715_)
                                        (if (gx#stx-pair? _tl4843248717_)
                                            (let ((_e4843348720_
                                                   (gx#stx-e _tl4843248717_)))
                                              (let ((_tl4843548725_
                                                     (##cdr _e4843348720_))
                                                    (_hd4843448723_
                                                     (##car _e4843348720_)))
                                                (if (gx#stx-null?
                                                     _tl4843548725_)
                                                    (if (gx#stx-pair?
                                                         _tl4842948709_)
                                                        (let ((_e4843648728_
                                                               (gx#stx-e
                                                                _tl4842948709_)))
                                                          (let ((_tl4843848733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4843648728_))
                        (_hd4843748731_ (##car _e4843648728_)))
                    (if (gx#stx-pair? _hd4843748731_)
                        (let ((_e4843948736_ (gx#stx-e _hd4843748731_)))
                          (let ((_tl4844148741_ (##cdr _e4843948736_))
                                (_hd4844048739_ (##car _e4843948736_)))
                            (if (gx#identifier? _hd4844048739_)
                                (if (gx#stx-eq? '%#quote _hd4844048739_)
                                    (if (gx#stx-pair? _tl4844148741_)
                                        (let ((_e4844248744_
                                               (gx#stx-e _tl4844148741_)))
                                          (let ((_tl4844448749_
                                                 (##cdr _e4844248744_))
                                                (_hd4844348747_
                                                 (##car _e4844248744_)))
                                            (if (gx#stx-null? _tl4844448749_)
                                                (if (gx#stx-pair?
                                                     _tl4843848733_)
                                                    (let ((_e4844548752_
                                                           (gx#stx-e
                                                            _tl4843848733_)))
                                                      (let ((_tl4844748757_
                                                             (##cdr _e4844548752_))
                                                            (_hd4844648755_
                                                             (##car _e4844548752_)))
                                                        (if (gx#stx-pair?
                                                             _hd4844648755_)
                                                            (let ((_e4844848760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4844648755_)))
                      (let ((_tl4845048765_ (##cdr _e4844848760_))
                            (_hd4844948763_ (##car _e4844848760_)))
                        (if (gx#identifier? _hd4844948763_)
                            (if (gx#stx-eq? '%#ref _hd4844948763_)
                                (if (gx#stx-pair? _tl4845048765_)
                                    (let ((_e4845148768_
                                           (gx#stx-e _tl4845048765_)))
                                      (let ((_tl4845348773_
                                             (##cdr _e4845148768_))
                                            (_hd4845248771_
                                             (##car _e4845148768_)))
                                        (if (gx#stx-null? _tl4845348773_)
                                            (if (gx#stx-pair? _tl4844748757_)
                                                (let ((_e4845448776_
                                                       (gx#stx-e
                                                        _tl4844748757_)))
                                                  (let ((_tl4845648781_
                                                         (##cdr _e4845448776_))
                                                        (_hd4845548779_
                                                         (##car _e4845448776_)))
                                                    (if (gx#stx-pair?
                                                         _hd4845548779_)
                                                        (let ((_e4845748784_
                                                               (gx#stx-e
                                                                _hd4845548779_)))
                                                          (let ((_tl4845948789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4845748784_))
                        (_hd4845848787_ (##car _e4845748784_)))
                    (if (gx#identifier? _hd4845848787_)
                        (if (gx#stx-eq? '%#quote _hd4845848787_)
                            (if (gx#stx-pair? _tl4845948789_)
                                (let ((_e4846048792_
                                       (gx#stx-e _tl4845948789_)))
                                  (let ((_tl4846248797_ (##cdr _e4846048792_))
                                        (_hd4846148795_ (##car _e4846048792_)))
                                    (if (gx#stx-null? _tl4846248797_)
                                        (if (gx#stx-null? _tl4845648781_)
                                            (___match4945249453_
                                             _e4841548672_
                                             _hd4841648675_
                                             _tl4841748677_
                                             _e4841848680_
                                             _hd4841948683_
                                             _tl4842048685_
                                             _e4842148688_
                                             _hd4842248691_
                                             _tl4842348693_
                                             _e4842448696_
                                             _hd4842548699_
                                             _tl4842648701_
                                             _e4842748704_
                                             _hd4842848707_
                                             _tl4842948709_
                                             _e4843048712_
                                             _hd4843148715_
                                             _tl4843248717_
                                             _e4843348720_
                                             _hd4843448723_
                                             _tl4843548725_
                                             _e4843648728_
                                             _hd4843748731_
                                             _tl4843848733_
                                             _e4843948736_
                                             _hd4844048739_
                                             _tl4844148741_
                                             _e4844248744_
                                             _hd4844348747_
                                             _tl4844448749_
                                             _e4844548752_
                                             _hd4844648755_
                                             _tl4844748757_
                                             _e4844848760_
                                             _hd4844948763_
                                             _tl4845048765_
                                             _e4845148768_
                                             _hd4845248771_
                                             _tl4845348773_
                                             _e4845448776_
                                             _hd4845548779_
                                             _tl4845648781_
                                             _e4845748784_
                                             _hd4845848787_
                                             _tl4845948789_
                                             _e4846048792_
                                             _hd4846148795_
                                             _tl4846248797_)
                                            (___kont4932349324_))
                                        (___kont4932349324_))))
                                (___kont4932349324_))
                            (___kont4932349324_))
                        (___kont4932349324_))))
                (___kont4932349324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4844748757_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L48626_
                                                               _hd4845248771_)
                                                              (_L48627_
                                                               _hd4844348747_)
                                                              (_L48628_
                                                               _hd4843448723_)
                                                              (_L48629_
                                                               _hd4842548699_))
                                                          (___kont4932149322_
                                                           _L48626_
                                                           _L48627_
                                                           _L48628_
                                                           _L48629_))
                                                        (___kont4932349324_))
                                                    (___kont4932349324_)))
                                            (___kont4932349324_))))
                                    (___kont4932349324_))
                                (___kont4932349324_))
                            (___kont4932349324_))))
                    (___kont4932349324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932349324_))
                                                (___kont4932349324_))))
                                        (___kont4932349324_))
                                    (___kont4932349324_))
                                (___kont4932349324_))))
                        (___kont4932349324_))))
                (___kont4932349324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932349324_))))
                                            (___kont4932349324_))
                                        (___kont4932349324_))
                                    (___kont4932349324_))))
                            (___kont4932349324_))))
                    (___kont4932349324_))
                (___kont4932349324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4932349324_))
                                            (___kont4932349324_))
                                        (___kont4932349324_))))
                                (___kont4932349324_))))
                        (___kont4932349324_))))
                (___kont4932349324_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self48380_)
      (let* ((_self4838148387_ _self48380_)
             (_E4838348391_
              (lambda () (error '"No clause matching" _self4838148387_)))
             (_K4838448396_
              (lambda (_alias-id48394_)
                (cons '@alias (cons _alias-id48394_ '())))))
        (if (##structure-instance-of? _self4838148387_ 'gxc#!alias::t)
            (let* ((_e4838548399_ (##vector-ref _self4838148387_ '1))
                   (_alias-id48402_ _e4838548399_))
              (_K4838448396_ _alias-id48402_))
            (_E4838348391_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self48202_)
      (let* ((_self4820348214_ _self48202_)
             (_E4820548218_
              (lambda () (error '"No clause matching" _self4820348214_)))
             (_K4820648227_
              (lambda (_plist48221_
                       _ctor48222_
                       _fields48223_
                       _super48224_
                       _type-id48225_)
                (cons '@struct-type
                      (cons _type-id48225_
                            (cons _super48224_
                                  (cons _fields48223_
                                        (cons _ctor48222_
                                              (cons _plist48221_ '())))))))))
        (if (##structure-instance-of? _self4820348214_ 'gxc#!struct-type::t)
            (let* ((_e4820748230_ (##vector-ref _self4820348214_ '1))
                   (_type-id48233_ _e4820748230_)
                   (_e4820848235_ (##vector-ref _self4820348214_ '2))
                   (_super48238_ _e4820848235_)
                   (_e4820948240_ (##vector-ref _self4820348214_ '3))
                   (_fields48243_ _e4820948240_)
                   (_e4821048245_ (##vector-ref _self4820348214_ '4))
                   (_e4821148248_ (##vector-ref _self4820348214_ '5))
                   (_ctor48251_ _e4821148248_)
                   (_e4821248253_ (##vector-ref _self4820348214_ '6))
                   (_plist48256_ _e4821248253_))
              (_K4820648227_
               _plist48256_
               _ctor48251_
               _fields48243_
               _super48238_
               _type-id48233_))
            (_E4820548218_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self48056_)
      (let* ((_self4805748063_ _self48056_)
             (_E4805948067_
              (lambda () (error '"No clause matching" _self4805748063_)))
             (_K4806048072_
              (lambda (_struct-t48070_)
                (cons '@struct-pred (cons _struct-t48070_ '())))))
        (if (##structure-instance-of? _self4805748063_ 'gxc#!struct-pred::t)
            (let* ((_e4806148075_ (##vector-ref _self4805748063_ '1))
                   (_struct-t48078_ _e4806148075_))
              (_K4806048072_ _struct-t48078_))
            (_E4805948067_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self47910_)
      (let* ((_self4791147917_ _self47910_)
             (_E4791347921_
              (lambda () (error '"No clause matching" _self4791147917_)))
             (_K4791447926_
              (lambda (_struct-t47924_)
                (cons '@struct-cons (cons _struct-t47924_ '())))))
        (if (##structure-instance-of? _self4791147917_ 'gxc#!struct-cons::t)
            (let* ((_e4791547929_ (##vector-ref _self4791147917_ '1))
                   (_struct-t47932_ _e4791547929_))
              (_K4791447926_ _struct-t47932_))
            (_E4791347921_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self47750_)
      (let* ((_self4775147759_ _self47750_)
             (_E4775347763_
              (lambda () (error '"No clause matching" _self4775147759_)))
             (_K4775447770_
              (lambda (_unchecked?47766_ _off47767_ _struct-t47768_)
                (cons '@struct-getf
                      (cons _struct-t47768_
                            (cons _off47767_ (cons _unchecked?47766_ '())))))))
        (if (##structure-instance-of? _self4775147759_ 'gxc#!struct-getf::t)
            (let* ((_e4775547773_ (##vector-ref _self4775147759_ '1))
                   (_struct-t47776_ _e4775547773_)
                   (_e4775647778_ (##vector-ref _self4775147759_ '2))
                   (_off47781_ _e4775647778_)
                   (_e4775747783_ (##vector-ref _self4775147759_ '3))
                   (_unchecked?47786_ _e4775747783_))
              (_K4775447770_ _unchecked?47786_ _off47781_ _struct-t47776_))
            (_E4775347763_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self47590_)
      (let* ((_self4759147599_ _self47590_)
             (_E4759347603_
              (lambda () (error '"No clause matching" _self4759147599_)))
             (_K4759447610_
              (lambda (_unchecked?47606_ _off47607_ _struct-t47608_)
                (cons '@struct-setf
                      (cons _struct-t47608_
                            (cons _off47607_ (cons _unchecked?47606_ '())))))))
        (if (##structure-instance-of? _self4759147599_ 'gxc#!struct-setf::t)
            (let* ((_e4759547613_ (##vector-ref _self4759147599_ '1))
                   (_struct-t47616_ _e4759547613_)
                   (_e4759647618_ (##vector-ref _self4759147599_ '2))
                   (_off47621_ _e4759647618_)
                   (_e4759747623_ (##vector-ref _self4759147599_ '3))
                   (_unchecked?47626_ _e4759747623_))
              (_K4759447610_ _unchecked?47626_ _off47621_ _struct-t47616_))
            (_E4759347603_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self47416_)
      (let* ((_self4741747427_ _self47416_)
             (_E4741947431_
              (lambda () (error '"No clause matching" _self4741747427_)))
             (_K4742047442_
              (lambda (_typedecl47434_
                       _inline47435_
                       _dispatch47436_
                       _arity47437_)
                (if _inline47435_
                    (let ((_$e47439_ _typedecl47434_))
                      (if _$e47439_
                          _$e47439_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity47437_ (cons _dispatch47436_ '())))))))
        (if (##structure-instance-of? _self4741747427_ 'gxc#!lambda::t)
            (let* ((_e4742147445_ (##vector-ref _self4741747427_ '1))
                   (_e4742247448_ (##vector-ref _self4741747427_ '2))
                   (_arity47451_ _e4742247448_)
                   (_e4742347453_ (##vector-ref _self4741747427_ '3))
                   (_dispatch47456_ _e4742347453_)
                   (_e4742447458_ (##vector-ref _self4741747427_ '4))
                   (_inline47461_ _e4742447458_)
                   (_e4742547463_ (##vector-ref _self4741747427_ '5))
                   (_typedecl47466_ _e4742547463_))
              (_K4742047442_
               _typedecl47466_
               _inline47461_
               _dispatch47456_
               _arity47451_))
            (_E4741947431_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self47227_)
      (letrec ((_clause-e47229_
                (lambda (_clause47259_)
                  (let* ((_clause4726047268_ _clause47259_)
                         (_E4726247272_
                          (lambda ()
                            (error '"No clause matching" _clause4726047268_)))
                         (_K4726347278_
                          (lambda (_dispatch47275_ _arity47276_)
                            (cons _arity47276_ (cons _dispatch47275_ '())))))
                    (if (##structure-instance-of?
                         _clause4726047268_
                         'gxc#!lambda::t)
                        (let* ((_e4726447281_
                                (##vector-ref _clause4726047268_ '1))
                               (_e4726547284_
                                (##vector-ref _clause4726047268_ '2))
                               (_arity47287_ _e4726547284_)
                               (_e4726647289_
                                (##vector-ref _clause4726047268_ '3))
                               (_dispatch47292_ _e4726647289_))
                          (_K4726347278_ _dispatch47292_ _arity47287_))
                        (_E4726247272_))))))
        (let* ((_self4723047237_ _self47227_)
               (_E4723247241_
                (lambda () (error '"No clause matching" _self4723047237_)))
               (_K4723347248_
                (lambda (_clauses47244_)
                  (let ((_clauses47246_ (map _clause-e47229_ _clauses47244_)))
                    (cons '@case-lambda _clauses47246_)))))
          (if (##structure-instance-of? _self4723047237_ 'gxc#!case-lambda::t)
              (let* ((_e4723447251_ (##vector-ref _self4723047237_ '1))
                     (_e4723547254_ (##vector-ref _self4723047237_ '2))
                     (_clauses47257_ _e4723547254_))
                (_K4723347248_ _clauses47257_))
              (_E4723247241_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self47070_)
      (let* ((_self4707147079_ _self47070_)
             (_E4707347083_
              (lambda () (error '"No clause matching" _self4707147079_)))
             (_K4707447089_
              (lambda (_dispatch47086_ _table47087_)
                (cons '@kw-lambda
                      (cons _table47087_ (cons _dispatch47086_ '()))))))
        (if (##structure-instance-of? _self4707147079_ 'gxc#!kw-lambda::t)
            (let* ((_e4707547092_ (##vector-ref _self4707147079_ '1))
                   (_e4707647095_ (##vector-ref _self4707147079_ '2))
                   (_table47098_ _e4707647095_)
                   (_e4707747100_ (##vector-ref _self4707147079_ '3))
                   (_dispatch47103_ _e4707747100_))
              (_K4707447089_ _dispatch47103_ _table47098_))
            (_E4707347083_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self46913_)
      (let* ((_self4691446922_ _self46913_)
             (_E4691646926_
              (lambda () (error '"No clause matching" _self4691446922_)))
             (_K4691746932_
              (lambda (_main46929_ _keys46930_)
                (cons '@kw-lambda-dispatch
                      (cons _keys46930_ (cons _main46929_ '()))))))
        (if (##structure-instance-of?
             _self4691446922_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4691846935_ (##vector-ref _self4691446922_ '1))
                   (_e4691946938_ (##vector-ref _self4691446922_ '2))
                   (_keys46941_ _e4691946938_)
                   (_e4692046943_ (##vector-ref _self4691446922_ '3))
                   (_main46946_ _e4692046943_))
              (_K4691746932_ _main46946_ _keys46941_))
            (_E4691646926_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
