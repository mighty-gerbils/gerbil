(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709229975)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156553
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156553)
               __obj156553)))))
    (define gxc#optimize!
      (lambda (_ctx156246_)
        (let ((__tmp156557
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156246_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156559
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156558
                        (##structure-ref
                         _ctx156246_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156559 __tmp156558 '#t))
                 (let ((_code156249_
                        (let ((__tmp156560
                               (##structure-ref
                                _ctx156246_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156560))))
                   (##structure-set!
                    _ctx156246_
                    _code156249_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156556 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156555 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156557
           gxc#current-compile-mutators
           __tmp156556
           gxc#current-compile-local-type
           __tmp156555))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156242_
                  (lambda (_id156244_)
                    (if (let ((__tmp156562
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156562 _id156244_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156244_))
                          (let ((__tmp156561
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156561 _id156244_ '#t)))))))
          (for-each
           _load-it!156242_
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
      (lambda (_ctx156186_)
        (letrec* ((_deps156188_
                   (let* ((_imports156232_
                           (##structure-ref
                            _ctx156186_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156234_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156186_))))
                     (if _$e156234_
                         ((lambda (_g156236156238_)
                            (let ()
                              (declare (not safe))
                              (cons _g156236156238_ _imports156232_)))
                          _$e156234_)
                         _imports156232_))))
          (let _lp156190_ ((_rest156192_ _deps156188_))
            (let* ((_rest156193156201_ _rest156192_)
                   (_else156195156209_ (lambda () '#!void))
                   (_K156197156220_
                    (lambda (_rest156212_ _hd156213_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156213_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156576
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156575
                                       (##structure-ref
                                        _hd156213_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156576 __tmp156575))
                                '#!void
                                (begin
                                  (let ((_$e156215_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156213_))))
                                    (if _$e156215_
                                        ((lambda (_pre156218_)
                                           (let ((__tmp156573
                                                  (let ((__tmp156574
                                                         (##structure-ref
                                                          _hd156213_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156218_
                                                          __tmp156574))))
                                             (declare (not safe))
                                             (_lp156190_ __tmp156573)))
                                         _$e156215_)
                                        (let ((__tmp156572
                                               (##structure-ref
                                                _hd156213_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156190_ __tmp156572))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156213_))))
                            (let ()
                              (declare (not safe))
                              (_lp156190_ _rest156212_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156213_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156571
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156570
                                           (##structure-ref
                                            _hd156213_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156571 __tmp156570))
                                    '#!void
                                    (begin
                                      (let ((__tmp156569
                                             (##structure-ref
                                              _hd156213_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156190_ __tmp156569))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156213_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156190_ _rest156212_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156213_
                                     'gx#module-import::t))
                                  (let ((__tmp156567
                                         (let ((__tmp156568
                                                (##direct-structure-ref
                                                 _hd156213_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156568 _rest156212_))))
                                    (declare (not safe))
                                    (_lp156190_ __tmp156567))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156213_
                                         'gx#module-export::t))
                                      (let ((__tmp156565
                                             (let ((__tmp156566
                                                    (##direct-structure-ref
                                                     _hd156213_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156566
                                                     _rest156212_))))
                                        (declare (not safe))
                                        (_lp156190_ __tmp156565))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156213_
                                             'gx#import-set::t))
                                          (let ((__tmp156563
                                                 (let ((__tmp156564
                                                        (##direct-structure-ref
                                                         _hd156213_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156564
                                                         _rest156212_))))
                                            (declare (not safe))
                                            (_lp156190_ __tmp156563))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156213_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156193156201_))
                  (let ((_hd156198156223_
                         (let ()
                           (declare (not safe))
                           (##car _rest156193156201_)))
                        (_tl156199156225_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156193156201_))))
                    (let* ((_hd156228_ _hd156198156223_)
                           (_rest156230_ _tl156199156225_))
                      (declare (not safe))
                      (_K156197156220_ _rest156230_ _hd156228_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156166_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156166_
                    'gx#module-context::t))
                 (let ((__tmp156577
                        (##structure-ref
                         _ctx156166_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156577)))
            '#!void
            (let* ((_ht156168_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156170_
                    (##structure-ref
                     _ctx156166_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156172_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156168_ _id156170_))))
              (let ((_$e156175_ _mod156172_))
                (if _$e156175_
                    _$e156175_
                    (let* ((_mod156178_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156166_)))
                           (_val156183_
                            (let ((_$e156180_ _mod156178_))
                              (if _$e156180_ _$e156180_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156168_ _id156170_ _val156183_))
                      _val156183_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156164_)
        (if (##structure-ref _ctx156164_ '1 gx#expander-context::t '#f)
            (let ((__tmp156578
                   (##structure-ref
                    _ctx156164_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156578))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156141_)
        (letrec ((_catch-e156143_
                  (lambda (_exn156162_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156141_))
                          (display-exception _exn156162_))
                        '#!void)
                    '#f))
                 (_import-e156144_
                  (lambda ()
                    (let* ((_str-id156147_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156141_))
                             '".ssxi"))
                           (_artefact-path156155_
                            (let ((_odir156148156150_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156148156150_
                                  (let ((_odir156153_ _odir156148156150_))
                                    (path-expand
                                     (string-append _str-id156147_ '".ss")
                                     _odir156153_))
                                  '#f)))
                           (_library-path156157_
                            (string->symbol
                             (string-append '":" _str-id156147_ '".ss")))
                           (_ssxi-path156159_
                            (if (and _artefact-path156155_
                                     (file-exists? _artefact-path156155_))
                                _artefact-path156155_
                                _library-path156157_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156159_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156159_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156143_ _import-e156144_)))))
    (define gxc#optimize-source
      (lambda (_stx156132_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156132_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156132_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156132_))
        (let* ((_stx156134_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156132_)))
               (_stx156136_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156134_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156136_))
          (let ((_stx156139_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156136_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156139_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156129_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156579 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156129_ __tmp156579))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156129_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156129_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156129_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156129_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156129_ '%#call gxc#generate-ssxi-call%))
           _tbl156129_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156112_ . _args156114_)
        (let ((__tmp156581
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156114_)
                     (gxc#compile-e__0 _stx156112_)
                     (let ((_arg1156119_ (car _args156114_))
                           (_rest156121_ (cdr _args156114_)))
                       (if (null? _rest156121_)
                           (gxc#compile-e__1 _stx156112_ _arg1156119_)
                           (let ((_arg2156124_ (car _rest156121_))
                                 (_rest156126_ (cdr _rest156121_)))
                             (if (null? _rest156126_)
                                 (gxc#compile-e__2
                                  _stx156112_
                                  _arg1156119_
                                  _arg2156124_)
                                 (apply gxc#compile-e
                                        _stx156112_
                                        _arg1156119_
                                        _arg2156124_
                                        _rest156126_))))))))
              (__tmp156580 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156581
           gxc#current-compile-methods
           __tmp156580))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156073_)
        (let* ((_g156075156085_
                (lambda (_g156076156082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156076156082_))))
               (_g156074156109_
                (lambda (_g156076156088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156076156088_))
                      (let ((_e156080156090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156076156088_))))
                        (let ((_hd156079156093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156080156090_)))
                              (_tl156078156095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156080156090_))))
                          ((lambda (_L156098_)
                             (let ((__tmp156584
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156073_))))
                                   (__tmp156582
                                    (let ((__tmp156583
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156583 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156584
                                gx#current-expander-phi
                                __tmp156582)))
                           _tl156078156095_)))
                      (let ()
                        (declare (not safe))
                        (_g156075156085_ _g156076156088_))))))
          (declare (not safe))
          (_g156074156109_ _stx156073_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156013_)
        (let* ((_g156015156029_
                (lambda (_g156016156026_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156016156026_))))
               (_g156014156070_
                (lambda (_g156016156032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156016156032_))
                      (let ((_e156021156034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156016156032_))))
                        (let ((_hd156020156037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156021156034_)))
                              (_tl156019156039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156021156034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156019156039_))
                              (let ((_e156024156042_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156019156039_))))
                                (let ((_hd156023156045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156024156042_)))
                                      (_tl156022156047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156024156042_))))
                                  ((lambda (_L156050_ _L156051_)
                                     (let* ((_ctx156064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156051_)))
                                            (_code156066_
                                             (##structure-ref
                                              _ctx156064_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156585
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156066_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156585
                                          gx#current-expander-context
                                          _ctx156064_))))
                                   _tl156022156047_
                                   _hd156023156045_)))
                              (let ()
                                (declare (not safe))
                                (_g156015156029_ _g156016156032_)))))
                      (let ()
                        (declare (not safe))
                        (_g156015156029_ _g156016156032_))))))
          (declare (not safe))
          (_g156014156070_ _stx156013_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155823_)
        (letrec ((_generate-e155825_
                  (lambda (_id156002_)
                    (let* ((_sym156004_
                            (if (let ((__tmp156586
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156586))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156002_))
                                '#f))
                           (_$e156006_
                            (if _sym156004_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156004_))
                                '#f)))
                      (if _$e156006_
                          ((lambda (_type156009_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156004_))
                             (let* ((_typedecl156011_
                                     (let ((__method156554
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156009_
                                               'typedecl))))
                                       (if __method156554
                                           (__method156554 _type156009_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156009_
                                                    'typedecl)))))
                                    (__tmp156587
                                     (let ((__tmp156588
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156011_ '()))))
                                       (declare (not safe))
                                       (cons _sym156004_ __tmp156588))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156587)))
                           _$e156006_)
                          '(begin))))))
          (let* ((___stx156252156253_ _stx155823_)
                 (_g155828155866_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156252156253_)))))
            (let ((___kont156254156255_
                   (lambda (_L155984_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155825_ _L155984_))))
                  (___kont156256156257_
                   (lambda (_L155919_)
                     (let ((_types155945_
                            (map _generate-e155825_
                                 (let ((__tmp156589
                                        (lambda (_g155937155940_
                                                 _g155938155942_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155937155940_
                                                  _g155938155942_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156589 '() _L155919_)))))
                       (declare (not safe))
                       (cons 'begin _types155945_)))))
              (let ((___match156307156308_
                     (lambda (_e155846155871_
                              _hd155845155874_
                              _tl155844155876_
                              _e155849155879_
                              _hd155848155882_
                              _tl155847155884_
                              ___splice156258156259_
                              _target155850155887_
                              _tl155852155889_)
                       (letrec ((_loop155853155892_
                                 (lambda (_hd155851155895_ _id155857155897_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155851155895_))
                                       (let ((_e155854155900_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155851155895_))))
                                         (let ((_lp-tl155856155905_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155854155900_)))
                                               (_lp-hd155855155903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155854155900_))))
                                           (let ((__tmp156590
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155855155903_
                                                          _id155857155897_))))
                                             (declare (not safe))
                                             (_loop155853155892_
                                              _lp-tl155856155905_
                                              __tmp156590))))
                                       (let ((_id155858155908_
                                              (reverse _id155857155897_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155847155884_))
                                             (let ((_e155861155911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155847155884_))))
                                               (let ((_tl155859155916_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155861155911_)))
                                                     (_hd155860155914_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155861155911_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155859155916_))
                                                     (___kont156256156257_
                                                      _id155858155908_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155828155866_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155828155866_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155853155892_ _target155850155887_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156252156253_))
                    (let ((_e155833155952_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156252156253_))))
                      (let ((_tl155831155957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155833155952_)))
                            (_hd155832155955_
                             (let ()
                               (declare (not safe))
                               (##car _e155833155952_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155831155957_))
                            (let ((_e155836155960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155831155957_))))
                              (let ((_tl155834155965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155836155960_)))
                                    (_hd155835155963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155836155960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155835155963_))
                                    (let ((_e155839155968_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155835155963_))))
                                      (let ((_tl155837155973_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155839155968_)))
                                            (_hd155838155971_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155839155968_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155837155973_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155834155965_))
                                                (let ((_e155842155976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155834155965_))))
                                                  (let ((_tl155840155981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155842155976_)))
                                                        (_hd155841155979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155842155976_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155840155981_))
                                                        (___kont156254156255_
                                                         _hd155838155971_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155835155963_))
                                                            (let ((___splice156258156259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155835155963_ '0))))
                      (let ((_tl155852155889_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156258156259_ '1)))
                            (_target155850155887_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156258156259_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155852155889_))
                            (___match156307156308_
                             _e155833155952_
                             _hd155832155955_
                             _tl155831155957_
                             _e155836155960_
                             _hd155835155963_
                             _tl155834155965_
                             ___splice156258156259_
                             _target155850155887_
                             _tl155852155889_)
                            (let () (declare (not safe)) (_g155828155866_)))))
                    (let () (declare (not safe)) (_g155828155866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155835155963_))
                                                    (let ((___splice156258156259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155835155963_
                                                              '0))))
                                                      (let ((_tl155852155889_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156258156259_ '1)))
                    (_target155850155887_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156258156259_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155852155889_))
                    (___match156307156308_
                     _e155833155952_
                     _hd155832155955_
                     _tl155831155957_
                     _e155836155960_
                     _hd155835155963_
                     _tl155834155965_
                     ___splice156258156259_
                     _target155850155887_
                     _tl155852155889_)
                    (let () (declare (not safe)) (_g155828155866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155828155866_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155835155963_))
                                                (let ((___splice156258156259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155835155963_
                                                          '0))))
                                                  (let ((_tl155852155889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156258156259_
                                                            '1)))
                                                        (_target155850155887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156258156259_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155852155889_))
                                                        (___match156307156308_
                                                         _e155833155952_
                                                         _hd155832155955_
                                                         _tl155831155957_
                                                         _e155836155960_
                                                         _hd155835155963_
                                                         _tl155834155965_
                                                         ___splice156258156259_
                                                         _target155850155887_
                                                         _tl155852155889_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155828155866_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155828155866_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155835155963_))
                                        (let ((___splice156258156259_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155835155963_
                                                  '0))))
                                          (let ((_tl155852155889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156258156259_
                                                    '1)))
                                                (_target155850155887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156258156259_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155852155889_))
                                                (___match156307156308_
                                                 _e155833155952_
                                                 _hd155832155955_
                                                 _tl155831155957_
                                                 _e155836155960_
                                                 _hd155835155963_
                                                 _tl155834155965_
                                                 ___splice156258156259_
                                                 _target155850155887_
                                                 _tl155852155889_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155828155866_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155828155866_))))))
                            (let () (declare (not safe)) (_g155828155866_)))))
                    (let () (declare (not safe)) (_g155828155866_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155377_)
        (let* ((___stx156310156311_ _stx155377_)
               (_g155381155483_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156310156311_)))))
          (let ((___kont156312156313_
                 (lambda (_L155773_ _L155774_ _L155775_ _L155776_ _L155777_)
                   (let ((__tmp156591
                          (let ((__tmp156598
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155776_)))
                                (__tmp156592
                                 (let ((__tmp156597
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155775_)))
                                       (__tmp156593
                                        (let ((__tmp156596
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155774_)))
                                              (__tmp156594
                                               (let ((__tmp156595
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155773_))))
                                                 (declare (not safe))
                                                 (cons __tmp156595 '()))))
                                          (declare (not safe))
                                          (cons __tmp156596 __tmp156594))))
                                   (declare (not safe))
                                   (cons __tmp156597 __tmp156593))))
                            (declare (not safe))
                            (cons __tmp156598 __tmp156592))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156591))))
                (___kont156314156315_
                 (lambda (_L155599_ _L155600_ _L155601_ _L155602_)
                   (let ((__tmp156599
                          (let ((__tmp156605
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155601_)))
                                (__tmp156600
                                 (let ((__tmp156604
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155600_)))
                                       (__tmp156601
                                        (let ((__tmp156603
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155599_)))
                                              (__tmp156602
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156603 __tmp156602))))
                                   (declare (not safe))
                                   (cons __tmp156604 __tmp156601))))
                            (declare (not safe))
                            (cons __tmp156605 __tmp156600))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156599))))
                (___kont156316156317_ (lambda () '(begin))))
            (let ((___match156445156446_
                   (lambda (_e155390155645_
                            _hd155389155648_
                            _tl155388155650_
                            _e155393155653_
                            _hd155392155656_
                            _tl155391155658_
                            _e155396155661_
                            _hd155395155664_
                            _tl155394155666_
                            _e155399155669_
                            _hd155398155672_
                            _tl155397155674_
                            _e155402155677_
                            _hd155401155680_
                            _tl155400155682_
                            _e155405155685_
                            _hd155404155688_
                            _tl155403155690_
                            _e155408155693_
                            _hd155407155696_
                            _tl155406155698_
                            _e155411155701_
                            _hd155410155704_
                            _tl155409155706_
                            _e155414155709_
                            _hd155413155712_
                            _tl155412155714_
                            _e155417155717_
                            _hd155416155720_
                            _tl155415155722_
                            _e155420155725_
                            _hd155419155728_
                            _tl155418155730_
                            _e155423155733_
                            _hd155422155736_
                            _tl155421155738_
                            _e155426155741_
                            _hd155425155744_
                            _tl155424155746_
                            _e155429155749_
                            _hd155428155752_
                            _tl155427155754_
                            _e155432155757_
                            _hd155431155760_
                            _tl155430155762_
                            _e155435155765_
                            _hd155434155768_
                            _tl155433155770_)
                     (let ((_L155773_ _hd155434155768_)
                           (_L155774_ _hd155425155744_)
                           (_L155775_ _hd155416155720_)
                           (_L155776_ _hd155407155696_)
                           (_L155777_ _hd155398155672_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155777_
                              'bind-method!))
                           (___kont156312156313_
                            _L155773_
                            _L155774_
                            _L155775_
                            _L155776_
                            _L155777_)
                           (___kont156316156317_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156310156311_))
                  (let ((_e155390155645_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156310156311_))))
                    (let ((_tl155388155650_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155390155645_)))
                          (_hd155389155648_
                           (let ()
                             (declare (not safe))
                             (##car _e155390155645_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155388155650_))
                          (let ((_e155393155653_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155388155650_))))
                            (let ((_tl155391155658_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155393155653_)))
                                  (_hd155392155656_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155393155653_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155392155656_))
                                  (let ((_e155396155661_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155392155656_))))
                                    (let ((_tl155394155666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155396155661_)))
                                          (_hd155395155664_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155396155661_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155395155664_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155395155664_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155394155666_))
                                                  (let ((_e155399155669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155394155666_))))
                                                    (let ((_tl155397155674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155399155669_)))
                                                          (_hd155398155672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155399155669_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155397155674_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155391155658_))
                      (let ((_e155402155677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155391155658_))))
                        (let ((_tl155400155682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155402155677_)))
                              (_hd155401155680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155402155677_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155401155680_))
                              (let ((_e155405155685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155401155680_))))
                                (let ((_tl155403155690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155405155685_)))
                                      (_hd155404155688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155405155685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155404155688_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155404155688_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155403155690_))
                                              (let ((_e155408155693_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155403155690_))))
                                                (let ((_tl155406155698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155408155693_)))
                                                      (_hd155407155696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155408155693_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155406155698_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155400155682_))
                                                          (let ((_e155411155701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155400155682_))))
                    (let ((_tl155409155706_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155411155701_)))
                          (_hd155410155704_
                           (let ()
                             (declare (not safe))
                             (##car _e155411155701_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155410155704_))
                          (let ((_e155414155709_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155410155704_))))
                            (let ((_tl155412155714_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155414155709_)))
                                  (_hd155413155712_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155414155709_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155413155712_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155413155712_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155412155714_))
                                          (let ((_e155417155717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155412155714_))))
                                            (let ((_tl155415155722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155417155717_)))
                                                  (_hd155416155720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155417155717_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155415155722_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155409155706_))
                                                      (let ((_e155420155725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155409155706_))))
                (let ((_tl155418155730_
                       (let () (declare (not safe)) (##cdr _e155420155725_)))
                      (_hd155419155728_
                       (let () (declare (not safe)) (##car _e155420155725_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155419155728_))
                      (let ((_e155423155733_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155419155728_))))
                        (let ((_tl155421155738_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155423155733_)))
                              (_hd155422155736_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155423155733_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155422155736_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155422155736_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155421155738_))
                                      (let ((_e155426155741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155421155738_))))
                                        (let ((_tl155424155746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155426155741_)))
                                              (_hd155425155744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155426155741_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155424155746_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155418155730_))
                                                  (let ((_e155429155749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155418155730_))))
                                                    (let ((_tl155427155754_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155429155749_)))
                                                          (_hd155428155752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155429155749_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155428155752_))
                                                          (let ((_e155432155757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155428155752_))))
                    (let ((_tl155430155762_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155432155757_)))
                          (_hd155431155760_
                           (let ()
                             (declare (not safe))
                             (##car _e155432155757_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155431155760_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155431155760_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155430155762_))
                                  (let ((_e155435155765_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155430155762_))))
                                    (let ((_tl155433155770_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155435155765_)))
                                          (_hd155434155768_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155435155765_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155433155770_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155427155754_))
                                              (___match156445156446_
                                               _e155390155645_
                                               _hd155389155648_
                                               _tl155388155650_
                                               _e155393155653_
                                               _hd155392155656_
                                               _tl155391155658_
                                               _e155396155661_
                                               _hd155395155664_
                                               _tl155394155666_
                                               _e155399155669_
                                               _hd155398155672_
                                               _tl155397155674_
                                               _e155402155677_
                                               _hd155401155680_
                                               _tl155400155682_
                                               _e155405155685_
                                               _hd155404155688_
                                               _tl155403155690_
                                               _e155408155693_
                                               _hd155407155696_
                                               _tl155406155698_
                                               _e155411155701_
                                               _hd155410155704_
                                               _tl155409155706_
                                               _e155414155709_
                                               _hd155413155712_
                                               _tl155412155714_
                                               _e155417155717_
                                               _hd155416155720_
                                               _tl155415155722_
                                               _e155420155725_
                                               _hd155419155728_
                                               _tl155418155730_
                                               _e155423155733_
                                               _hd155422155736_
                                               _tl155421155738_
                                               _e155426155741_
                                               _hd155425155744_
                                               _tl155424155746_
                                               _e155429155749_
                                               _hd155428155752_
                                               _tl155427155754_
                                               _e155432155757_
                                               _hd155431155760_
                                               _tl155430155762_
                                               _e155435155765_
                                               _hd155434155768_
                                               _tl155433155770_)
                                              (___kont156316156317_))
                                          (___kont156316156317_))))
                                  (___kont156316156317_))
                              (___kont156316156317_))
                          (___kont156316156317_))))
                  (___kont156316156317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155418155730_))
                                                      (if (let ((__tmp156606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156606 'bind-method!))
                  (let ((_L155599_ _hd155425155744_)
                        (_L155600_ _hd155416155720_)
                        (_L155601_ _hd155407155696_)
                        (_L155602_ _hd155398155672_))
                    (___kont156314156315_
                     _L155599_
                     _L155600_
                     _L155601_
                     _L155602_))
                  (___kont156316156317_))
              (___kont156316156317_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156316156317_))))
                                      (___kont156316156317_))
                                  (___kont156316156317_))
                              (___kont156316156317_))))
                      (___kont156316156317_))))
              (___kont156316156317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156316156317_))))
                                          (___kont156316156317_))
                                      (___kont156316156317_))
                                  (___kont156316156317_))))
                          (___kont156316156317_))))
                  (___kont156316156317_))
              (___kont156316156317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156316156317_))
                                          (___kont156316156317_))
                                      (___kont156316156317_))))
                              (___kont156316156317_))))
                      (___kont156316156317_))
                  (___kont156316156317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156316156317_))
                                              (___kont156316156317_))
                                          (___kont156316156317_))))
                                  (___kont156316156317_))))
                          (___kont156316156317_))))
                  (___kont156316156317_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155353_)
        (let* ((_self155354155360_ _self155353_)
               (_E155356155364_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155354155360_))))
               (_K155357155369_
                (lambda (_alias-id155367_)
                  (let ((__tmp156607
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155367_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156607)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155354155360_ 'gxc#!alias::t))
              (let* ((_e155358155372_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155354155360_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155375_ _e155358155372_))
                (declare (not safe))
                (_K155357155369_ _alias-id155375_))
              (let () (declare (not safe)) (_E155356155364_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155144_)
        (let* ((_self155145155160_ _self155144_)
               (_E155147155164_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155145155160_))))
               (_K155148155178_
                (lambda (_methods155167_
                         _metaclass155168_
                         _final?155169_
                         _struct?155170_
                         _constructor155171_
                         _fields155172_
                         _slots155173_
                         _precendence-list155174_
                         _super155175_
                         _id155176_)
                  (let ((__tmp156608
                         (let ((__tmp156609
                                (let ((__tmp156610
                                       (let ((__tmp156611
                                              (let ((__tmp156612
                                                     (let ((__tmp156613
                                                            (let ((__tmp156614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156615
                                  (let ((__tmp156616
                                         (let ((__tmp156617
                                                (let ((__tmp156618
                                                       (if _methods155167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155167_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156618 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155168_
                                                 __tmp156617))))
                                    (declare (not safe))
                                    (cons _final?155169_ __tmp156616))))
                             (declare (not safe))
                             (cons _struct?155170_ __tmp156615))))
                      (declare (not safe))
                      (cons _constructor155171_ __tmp156614))))
               (declare (not safe))
               (cons _fields155172_ __tmp156613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155173_
                                                      __tmp156612))))
                                         (declare (not safe))
                                         (cons _precendence-list155174_
                                               __tmp156611))))
                                  (declare (not safe))
                                  (cons _super155175_ __tmp156610))))
                           (declare (not safe))
                           (cons _id155176_ __tmp156609))))
                    (declare (not safe))
                    (cons '@class __tmp156608)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155145155160_ 'gxc#!class::t))
              (let* ((_e155149155181_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155184_ _e155149155181_)
                     (_e155150155186_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155189_ _e155150155186_)
                     (_e155151155191_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155194_ _e155151155191_)
                     (_e155152155196_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155199_ _e155152155196_)
                     (_e155153155201_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155204_ _e155153155201_)
                     (_e155154155206_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155209_ _e155154155206_)
                     (_e155155155211_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155214_ _e155155155211_)
                     (_e155156155216_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155219_ _e155156155216_)
                     (_e155157155221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155224_ _e155157155221_)
                     (_e155158155226_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155145155160_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155229_ _e155158155226_))
                (declare (not safe))
                (_K155148155178_
                 _methods155229_
                 _metaclass155224_
                 _final?155219_
                 _struct?155214_
                 _constructor155209_
                 _fields155204_
                 _slots155199_
                 _precendence-list155194_
                 _super155189_
                 _id155184_))
              (let () (declare (not safe)) (_E155147155164_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154998_)
        (let* ((_self154999155005_ _self154998_)
               (_E155001155009_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154999155005_))))
               (_K155002155014_
                (lambda (_klass-id155012_)
                  (let ((__tmp156619
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155012_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156619)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154999155005_
                 'gxc#!predicate::t))
              (let* ((_e155003155017_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154999155005_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155020_ _e155003155017_))
                (declare (not safe))
                (_K155002155014_ _klass-id155020_))
              (let () (declare (not safe)) (_E155001155009_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154852_)
        (let* ((_self154853154859_ _self154852_)
               (_E154855154863_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154853154859_))))
               (_K154856154868_
                (lambda (_klass-id154866_)
                  (let ((__tmp156620
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154866_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156620)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154853154859_
                 'gxc#!constructor::t))
              (let* ((_e154857154871_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154853154859_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154874_ _e154857154871_))
                (declare (not safe))
                (_K154856154868_ _klass-id154874_))
              (let () (declare (not safe)) (_E154855154863_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154692_)
        (let* ((_self154693154701_ _self154692_)
               (_E154695154705_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154693154701_))))
               (_K154696154712_
                (lambda (_checked?154708_ _slot154709_ _klass-id154710_)
                  (let ((__tmp156621
                         (let ((__tmp156622
                                (let ((__tmp156623
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154708_ '()))))
                                  (declare (not safe))
                                  (cons _slot154709_ __tmp156623))))
                           (declare (not safe))
                           (cons _klass-id154710_ __tmp156622))))
                    (declare (not safe))
                    (cons '@accessor __tmp156621)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154693154701_
                 'gxc#!accessor::t))
              (let* ((_e154697154715_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154693154701_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154718_ _e154697154715_)
                     (_e154698154720_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154693154701_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154723_ _e154698154720_)
                     (_e154699154725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154693154701_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154728_ _e154699154725_))
                (declare (not safe))
                (_K154696154712_
                 _checked?154728_
                 _slot154723_
                 _klass-id154718_))
              (let () (declare (not safe)) (_E154695154705_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154532_)
        (let* ((_self154533154541_ _self154532_)
               (_E154535154545_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154533154541_))))
               (_K154536154552_
                (lambda (_checked?154548_ _slot154549_ _klass-id154550_)
                  (let ((__tmp156624
                         (let ((__tmp156625
                                (let ((__tmp156626
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154548_ '()))))
                                  (declare (not safe))
                                  (cons _slot154549_ __tmp156626))))
                           (declare (not safe))
                           (cons _klass-id154550_ __tmp156625))))
                    (declare (not safe))
                    (cons '@mutator __tmp156624)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154533154541_ 'gxc#!mutator::t))
              (let* ((_e154537154555_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154533154541_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154558_ _e154537154555_)
                     (_e154538154560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154533154541_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154563_ _e154538154560_)
                     (_e154539154565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154533154541_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154568_ _e154539154565_))
                (declare (not safe))
                (_K154536154552_
                 _checked?154568_
                 _slot154563_
                 _klass-id154558_))
              (let () (declare (not safe)) (_E154535154545_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154358_)
        (let* ((_self154359154369_ _self154358_)
               (_E154361154373_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154359154369_))))
               (_K154362154384_
                (lambda (_typedecl154376_
                         _inline154377_
                         _dispatch154378_
                         _arity154379_)
                  (if _inline154377_
                      (let ((_$e154381_ _typedecl154376_))
                        (if _$e154381_
                            _$e154381_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156627
                             (let ((__tmp156628
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154378_ '()))))
                               (declare (not safe))
                               (cons _arity154379_ __tmp156628))))
                        (declare (not safe))
                        (cons '@lambda __tmp156627))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154359154369_ 'gxc#!lambda::t))
              (let* ((_e154363154387_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154359154369_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154364154390_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154359154369_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154393_ _e154364154390_)
                     (_e154365154395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154359154369_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154398_ _e154365154395_)
                     (_e154366154400_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154359154369_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154403_ _e154366154400_)
                     (_e154367154405_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154359154369_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154408_ _e154367154405_))
                (declare (not safe))
                (_K154362154384_
                 _typedecl154408_
                 _inline154403_
                 _dispatch154398_
                 _arity154393_))
              (let () (declare (not safe)) (_E154361154373_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154169_)
        (letrec ((_clause-e154171_
                  (lambda (_clause154201_)
                    (let* ((_clause154202154210_ _clause154201_)
                           (_E154204154214_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154202154210_))))
                           (_K154205154220_
                            (lambda (_dispatch154217_ _arity154218_)
                              (let ((__tmp156629
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154217_ '()))))
                                (declare (not safe))
                                (cons _arity154218_ __tmp156629)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154202154210_
                             'gxc#!lambda::t))
                          (let* ((_e154206154223_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154202154210_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154207154226_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154202154210_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154229_ _e154207154226_)
                                 (_e154208154231_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154202154210_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154234_ _e154208154231_))
                            (declare (not safe))
                            (_K154205154220_ _dispatch154234_ _arity154229_))
                          (let () (declare (not safe)) (_E154204154214_)))))))
          (let* ((_self154172154179_ _self154169_)
                 (_E154174154183_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154172154179_))))
                 (_K154175154190_
                  (lambda (_clauses154186_)
                    (let ((_clauses154188_
                           (map _clause-e154171_ _clauses154186_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154188_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154172154179_
                   'gxc#!case-lambda::t))
                (let* ((_e154176154193_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154172154179_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154177154196_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154172154179_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154199_ _e154177154196_))
                  (declare (not safe))
                  (_K154175154190_ _clauses154199_))
                (let () (declare (not safe)) (_E154174154183_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154012_)
        (let* ((_self154013154021_ _self154012_)
               (_E154015154025_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154013154021_))))
               (_K154016154031_
                (lambda (_dispatch154028_ _table154029_)
                  (let ((__tmp156630
                         (let ((__tmp156631
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154028_ '()))))
                           (declare (not safe))
                           (cons _table154029_ __tmp156631))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156630)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154013154021_
                 'gxc#!kw-lambda::t))
              (let* ((_e154017154034_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154013154021_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154018154037_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154013154021_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154040_ _e154018154037_)
                     (_e154019154042_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154013154021_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154045_ _e154019154042_))
                (declare (not safe))
                (_K154016154031_ _dispatch154045_ _table154040_))
              (let () (declare (not safe)) (_E154015154025_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153855_)
        (let* ((_self153856153864_ _self153855_)
               (_E153858153868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153856153864_))))
               (_K153859153874_
                (lambda (_main153871_ _keys153872_)
                  (let ((__tmp156632
                         (let ((__tmp156633
                                (let ()
                                  (declare (not safe))
                                  (cons _main153871_ '()))))
                           (declare (not safe))
                           (cons _keys153872_ __tmp156633))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156632)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153856153864_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153860153877_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153856153864_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153861153880_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153856153864_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153883_ _e153861153880_)
                     (_e153862153885_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153856153864_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153888_ _e153862153885_))
                (declare (not safe))
                (_K153859153874_ _main153888_ _keys153883_))
              (let () (declare (not safe)) (_E153858153868_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
