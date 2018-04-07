(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj49562 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj49562) __obj49562))))))
  (define gxc#optimize!
    (lambda (_ctx49255_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx49255_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx49255_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code49258_
                  (gxc#optimize-source
                   (##structure-ref _ctx49255_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx49255_
              _code49258_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-table 'test: eq?)
       gxc#current-compile-local-type
       (make-table 'test: eq?))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx49200_)
      (letrec* ((_deps49202_
                 (let* ((_imports49246_
                         (##structure-ref
                          _ctx49200_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e49248_ (gx#core-context-prelude__% _ctx49200_)))
                   (if _$e49248_
                       ((lambda (_g4925049252_)
                          (cons _g4925049252_ _imports49246_))
                        _$e49248_)
                       _imports49246_))))
        (let _lp49204_ ((_rest49206_ _deps49202_))
          (let* ((_rest4920749215_ _rest49206_)
                 (_else4920949223_ (lambda () '#!void))
                 (_K4921149234_
                  (lambda (_rest49226_ _hd49227_)
                    (if (##structure-instance-of?
                         _hd49227_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd49227_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e49229_
                                       (gx#core-context-prelude__% _hd49227_)))
                                  (if _$e49229_
                                      ((lambda (_pre49232_)
                                         (_lp49204_
                                          (cons _pre49232_
                                                (##structure-ref
                                                 _hd49227_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e49229_)
                                      (_lp49204_
                                       (##structure-ref
                                        _hd49227_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd49227_)))
                          (_lp49204_ _rest49226_))
                        (if (##structure-instance-of?
                             _hd49227_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd49227_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp49204_
                                     (##structure-ref
                                      _hd49227_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd49227_)))
                              (_lp49204_ _rest49226_))
                            (if (##structure-direct-instance-of?
                                 _hd49227_
                                 'gx#module-import::t)
                                (_lp49204_
                                 (cons (##direct-structure-ref
                                        _hd49227_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest49226_))
                                (if (##structure-direct-instance-of?
                                     _hd49227_
                                     'gx#module-export::t)
                                    (_lp49204_
                                     (cons (##direct-structure-ref
                                            _hd49227_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest49226_))
                                    (if (##structure-direct-instance-of?
                                         _hd49227_
                                         'gx#import-set::t)
                                        (_lp49204_
                                         (cons (##direct-structure-ref
                                                _hd49227_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest49226_))
                                        (error '"Unexpected module import"
                                               _hd49227_)))))))))
            (if (##pair? _rest4920749215_)
                (let ((_hd4921249237_ (##car _rest4920749215_))
                      (_tl4921349239_ (##cdr _rest4920749215_)))
                  (let* ((_hd49242_ _hd4921249237_)
                         (_rest49244_ _tl4921349239_))
                    (_K4921149234_ _rest49244_ _hd49242_)))
                '#!void))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx49180_)
      (if (if (##structure-instance-of? _ctx49180_ 'gx#module-context::t)
              (list? (##structure-ref _ctx49180_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht49182_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id49184_
                  (##structure-ref _ctx49180_ '1 gx#expander-context::t '#f))
                 (_mod49186_ (table-ref _ht49182_ _id49184_ '#f)))
            (let ((_$e49189_ _mod49186_))
              (if _$e49189_
                  _$e49189_
                  (let* ((_mod49192_ (gxc#optimizer-import-ssxi _ctx49180_))
                         (_val49197_
                          (let ((_$e49194_ _mod49192_))
                            (if _$e49194_ _$e49194_ '#!void))))
                    (begin
                      (table-set! _ht49182_ _id49184_ _val49197_)
                      _val49197_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx49157_)
      (letrec ((_catch-e49159_
                (lambda (_exn49178_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx49157_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn49178_))
                        '#!void)
                    '#f)))
               (_import-e49160_
                (lambda ()
                  (let* ((_str-id49163_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx49157_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path49171_
                          (let ((_odir4916449166_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4916449166_
                                (let ((_odir49169_ _odir4916449166_))
                                  (path-expand
                                   (string-append _str-id49163_ '".ss")
                                   _odir49169_))
                                '#f)))
                         (_library-path49173_
                          (string->symbol
                           (string-append '":" _str-id49163_ '".ss")))
                         (_ssxi-path49175_
                          (if (if _artefact-path49171_
                                  (file-exists? _artefact-path49171_)
                                  '#f)
                              _artefact-path49171_
                              _library-path49173_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path49175_)
                      (gx#import-module__% _ssxi-path49175_ '#t '#t))))))
        (if (##structure-ref _ctx49157_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e49159_ _import-e49160_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx49151_)
      (begin
        (gxc#apply-collect-mutators _stx49151_)
        (let ((_stx49153_ (gxc#apply-lift-top-lambdas _stx49151_)))
          (begin
            (gxc#apply-collect-type-info _stx49153_)
            (let ((_stx49155_ (gxc#apply-optimize-annotated _stx49153_)))
              (gxc#apply-optimize-call _stx49155_)))))))
  (define gxc#&generate-ssxi
    (##make-promise
     (lambda ()
       (let ((_tbl49148_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl49148_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl49148_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl49148_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl49148_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl49148_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl49148_ '%#call gxc#generate-ssxi-call%)
           _tbl49148_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx49141_ . _args49143_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx49141_ _args49143_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx49102_)
      (let* ((_g4910449114_
              (lambda (_g4910549111_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4910549111_)))
             (_g4910349138_
              (lambda (_g4910549117_)
                (if (gx#stx-pair? _g4910549117_)
                    (let ((_e4910749119_ (gx#stx-e _g4910549117_)))
                      (let ((_hd4910849122_ (##car _e4910749119_))
                            (_tl4910949124_ (##cdr _e4910749119_)))
                        ((lambda (_L49127_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx49102_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4910949124_)))
                    (_g4910449114_ _g4910549117_)))))
        (_g4910349138_ _stx49102_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx49042_)
      (let* ((_g4904449058_
              (lambda (_g4904549055_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4904549055_)))
             (_g4904349099_
              (lambda (_g4904549061_)
                (if (gx#stx-pair? _g4904549061_)
                    (let ((_e4904849063_ (gx#stx-e _g4904549061_)))
                      (let ((_hd4904949066_ (##car _e4904849063_))
                            (_tl4905049068_ (##cdr _e4904849063_)))
                        (if (gx#stx-pair? _tl4905049068_)
                            (let ((_e4905149071_ (gx#stx-e _tl4905049068_)))
                              (let ((_hd4905249074_ (##car _e4905149071_))
                                    (_tl4905349076_ (##cdr _e4905149071_)))
                                ((lambda (_L49079_ _L49080_)
                                   (let* ((_ctx49093_
                                           (gx#syntax-local-e__0 _L49080_))
                                          (_code49095_
                                           (##structure-ref
                                            _ctx49093_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code49095_))
                                      gx#current-expander-context
                                      _ctx49093_)))
                                 _tl4905349076_
                                 _hd4905249074_)))
                            (_g4904449058_ _g4904549061_))))
                    (_g4904449058_ _g4904549061_)))))
        (_g4904349099_ _stx49042_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx48852_)
      (letrec ((_generate-e48854_
                (lambda (_id49031_)
                  (let* ((_sym49033_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id49031_)
                              '#f))
                         (_$e49035_
                          (if _sym49033_
                              (gxc#optimizer-lookup-type _sym49033_)
                              '#f)))
                    (if _$e49035_
                        ((lambda (_type49038_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym49033_)
                             (let ((_typedecl49040_
                                    (call-method _type49038_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym49033_
                                           (cons _typedecl49040_ '()))))))
                         _$e49035_)
                        '(begin))))))
        (let* ((___stx4926149262_ _stx48852_)
               (_g4885748895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4926149262_))))
          (let ((___kont4926349264_
                 (lambda (_L49013_) (_generate-e48854_ _L49013_)))
                (___kont4926549266_
                 (lambda (_L48948_)
                   (let ((_types48974_
                          (map _generate-e48854_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4896648969_ _g4896748971_)
                                           (cons _g4896648969_ _g4896748971_))
                                         '()
                                         _L48948_)))))
                     (cons 'begin _types48974_)))))
            (let ((___match4931649317_
                   (lambda (_e4887348900_
                            _hd4887448903_
                            _tl4887548905_
                            _e4887648908_
                            _hd4887748911_
                            _tl4887848913_
                            ___splice4926749268_
                            _target4887948916_
                            _tl4888148918_)
                     (letrec ((_loop4888248921_
                               (lambda (_hd4888048924_ _id4888648926_)
                                 (if (gx#stx-pair? _hd4888048924_)
                                     (let ((_e4888348929_
                                            (gx#stx-e _hd4888048924_)))
                                       (let ((_lp-tl4888548934_
                                              (##cdr _e4888348929_))
                                             (_lp-hd4888448932_
                                              (##car _e4888348929_)))
                                         (_loop4888248921_
                                          _lp-tl4888548934_
                                          (cons _lp-hd4888448932_
                                                _id4888648926_))))
                                     (let ((_id4888748937_
                                            (reverse _id4888648926_)))
                                       (if (gx#stx-pair? _tl4887848913_)
                                           (let ((_e4888848940_
                                                  (gx#stx-e _tl4887848913_)))
                                             (let ((_tl4889048945_
                                                    (##cdr _e4888848940_))
                                                   (_hd4888948943_
                                                    (##car _e4888848940_)))
                                               (if (gx#stx-null?
                                                    _tl4889048945_)
                                                   (___kont4926549266_
                                                    _id4888748937_)
                                                   (_g4885748895_))))
                                           (_g4885748895_)))))))
                       (_loop4888248921_ _target4887948916_ '())))))
              (if (gx#stx-pair? ___stx4926149262_)
                  (let ((_e4886048981_ (gx#stx-e ___stx4926149262_)))
                    (let ((_tl4886248986_ (##cdr _e4886048981_))
                          (_hd4886148984_ (##car _e4886048981_)))
                      (if (gx#stx-pair? _tl4886248986_)
                          (let ((_e4886348989_ (gx#stx-e _tl4886248986_)))
                            (let ((_tl4886548994_ (##cdr _e4886348989_))
                                  (_hd4886448992_ (##car _e4886348989_)))
                              (if (gx#stx-pair? _hd4886448992_)
                                  (let ((_e4886648997_
                                         (gx#stx-e _hd4886448992_)))
                                    (let ((_tl4886849002_
                                           (##cdr _e4886648997_))
                                          (_hd4886749000_
                                           (##car _e4886648997_)))
                                      (if (gx#stx-null? _tl4886849002_)
                                          (if (gx#stx-pair? _tl4886548994_)
                                              (let ((_e4886949005_
                                                     (gx#stx-e
                                                      _tl4886548994_)))
                                                (let ((_tl4887149010_
                                                       (##cdr _e4886949005_))
                                                      (_hd4887049008_
                                                       (##car _e4886949005_)))
                                                  (if (gx#stx-null?
                                                       _tl4887149010_)
                                                      (___kont4926349264_
                                                       _hd4886749000_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4886448992_)
                                                          (let ((___splice4926749268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4886448992_ '0)))
                    (let ((_tl4888148918_
                           (##vector-ref ___splice4926749268_ '1))
                          (_target4887948916_
                           (##vector-ref ___splice4926749268_ '0)))
                      (if (gx#stx-null? _tl4888148918_)
                          (___match4931649317_
                           _e4886048981_
                           _hd4886148984_
                           _tl4886248986_
                           _e4886348989_
                           _hd4886448992_
                           _tl4886548994_
                           ___splice4926749268_
                           _target4887948916_
                           _tl4888148918_)
                          (_g4885748895_))))
                  (_g4885748895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4886448992_)
                                                  (let ((___splice4926749268_
                                                         (gx#syntax-split-splice
                                                          _hd4886448992_
                                                          '0)))
                                                    (let ((_tl4888148918_
                                                           (##vector-ref
                                                            ___splice4926749268_
                                                            '1))
                                                          (_target4887948916_
                                                           (##vector-ref
                                                            ___splice4926749268_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4888148918_)
                                                          (___match4931649317_
                                                           _e4886048981_
                                                           _hd4886148984_
                                                           _tl4886248986_
                                                           _e4886348989_
                                                           _hd4886448992_
                                                           _tl4886548994_
                                                           ___splice4926749268_
                                                           _target4887948916_
                                                           _tl4888148918_)
                                                          (_g4885748895_))))
                                                  (_g4885748895_)))
                                          (if (gx#stx-pair/null?
                                               _hd4886448992_)
                                              (let ((___splice4926749268_
                                                     (gx#syntax-split-splice
                                                      _hd4886448992_
                                                      '0)))
                                                (let ((_tl4888148918_
                                                       (##vector-ref
                                                        ___splice4926749268_
                                                        '1))
                                                      (_target4887948916_
                                                       (##vector-ref
                                                        ___splice4926749268_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4888148918_)
                                                      (___match4931649317_
                                                       _e4886048981_
                                                       _hd4886148984_
                                                       _tl4886248986_
                                                       _e4886348989_
                                                       _hd4886448992_
                                                       _tl4886548994_
                                                       ___splice4926749268_
                                                       _target4887948916_
                                                       _tl4888148918_)
                                                      (_g4885748895_))))
                                              (_g4885748895_)))))
                                  (if (gx#stx-pair/null? _hd4886448992_)
                                      (let ((___splice4926749268_
                                             (gx#syntax-split-splice
                                              _hd4886448992_
                                              '0)))
                                        (let ((_tl4888148918_
                                               (##vector-ref
                                                ___splice4926749268_
                                                '1))
                                              (_target4887948916_
                                               (##vector-ref
                                                ___splice4926749268_
                                                '0)))
                                          (if (gx#stx-null? _tl4888148918_)
                                              (___match4931649317_
                                               _e4886048981_
                                               _hd4886148984_
                                               _tl4886248986_
                                               _e4886348989_
                                               _hd4886448992_
                                               _tl4886548994_
                                               ___splice4926749268_
                                               _target4887948916_
                                               _tl4888148918_)
                                              (_g4885748895_))))
                                      (_g4885748895_)))))
                          (_g4885748895_))))
                  (_g4885748895_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx48406_)
      (let* ((___stx4931949320_ _stx48406_)
             (_g4841048512_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4931949320_))))
        (let ((___kont4932149322_
               (lambda (_L48802_ _L48803_ _L48804_ _L48805_ _L48806_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48805_)
                             (cons (gx#stx-e _L48804_)
                                   (cons (gxc#identifier-symbol _L48803_)
                                         (cons (gx#stx-e _L48802_) '())))))))
              (___kont4932349324_
               (lambda (_L48628_ _L48629_ _L48630_ _L48631_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L48630_)
                             (cons (gx#stx-e _L48629_)
                                   (cons (gxc#identifier-symbol _L48628_)
                                         (cons '#f '())))))))
              (___kont4932549326_ (lambda () '(begin))))
          (let ((___match4945449455_
                 (lambda (_e4841748674_
                          _hd4841848677_
                          _tl4841948679_
                          _e4842048682_
                          _hd4842148685_
                          _tl4842248687_
                          _e4842348690_
                          _hd4842448693_
                          _tl4842548695_
                          _e4842648698_
                          _hd4842748701_
                          _tl4842848703_
                          _e4842948706_
                          _hd4843048709_
                          _tl4843148711_
                          _e4843248714_
                          _hd4843348717_
                          _tl4843448719_
                          _e4843548722_
                          _hd4843648725_
                          _tl4843748727_
                          _e4843848730_
                          _hd4843948733_
                          _tl4844048735_
                          _e4844148738_
                          _hd4844248741_
                          _tl4844348743_
                          _e4844448746_
                          _hd4844548749_
                          _tl4844648751_
                          _e4844748754_
                          _hd4844848757_
                          _tl4844948759_
                          _e4845048762_
                          _hd4845148765_
                          _tl4845248767_
                          _e4845348770_
                          _hd4845448773_
                          _tl4845548775_
                          _e4845648778_
                          _hd4845748781_
                          _tl4845848783_
                          _e4845948786_
                          _hd4846048789_
                          _tl4846148791_
                          _e4846248794_
                          _hd4846348797_
                          _tl4846448799_)
                   (let ((_L48802_ _hd4846348797_)
                         (_L48803_ _hd4845448773_)
                         (_L48804_ _hd4844548749_)
                         (_L48805_ _hd4843648725_)
                         (_L48806_ _hd4842748701_))
                     (if (gxc#runtime-identifier=? _L48806_ 'bind-method!)
                         (___kont4932149322_
                          _L48802_
                          _L48803_
                          _L48804_
                          _L48805_
                          _L48806_)
                         (___kont4932549326_))))))
            (if (gx#stx-pair? ___stx4931949320_)
                (let ((_e4841748674_ (gx#stx-e ___stx4931949320_)))
                  (let ((_tl4841948679_ (##cdr _e4841748674_))
                        (_hd4841848677_ (##car _e4841748674_)))
                    (if (gx#stx-pair? _tl4841948679_)
                        (let ((_e4842048682_ (gx#stx-e _tl4841948679_)))
                          (let ((_tl4842248687_ (##cdr _e4842048682_))
                                (_hd4842148685_ (##car _e4842048682_)))
                            (if (gx#stx-pair? _hd4842148685_)
                                (let ((_e4842348690_
                                       (gx#stx-e _hd4842148685_)))
                                  (let ((_tl4842548695_ (##cdr _e4842348690_))
                                        (_hd4842448693_ (##car _e4842348690_)))
                                    (if (gx#identifier? _hd4842448693_)
                                        (if (gx#stx-eq? '%#ref _hd4842448693_)
                                            (if (gx#stx-pair? _tl4842548695_)
                                                (let ((_e4842648698_
                                                       (gx#stx-e
                                                        _tl4842548695_)))
                                                  (let ((_tl4842848703_
                                                         (##cdr _e4842648698_))
                                                        (_hd4842748701_
                                                         (##car _e4842648698_)))
                                                    (if (gx#stx-null?
                                                         _tl4842848703_)
                                                        (if (gx#stx-pair?
                                                             _tl4842248687_)
                                                            (let ((_e4842948706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4842248687_)))
                      (let ((_tl4843148711_ (##cdr _e4842948706_))
                            (_hd4843048709_ (##car _e4842948706_)))
                        (if (gx#stx-pair? _hd4843048709_)
                            (let ((_e4843248714_ (gx#stx-e _hd4843048709_)))
                              (let ((_tl4843448719_ (##cdr _e4843248714_))
                                    (_hd4843348717_ (##car _e4843248714_)))
                                (if (gx#identifier? _hd4843348717_)
                                    (if (gx#stx-eq? '%#ref _hd4843348717_)
                                        (if (gx#stx-pair? _tl4843448719_)
                                            (let ((_e4843548722_
                                                   (gx#stx-e _tl4843448719_)))
                                              (let ((_tl4843748727_
                                                     (##cdr _e4843548722_))
                                                    (_hd4843648725_
                                                     (##car _e4843548722_)))
                                                (if (gx#stx-null?
                                                     _tl4843748727_)
                                                    (if (gx#stx-pair?
                                                         _tl4843148711_)
                                                        (let ((_e4843848730_
                                                               (gx#stx-e
                                                                _tl4843148711_)))
                                                          (let ((_tl4844048735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4843848730_))
                        (_hd4843948733_ (##car _e4843848730_)))
                    (if (gx#stx-pair? _hd4843948733_)
                        (let ((_e4844148738_ (gx#stx-e _hd4843948733_)))
                          (let ((_tl4844348743_ (##cdr _e4844148738_))
                                (_hd4844248741_ (##car _e4844148738_)))
                            (if (gx#identifier? _hd4844248741_)
                                (if (gx#stx-eq? '%#quote _hd4844248741_)
                                    (if (gx#stx-pair? _tl4844348743_)
                                        (let ((_e4844448746_
                                               (gx#stx-e _tl4844348743_)))
                                          (let ((_tl4844648751_
                                                 (##cdr _e4844448746_))
                                                (_hd4844548749_
                                                 (##car _e4844448746_)))
                                            (if (gx#stx-null? _tl4844648751_)
                                                (if (gx#stx-pair?
                                                     _tl4844048735_)
                                                    (let ((_e4844748754_
                                                           (gx#stx-e
                                                            _tl4844048735_)))
                                                      (let ((_tl4844948759_
                                                             (##cdr _e4844748754_))
                                                            (_hd4844848757_
                                                             (##car _e4844748754_)))
                                                        (if (gx#stx-pair?
                                                             _hd4844848757_)
                                                            (let ((_e4845048762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4844848757_)))
                      (let ((_tl4845248767_ (##cdr _e4845048762_))
                            (_hd4845148765_ (##car _e4845048762_)))
                        (if (gx#identifier? _hd4845148765_)
                            (if (gx#stx-eq? '%#ref _hd4845148765_)
                                (if (gx#stx-pair? _tl4845248767_)
                                    (let ((_e4845348770_
                                           (gx#stx-e _tl4845248767_)))
                                      (let ((_tl4845548775_
                                             (##cdr _e4845348770_))
                                            (_hd4845448773_
                                             (##car _e4845348770_)))
                                        (if (gx#stx-null? _tl4845548775_)
                                            (if (gx#stx-pair? _tl4844948759_)
                                                (let ((_e4845648778_
                                                       (gx#stx-e
                                                        _tl4844948759_)))
                                                  (let ((_tl4845848783_
                                                         (##cdr _e4845648778_))
                                                        (_hd4845748781_
                                                         (##car _e4845648778_)))
                                                    (if (gx#stx-pair?
                                                         _hd4845748781_)
                                                        (let ((_e4845948786_
                                                               (gx#stx-e
                                                                _hd4845748781_)))
                                                          (let ((_tl4846148791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4845948786_))
                        (_hd4846048789_ (##car _e4845948786_)))
                    (if (gx#identifier? _hd4846048789_)
                        (if (gx#stx-eq? '%#quote _hd4846048789_)
                            (if (gx#stx-pair? _tl4846148791_)
                                (let ((_e4846248794_
                                       (gx#stx-e _tl4846148791_)))
                                  (let ((_tl4846448799_ (##cdr _e4846248794_))
                                        (_hd4846348797_ (##car _e4846248794_)))
                                    (if (gx#stx-null? _tl4846448799_)
                                        (if (gx#stx-null? _tl4845848783_)
                                            (___match4945449455_
                                             _e4841748674_
                                             _hd4841848677_
                                             _tl4841948679_
                                             _e4842048682_
                                             _hd4842148685_
                                             _tl4842248687_
                                             _e4842348690_
                                             _hd4842448693_
                                             _tl4842548695_
                                             _e4842648698_
                                             _hd4842748701_
                                             _tl4842848703_
                                             _e4842948706_
                                             _hd4843048709_
                                             _tl4843148711_
                                             _e4843248714_
                                             _hd4843348717_
                                             _tl4843448719_
                                             _e4843548722_
                                             _hd4843648725_
                                             _tl4843748727_
                                             _e4843848730_
                                             _hd4843948733_
                                             _tl4844048735_
                                             _e4844148738_
                                             _hd4844248741_
                                             _tl4844348743_
                                             _e4844448746_
                                             _hd4844548749_
                                             _tl4844648751_
                                             _e4844748754_
                                             _hd4844848757_
                                             _tl4844948759_
                                             _e4845048762_
                                             _hd4845148765_
                                             _tl4845248767_
                                             _e4845348770_
                                             _hd4845448773_
                                             _tl4845548775_
                                             _e4845648778_
                                             _hd4845748781_
                                             _tl4845848783_
                                             _e4845948786_
                                             _hd4846048789_
                                             _tl4846148791_
                                             _e4846248794_
                                             _hd4846348797_
                                             _tl4846448799_)
                                            (___kont4932549326_))
                                        (___kont4932549326_))))
                                (___kont4932549326_))
                            (___kont4932549326_))
                        (___kont4932549326_))))
                (___kont4932549326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4844948759_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L48628_
                                                               _hd4845448773_)
                                                              (_L48629_
                                                               _hd4844548749_)
                                                              (_L48630_
                                                               _hd4843648725_)
                                                              (_L48631_
                                                               _hd4842748701_))
                                                          (___kont4932349324_
                                                           _L48628_
                                                           _L48629_
                                                           _L48630_
                                                           _L48631_))
                                                        (___kont4932549326_))
                                                    (___kont4932549326_)))
                                            (___kont4932549326_))))
                                    (___kont4932549326_))
                                (___kont4932549326_))
                            (___kont4932549326_))))
                    (___kont4932549326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932549326_))
                                                (___kont4932549326_))))
                                        (___kont4932549326_))
                                    (___kont4932549326_))
                                (___kont4932549326_))))
                        (___kont4932549326_))))
                (___kont4932549326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4932549326_))))
                                            (___kont4932549326_))
                                        (___kont4932549326_))
                                    (___kont4932549326_))))
                            (___kont4932549326_))))
                    (___kont4932549326_))
                (___kont4932549326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4932549326_))
                                            (___kont4932549326_))
                                        (___kont4932549326_))))
                                (___kont4932549326_))))
                        (___kont4932549326_))))
                (___kont4932549326_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self48382_)
      (let* ((_self4838348389_ _self48382_)
             (_E4838548393_
              (lambda () (error '"No clause matching" _self4838348389_)))
             (_K4838648398_
              (lambda (_alias-id48396_)
                (cons '@alias (cons _alias-id48396_ '())))))
        (if (##structure-instance-of? _self4838348389_ 'gxc#!alias::t)
            (let* ((_e4838748401_ (##vector-ref _self4838348389_ '1))
                   (_alias-id48404_ _e4838748401_))
              (_K4838648398_ _alias-id48404_))
            (_E4838548393_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self48204_)
      (let* ((_self4820548216_ _self48204_)
             (_E4820748220_
              (lambda () (error '"No clause matching" _self4820548216_)))
             (_K4820848229_
              (lambda (_plist48223_
                       _ctor48224_
                       _fields48225_
                       _super48226_
                       _type-id48227_)
                (cons '@struct-type
                      (cons _type-id48227_
                            (cons _super48226_
                                  (cons _fields48225_
                                        (cons _ctor48224_
                                              (cons _plist48223_ '())))))))))
        (if (##structure-instance-of? _self4820548216_ 'gxc#!struct-type::t)
            (let* ((_e4820948232_ (##vector-ref _self4820548216_ '1))
                   (_type-id48235_ _e4820948232_)
                   (_e4821048237_ (##vector-ref _self4820548216_ '2))
                   (_super48240_ _e4821048237_)
                   (_e4821148242_ (##vector-ref _self4820548216_ '3))
                   (_fields48245_ _e4821148242_)
                   (_e4821248247_ (##vector-ref _self4820548216_ '4))
                   (_e4821348250_ (##vector-ref _self4820548216_ '5))
                   (_ctor48253_ _e4821348250_)
                   (_e4821448255_ (##vector-ref _self4820548216_ '6))
                   (_plist48258_ _e4821448255_))
              (_K4820848229_
               _plist48258_
               _ctor48253_
               _fields48245_
               _super48240_
               _type-id48235_))
            (_E4820748220_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self48058_)
      (let* ((_self4805948065_ _self48058_)
             (_E4806148069_
              (lambda () (error '"No clause matching" _self4805948065_)))
             (_K4806248074_
              (lambda (_struct-t48072_)
                (cons '@struct-pred (cons _struct-t48072_ '())))))
        (if (##structure-instance-of? _self4805948065_ 'gxc#!struct-pred::t)
            (let* ((_e4806348077_ (##vector-ref _self4805948065_ '1))
                   (_struct-t48080_ _e4806348077_))
              (_K4806248074_ _struct-t48080_))
            (_E4806148069_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self47912_)
      (let* ((_self4791347919_ _self47912_)
             (_E4791547923_
              (lambda () (error '"No clause matching" _self4791347919_)))
             (_K4791647928_
              (lambda (_struct-t47926_)
                (cons '@struct-cons (cons _struct-t47926_ '())))))
        (if (##structure-instance-of? _self4791347919_ 'gxc#!struct-cons::t)
            (let* ((_e4791747931_ (##vector-ref _self4791347919_ '1))
                   (_struct-t47934_ _e4791747931_))
              (_K4791647928_ _struct-t47934_))
            (_E4791547923_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self47752_)
      (let* ((_self4775347761_ _self47752_)
             (_E4775547765_
              (lambda () (error '"No clause matching" _self4775347761_)))
             (_K4775647772_
              (lambda (_unchecked?47768_ _off47769_ _struct-t47770_)
                (cons '@struct-getf
                      (cons _struct-t47770_
                            (cons _off47769_ (cons _unchecked?47768_ '())))))))
        (if (##structure-instance-of? _self4775347761_ 'gxc#!struct-getf::t)
            (let* ((_e4775747775_ (##vector-ref _self4775347761_ '1))
                   (_struct-t47778_ _e4775747775_)
                   (_e4775847780_ (##vector-ref _self4775347761_ '2))
                   (_off47783_ _e4775847780_)
                   (_e4775947785_ (##vector-ref _self4775347761_ '3))
                   (_unchecked?47788_ _e4775947785_))
              (_K4775647772_ _unchecked?47788_ _off47783_ _struct-t47778_))
            (_E4775547765_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self47592_)
      (let* ((_self4759347601_ _self47592_)
             (_E4759547605_
              (lambda () (error '"No clause matching" _self4759347601_)))
             (_K4759647612_
              (lambda (_unchecked?47608_ _off47609_ _struct-t47610_)
                (cons '@struct-setf
                      (cons _struct-t47610_
                            (cons _off47609_ (cons _unchecked?47608_ '())))))))
        (if (##structure-instance-of? _self4759347601_ 'gxc#!struct-setf::t)
            (let* ((_e4759747615_ (##vector-ref _self4759347601_ '1))
                   (_struct-t47618_ _e4759747615_)
                   (_e4759847620_ (##vector-ref _self4759347601_ '2))
                   (_off47623_ _e4759847620_)
                   (_e4759947625_ (##vector-ref _self4759347601_ '3))
                   (_unchecked?47628_ _e4759947625_))
              (_K4759647612_ _unchecked?47628_ _off47623_ _struct-t47618_))
            (_E4759547605_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self47418_)
      (let* ((_self4741947429_ _self47418_)
             (_E4742147433_
              (lambda () (error '"No clause matching" _self4741947429_)))
             (_K4742247444_
              (lambda (_typedecl47436_
                       _inline47437_
                       _dispatch47438_
                       _arity47439_)
                (if _inline47437_
                    (let ((_$e47441_ _typedecl47436_))
                      (if _$e47441_
                          _$e47441_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity47439_ (cons _dispatch47438_ '())))))))
        (if (##structure-instance-of? _self4741947429_ 'gxc#!lambda::t)
            (let* ((_e4742347447_ (##vector-ref _self4741947429_ '1))
                   (_e4742447450_ (##vector-ref _self4741947429_ '2))
                   (_arity47453_ _e4742447450_)
                   (_e4742547455_ (##vector-ref _self4741947429_ '3))
                   (_dispatch47458_ _e4742547455_)
                   (_e4742647460_ (##vector-ref _self4741947429_ '4))
                   (_inline47463_ _e4742647460_)
                   (_e4742747465_ (##vector-ref _self4741947429_ '5))
                   (_typedecl47468_ _e4742747465_))
              (_K4742247444_
               _typedecl47468_
               _inline47463_
               _dispatch47458_
               _arity47453_))
            (_E4742147433_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self47229_)
      (letrec ((_clause-e47231_
                (lambda (_clause47261_)
                  (let* ((_clause4726247270_ _clause47261_)
                         (_E4726447274_
                          (lambda ()
                            (error '"No clause matching" _clause4726247270_)))
                         (_K4726547280_
                          (lambda (_dispatch47277_ _arity47278_)
                            (cons _arity47278_ (cons _dispatch47277_ '())))))
                    (if (##structure-instance-of?
                         _clause4726247270_
                         'gxc#!lambda::t)
                        (let* ((_e4726647283_
                                (##vector-ref _clause4726247270_ '1))
                               (_e4726747286_
                                (##vector-ref _clause4726247270_ '2))
                               (_arity47289_ _e4726747286_)
                               (_e4726847291_
                                (##vector-ref _clause4726247270_ '3))
                               (_dispatch47294_ _e4726847291_))
                          (_K4726547280_ _dispatch47294_ _arity47289_))
                        (_E4726447274_))))))
        (let* ((_self4723247239_ _self47229_)
               (_E4723447243_
                (lambda () (error '"No clause matching" _self4723247239_)))
               (_K4723547250_
                (lambda (_clauses47246_)
                  (let ((_clauses47248_ (map _clause-e47231_ _clauses47246_)))
                    (cons '@case-lambda _clauses47248_)))))
          (if (##structure-instance-of? _self4723247239_ 'gxc#!case-lambda::t)
              (let* ((_e4723647253_ (##vector-ref _self4723247239_ '1))
                     (_e4723747256_ (##vector-ref _self4723247239_ '2))
                     (_clauses47259_ _e4723747256_))
                (_K4723547250_ _clauses47259_))
              (_E4723447243_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self47072_)
      (let* ((_self4707347081_ _self47072_)
             (_E4707547085_
              (lambda () (error '"No clause matching" _self4707347081_)))
             (_K4707647091_
              (lambda (_dispatch47088_ _table47089_)
                (cons '@kw-lambda
                      (cons _table47089_ (cons _dispatch47088_ '()))))))
        (if (##structure-instance-of? _self4707347081_ 'gxc#!kw-lambda::t)
            (let* ((_e4707747094_ (##vector-ref _self4707347081_ '1))
                   (_e4707847097_ (##vector-ref _self4707347081_ '2))
                   (_table47100_ _e4707847097_)
                   (_e4707947102_ (##vector-ref _self4707347081_ '3))
                   (_dispatch47105_ _e4707947102_))
              (_K4707647091_ _dispatch47105_ _table47100_))
            (_E4707547085_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self46915_)
      (let* ((_self4691646924_ _self46915_)
             (_E4691846928_
              (lambda () (error '"No clause matching" _self4691646924_)))
             (_K4691946934_
              (lambda (_main46931_ _keys46932_)
                (cons '@kw-lambda-dispatch
                      (cons _keys46932_ (cons _main46931_ '()))))))
        (if (##structure-instance-of?
             _self4691646924_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4692046937_ (##vector-ref _self4691646924_ '1))
                   (_e4692146940_ (##vector-ref _self4691646924_ '2))
                   (_keys46943_ _e4692146940_)
                   (_e4692246945_ (##vector-ref _self4691646924_ '3))
                   (_main46948_ _e4692246945_))
              (_K4691946934_ _main46948_ _keys46943_))
            (_E4691846928_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
