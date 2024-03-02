(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709375802)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156558
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156558)
               __obj156558)))))
    (define gxc#optimize!
      (lambda (_ctx156251_)
        (let ((__tmp156562
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156251_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156564
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156563
                        (##structure-ref
                         _ctx156251_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156564 __tmp156563 '#t))
                 (let ((_code156254_
                        (let ((__tmp156565
                               (##structure-ref
                                _ctx156251_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156565))))
                   (##structure-set!
                    _ctx156251_
                    _code156254_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156561 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156560 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156562
           gxc#current-compile-mutators
           __tmp156561
           gxc#current-compile-local-type
           __tmp156560))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156247_
                  (lambda (_id156249_)
                    (if (let ((__tmp156567
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156567 _id156249_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156249_))
                          (let ((__tmp156566
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156566 _id156249_ '#t)))))))
          (for-each
           _load-it!156247_
           '(gerbil/runtime/gambit
             gerbil/runtime/util
             gerbil/runtime/table
             gerbil/runtime/control
             gerbil/runtime/system
             gerbil/runtime/c3
             gerbil/runtime/mop
             gerbil/runtime/error
             gerbil/runtime/interface
             gerbil/runtime/hash
             gerbil/runtime/thread
             gerbil/runtime/syntax
             gerbil/runtime/eval
             gerbil/runtime/repl
             gerbil/runtime/loader
             gerbil/runtime/init
             gerbil/runtime
             gerbil/builtin)))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx156191_)
        (letrec* ((_deps156193_
                   (let* ((_imports156237_
                           (##structure-ref
                            _ctx156191_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156239_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156191_))))
                     (if _$e156239_
                         ((lambda (_g156241156243_)
                            (let ()
                              (declare (not safe))
                              (cons _g156241156243_ _imports156237_)))
                          _$e156239_)
                         _imports156237_))))
          (let _lp156195_ ((_rest156197_ _deps156193_))
            (let* ((_rest156198156206_ _rest156197_)
                   (_else156200156214_ (lambda () '#!void))
                   (_K156202156225_
                    (lambda (_rest156217_ _hd156218_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156218_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156581
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156580
                                       (##structure-ref
                                        _hd156218_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156581 __tmp156580))
                                '#!void
                                (begin
                                  (let ((_$e156220_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156218_))))
                                    (if _$e156220_
                                        ((lambda (_pre156223_)
                                           (let ((__tmp156578
                                                  (let ((__tmp156579
                                                         (##structure-ref
                                                          _hd156218_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156223_
                                                          __tmp156579))))
                                             (declare (not safe))
                                             (_lp156195_ __tmp156578)))
                                         _$e156220_)
                                        (let ((__tmp156577
                                               (##structure-ref
                                                _hd156218_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156195_ __tmp156577))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156218_))))
                            (let ()
                              (declare (not safe))
                              (_lp156195_ _rest156217_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156218_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156576
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156575
                                           (##structure-ref
                                            _hd156218_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156576 __tmp156575))
                                    '#!void
                                    (begin
                                      (let ((__tmp156574
                                             (##structure-ref
                                              _hd156218_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156195_ __tmp156574))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156218_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156195_ _rest156217_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156218_
                                     'gx#module-import::t))
                                  (let ((__tmp156572
                                         (let ((__tmp156573
                                                (##direct-structure-ref
                                                 _hd156218_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156573 _rest156217_))))
                                    (declare (not safe))
                                    (_lp156195_ __tmp156572))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156218_
                                         'gx#module-export::t))
                                      (let ((__tmp156570
                                             (let ((__tmp156571
                                                    (##direct-structure-ref
                                                     _hd156218_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156571
                                                     _rest156217_))))
                                        (declare (not safe))
                                        (_lp156195_ __tmp156570))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156218_
                                             'gx#import-set::t))
                                          (let ((__tmp156568
                                                 (let ((__tmp156569
                                                        (##direct-structure-ref
                                                         _hd156218_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156569
                                                         _rest156217_))))
                                            (declare (not safe))
                                            (_lp156195_ __tmp156568))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156218_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156198156206_))
                  (let ((_hd156203156228_
                         (let ()
                           (declare (not safe))
                           (##car _rest156198156206_)))
                        (_tl156204156230_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156198156206_))))
                    (let* ((_hd156233_ _hd156203156228_)
                           (_rest156235_ _tl156204156230_))
                      (declare (not safe))
                      (_K156202156225_ _rest156235_ _hd156233_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156171_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156171_
                    'gx#module-context::t))
                 (let ((__tmp156582
                        (##structure-ref
                         _ctx156171_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156582)))
            '#!void
            (let* ((_ht156173_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156175_
                    (##structure-ref
                     _ctx156171_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156177_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156173_ _id156175_))))
              (let ((_$e156180_ _mod156177_))
                (if _$e156180_
                    _$e156180_
                    (let* ((_mod156183_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156171_)))
                           (_val156188_
                            (let ((_$e156185_ _mod156183_))
                              (if _$e156185_ _$e156185_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156173_ _id156175_ _val156188_))
                      _val156188_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156169_)
        (if (##structure-ref _ctx156169_ '1 gx#expander-context::t '#f)
            (let ((__tmp156583
                   (##structure-ref
                    _ctx156169_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156583))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156146_)
        (letrec ((_catch-e156148_
                  (lambda (_exn156167_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156146_))
                          (display-exception _exn156167_))
                        '#!void)
                    '#f))
                 (_import-e156149_
                  (lambda ()
                    (let* ((_str-id156152_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156146_))
                             '".ssxi"))
                           (_artefact-path156160_
                            (let ((_odir156153156155_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156153156155_
                                  (let ((_odir156158_ _odir156153156155_))
                                    (path-expand
                                     (string-append _str-id156152_ '".ss")
                                     _odir156158_))
                                  '#f)))
                           (_library-path156162_
                            (string->symbol
                             (string-append '":" _str-id156152_ '".ss")))
                           (_ssxi-path156164_
                            (if (and _artefact-path156160_
                                     (file-exists? _artefact-path156160_))
                                _artefact-path156160_
                                _library-path156162_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156164_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156164_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156148_ _import-e156149_)))))
    (define gxc#optimize-source
      (lambda (_stx156137_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156137_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156137_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156137_))
        (let* ((_stx156139_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156137_)))
               (_stx156141_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156139_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156141_))
          (let ((_stx156144_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156141_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156144_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156134_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156584 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156134_ __tmp156584))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156134_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156134_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156134_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156134_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156134_ '%#call gxc#generate-ssxi-call%))
           _tbl156134_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156117_ . _args156119_)
        (let ((__tmp156586
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156119_)
                     (gxc#compile-e__0 _stx156117_)
                     (let ((_arg1156124_ (car _args156119_))
                           (_rest156126_ (cdr _args156119_)))
                       (if (null? _rest156126_)
                           (gxc#compile-e__1 _stx156117_ _arg1156124_)
                           (let ((_arg2156129_ (car _rest156126_))
                                 (_rest156131_ (cdr _rest156126_)))
                             (if (null? _rest156131_)
                                 (gxc#compile-e__2
                                  _stx156117_
                                  _arg1156124_
                                  _arg2156129_)
                                 (apply gxc#compile-e
                                        _stx156117_
                                        _arg1156124_
                                        _arg2156129_
                                        _rest156131_))))))))
              (__tmp156585 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156586
           gxc#current-compile-methods
           __tmp156585))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156078_)
        (let* ((_g156080156090_
                (lambda (_g156081156087_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156081156087_))))
               (_g156079156114_
                (lambda (_g156081156093_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156081156093_))
                      (let ((_e156085156095_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156081156093_))))
                        (let ((_hd156084156098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156085156095_)))
                              (_tl156083156100_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156085156095_))))
                          ((lambda (_L156103_)
                             (let ((__tmp156589
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156078_))))
                                   (__tmp156587
                                    (let ((__tmp156588
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156588 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156589
                                gx#current-expander-phi
                                __tmp156587)))
                           _tl156083156100_)))
                      (let ()
                        (declare (not safe))
                        (_g156080156090_ _g156081156093_))))))
          (declare (not safe))
          (_g156079156114_ _stx156078_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156018_)
        (let* ((_g156020156034_
                (lambda (_g156021156031_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156021156031_))))
               (_g156019156075_
                (lambda (_g156021156037_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156021156037_))
                      (let ((_e156026156039_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156021156037_))))
                        (let ((_hd156025156042_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156026156039_)))
                              (_tl156024156044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156026156039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156024156044_))
                              (let ((_e156029156047_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156024156044_))))
                                (let ((_hd156028156050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156029156047_)))
                                      (_tl156027156052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156029156047_))))
                                  ((lambda (_L156055_ _L156056_)
                                     (let* ((_ctx156069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156056_)))
                                            (_code156071_
                                             (##structure-ref
                                              _ctx156069_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156590
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156071_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156590
                                          gx#current-expander-context
                                          _ctx156069_))))
                                   _tl156027156052_
                                   _hd156028156050_)))
                              (let ()
                                (declare (not safe))
                                (_g156020156034_ _g156021156037_)))))
                      (let ()
                        (declare (not safe))
                        (_g156020156034_ _g156021156037_))))))
          (declare (not safe))
          (_g156019156075_ _stx156018_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155828_)
        (letrec ((_generate-e155830_
                  (lambda (_id156007_)
                    (let* ((_sym156009_
                            (if (let ((__tmp156591
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156591))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156007_))
                                '#f))
                           (_$e156011_
                            (if _sym156009_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156009_))
                                '#f)))
                      (if _$e156011_
                          ((lambda (_type156014_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156009_))
                             (let* ((_typedecl156016_
                                     (let ((__method156559
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156014_
                                               'typedecl))))
                                       (if __method156559
                                           (__method156559 _type156014_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156014_
                                                    'typedecl)))))
                                    (__tmp156592
                                     (let ((__tmp156593
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156016_ '()))))
                                       (declare (not safe))
                                       (cons _sym156009_ __tmp156593))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156592)))
                           _$e156011_)
                          '(begin))))))
          (let* ((___stx156257156258_ _stx155828_)
                 (_g155833155871_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156257156258_)))))
            (let ((___kont156259156260_
                   (lambda (_L155989_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155830_ _L155989_))))
                  (___kont156261156262_
                   (lambda (_L155924_)
                     (let ((_types155950_
                            (map _generate-e155830_
                                 (let ((__tmp156594
                                        (lambda (_g155942155945_
                                                 _g155943155947_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155942155945_
                                                  _g155943155947_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156594 '() _L155924_)))))
                       (declare (not safe))
                       (cons 'begin _types155950_)))))
              (let ((___match156312156313_
                     (lambda (_e155851155876_
                              _hd155850155879_
                              _tl155849155881_
                              _e155854155884_
                              _hd155853155887_
                              _tl155852155889_
                              ___splice156263156264_
                              _target155855155892_
                              _tl155857155894_)
                       (letrec ((_loop155858155897_
                                 (lambda (_hd155856155900_ _id155862155902_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155856155900_))
                                       (let ((_e155859155905_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155856155900_))))
                                         (let ((_lp-tl155861155910_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155859155905_)))
                                               (_lp-hd155860155908_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155859155905_))))
                                           (let ((__tmp156595
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155860155908_
                                                          _id155862155902_))))
                                             (declare (not safe))
                                             (_loop155858155897_
                                              _lp-tl155861155910_
                                              __tmp156595))))
                                       (let ((_id155863155913_
                                              (reverse _id155862155902_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155852155889_))
                                             (let ((_e155866155916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155852155889_))))
                                               (let ((_tl155864155921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155866155916_)))
                                                     (_hd155865155919_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155866155916_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155864155921_))
                                                     (___kont156261156262_
                                                      _id155863155913_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155833155871_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155833155871_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155858155897_ _target155855155892_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156257156258_))
                    (let ((_e155838155957_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156257156258_))))
                      (let ((_tl155836155962_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155838155957_)))
                            (_hd155837155960_
                             (let ()
                               (declare (not safe))
                               (##car _e155838155957_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155836155962_))
                            (let ((_e155841155965_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155836155962_))))
                              (let ((_tl155839155970_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155841155965_)))
                                    (_hd155840155968_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155841155965_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155840155968_))
                                    (let ((_e155844155973_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155840155968_))))
                                      (let ((_tl155842155978_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155844155973_)))
                                            (_hd155843155976_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155844155973_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155842155978_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155839155970_))
                                                (let ((_e155847155981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155839155970_))))
                                                  (let ((_tl155845155986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155847155981_)))
                                                        (_hd155846155984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155847155981_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155845155986_))
                                                        (___kont156259156260_
                                                         _hd155843155976_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155840155968_))
                                                            (let ((___splice156263156264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155840155968_ '0))))
                      (let ((_tl155857155894_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156263156264_ '1)))
                            (_target155855155892_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156263156264_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155857155894_))
                            (___match156312156313_
                             _e155838155957_
                             _hd155837155960_
                             _tl155836155962_
                             _e155841155965_
                             _hd155840155968_
                             _tl155839155970_
                             ___splice156263156264_
                             _target155855155892_
                             _tl155857155894_)
                            (let () (declare (not safe)) (_g155833155871_)))))
                    (let () (declare (not safe)) (_g155833155871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155840155968_))
                                                    (let ((___splice156263156264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155840155968_
                                                              '0))))
                                                      (let ((_tl155857155894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156263156264_ '1)))
                    (_target155855155892_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156263156264_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155857155894_))
                    (___match156312156313_
                     _e155838155957_
                     _hd155837155960_
                     _tl155836155962_
                     _e155841155965_
                     _hd155840155968_
                     _tl155839155970_
                     ___splice156263156264_
                     _target155855155892_
                     _tl155857155894_)
                    (let () (declare (not safe)) (_g155833155871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155833155871_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155840155968_))
                                                (let ((___splice156263156264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155840155968_
                                                          '0))))
                                                  (let ((_tl155857155894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156263156264_
                                                            '1)))
                                                        (_target155855155892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156263156264_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155857155894_))
                                                        (___match156312156313_
                                                         _e155838155957_
                                                         _hd155837155960_
                                                         _tl155836155962_
                                                         _e155841155965_
                                                         _hd155840155968_
                                                         _tl155839155970_
                                                         ___splice156263156264_
                                                         _target155855155892_
                                                         _tl155857155894_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155833155871_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155833155871_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155840155968_))
                                        (let ((___splice156263156264_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155840155968_
                                                  '0))))
                                          (let ((_tl155857155894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156263156264_
                                                    '1)))
                                                (_target155855155892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156263156264_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155857155894_))
                                                (___match156312156313_
                                                 _e155838155957_
                                                 _hd155837155960_
                                                 _tl155836155962_
                                                 _e155841155965_
                                                 _hd155840155968_
                                                 _tl155839155970_
                                                 ___splice156263156264_
                                                 _target155855155892_
                                                 _tl155857155894_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155833155871_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155833155871_))))))
                            (let () (declare (not safe)) (_g155833155871_)))))
                    (let () (declare (not safe)) (_g155833155871_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155382_)
        (let* ((___stx156315156316_ _stx155382_)
               (_g155386155488_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156315156316_)))))
          (let ((___kont156317156318_
                 (lambda (_L155778_ _L155779_ _L155780_ _L155781_ _L155782_)
                   (let ((__tmp156596
                          (let ((__tmp156603
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155781_)))
                                (__tmp156597
                                 (let ((__tmp156602
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155780_)))
                                       (__tmp156598
                                        (let ((__tmp156601
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155779_)))
                                              (__tmp156599
                                               (let ((__tmp156600
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155778_))))
                                                 (declare (not safe))
                                                 (cons __tmp156600 '()))))
                                          (declare (not safe))
                                          (cons __tmp156601 __tmp156599))))
                                   (declare (not safe))
                                   (cons __tmp156602 __tmp156598))))
                            (declare (not safe))
                            (cons __tmp156603 __tmp156597))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156596))))
                (___kont156319156320_
                 (lambda (_L155604_ _L155605_ _L155606_ _L155607_)
                   (let ((__tmp156604
                          (let ((__tmp156610
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155606_)))
                                (__tmp156605
                                 (let ((__tmp156609
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155605_)))
                                       (__tmp156606
                                        (let ((__tmp156608
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155604_)))
                                              (__tmp156607
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156608 __tmp156607))))
                                   (declare (not safe))
                                   (cons __tmp156609 __tmp156606))))
                            (declare (not safe))
                            (cons __tmp156610 __tmp156605))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156604))))
                (___kont156321156322_ (lambda () '(begin))))
            (let ((___match156450156451_
                   (lambda (_e155395155650_
                            _hd155394155653_
                            _tl155393155655_
                            _e155398155658_
                            _hd155397155661_
                            _tl155396155663_
                            _e155401155666_
                            _hd155400155669_
                            _tl155399155671_
                            _e155404155674_
                            _hd155403155677_
                            _tl155402155679_
                            _e155407155682_
                            _hd155406155685_
                            _tl155405155687_
                            _e155410155690_
                            _hd155409155693_
                            _tl155408155695_
                            _e155413155698_
                            _hd155412155701_
                            _tl155411155703_
                            _e155416155706_
                            _hd155415155709_
                            _tl155414155711_
                            _e155419155714_
                            _hd155418155717_
                            _tl155417155719_
                            _e155422155722_
                            _hd155421155725_
                            _tl155420155727_
                            _e155425155730_
                            _hd155424155733_
                            _tl155423155735_
                            _e155428155738_
                            _hd155427155741_
                            _tl155426155743_
                            _e155431155746_
                            _hd155430155749_
                            _tl155429155751_
                            _e155434155754_
                            _hd155433155757_
                            _tl155432155759_
                            _e155437155762_
                            _hd155436155765_
                            _tl155435155767_
                            _e155440155770_
                            _hd155439155773_
                            _tl155438155775_)
                     (let ((_L155778_ _hd155439155773_)
                           (_L155779_ _hd155430155749_)
                           (_L155780_ _hd155421155725_)
                           (_L155781_ _hd155412155701_)
                           (_L155782_ _hd155403155677_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155782_
                              'bind-method!))
                           (___kont156317156318_
                            _L155778_
                            _L155779_
                            _L155780_
                            _L155781_
                            _L155782_)
                           (___kont156321156322_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156315156316_))
                  (let ((_e155395155650_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156315156316_))))
                    (let ((_tl155393155655_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155395155650_)))
                          (_hd155394155653_
                           (let ()
                             (declare (not safe))
                             (##car _e155395155650_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155393155655_))
                          (let ((_e155398155658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155393155655_))))
                            (let ((_tl155396155663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155398155658_)))
                                  (_hd155397155661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155398155658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155397155661_))
                                  (let ((_e155401155666_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155397155661_))))
                                    (let ((_tl155399155671_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155401155666_)))
                                          (_hd155400155669_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155401155666_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155400155669_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155400155669_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155399155671_))
                                                  (let ((_e155404155674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155399155671_))))
                                                    (let ((_tl155402155679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155404155674_)))
                                                          (_hd155403155677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155404155674_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155402155679_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155396155663_))
                      (let ((_e155407155682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155396155663_))))
                        (let ((_tl155405155687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155407155682_)))
                              (_hd155406155685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155407155682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155406155685_))
                              (let ((_e155410155690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155406155685_))))
                                (let ((_tl155408155695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155410155690_)))
                                      (_hd155409155693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155410155690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155409155693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155409155693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155408155695_))
                                              (let ((_e155413155698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155408155695_))))
                                                (let ((_tl155411155703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155413155698_)))
                                                      (_hd155412155701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155413155698_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155411155703_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155405155687_))
                                                          (let ((_e155416155706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155405155687_))))
                    (let ((_tl155414155711_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155416155706_)))
                          (_hd155415155709_
                           (let ()
                             (declare (not safe))
                             (##car _e155416155706_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155415155709_))
                          (let ((_e155419155714_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155415155709_))))
                            (let ((_tl155417155719_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155419155714_)))
                                  (_hd155418155717_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155419155714_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155418155717_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155418155717_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155417155719_))
                                          (let ((_e155422155722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155417155719_))))
                                            (let ((_tl155420155727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155422155722_)))
                                                  (_hd155421155725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155422155722_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155420155727_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155414155711_))
                                                      (let ((_e155425155730_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155414155711_))))
                (let ((_tl155423155735_
                       (let () (declare (not safe)) (##cdr _e155425155730_)))
                      (_hd155424155733_
                       (let () (declare (not safe)) (##car _e155425155730_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155424155733_))
                      (let ((_e155428155738_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155424155733_))))
                        (let ((_tl155426155743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155428155738_)))
                              (_hd155427155741_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155428155738_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155427155741_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155427155741_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155426155743_))
                                      (let ((_e155431155746_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155426155743_))))
                                        (let ((_tl155429155751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155431155746_)))
                                              (_hd155430155749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155431155746_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155429155751_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155423155735_))
                                                  (let ((_e155434155754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155423155735_))))
                                                    (let ((_tl155432155759_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155434155754_)))
                                                          (_hd155433155757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155434155754_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155433155757_))
                                                          (let ((_e155437155762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155433155757_))))
                    (let ((_tl155435155767_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155437155762_)))
                          (_hd155436155765_
                           (let ()
                             (declare (not safe))
                             (##car _e155437155762_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155436155765_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155436155765_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155435155767_))
                                  (let ((_e155440155770_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155435155767_))))
                                    (let ((_tl155438155775_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155440155770_)))
                                          (_hd155439155773_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155440155770_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155438155775_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155432155759_))
                                              (___match156450156451_
                                               _e155395155650_
                                               _hd155394155653_
                                               _tl155393155655_
                                               _e155398155658_
                                               _hd155397155661_
                                               _tl155396155663_
                                               _e155401155666_
                                               _hd155400155669_
                                               _tl155399155671_
                                               _e155404155674_
                                               _hd155403155677_
                                               _tl155402155679_
                                               _e155407155682_
                                               _hd155406155685_
                                               _tl155405155687_
                                               _e155410155690_
                                               _hd155409155693_
                                               _tl155408155695_
                                               _e155413155698_
                                               _hd155412155701_
                                               _tl155411155703_
                                               _e155416155706_
                                               _hd155415155709_
                                               _tl155414155711_
                                               _e155419155714_
                                               _hd155418155717_
                                               _tl155417155719_
                                               _e155422155722_
                                               _hd155421155725_
                                               _tl155420155727_
                                               _e155425155730_
                                               _hd155424155733_
                                               _tl155423155735_
                                               _e155428155738_
                                               _hd155427155741_
                                               _tl155426155743_
                                               _e155431155746_
                                               _hd155430155749_
                                               _tl155429155751_
                                               _e155434155754_
                                               _hd155433155757_
                                               _tl155432155759_
                                               _e155437155762_
                                               _hd155436155765_
                                               _tl155435155767_
                                               _e155440155770_
                                               _hd155439155773_
                                               _tl155438155775_)
                                              (___kont156321156322_))
                                          (___kont156321156322_))))
                                  (___kont156321156322_))
                              (___kont156321156322_))
                          (___kont156321156322_))))
                  (___kont156321156322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155423155735_))
                                                      (if (let ((__tmp156611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156611 'bind-method!))
                  (let ((_L155604_ _hd155430155749_)
                        (_L155605_ _hd155421155725_)
                        (_L155606_ _hd155412155701_)
                        (_L155607_ _hd155403155677_))
                    (___kont156319156320_
                     _L155604_
                     _L155605_
                     _L155606_
                     _L155607_))
                  (___kont156321156322_))
              (___kont156321156322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156321156322_))))
                                      (___kont156321156322_))
                                  (___kont156321156322_))
                              (___kont156321156322_))))
                      (___kont156321156322_))))
              (___kont156321156322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156321156322_))))
                                          (___kont156321156322_))
                                      (___kont156321156322_))
                                  (___kont156321156322_))))
                          (___kont156321156322_))))
                  (___kont156321156322_))
              (___kont156321156322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156321156322_))
                                          (___kont156321156322_))
                                      (___kont156321156322_))))
                              (___kont156321156322_))))
                      (___kont156321156322_))
                  (___kont156321156322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156321156322_))
                                              (___kont156321156322_))
                                          (___kont156321156322_))))
                                  (___kont156321156322_))))
                          (___kont156321156322_))))
                  (___kont156321156322_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155358_)
        (let* ((_self155359155365_ _self155358_)
               (_E155361155369_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155359155365_))))
               (_K155362155374_
                (lambda (_alias-id155372_)
                  (let ((__tmp156612
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155372_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156612)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155359155365_ 'gxc#!alias::t))
              (let* ((_e155363155377_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155359155365_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155380_ _e155363155377_))
                (declare (not safe))
                (_K155362155374_ _alias-id155380_))
              (let () (declare (not safe)) (_E155361155369_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155149_)
        (let* ((_self155150155165_ _self155149_)
               (_E155152155169_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155150155165_))))
               (_K155153155183_
                (lambda (_methods155172_
                         _metaclass155173_
                         _final?155174_
                         _struct?155175_
                         _constructor155176_
                         _fields155177_
                         _slots155178_
                         _precendence-list155179_
                         _super155180_
                         _id155181_)
                  (let ((__tmp156613
                         (let ((__tmp156614
                                (let ((__tmp156615
                                       (let ((__tmp156616
                                              (let ((__tmp156617
                                                     (let ((__tmp156618
                                                            (let ((__tmp156619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156620
                                  (let ((__tmp156621
                                         (let ((__tmp156622
                                                (let ((__tmp156623
                                                       (if _methods155172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155172_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156623 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155173_
                                                 __tmp156622))))
                                    (declare (not safe))
                                    (cons _final?155174_ __tmp156621))))
                             (declare (not safe))
                             (cons _struct?155175_ __tmp156620))))
                      (declare (not safe))
                      (cons _constructor155176_ __tmp156619))))
               (declare (not safe))
               (cons _fields155177_ __tmp156618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155178_
                                                      __tmp156617))))
                                         (declare (not safe))
                                         (cons _precendence-list155179_
                                               __tmp156616))))
                                  (declare (not safe))
                                  (cons _super155180_ __tmp156615))))
                           (declare (not safe))
                           (cons _id155181_ __tmp156614))))
                    (declare (not safe))
                    (cons '@class __tmp156613)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155150155165_ 'gxc#!class::t))
              (let* ((_e155154155186_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155189_ _e155154155186_)
                     (_e155155155191_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155194_ _e155155155191_)
                     (_e155156155196_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155199_ _e155156155196_)
                     (_e155157155201_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155204_ _e155157155201_)
                     (_e155158155206_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155209_ _e155158155206_)
                     (_e155159155211_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155214_ _e155159155211_)
                     (_e155160155216_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155219_ _e155160155216_)
                     (_e155161155221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155224_ _e155161155221_)
                     (_e155162155226_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155229_ _e155162155226_)
                     (_e155163155231_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155150155165_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155234_ _e155163155231_))
                (declare (not safe))
                (_K155153155183_
                 _methods155234_
                 _metaclass155229_
                 _final?155224_
                 _struct?155219_
                 _constructor155214_
                 _fields155209_
                 _slots155204_
                 _precendence-list155199_
                 _super155194_
                 _id155189_))
              (let () (declare (not safe)) (_E155152155169_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155003_)
        (let* ((_self155004155010_ _self155003_)
               (_E155006155014_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155004155010_))))
               (_K155007155019_
                (lambda (_klass-id155017_)
                  (let ((__tmp156624
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155017_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156624)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155004155010_
                 'gxc#!predicate::t))
              (let* ((_e155008155022_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155004155010_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155025_ _e155008155022_))
                (declare (not safe))
                (_K155007155019_ _klass-id155025_))
              (let () (declare (not safe)) (_E155006155014_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154857_)
        (let* ((_self154858154864_ _self154857_)
               (_E154860154868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154858154864_))))
               (_K154861154873_
                (lambda (_klass-id154871_)
                  (let ((__tmp156625
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154871_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156625)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154858154864_
                 'gxc#!constructor::t))
              (let* ((_e154862154876_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154858154864_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154879_ _e154862154876_))
                (declare (not safe))
                (_K154861154873_ _klass-id154879_))
              (let () (declare (not safe)) (_E154860154868_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154697_)
        (let* ((_self154698154706_ _self154697_)
               (_E154700154710_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154698154706_))))
               (_K154701154717_
                (lambda (_checked?154713_ _slot154714_ _klass-id154715_)
                  (let ((__tmp156626
                         (let ((__tmp156627
                                (let ((__tmp156628
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154713_ '()))))
                                  (declare (not safe))
                                  (cons _slot154714_ __tmp156628))))
                           (declare (not safe))
                           (cons _klass-id154715_ __tmp156627))))
                    (declare (not safe))
                    (cons '@accessor __tmp156626)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154698154706_
                 'gxc#!accessor::t))
              (let* ((_e154702154720_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154698154706_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154723_ _e154702154720_)
                     (_e154703154725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154698154706_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154728_ _e154703154725_)
                     (_e154704154730_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154698154706_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154733_ _e154704154730_))
                (declare (not safe))
                (_K154701154717_
                 _checked?154733_
                 _slot154728_
                 _klass-id154723_))
              (let () (declare (not safe)) (_E154700154710_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154537_)
        (let* ((_self154538154546_ _self154537_)
               (_E154540154550_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154538154546_))))
               (_K154541154557_
                (lambda (_checked?154553_ _slot154554_ _klass-id154555_)
                  (let ((__tmp156629
                         (let ((__tmp156630
                                (let ((__tmp156631
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154553_ '()))))
                                  (declare (not safe))
                                  (cons _slot154554_ __tmp156631))))
                           (declare (not safe))
                           (cons _klass-id154555_ __tmp156630))))
                    (declare (not safe))
                    (cons '@mutator __tmp156629)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154538154546_ 'gxc#!mutator::t))
              (let* ((_e154542154560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154538154546_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154563_ _e154542154560_)
                     (_e154543154565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154538154546_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154568_ _e154543154565_)
                     (_e154544154570_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154538154546_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154573_ _e154544154570_))
                (declare (not safe))
                (_K154541154557_
                 _checked?154573_
                 _slot154568_
                 _klass-id154563_))
              (let () (declare (not safe)) (_E154540154550_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154363_)
        (let* ((_self154364154374_ _self154363_)
               (_E154366154378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154364154374_))))
               (_K154367154389_
                (lambda (_typedecl154381_
                         _inline154382_
                         _dispatch154383_
                         _arity154384_)
                  (if _inline154382_
                      (let ((_$e154386_ _typedecl154381_))
                        (if _$e154386_
                            _$e154386_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156632
                             (let ((__tmp156633
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154383_ '()))))
                               (declare (not safe))
                               (cons _arity154384_ __tmp156633))))
                        (declare (not safe))
                        (cons '@lambda __tmp156632))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154364154374_ 'gxc#!lambda::t))
              (let* ((_e154368154392_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154364154374_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154369154395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154364154374_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154398_ _e154369154395_)
                     (_e154370154400_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154364154374_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154403_ _e154370154400_)
                     (_e154371154405_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154364154374_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154408_ _e154371154405_)
                     (_e154372154410_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154364154374_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154413_ _e154372154410_))
                (declare (not safe))
                (_K154367154389_
                 _typedecl154413_
                 _inline154408_
                 _dispatch154403_
                 _arity154398_))
              (let () (declare (not safe)) (_E154366154378_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154174_)
        (letrec ((_clause-e154176_
                  (lambda (_clause154206_)
                    (let* ((_clause154207154215_ _clause154206_)
                           (_E154209154219_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154207154215_))))
                           (_K154210154225_
                            (lambda (_dispatch154222_ _arity154223_)
                              (let ((__tmp156634
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154222_ '()))))
                                (declare (not safe))
                                (cons _arity154223_ __tmp156634)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154207154215_
                             'gxc#!lambda::t))
                          (let* ((_e154211154228_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154207154215_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154212154231_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154207154215_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154234_ _e154212154231_)
                                 (_e154213154236_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154207154215_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154239_ _e154213154236_))
                            (declare (not safe))
                            (_K154210154225_ _dispatch154239_ _arity154234_))
                          (let () (declare (not safe)) (_E154209154219_)))))))
          (let* ((_self154177154184_ _self154174_)
                 (_E154179154188_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154177154184_))))
                 (_K154180154195_
                  (lambda (_clauses154191_)
                    (let ((_clauses154193_
                           (map _clause-e154176_ _clauses154191_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154193_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154177154184_
                   'gxc#!case-lambda::t))
                (let* ((_e154181154198_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154177154184_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154182154201_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154177154184_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154204_ _e154182154201_))
                  (declare (not safe))
                  (_K154180154195_ _clauses154204_))
                (let () (declare (not safe)) (_E154179154188_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154017_)
        (let* ((_self154018154026_ _self154017_)
               (_E154020154030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154018154026_))))
               (_K154021154036_
                (lambda (_dispatch154033_ _table154034_)
                  (let ((__tmp156635
                         (let ((__tmp156636
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154033_ '()))))
                           (declare (not safe))
                           (cons _table154034_ __tmp156636))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156635)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154018154026_
                 'gxc#!kw-lambda::t))
              (let* ((_e154022154039_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154018154026_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154023154042_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154018154026_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154045_ _e154023154042_)
                     (_e154024154047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154018154026_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154050_ _e154024154047_))
                (declare (not safe))
                (_K154021154036_ _dispatch154050_ _table154045_))
              (let () (declare (not safe)) (_E154020154030_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153860_)
        (let* ((_self153861153869_ _self153860_)
               (_E153863153873_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153861153869_))))
               (_K153864153879_
                (lambda (_main153876_ _keys153877_)
                  (let ((__tmp156637
                         (let ((__tmp156638
                                (let ()
                                  (declare (not safe))
                                  (cons _main153876_ '()))))
                           (declare (not safe))
                           (cons _keys153877_ __tmp156638))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156637)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153861153869_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153865153882_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153861153869_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153866153885_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153861153869_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153888_ _e153866153885_)
                     (_e153867153890_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153861153869_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153893_ _e153867153890_))
                (declare (not safe))
                (_K153864153879_ _main153893_ _keys153888_))
              (let () (declare (not safe)) (_E153863153873_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
