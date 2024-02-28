(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709125259)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156546
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156546)
               __obj156546)))))
    (define gxc#optimize!
      (lambda (_ctx156239_)
        (let ((__tmp156550
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156239_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156552
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156551
                        (##structure-ref
                         _ctx156239_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156552 __tmp156551 '#t))
                 (let ((_code156242_
                        (let ((__tmp156553
                               (##structure-ref
                                _ctx156239_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156553))))
                   (##structure-set!
                    _ctx156239_
                    _code156242_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156549 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156548 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156550
           gxc#current-compile-mutators
           __tmp156549
           gxc#current-compile-local-type
           __tmp156548))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156235_
                  (lambda (_id156237_)
                    (if (let ((__tmp156555
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156555 _id156237_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156237_))
                          (let ((__tmp156554
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156554 _id156237_ '#t)))))))
          (for-each
           _load-it!156235_
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
      (lambda (_ctx156179_)
        (letrec* ((_deps156181_
                   (let* ((_imports156225_
                           (##structure-ref
                            _ctx156179_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156227_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156179_))))
                     (if _$e156227_
                         ((lambda (_g156229156231_)
                            (let ()
                              (declare (not safe))
                              (cons _g156229156231_ _imports156225_)))
                          _$e156227_)
                         _imports156225_))))
          (let _lp156183_ ((_rest156185_ _deps156181_))
            (let* ((_rest156186156194_ _rest156185_)
                   (_else156188156202_ (lambda () '#!void))
                   (_K156190156213_
                    (lambda (_rest156205_ _hd156206_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156206_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156569
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156568
                                       (##structure-ref
                                        _hd156206_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156569 __tmp156568))
                                '#!void
                                (begin
                                  (let ((_$e156208_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156206_))))
                                    (if _$e156208_
                                        ((lambda (_pre156211_)
                                           (let ((__tmp156566
                                                  (let ((__tmp156567
                                                         (##structure-ref
                                                          _hd156206_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156211_
                                                          __tmp156567))))
                                             (declare (not safe))
                                             (_lp156183_ __tmp156566)))
                                         _$e156208_)
                                        (let ((__tmp156565
                                               (##structure-ref
                                                _hd156206_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156183_ __tmp156565))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156206_))))
                            (let ()
                              (declare (not safe))
                              (_lp156183_ _rest156205_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156206_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156564
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156563
                                           (##structure-ref
                                            _hd156206_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156564 __tmp156563))
                                    '#!void
                                    (begin
                                      (let ((__tmp156562
                                             (##structure-ref
                                              _hd156206_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156183_ __tmp156562))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156206_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156183_ _rest156205_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156206_
                                     'gx#module-import::t))
                                  (let ((__tmp156560
                                         (let ((__tmp156561
                                                (##direct-structure-ref
                                                 _hd156206_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156561 _rest156205_))))
                                    (declare (not safe))
                                    (_lp156183_ __tmp156560))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156206_
                                         'gx#module-export::t))
                                      (let ((__tmp156558
                                             (let ((__tmp156559
                                                    (##direct-structure-ref
                                                     _hd156206_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156559
                                                     _rest156205_))))
                                        (declare (not safe))
                                        (_lp156183_ __tmp156558))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156206_
                                             'gx#import-set::t))
                                          (let ((__tmp156556
                                                 (let ((__tmp156557
                                                        (##direct-structure-ref
                                                         _hd156206_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156557
                                                         _rest156205_))))
                                            (declare (not safe))
                                            (_lp156183_ __tmp156556))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156206_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156186156194_))
                  (let ((_hd156191156216_
                         (let ()
                           (declare (not safe))
                           (##car _rest156186156194_)))
                        (_tl156192156218_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156186156194_))))
                    (let* ((_hd156221_ _hd156191156216_)
                           (_rest156223_ _tl156192156218_))
                      (declare (not safe))
                      (_K156190156213_ _rest156223_ _hd156221_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156159_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156159_
                    'gx#module-context::t))
                 (let ((__tmp156570
                        (##structure-ref
                         _ctx156159_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156570)))
            '#!void
            (let* ((_ht156161_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156163_
                    (##structure-ref
                     _ctx156159_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156165_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156161_ _id156163_))))
              (let ((_$e156168_ _mod156165_))
                (if _$e156168_
                    _$e156168_
                    (let* ((_mod156171_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156159_)))
                           (_val156176_
                            (let ((_$e156173_ _mod156171_))
                              (if _$e156173_ _$e156173_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156161_ _id156163_ _val156176_))
                      _val156176_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156157_)
        (if (##structure-ref _ctx156157_ '1 gx#expander-context::t '#f)
            (let ((__tmp156571
                   (##structure-ref
                    _ctx156157_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156571))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156134_)
        (letrec ((_catch-e156136_
                  (lambda (_exn156155_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156134_))
                          (display-exception _exn156155_))
                        '#!void)
                    '#f))
                 (_import-e156137_
                  (lambda ()
                    (let* ((_str-id156140_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156134_))
                             '".ssxi"))
                           (_artefact-path156148_
                            (let ((_odir156141156143_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156141156143_
                                  (let ((_odir156146_ _odir156141156143_))
                                    (path-expand
                                     (string-append _str-id156140_ '".ss")
                                     _odir156146_))
                                  '#f)))
                           (_library-path156150_
                            (string->symbol
                             (string-append '":" _str-id156140_ '".ss")))
                           (_ssxi-path156152_
                            (if (and _artefact-path156148_
                                     (file-exists? _artefact-path156148_))
                                _artefact-path156148_
                                _library-path156150_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156152_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156152_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156136_ _import-e156137_)))))
    (define gxc#optimize-source
      (lambda (_stx156125_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156125_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156125_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156125_))
        (let* ((_stx156127_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156125_)))
               (_stx156129_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156127_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156129_))
          (let ((_stx156132_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156129_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156132_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156122_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156572 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156122_ __tmp156572))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156122_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156122_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156122_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156122_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156122_ '%#call gxc#generate-ssxi-call%))
           _tbl156122_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156105_ . _args156107_)
        (let ((__tmp156574
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156107_)
                     (gxc#compile-e__0 _stx156105_)
                     (let ((_arg1156112_ (car _args156107_))
                           (_rest156114_ (cdr _args156107_)))
                       (if (null? _rest156114_)
                           (gxc#compile-e__1 _stx156105_ _arg1156112_)
                           (let ((_arg2156117_ (car _rest156114_))
                                 (_rest156119_ (cdr _rest156114_)))
                             (if (null? _rest156119_)
                                 (gxc#compile-e__2
                                  _stx156105_
                                  _arg1156112_
                                  _arg2156117_)
                                 (apply gxc#compile-e
                                        _stx156105_
                                        _arg1156112_
                                        _arg2156117_
                                        _rest156119_))))))))
              (__tmp156573 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156574
           gxc#current-compile-methods
           __tmp156573))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156066_)
        (let* ((_g156068156078_
                (lambda (_g156069156075_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156069156075_))))
               (_g156067156102_
                (lambda (_g156069156081_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156069156081_))
                      (let ((_e156073156083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156069156081_))))
                        (let ((_hd156072156086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156073156083_)))
                              (_tl156071156088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156073156083_))))
                          ((lambda (_L156091_)
                             (let ((__tmp156577
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156066_))))
                                   (__tmp156575
                                    (let ((__tmp156576
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156576 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156577
                                gx#current-expander-phi
                                __tmp156575)))
                           _tl156071156088_)))
                      (let ()
                        (declare (not safe))
                        (_g156068156078_ _g156069156081_))))))
          (declare (not safe))
          (_g156067156102_ _stx156066_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156006_)
        (let* ((_g156008156022_
                (lambda (_g156009156019_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156009156019_))))
               (_g156007156063_
                (lambda (_g156009156025_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156009156025_))
                      (let ((_e156014156027_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156009156025_))))
                        (let ((_hd156013156030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156014156027_)))
                              (_tl156012156032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156014156027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156012156032_))
                              (let ((_e156017156035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156012156032_))))
                                (let ((_hd156016156038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156017156035_)))
                                      (_tl156015156040_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156017156035_))))
                                  ((lambda (_L156043_ _L156044_)
                                     (let* ((_ctx156057_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156044_)))
                                            (_code156059_
                                             (##structure-ref
                                              _ctx156057_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156578
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156059_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156578
                                          gx#current-expander-context
                                          _ctx156057_))))
                                   _tl156015156040_
                                   _hd156016156038_)))
                              (let ()
                                (declare (not safe))
                                (_g156008156022_ _g156009156025_)))))
                      (let ()
                        (declare (not safe))
                        (_g156008156022_ _g156009156025_))))))
          (declare (not safe))
          (_g156007156063_ _stx156006_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155816_)
        (letrec ((_generate-e155818_
                  (lambda (_id155995_)
                    (let* ((_sym155997_
                            (if (let ((__tmp156579
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156579))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155995_))
                                '#f))
                           (_$e155999_
                            (if _sym155997_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155997_))
                                '#f)))
                      (if _$e155999_
                          ((lambda (_type156002_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155997_))
                             (let* ((_typedecl156004_
                                     (let ((__method156547
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156002_
                                               'typedecl))))
                                       (if __method156547
                                           (__method156547 _type156002_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156002_
                                                    'typedecl)))))
                                    (__tmp156580
                                     (let ((__tmp156581
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156004_ '()))))
                                       (declare (not safe))
                                       (cons _sym155997_ __tmp156581))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156580)))
                           _$e155999_)
                          '(begin))))))
          (let* ((___stx156245156246_ _stx155816_)
                 (_g155821155859_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156245156246_)))))
            (let ((___kont156247156248_
                   (lambda (_L155977_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155818_ _L155977_))))
                  (___kont156249156250_
                   (lambda (_L155912_)
                     (let ((_types155938_
                            (map _generate-e155818_
                                 (let ((__tmp156582
                                        (lambda (_g155930155933_
                                                 _g155931155935_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155930155933_
                                                  _g155931155935_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156582 '() _L155912_)))))
                       (declare (not safe))
                       (cons 'begin _types155938_)))))
              (let ((___match156300156301_
                     (lambda (_e155839155864_
                              _hd155838155867_
                              _tl155837155869_
                              _e155842155872_
                              _hd155841155875_
                              _tl155840155877_
                              ___splice156251156252_
                              _target155843155880_
                              _tl155845155882_)
                       (letrec ((_loop155846155885_
                                 (lambda (_hd155844155888_ _id155850155890_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155844155888_))
                                       (let ((_e155847155893_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155844155888_))))
                                         (let ((_lp-tl155849155898_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155847155893_)))
                                               (_lp-hd155848155896_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155847155893_))))
                                           (let ((__tmp156583
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155848155896_
                                                          _id155850155890_))))
                                             (declare (not safe))
                                             (_loop155846155885_
                                              _lp-tl155849155898_
                                              __tmp156583))))
                                       (let ((_id155851155901_
                                              (reverse _id155850155890_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155840155877_))
                                             (let ((_e155854155904_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155840155877_))))
                                               (let ((_tl155852155909_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155854155904_)))
                                                     (_hd155853155907_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155854155904_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155852155909_))
                                                     (___kont156249156250_
                                                      _id155851155901_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155821155859_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155821155859_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155846155885_ _target155843155880_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156245156246_))
                    (let ((_e155826155945_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156245156246_))))
                      (let ((_tl155824155950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155826155945_)))
                            (_hd155825155948_
                             (let ()
                               (declare (not safe))
                               (##car _e155826155945_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155824155950_))
                            (let ((_e155829155953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155824155950_))))
                              (let ((_tl155827155958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155829155953_)))
                                    (_hd155828155956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155829155953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155828155956_))
                                    (let ((_e155832155961_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155828155956_))))
                                      (let ((_tl155830155966_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155832155961_)))
                                            (_hd155831155964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155832155961_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155830155966_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155827155958_))
                                                (let ((_e155835155969_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155827155958_))))
                                                  (let ((_tl155833155974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155835155969_)))
                                                        (_hd155834155972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155835155969_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155833155974_))
                                                        (___kont156247156248_
                                                         _hd155831155964_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155828155956_))
                                                            (let ((___splice156251156252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155828155956_ '0))))
                      (let ((_tl155845155882_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156251156252_ '1)))
                            (_target155843155880_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156251156252_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155845155882_))
                            (___match156300156301_
                             _e155826155945_
                             _hd155825155948_
                             _tl155824155950_
                             _e155829155953_
                             _hd155828155956_
                             _tl155827155958_
                             ___splice156251156252_
                             _target155843155880_
                             _tl155845155882_)
                            (let () (declare (not safe)) (_g155821155859_)))))
                    (let () (declare (not safe)) (_g155821155859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155828155956_))
                                                    (let ((___splice156251156252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155828155956_
                                                              '0))))
                                                      (let ((_tl155845155882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156251156252_ '1)))
                    (_target155843155880_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156251156252_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155845155882_))
                    (___match156300156301_
                     _e155826155945_
                     _hd155825155948_
                     _tl155824155950_
                     _e155829155953_
                     _hd155828155956_
                     _tl155827155958_
                     ___splice156251156252_
                     _target155843155880_
                     _tl155845155882_)
                    (let () (declare (not safe)) (_g155821155859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155821155859_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155828155956_))
                                                (let ((___splice156251156252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155828155956_
                                                          '0))))
                                                  (let ((_tl155845155882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156251156252_
                                                            '1)))
                                                        (_target155843155880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156251156252_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155845155882_))
                                                        (___match156300156301_
                                                         _e155826155945_
                                                         _hd155825155948_
                                                         _tl155824155950_
                                                         _e155829155953_
                                                         _hd155828155956_
                                                         _tl155827155958_
                                                         ___splice156251156252_
                                                         _target155843155880_
                                                         _tl155845155882_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155821155859_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155821155859_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155828155956_))
                                        (let ((___splice156251156252_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155828155956_
                                                  '0))))
                                          (let ((_tl155845155882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156251156252_
                                                    '1)))
                                                (_target155843155880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156251156252_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155845155882_))
                                                (___match156300156301_
                                                 _e155826155945_
                                                 _hd155825155948_
                                                 _tl155824155950_
                                                 _e155829155953_
                                                 _hd155828155956_
                                                 _tl155827155958_
                                                 ___splice156251156252_
                                                 _target155843155880_
                                                 _tl155845155882_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155821155859_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155821155859_))))))
                            (let () (declare (not safe)) (_g155821155859_)))))
                    (let () (declare (not safe)) (_g155821155859_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155370_)
        (let* ((___stx156303156304_ _stx155370_)
               (_g155374155476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156303156304_)))))
          (let ((___kont156305156306_
                 (lambda (_L155766_ _L155767_ _L155768_ _L155769_ _L155770_)
                   (let ((__tmp156584
                          (let ((__tmp156591
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155769_)))
                                (__tmp156585
                                 (let ((__tmp156590
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155768_)))
                                       (__tmp156586
                                        (let ((__tmp156589
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155767_)))
                                              (__tmp156587
                                               (let ((__tmp156588
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155766_))))
                                                 (declare (not safe))
                                                 (cons __tmp156588 '()))))
                                          (declare (not safe))
                                          (cons __tmp156589 __tmp156587))))
                                   (declare (not safe))
                                   (cons __tmp156590 __tmp156586))))
                            (declare (not safe))
                            (cons __tmp156591 __tmp156585))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156584))))
                (___kont156307156308_
                 (lambda (_L155592_ _L155593_ _L155594_ _L155595_)
                   (let ((__tmp156592
                          (let ((__tmp156598
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155594_)))
                                (__tmp156593
                                 (let ((__tmp156597
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155593_)))
                                       (__tmp156594
                                        (let ((__tmp156596
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155592_)))
                                              (__tmp156595
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156596 __tmp156595))))
                                   (declare (not safe))
                                   (cons __tmp156597 __tmp156594))))
                            (declare (not safe))
                            (cons __tmp156598 __tmp156593))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156592))))
                (___kont156309156310_ (lambda () '(begin))))
            (let ((___match156438156439_
                   (lambda (_e155383155638_
                            _hd155382155641_
                            _tl155381155643_
                            _e155386155646_
                            _hd155385155649_
                            _tl155384155651_
                            _e155389155654_
                            _hd155388155657_
                            _tl155387155659_
                            _e155392155662_
                            _hd155391155665_
                            _tl155390155667_
                            _e155395155670_
                            _hd155394155673_
                            _tl155393155675_
                            _e155398155678_
                            _hd155397155681_
                            _tl155396155683_
                            _e155401155686_
                            _hd155400155689_
                            _tl155399155691_
                            _e155404155694_
                            _hd155403155697_
                            _tl155402155699_
                            _e155407155702_
                            _hd155406155705_
                            _tl155405155707_
                            _e155410155710_
                            _hd155409155713_
                            _tl155408155715_
                            _e155413155718_
                            _hd155412155721_
                            _tl155411155723_
                            _e155416155726_
                            _hd155415155729_
                            _tl155414155731_
                            _e155419155734_
                            _hd155418155737_
                            _tl155417155739_
                            _e155422155742_
                            _hd155421155745_
                            _tl155420155747_
                            _e155425155750_
                            _hd155424155753_
                            _tl155423155755_
                            _e155428155758_
                            _hd155427155761_
                            _tl155426155763_)
                     (let ((_L155766_ _hd155427155761_)
                           (_L155767_ _hd155418155737_)
                           (_L155768_ _hd155409155713_)
                           (_L155769_ _hd155400155689_)
                           (_L155770_ _hd155391155665_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155770_
                              'bind-method!))
                           (___kont156305156306_
                            _L155766_
                            _L155767_
                            _L155768_
                            _L155769_
                            _L155770_)
                           (___kont156309156310_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156303156304_))
                  (let ((_e155383155638_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156303156304_))))
                    (let ((_tl155381155643_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155383155638_)))
                          (_hd155382155641_
                           (let ()
                             (declare (not safe))
                             (##car _e155383155638_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155381155643_))
                          (let ((_e155386155646_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155381155643_))))
                            (let ((_tl155384155651_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155386155646_)))
                                  (_hd155385155649_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155386155646_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155385155649_))
                                  (let ((_e155389155654_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155385155649_))))
                                    (let ((_tl155387155659_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155389155654_)))
                                          (_hd155388155657_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155389155654_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155388155657_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155388155657_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155387155659_))
                                                  (let ((_e155392155662_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155387155659_))))
                                                    (let ((_tl155390155667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155392155662_)))
                                                          (_hd155391155665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155392155662_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155390155667_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155384155651_))
                      (let ((_e155395155670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155384155651_))))
                        (let ((_tl155393155675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155395155670_)))
                              (_hd155394155673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155395155670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155394155673_))
                              (let ((_e155398155678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155394155673_))))
                                (let ((_tl155396155683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155398155678_)))
                                      (_hd155397155681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155398155678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155397155681_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155397155681_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155396155683_))
                                              (let ((_e155401155686_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155396155683_))))
                                                (let ((_tl155399155691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155401155686_)))
                                                      (_hd155400155689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155401155686_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155399155691_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155393155675_))
                                                          (let ((_e155404155694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155393155675_))))
                    (let ((_tl155402155699_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155404155694_)))
                          (_hd155403155697_
                           (let ()
                             (declare (not safe))
                             (##car _e155404155694_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155403155697_))
                          (let ((_e155407155702_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155403155697_))))
                            (let ((_tl155405155707_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155407155702_)))
                                  (_hd155406155705_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155407155702_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155406155705_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155406155705_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155405155707_))
                                          (let ((_e155410155710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155405155707_))))
                                            (let ((_tl155408155715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155410155710_)))
                                                  (_hd155409155713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155410155710_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155408155715_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155402155699_))
                                                      (let ((_e155413155718_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155402155699_))))
                (let ((_tl155411155723_
                       (let () (declare (not safe)) (##cdr _e155413155718_)))
                      (_hd155412155721_
                       (let () (declare (not safe)) (##car _e155413155718_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155412155721_))
                      (let ((_e155416155726_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155412155721_))))
                        (let ((_tl155414155731_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155416155726_)))
                              (_hd155415155729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155416155726_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155415155729_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155415155729_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155414155731_))
                                      (let ((_e155419155734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155414155731_))))
                                        (let ((_tl155417155739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155419155734_)))
                                              (_hd155418155737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155419155734_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155417155739_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155411155723_))
                                                  (let ((_e155422155742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155411155723_))))
                                                    (let ((_tl155420155747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155422155742_)))
                                                          (_hd155421155745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155422155742_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155421155745_))
                                                          (let ((_e155425155750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155421155745_))))
                    (let ((_tl155423155755_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155425155750_)))
                          (_hd155424155753_
                           (let ()
                             (declare (not safe))
                             (##car _e155425155750_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155424155753_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155424155753_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155423155755_))
                                  (let ((_e155428155758_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155423155755_))))
                                    (let ((_tl155426155763_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155428155758_)))
                                          (_hd155427155761_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155428155758_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155426155763_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155420155747_))
                                              (___match156438156439_
                                               _e155383155638_
                                               _hd155382155641_
                                               _tl155381155643_
                                               _e155386155646_
                                               _hd155385155649_
                                               _tl155384155651_
                                               _e155389155654_
                                               _hd155388155657_
                                               _tl155387155659_
                                               _e155392155662_
                                               _hd155391155665_
                                               _tl155390155667_
                                               _e155395155670_
                                               _hd155394155673_
                                               _tl155393155675_
                                               _e155398155678_
                                               _hd155397155681_
                                               _tl155396155683_
                                               _e155401155686_
                                               _hd155400155689_
                                               _tl155399155691_
                                               _e155404155694_
                                               _hd155403155697_
                                               _tl155402155699_
                                               _e155407155702_
                                               _hd155406155705_
                                               _tl155405155707_
                                               _e155410155710_
                                               _hd155409155713_
                                               _tl155408155715_
                                               _e155413155718_
                                               _hd155412155721_
                                               _tl155411155723_
                                               _e155416155726_
                                               _hd155415155729_
                                               _tl155414155731_
                                               _e155419155734_
                                               _hd155418155737_
                                               _tl155417155739_
                                               _e155422155742_
                                               _hd155421155745_
                                               _tl155420155747_
                                               _e155425155750_
                                               _hd155424155753_
                                               _tl155423155755_
                                               _e155428155758_
                                               _hd155427155761_
                                               _tl155426155763_)
                                              (___kont156309156310_))
                                          (___kont156309156310_))))
                                  (___kont156309156310_))
                              (___kont156309156310_))
                          (___kont156309156310_))))
                  (___kont156309156310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155411155723_))
                                                      (if (let ((__tmp156599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156599 'bind-method!))
                  (let ((_L155592_ _hd155418155737_)
                        (_L155593_ _hd155409155713_)
                        (_L155594_ _hd155400155689_)
                        (_L155595_ _hd155391155665_))
                    (___kont156307156308_
                     _L155592_
                     _L155593_
                     _L155594_
                     _L155595_))
                  (___kont156309156310_))
              (___kont156309156310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156309156310_))))
                                      (___kont156309156310_))
                                  (___kont156309156310_))
                              (___kont156309156310_))))
                      (___kont156309156310_))))
              (___kont156309156310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156309156310_))))
                                          (___kont156309156310_))
                                      (___kont156309156310_))
                                  (___kont156309156310_))))
                          (___kont156309156310_))))
                  (___kont156309156310_))
              (___kont156309156310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156309156310_))
                                          (___kont156309156310_))
                                      (___kont156309156310_))))
                              (___kont156309156310_))))
                      (___kont156309156310_))
                  (___kont156309156310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156309156310_))
                                              (___kont156309156310_))
                                          (___kont156309156310_))))
                                  (___kont156309156310_))))
                          (___kont156309156310_))))
                  (___kont156309156310_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155346_)
        (let* ((_self155347155353_ _self155346_)
               (_E155349155357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155347155353_))))
               (_K155350155362_
                (lambda (_alias-id155360_)
                  (let ((__tmp156600
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155360_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156600)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155347155353_ 'gxc#!alias::t))
              (let* ((_e155351155365_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155347155353_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155368_ _e155351155365_))
                (declare (not safe))
                (_K155350155362_ _alias-id155368_))
              (let () (declare (not safe)) (_E155349155357_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155137_)
        (let* ((_self155138155153_ _self155137_)
               (_E155140155157_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155138155153_))))
               (_K155141155171_
                (lambda (_methods155160_
                         _metaclass155161_
                         _final?155162_
                         _struct?155163_
                         _constructor155164_
                         _fields155165_
                         _slots155166_
                         _precendence-list155167_
                         _super155168_
                         _id155169_)
                  (let ((__tmp156601
                         (let ((__tmp156602
                                (let ((__tmp156603
                                       (let ((__tmp156604
                                              (let ((__tmp156605
                                                     (let ((__tmp156606
                                                            (let ((__tmp156607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156608
                                  (let ((__tmp156609
                                         (let ((__tmp156610
                                                (let ((__tmp156611
                                                       (if _methods155160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155160_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156611 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155161_
                                                 __tmp156610))))
                                    (declare (not safe))
                                    (cons _final?155162_ __tmp156609))))
                             (declare (not safe))
                             (cons _struct?155163_ __tmp156608))))
                      (declare (not safe))
                      (cons _constructor155164_ __tmp156607))))
               (declare (not safe))
               (cons _fields155165_ __tmp156606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155166_
                                                      __tmp156605))))
                                         (declare (not safe))
                                         (cons _precendence-list155167_
                                               __tmp156604))))
                                  (declare (not safe))
                                  (cons _super155168_ __tmp156603))))
                           (declare (not safe))
                           (cons _id155169_ __tmp156602))))
                    (declare (not safe))
                    (cons '@class __tmp156601)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155138155153_ 'gxc#!class::t))
              (let* ((_e155142155174_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155177_ _e155142155174_)
                     (_e155143155179_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155182_ _e155143155179_)
                     (_e155144155184_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155187_ _e155144155184_)
                     (_e155145155189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155192_ _e155145155189_)
                     (_e155146155194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155197_ _e155146155194_)
                     (_e155147155199_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155202_ _e155147155199_)
                     (_e155148155204_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155207_ _e155148155204_)
                     (_e155149155209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155212_ _e155149155209_)
                     (_e155150155214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155217_ _e155150155214_)
                     (_e155151155219_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155138155153_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155222_ _e155151155219_))
                (declare (not safe))
                (_K155141155171_
                 _methods155222_
                 _metaclass155217_
                 _final?155212_
                 _struct?155207_
                 _constructor155202_
                 _fields155197_
                 _slots155192_
                 _precendence-list155187_
                 _super155182_
                 _id155177_))
              (let () (declare (not safe)) (_E155140155157_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154991_)
        (let* ((_self154992154998_ _self154991_)
               (_E154994155002_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154992154998_))))
               (_K154995155007_
                (lambda (_klass-id155005_)
                  (let ((__tmp156612
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155005_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156612)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154992154998_
                 'gxc#!predicate::t))
              (let* ((_e154996155010_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154992154998_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155013_ _e154996155010_))
                (declare (not safe))
                (_K154995155007_ _klass-id155013_))
              (let () (declare (not safe)) (_E154994155002_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154845_)
        (let* ((_self154846154852_ _self154845_)
               (_E154848154856_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154846154852_))))
               (_K154849154861_
                (lambda (_klass-id154859_)
                  (let ((__tmp156613
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154859_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156613)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154846154852_
                 'gxc#!constructor::t))
              (let* ((_e154850154864_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154846154852_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154867_ _e154850154864_))
                (declare (not safe))
                (_K154849154861_ _klass-id154867_))
              (let () (declare (not safe)) (_E154848154856_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154685_)
        (let* ((_self154686154694_ _self154685_)
               (_E154688154698_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154686154694_))))
               (_K154689154705_
                (lambda (_checked?154701_ _slot154702_ _klass-id154703_)
                  (let ((__tmp156614
                         (let ((__tmp156615
                                (let ((__tmp156616
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154701_ '()))))
                                  (declare (not safe))
                                  (cons _slot154702_ __tmp156616))))
                           (declare (not safe))
                           (cons _klass-id154703_ __tmp156615))))
                    (declare (not safe))
                    (cons '@accessor __tmp156614)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154686154694_
                 'gxc#!accessor::t))
              (let* ((_e154690154708_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154686154694_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154711_ _e154690154708_)
                     (_e154691154713_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154686154694_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154716_ _e154691154713_)
                     (_e154692154718_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154686154694_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154721_ _e154692154718_))
                (declare (not safe))
                (_K154689154705_
                 _checked?154721_
                 _slot154716_
                 _klass-id154711_))
              (let () (declare (not safe)) (_E154688154698_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154525_)
        (let* ((_self154526154534_ _self154525_)
               (_E154528154538_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154526154534_))))
               (_K154529154545_
                (lambda (_checked?154541_ _slot154542_ _klass-id154543_)
                  (let ((__tmp156617
                         (let ((__tmp156618
                                (let ((__tmp156619
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154541_ '()))))
                                  (declare (not safe))
                                  (cons _slot154542_ __tmp156619))))
                           (declare (not safe))
                           (cons _klass-id154543_ __tmp156618))))
                    (declare (not safe))
                    (cons '@mutator __tmp156617)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154526154534_ 'gxc#!mutator::t))
              (let* ((_e154530154548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154526154534_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154551_ _e154530154548_)
                     (_e154531154553_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154526154534_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154556_ _e154531154553_)
                     (_e154532154558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154526154534_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154561_ _e154532154558_))
                (declare (not safe))
                (_K154529154545_
                 _checked?154561_
                 _slot154556_
                 _klass-id154551_))
              (let () (declare (not safe)) (_E154528154538_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154351_)
        (let* ((_self154352154362_ _self154351_)
               (_E154354154366_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154352154362_))))
               (_K154355154377_
                (lambda (_typedecl154369_
                         _inline154370_
                         _dispatch154371_
                         _arity154372_)
                  (if _inline154370_
                      (let ((_$e154374_ _typedecl154369_))
                        (if _$e154374_
                            _$e154374_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156620
                             (let ((__tmp156621
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154371_ '()))))
                               (declare (not safe))
                               (cons _arity154372_ __tmp156621))))
                        (declare (not safe))
                        (cons '@lambda __tmp156620))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154352154362_ 'gxc#!lambda::t))
              (let* ((_e154356154380_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154352154362_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154357154383_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154352154362_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154386_ _e154357154383_)
                     (_e154358154388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154352154362_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154391_ _e154358154388_)
                     (_e154359154393_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154352154362_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154396_ _e154359154393_)
                     (_e154360154398_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154352154362_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154401_ _e154360154398_))
                (declare (not safe))
                (_K154355154377_
                 _typedecl154401_
                 _inline154396_
                 _dispatch154391_
                 _arity154386_))
              (let () (declare (not safe)) (_E154354154366_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154162_)
        (letrec ((_clause-e154164_
                  (lambda (_clause154194_)
                    (let* ((_clause154195154203_ _clause154194_)
                           (_E154197154207_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154195154203_))))
                           (_K154198154213_
                            (lambda (_dispatch154210_ _arity154211_)
                              (let ((__tmp156622
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154210_ '()))))
                                (declare (not safe))
                                (cons _arity154211_ __tmp156622)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154195154203_
                             'gxc#!lambda::t))
                          (let* ((_e154199154216_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154195154203_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154200154219_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154195154203_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154222_ _e154200154219_)
                                 (_e154201154224_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154195154203_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154227_ _e154201154224_))
                            (declare (not safe))
                            (_K154198154213_ _dispatch154227_ _arity154222_))
                          (let () (declare (not safe)) (_E154197154207_)))))))
          (let* ((_self154165154172_ _self154162_)
                 (_E154167154176_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154165154172_))))
                 (_K154168154183_
                  (lambda (_clauses154179_)
                    (let ((_clauses154181_
                           (map _clause-e154164_ _clauses154179_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154181_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154165154172_
                   'gxc#!case-lambda::t))
                (let* ((_e154169154186_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154165154172_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154170154189_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154165154172_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154192_ _e154170154189_))
                  (declare (not safe))
                  (_K154168154183_ _clauses154192_))
                (let () (declare (not safe)) (_E154167154176_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154005_)
        (let* ((_self154006154014_ _self154005_)
               (_E154008154018_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154006154014_))))
               (_K154009154024_
                (lambda (_dispatch154021_ _table154022_)
                  (let ((__tmp156623
                         (let ((__tmp156624
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154021_ '()))))
                           (declare (not safe))
                           (cons _table154022_ __tmp156624))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156623)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154006154014_
                 'gxc#!kw-lambda::t))
              (let* ((_e154010154027_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154006154014_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154011154030_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154006154014_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154033_ _e154011154030_)
                     (_e154012154035_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154006154014_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154038_ _e154012154035_))
                (declare (not safe))
                (_K154009154024_ _dispatch154038_ _table154033_))
              (let () (declare (not safe)) (_E154008154018_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153848_)
        (let* ((_self153849153857_ _self153848_)
               (_E153851153861_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153849153857_))))
               (_K153852153867_
                (lambda (_main153864_ _keys153865_)
                  (let ((__tmp156625
                         (let ((__tmp156626
                                (let ()
                                  (declare (not safe))
                                  (cons _main153864_ '()))))
                           (declare (not safe))
                           (cons _keys153865_ __tmp156626))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156625)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153849153857_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153853153870_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153849153857_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153854153873_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153849153857_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153876_ _e153854153873_)
                     (_e153855153878_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153849153857_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153881_ _e153855153878_))
                (declare (not safe))
                (_K153852153867_ _main153881_ _keys153876_))
              (let () (declare (not safe)) (_E153851153861_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
