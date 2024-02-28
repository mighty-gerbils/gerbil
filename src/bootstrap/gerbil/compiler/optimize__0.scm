(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709127361)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156556
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156556)
               __obj156556)))))
    (define gxc#optimize!
      (lambda (_ctx156249_)
        (let ((__tmp156560
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156249_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156562
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156561
                        (##structure-ref
                         _ctx156249_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156562 __tmp156561 '#t))
                 (let ((_code156252_
                        (let ((__tmp156563
                               (##structure-ref
                                _ctx156249_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156563))))
                   (##structure-set!
                    _ctx156249_
                    _code156252_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156559 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156558 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156560
           gxc#current-compile-mutators
           __tmp156559
           gxc#current-compile-local-type
           __tmp156558))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156245_
                  (lambda (_id156247_)
                    (if (let ((__tmp156565
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156565 _id156247_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156247_))
                          (let ((__tmp156564
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156564 _id156247_ '#t)))))))
          (for-each
           _load-it!156245_
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
      (lambda (_ctx156189_)
        (letrec* ((_deps156191_
                   (let* ((_imports156235_
                           (##structure-ref
                            _ctx156189_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156237_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156189_))))
                     (if _$e156237_
                         ((lambda (_g156239156241_)
                            (let ()
                              (declare (not safe))
                              (cons _g156239156241_ _imports156235_)))
                          _$e156237_)
                         _imports156235_))))
          (let _lp156193_ ((_rest156195_ _deps156191_))
            (let* ((_rest156196156204_ _rest156195_)
                   (_else156198156212_ (lambda () '#!void))
                   (_K156200156223_
                    (lambda (_rest156215_ _hd156216_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156216_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156579
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156578
                                       (##structure-ref
                                        _hd156216_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156579 __tmp156578))
                                '#!void
                                (begin
                                  (let ((_$e156218_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156216_))))
                                    (if _$e156218_
                                        ((lambda (_pre156221_)
                                           (let ((__tmp156576
                                                  (let ((__tmp156577
                                                         (##structure-ref
                                                          _hd156216_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156221_
                                                          __tmp156577))))
                                             (declare (not safe))
                                             (_lp156193_ __tmp156576)))
                                         _$e156218_)
                                        (let ((__tmp156575
                                               (##structure-ref
                                                _hd156216_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156193_ __tmp156575))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156216_))))
                            (let ()
                              (declare (not safe))
                              (_lp156193_ _rest156215_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156216_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156574
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156573
                                           (##structure-ref
                                            _hd156216_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156574 __tmp156573))
                                    '#!void
                                    (begin
                                      (let ((__tmp156572
                                             (##structure-ref
                                              _hd156216_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156193_ __tmp156572))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156216_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156193_ _rest156215_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156216_
                                     'gx#module-import::t))
                                  (let ((__tmp156570
                                         (let ((__tmp156571
                                                (##direct-structure-ref
                                                 _hd156216_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156571 _rest156215_))))
                                    (declare (not safe))
                                    (_lp156193_ __tmp156570))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156216_
                                         'gx#module-export::t))
                                      (let ((__tmp156568
                                             (let ((__tmp156569
                                                    (##direct-structure-ref
                                                     _hd156216_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156569
                                                     _rest156215_))))
                                        (declare (not safe))
                                        (_lp156193_ __tmp156568))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156216_
                                             'gx#import-set::t))
                                          (let ((__tmp156566
                                                 (let ((__tmp156567
                                                        (##direct-structure-ref
                                                         _hd156216_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156567
                                                         _rest156215_))))
                                            (declare (not safe))
                                            (_lp156193_ __tmp156566))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156216_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156196156204_))
                  (let ((_hd156201156226_
                         (let ()
                           (declare (not safe))
                           (##car _rest156196156204_)))
                        (_tl156202156228_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156196156204_))))
                    (let* ((_hd156231_ _hd156201156226_)
                           (_rest156233_ _tl156202156228_))
                      (declare (not safe))
                      (_K156200156223_ _rest156233_ _hd156231_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156169_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156169_
                    'gx#module-context::t))
                 (let ((__tmp156580
                        (##structure-ref
                         _ctx156169_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156580)))
            '#!void
            (let* ((_ht156171_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156173_
                    (##structure-ref
                     _ctx156169_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156175_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156171_ _id156173_))))
              (let ((_$e156178_ _mod156175_))
                (if _$e156178_
                    _$e156178_
                    (let* ((_mod156181_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156169_)))
                           (_val156186_
                            (let ((_$e156183_ _mod156181_))
                              (if _$e156183_ _$e156183_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156171_ _id156173_ _val156186_))
                      _val156186_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156167_)
        (if (##structure-ref _ctx156167_ '1 gx#expander-context::t '#f)
            (let ((__tmp156581
                   (##structure-ref
                    _ctx156167_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156581))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156144_)
        (letrec ((_catch-e156146_
                  (lambda (_exn156165_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156144_))
                          (display-exception _exn156165_))
                        '#!void)
                    '#f))
                 (_import-e156147_
                  (lambda ()
                    (let* ((_str-id156150_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156144_))
                             '".ssxi"))
                           (_artefact-path156158_
                            (let ((_odir156151156153_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156151156153_
                                  (let ((_odir156156_ _odir156151156153_))
                                    (path-expand
                                     (string-append _str-id156150_ '".ss")
                                     _odir156156_))
                                  '#f)))
                           (_library-path156160_
                            (string->symbol
                             (string-append '":" _str-id156150_ '".ss")))
                           (_ssxi-path156162_
                            (if (and _artefact-path156158_
                                     (file-exists? _artefact-path156158_))
                                _artefact-path156158_
                                _library-path156160_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156162_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156162_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156146_ _import-e156147_)))))
    (define gxc#optimize-source
      (lambda (_stx156135_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156135_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156135_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156135_))
        (let* ((_stx156137_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156135_)))
               (_stx156139_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156137_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156139_))
          (let ((_stx156142_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156139_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156142_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156132_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156582 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156132_ __tmp156582))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156132_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156132_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156132_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156132_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156132_ '%#call gxc#generate-ssxi-call%))
           _tbl156132_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156115_ . _args156117_)
        (let ((__tmp156584
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156117_)
                     (gxc#compile-e__0 _stx156115_)
                     (let ((_arg1156122_ (car _args156117_))
                           (_rest156124_ (cdr _args156117_)))
                       (if (null? _rest156124_)
                           (gxc#compile-e__1 _stx156115_ _arg1156122_)
                           (let ((_arg2156127_ (car _rest156124_))
                                 (_rest156129_ (cdr _rest156124_)))
                             (if (null? _rest156129_)
                                 (gxc#compile-e__2
                                  _stx156115_
                                  _arg1156122_
                                  _arg2156127_)
                                 (apply gxc#compile-e
                                        _stx156115_
                                        _arg1156122_
                                        _arg2156127_
                                        _rest156129_))))))))
              (__tmp156583 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156584
           gxc#current-compile-methods
           __tmp156583))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156076_)
        (let* ((_g156078156088_
                (lambda (_g156079156085_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156079156085_))))
               (_g156077156112_
                (lambda (_g156079156091_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156079156091_))
                      (let ((_e156083156093_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156079156091_))))
                        (let ((_hd156082156096_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156083156093_)))
                              (_tl156081156098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156083156093_))))
                          ((lambda (_L156101_)
                             (let ((__tmp156587
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156076_))))
                                   (__tmp156585
                                    (let ((__tmp156586
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156586 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156587
                                gx#current-expander-phi
                                __tmp156585)))
                           _tl156081156098_)))
                      (let ()
                        (declare (not safe))
                        (_g156078156088_ _g156079156091_))))))
          (declare (not safe))
          (_g156077156112_ _stx156076_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156016_)
        (let* ((_g156018156032_
                (lambda (_g156019156029_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156019156029_))))
               (_g156017156073_
                (lambda (_g156019156035_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156019156035_))
                      (let ((_e156024156037_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156019156035_))))
                        (let ((_hd156023156040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156024156037_)))
                              (_tl156022156042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156024156037_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156022156042_))
                              (let ((_e156027156045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156022156042_))))
                                (let ((_hd156026156048_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156027156045_)))
                                      (_tl156025156050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156027156045_))))
                                  ((lambda (_L156053_ _L156054_)
                                     (let* ((_ctx156067_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156054_)))
                                            (_code156069_
                                             (##structure-ref
                                              _ctx156067_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156588
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156069_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156588
                                          gx#current-expander-context
                                          _ctx156067_))))
                                   _tl156025156050_
                                   _hd156026156048_)))
                              (let ()
                                (declare (not safe))
                                (_g156018156032_ _g156019156035_)))))
                      (let ()
                        (declare (not safe))
                        (_g156018156032_ _g156019156035_))))))
          (declare (not safe))
          (_g156017156073_ _stx156016_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155826_)
        (letrec ((_generate-e155828_
                  (lambda (_id156005_)
                    (let* ((_sym156007_
                            (if (let ((__tmp156589
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156589))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156005_))
                                '#f))
                           (_$e156009_
                            (if _sym156007_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156007_))
                                '#f)))
                      (if _$e156009_
                          ((lambda (_type156012_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156007_))
                             (let* ((_typedecl156014_
                                     (let ((__method156557
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156012_
                                               'typedecl))))
                                       (if __method156557
                                           (__method156557 _type156012_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156012_
                                                    'typedecl)))))
                                    (__tmp156590
                                     (let ((__tmp156591
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156014_ '()))))
                                       (declare (not safe))
                                       (cons _sym156007_ __tmp156591))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156590)))
                           _$e156009_)
                          '(begin))))))
          (let* ((___stx156255156256_ _stx155826_)
                 (_g155831155869_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156255156256_)))))
            (let ((___kont156257156258_
                   (lambda (_L155987_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155828_ _L155987_))))
                  (___kont156259156260_
                   (lambda (_L155922_)
                     (let ((_types155948_
                            (map _generate-e155828_
                                 (let ((__tmp156592
                                        (lambda (_g155940155943_
                                                 _g155941155945_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155940155943_
                                                  _g155941155945_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156592 '() _L155922_)))))
                       (declare (not safe))
                       (cons 'begin _types155948_)))))
              (let ((___match156310156311_
                     (lambda (_e155849155874_
                              _hd155848155877_
                              _tl155847155879_
                              _e155852155882_
                              _hd155851155885_
                              _tl155850155887_
                              ___splice156261156262_
                              _target155853155890_
                              _tl155855155892_)
                       (letrec ((_loop155856155895_
                                 (lambda (_hd155854155898_ _id155860155900_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155854155898_))
                                       (let ((_e155857155903_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155854155898_))))
                                         (let ((_lp-tl155859155908_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155857155903_)))
                                               (_lp-hd155858155906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155857155903_))))
                                           (let ((__tmp156593
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155858155906_
                                                          _id155860155900_))))
                                             (declare (not safe))
                                             (_loop155856155895_
                                              _lp-tl155859155908_
                                              __tmp156593))))
                                       (let ((_id155861155911_
                                              (reverse _id155860155900_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155850155887_))
                                             (let ((_e155864155914_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155850155887_))))
                                               (let ((_tl155862155919_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155864155914_)))
                                                     (_hd155863155917_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155864155914_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155862155919_))
                                                     (___kont156259156260_
                                                      _id155861155911_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155831155869_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155831155869_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155856155895_ _target155853155890_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156255156256_))
                    (let ((_e155836155955_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156255156256_))))
                      (let ((_tl155834155960_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155836155955_)))
                            (_hd155835155958_
                             (let ()
                               (declare (not safe))
                               (##car _e155836155955_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155834155960_))
                            (let ((_e155839155963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155834155960_))))
                              (let ((_tl155837155968_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155839155963_)))
                                    (_hd155838155966_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155839155963_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155838155966_))
                                    (let ((_e155842155971_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155838155966_))))
                                      (let ((_tl155840155976_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155842155971_)))
                                            (_hd155841155974_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155842155971_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155840155976_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155837155968_))
                                                (let ((_e155845155979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155837155968_))))
                                                  (let ((_tl155843155984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155845155979_)))
                                                        (_hd155844155982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155845155979_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155843155984_))
                                                        (___kont156257156258_
                                                         _hd155841155974_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155838155966_))
                                                            (let ((___splice156261156262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155838155966_ '0))))
                      (let ((_tl155855155892_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156261156262_ '1)))
                            (_target155853155890_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156261156262_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155855155892_))
                            (___match156310156311_
                             _e155836155955_
                             _hd155835155958_
                             _tl155834155960_
                             _e155839155963_
                             _hd155838155966_
                             _tl155837155968_
                             ___splice156261156262_
                             _target155853155890_
                             _tl155855155892_)
                            (let () (declare (not safe)) (_g155831155869_)))))
                    (let () (declare (not safe)) (_g155831155869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155838155966_))
                                                    (let ((___splice156261156262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155838155966_
                                                              '0))))
                                                      (let ((_tl155855155892_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156261156262_ '1)))
                    (_target155853155890_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156261156262_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155855155892_))
                    (___match156310156311_
                     _e155836155955_
                     _hd155835155958_
                     _tl155834155960_
                     _e155839155963_
                     _hd155838155966_
                     _tl155837155968_
                     ___splice156261156262_
                     _target155853155890_
                     _tl155855155892_)
                    (let () (declare (not safe)) (_g155831155869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155831155869_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155838155966_))
                                                (let ((___splice156261156262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155838155966_
                                                          '0))))
                                                  (let ((_tl155855155892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156261156262_
                                                            '1)))
                                                        (_target155853155890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156261156262_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155855155892_))
                                                        (___match156310156311_
                                                         _e155836155955_
                                                         _hd155835155958_
                                                         _tl155834155960_
                                                         _e155839155963_
                                                         _hd155838155966_
                                                         _tl155837155968_
                                                         ___splice156261156262_
                                                         _target155853155890_
                                                         _tl155855155892_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155831155869_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155831155869_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155838155966_))
                                        (let ((___splice156261156262_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155838155966_
                                                  '0))))
                                          (let ((_tl155855155892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156261156262_
                                                    '1)))
                                                (_target155853155890_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156261156262_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155855155892_))
                                                (___match156310156311_
                                                 _e155836155955_
                                                 _hd155835155958_
                                                 _tl155834155960_
                                                 _e155839155963_
                                                 _hd155838155966_
                                                 _tl155837155968_
                                                 ___splice156261156262_
                                                 _target155853155890_
                                                 _tl155855155892_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155831155869_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155831155869_))))))
                            (let () (declare (not safe)) (_g155831155869_)))))
                    (let () (declare (not safe)) (_g155831155869_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155380_)
        (let* ((___stx156313156314_ _stx155380_)
               (_g155384155486_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156313156314_)))))
          (let ((___kont156315156316_
                 (lambda (_L155776_ _L155777_ _L155778_ _L155779_ _L155780_)
                   (let ((__tmp156594
                          (let ((__tmp156601
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155779_)))
                                (__tmp156595
                                 (let ((__tmp156600
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155778_)))
                                       (__tmp156596
                                        (let ((__tmp156599
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155777_)))
                                              (__tmp156597
                                               (let ((__tmp156598
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155776_))))
                                                 (declare (not safe))
                                                 (cons __tmp156598 '()))))
                                          (declare (not safe))
                                          (cons __tmp156599 __tmp156597))))
                                   (declare (not safe))
                                   (cons __tmp156600 __tmp156596))))
                            (declare (not safe))
                            (cons __tmp156601 __tmp156595))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156594))))
                (___kont156317156318_
                 (lambda (_L155602_ _L155603_ _L155604_ _L155605_)
                   (let ((__tmp156602
                          (let ((__tmp156608
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155604_)))
                                (__tmp156603
                                 (let ((__tmp156607
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155603_)))
                                       (__tmp156604
                                        (let ((__tmp156606
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155602_)))
                                              (__tmp156605
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156606 __tmp156605))))
                                   (declare (not safe))
                                   (cons __tmp156607 __tmp156604))))
                            (declare (not safe))
                            (cons __tmp156608 __tmp156603))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156602))))
                (___kont156319156320_ (lambda () '(begin))))
            (let ((___match156448156449_
                   (lambda (_e155393155648_
                            _hd155392155651_
                            _tl155391155653_
                            _e155396155656_
                            _hd155395155659_
                            _tl155394155661_
                            _e155399155664_
                            _hd155398155667_
                            _tl155397155669_
                            _e155402155672_
                            _hd155401155675_
                            _tl155400155677_
                            _e155405155680_
                            _hd155404155683_
                            _tl155403155685_
                            _e155408155688_
                            _hd155407155691_
                            _tl155406155693_
                            _e155411155696_
                            _hd155410155699_
                            _tl155409155701_
                            _e155414155704_
                            _hd155413155707_
                            _tl155412155709_
                            _e155417155712_
                            _hd155416155715_
                            _tl155415155717_
                            _e155420155720_
                            _hd155419155723_
                            _tl155418155725_
                            _e155423155728_
                            _hd155422155731_
                            _tl155421155733_
                            _e155426155736_
                            _hd155425155739_
                            _tl155424155741_
                            _e155429155744_
                            _hd155428155747_
                            _tl155427155749_
                            _e155432155752_
                            _hd155431155755_
                            _tl155430155757_
                            _e155435155760_
                            _hd155434155763_
                            _tl155433155765_
                            _e155438155768_
                            _hd155437155771_
                            _tl155436155773_)
                     (let ((_L155776_ _hd155437155771_)
                           (_L155777_ _hd155428155747_)
                           (_L155778_ _hd155419155723_)
                           (_L155779_ _hd155410155699_)
                           (_L155780_ _hd155401155675_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155780_
                              'bind-method!))
                           (___kont156315156316_
                            _L155776_
                            _L155777_
                            _L155778_
                            _L155779_
                            _L155780_)
                           (___kont156319156320_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156313156314_))
                  (let ((_e155393155648_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156313156314_))))
                    (let ((_tl155391155653_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155393155648_)))
                          (_hd155392155651_
                           (let ()
                             (declare (not safe))
                             (##car _e155393155648_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155391155653_))
                          (let ((_e155396155656_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155391155653_))))
                            (let ((_tl155394155661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155396155656_)))
                                  (_hd155395155659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155396155656_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155395155659_))
                                  (let ((_e155399155664_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155395155659_))))
                                    (let ((_tl155397155669_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155399155664_)))
                                          (_hd155398155667_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155399155664_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155398155667_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155398155667_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155397155669_))
                                                  (let ((_e155402155672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155397155669_))))
                                                    (let ((_tl155400155677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155402155672_)))
                                                          (_hd155401155675_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155402155672_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155400155677_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155394155661_))
                      (let ((_e155405155680_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155394155661_))))
                        (let ((_tl155403155685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155405155680_)))
                              (_hd155404155683_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155405155680_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155404155683_))
                              (let ((_e155408155688_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155404155683_))))
                                (let ((_tl155406155693_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155408155688_)))
                                      (_hd155407155691_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155408155688_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155407155691_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155407155691_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155406155693_))
                                              (let ((_e155411155696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155406155693_))))
                                                (let ((_tl155409155701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155411155696_)))
                                                      (_hd155410155699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155411155696_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155409155701_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155403155685_))
                                                          (let ((_e155414155704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155403155685_))))
                    (let ((_tl155412155709_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155414155704_)))
                          (_hd155413155707_
                           (let ()
                             (declare (not safe))
                             (##car _e155414155704_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155413155707_))
                          (let ((_e155417155712_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155413155707_))))
                            (let ((_tl155415155717_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155417155712_)))
                                  (_hd155416155715_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155417155712_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155416155715_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155416155715_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155415155717_))
                                          (let ((_e155420155720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155415155717_))))
                                            (let ((_tl155418155725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155420155720_)))
                                                  (_hd155419155723_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155420155720_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155418155725_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155412155709_))
                                                      (let ((_e155423155728_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155412155709_))))
                (let ((_tl155421155733_
                       (let () (declare (not safe)) (##cdr _e155423155728_)))
                      (_hd155422155731_
                       (let () (declare (not safe)) (##car _e155423155728_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155422155731_))
                      (let ((_e155426155736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155422155731_))))
                        (let ((_tl155424155741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155426155736_)))
                              (_hd155425155739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155426155736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155425155739_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155425155739_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155424155741_))
                                      (let ((_e155429155744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155424155741_))))
                                        (let ((_tl155427155749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155429155744_)))
                                              (_hd155428155747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155429155744_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155427155749_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155421155733_))
                                                  (let ((_e155432155752_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155421155733_))))
                                                    (let ((_tl155430155757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155432155752_)))
                                                          (_hd155431155755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155432155752_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155431155755_))
                                                          (let ((_e155435155760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155431155755_))))
                    (let ((_tl155433155765_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155435155760_)))
                          (_hd155434155763_
                           (let ()
                             (declare (not safe))
                             (##car _e155435155760_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155434155763_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155434155763_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155433155765_))
                                  (let ((_e155438155768_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155433155765_))))
                                    (let ((_tl155436155773_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155438155768_)))
                                          (_hd155437155771_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155438155768_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155436155773_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155430155757_))
                                              (___match156448156449_
                                               _e155393155648_
                                               _hd155392155651_
                                               _tl155391155653_
                                               _e155396155656_
                                               _hd155395155659_
                                               _tl155394155661_
                                               _e155399155664_
                                               _hd155398155667_
                                               _tl155397155669_
                                               _e155402155672_
                                               _hd155401155675_
                                               _tl155400155677_
                                               _e155405155680_
                                               _hd155404155683_
                                               _tl155403155685_
                                               _e155408155688_
                                               _hd155407155691_
                                               _tl155406155693_
                                               _e155411155696_
                                               _hd155410155699_
                                               _tl155409155701_
                                               _e155414155704_
                                               _hd155413155707_
                                               _tl155412155709_
                                               _e155417155712_
                                               _hd155416155715_
                                               _tl155415155717_
                                               _e155420155720_
                                               _hd155419155723_
                                               _tl155418155725_
                                               _e155423155728_
                                               _hd155422155731_
                                               _tl155421155733_
                                               _e155426155736_
                                               _hd155425155739_
                                               _tl155424155741_
                                               _e155429155744_
                                               _hd155428155747_
                                               _tl155427155749_
                                               _e155432155752_
                                               _hd155431155755_
                                               _tl155430155757_
                                               _e155435155760_
                                               _hd155434155763_
                                               _tl155433155765_
                                               _e155438155768_
                                               _hd155437155771_
                                               _tl155436155773_)
                                              (___kont156319156320_))
                                          (___kont156319156320_))))
                                  (___kont156319156320_))
                              (___kont156319156320_))
                          (___kont156319156320_))))
                  (___kont156319156320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155421155733_))
                                                      (if (let ((__tmp156609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156609 'bind-method!))
                  (let ((_L155602_ _hd155428155747_)
                        (_L155603_ _hd155419155723_)
                        (_L155604_ _hd155410155699_)
                        (_L155605_ _hd155401155675_))
                    (___kont156317156318_
                     _L155602_
                     _L155603_
                     _L155604_
                     _L155605_))
                  (___kont156319156320_))
              (___kont156319156320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156319156320_))))
                                      (___kont156319156320_))
                                  (___kont156319156320_))
                              (___kont156319156320_))))
                      (___kont156319156320_))))
              (___kont156319156320_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156319156320_))))
                                          (___kont156319156320_))
                                      (___kont156319156320_))
                                  (___kont156319156320_))))
                          (___kont156319156320_))))
                  (___kont156319156320_))
              (___kont156319156320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156319156320_))
                                          (___kont156319156320_))
                                      (___kont156319156320_))))
                              (___kont156319156320_))))
                      (___kont156319156320_))
                  (___kont156319156320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156319156320_))
                                              (___kont156319156320_))
                                          (___kont156319156320_))))
                                  (___kont156319156320_))))
                          (___kont156319156320_))))
                  (___kont156319156320_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155356_)
        (let* ((_self155357155363_ _self155356_)
               (_E155359155367_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155357155363_))))
               (_K155360155372_
                (lambda (_alias-id155370_)
                  (let ((__tmp156610
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155370_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156610)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155357155363_ 'gxc#!alias::t))
              (let* ((_e155361155375_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155357155363_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155378_ _e155361155375_))
                (declare (not safe))
                (_K155360155372_ _alias-id155378_))
              (let () (declare (not safe)) (_E155359155367_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155147_)
        (let* ((_self155148155163_ _self155147_)
               (_E155150155167_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155148155163_))))
               (_K155151155181_
                (lambda (_methods155170_
                         _metaclass155171_
                         _final?155172_
                         _struct?155173_
                         _constructor155174_
                         _fields155175_
                         _slots155176_
                         _precendence-list155177_
                         _super155178_
                         _id155179_)
                  (let ((__tmp156611
                         (let ((__tmp156612
                                (let ((__tmp156613
                                       (let ((__tmp156614
                                              (let ((__tmp156615
                                                     (let ((__tmp156616
                                                            (let ((__tmp156617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156618
                                  (let ((__tmp156619
                                         (let ((__tmp156620
                                                (let ((__tmp156621
                                                       (if _methods155170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155170_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156621 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155171_
                                                 __tmp156620))))
                                    (declare (not safe))
                                    (cons _final?155172_ __tmp156619))))
                             (declare (not safe))
                             (cons _struct?155173_ __tmp156618))))
                      (declare (not safe))
                      (cons _constructor155174_ __tmp156617))))
               (declare (not safe))
               (cons _fields155175_ __tmp156616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155176_
                                                      __tmp156615))))
                                         (declare (not safe))
                                         (cons _precendence-list155177_
                                               __tmp156614))))
                                  (declare (not safe))
                                  (cons _super155178_ __tmp156613))))
                           (declare (not safe))
                           (cons _id155179_ __tmp156612))))
                    (declare (not safe))
                    (cons '@class __tmp156611)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155148155163_ 'gxc#!class::t))
              (let* ((_e155152155184_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155187_ _e155152155184_)
                     (_e155153155189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155192_ _e155153155189_)
                     (_e155154155194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155197_ _e155154155194_)
                     (_e155155155199_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155202_ _e155155155199_)
                     (_e155156155204_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155207_ _e155156155204_)
                     (_e155157155209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155212_ _e155157155209_)
                     (_e155158155214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155217_ _e155158155214_)
                     (_e155159155219_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155222_ _e155159155219_)
                     (_e155160155224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155227_ _e155160155224_)
                     (_e155161155229_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155148155163_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155232_ _e155161155229_))
                (declare (not safe))
                (_K155151155181_
                 _methods155232_
                 _metaclass155227_
                 _final?155222_
                 _struct?155217_
                 _constructor155212_
                 _fields155207_
                 _slots155202_
                 _precendence-list155197_
                 _super155192_
                 _id155187_))
              (let () (declare (not safe)) (_E155150155167_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155001_)
        (let* ((_self155002155008_ _self155001_)
               (_E155004155012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155002155008_))))
               (_K155005155017_
                (lambda (_klass-id155015_)
                  (let ((__tmp156622
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155015_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156622)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155002155008_
                 'gxc#!predicate::t))
              (let* ((_e155006155020_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155002155008_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155023_ _e155006155020_))
                (declare (not safe))
                (_K155005155017_ _klass-id155023_))
              (let () (declare (not safe)) (_E155004155012_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154855_)
        (let* ((_self154856154862_ _self154855_)
               (_E154858154866_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154856154862_))))
               (_K154859154871_
                (lambda (_klass-id154869_)
                  (let ((__tmp156623
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154869_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156623)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154856154862_
                 'gxc#!constructor::t))
              (let* ((_e154860154874_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154862_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154877_ _e154860154874_))
                (declare (not safe))
                (_K154859154871_ _klass-id154877_))
              (let () (declare (not safe)) (_E154858154866_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154695_)
        (let* ((_self154696154704_ _self154695_)
               (_E154698154708_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154696154704_))))
               (_K154699154715_
                (lambda (_checked?154711_ _slot154712_ _klass-id154713_)
                  (let ((__tmp156624
                         (let ((__tmp156625
                                (let ((__tmp156626
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154711_ '()))))
                                  (declare (not safe))
                                  (cons _slot154712_ __tmp156626))))
                           (declare (not safe))
                           (cons _klass-id154713_ __tmp156625))))
                    (declare (not safe))
                    (cons '@accessor __tmp156624)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154696154704_
                 'gxc#!accessor::t))
              (let* ((_e154700154718_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154696154704_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154721_ _e154700154718_)
                     (_e154701154723_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154696154704_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154726_ _e154701154723_)
                     (_e154702154728_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154696154704_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154731_ _e154702154728_))
                (declare (not safe))
                (_K154699154715_
                 _checked?154731_
                 _slot154726_
                 _klass-id154721_))
              (let () (declare (not safe)) (_E154698154708_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154535_)
        (let* ((_self154536154544_ _self154535_)
               (_E154538154548_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154536154544_))))
               (_K154539154555_
                (lambda (_checked?154551_ _slot154552_ _klass-id154553_)
                  (let ((__tmp156627
                         (let ((__tmp156628
                                (let ((__tmp156629
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154551_ '()))))
                                  (declare (not safe))
                                  (cons _slot154552_ __tmp156629))))
                           (declare (not safe))
                           (cons _klass-id154553_ __tmp156628))))
                    (declare (not safe))
                    (cons '@mutator __tmp156627)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154536154544_ 'gxc#!mutator::t))
              (let* ((_e154540154558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154536154544_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154561_ _e154540154558_)
                     (_e154541154563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154536154544_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154566_ _e154541154563_)
                     (_e154542154568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154536154544_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154571_ _e154542154568_))
                (declare (not safe))
                (_K154539154555_
                 _checked?154571_
                 _slot154566_
                 _klass-id154561_))
              (let () (declare (not safe)) (_E154538154548_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154361_)
        (let* ((_self154362154372_ _self154361_)
               (_E154364154376_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154362154372_))))
               (_K154365154387_
                (lambda (_typedecl154379_
                         _inline154380_
                         _dispatch154381_
                         _arity154382_)
                  (if _inline154380_
                      (let ((_$e154384_ _typedecl154379_))
                        (if _$e154384_
                            _$e154384_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156630
                             (let ((__tmp156631
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154381_ '()))))
                               (declare (not safe))
                               (cons _arity154382_ __tmp156631))))
                        (declare (not safe))
                        (cons '@lambda __tmp156630))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154362154372_ 'gxc#!lambda::t))
              (let* ((_e154366154390_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154362154372_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154367154393_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154362154372_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154396_ _e154367154393_)
                     (_e154368154398_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154362154372_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154401_ _e154368154398_)
                     (_e154369154403_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154362154372_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154406_ _e154369154403_)
                     (_e154370154408_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154362154372_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154411_ _e154370154408_))
                (declare (not safe))
                (_K154365154387_
                 _typedecl154411_
                 _inline154406_
                 _dispatch154401_
                 _arity154396_))
              (let () (declare (not safe)) (_E154364154376_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154172_)
        (letrec ((_clause-e154174_
                  (lambda (_clause154204_)
                    (let* ((_clause154205154213_ _clause154204_)
                           (_E154207154217_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154205154213_))))
                           (_K154208154223_
                            (lambda (_dispatch154220_ _arity154221_)
                              (let ((__tmp156632
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154220_ '()))))
                                (declare (not safe))
                                (cons _arity154221_ __tmp156632)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154205154213_
                             'gxc#!lambda::t))
                          (let* ((_e154209154226_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154205154213_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154210154229_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154205154213_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154232_ _e154210154229_)
                                 (_e154211154234_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154205154213_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154237_ _e154211154234_))
                            (declare (not safe))
                            (_K154208154223_ _dispatch154237_ _arity154232_))
                          (let () (declare (not safe)) (_E154207154217_)))))))
          (let* ((_self154175154182_ _self154172_)
                 (_E154177154186_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154175154182_))))
                 (_K154178154193_
                  (lambda (_clauses154189_)
                    (let ((_clauses154191_
                           (map _clause-e154174_ _clauses154189_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154191_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154175154182_
                   'gxc#!case-lambda::t))
                (let* ((_e154179154196_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154175154182_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154180154199_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154175154182_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154202_ _e154180154199_))
                  (declare (not safe))
                  (_K154178154193_ _clauses154202_))
                (let () (declare (not safe)) (_E154177154186_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154015_)
        (let* ((_self154016154024_ _self154015_)
               (_E154018154028_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154016154024_))))
               (_K154019154034_
                (lambda (_dispatch154031_ _table154032_)
                  (let ((__tmp156633
                         (let ((__tmp156634
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154031_ '()))))
                           (declare (not safe))
                           (cons _table154032_ __tmp156634))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156633)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154016154024_
                 'gxc#!kw-lambda::t))
              (let* ((_e154020154037_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154016154024_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154021154040_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154016154024_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154043_ _e154021154040_)
                     (_e154022154045_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154016154024_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154048_ _e154022154045_))
                (declare (not safe))
                (_K154019154034_ _dispatch154048_ _table154043_))
              (let () (declare (not safe)) (_E154018154028_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153858_)
        (let* ((_self153859153867_ _self153858_)
               (_E153861153871_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153859153867_))))
               (_K153862153877_
                (lambda (_main153874_ _keys153875_)
                  (let ((__tmp156635
                         (let ((__tmp156636
                                (let ()
                                  (declare (not safe))
                                  (cons _main153874_ '()))))
                           (declare (not safe))
                           (cons _keys153875_ __tmp156636))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156635)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153859153867_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153863153880_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153859153867_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153864153883_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153859153867_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153886_ _e153864153883_)
                     (_e153865153888_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153859153867_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153891_ _e153865153888_))
                (declare (not safe))
                (_K153862153877_ _main153891_ _keys153886_))
              (let () (declare (not safe)) (_E153861153871_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
