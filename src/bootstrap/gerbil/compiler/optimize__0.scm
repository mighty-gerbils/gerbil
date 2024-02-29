(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709213455)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156566
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156566)
               __obj156566)))))
    (define gxc#optimize!
      (lambda (_ctx156259_)
        (let ((__tmp156570
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156259_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156572
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156571
                        (##structure-ref
                         _ctx156259_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156572 __tmp156571 '#t))
                 (let ((_code156262_
                        (let ((__tmp156573
                               (##structure-ref
                                _ctx156259_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156573))))
                   (##structure-set!
                    _ctx156259_
                    _code156262_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156569 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156568 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156570
           gxc#current-compile-mutators
           __tmp156569
           gxc#current-compile-local-type
           __tmp156568))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156255_
                  (lambda (_id156257_)
                    (if (let ((__tmp156575
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156575 _id156257_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156257_))
                          (let ((__tmp156574
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156574 _id156257_ '#t)))))))
          (for-each
           _load-it!156255_
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
      (lambda (_ctx156199_)
        (letrec* ((_deps156201_
                   (let* ((_imports156245_
                           (##structure-ref
                            _ctx156199_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156247_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156199_))))
                     (if _$e156247_
                         ((lambda (_g156249156251_)
                            (let ()
                              (declare (not safe))
                              (cons _g156249156251_ _imports156245_)))
                          _$e156247_)
                         _imports156245_))))
          (let _lp156203_ ((_rest156205_ _deps156201_))
            (let* ((_rest156206156214_ _rest156205_)
                   (_else156208156222_ (lambda () '#!void))
                   (_K156210156233_
                    (lambda (_rest156225_ _hd156226_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156226_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156589
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156588
                                       (##structure-ref
                                        _hd156226_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156589 __tmp156588))
                                '#!void
                                (begin
                                  (let ((_$e156228_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156226_))))
                                    (if _$e156228_
                                        ((lambda (_pre156231_)
                                           (let ((__tmp156586
                                                  (let ((__tmp156587
                                                         (##structure-ref
                                                          _hd156226_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156231_
                                                          __tmp156587))))
                                             (declare (not safe))
                                             (_lp156203_ __tmp156586)))
                                         _$e156228_)
                                        (let ((__tmp156585
                                               (##structure-ref
                                                _hd156226_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156203_ __tmp156585))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156226_))))
                            (let ()
                              (declare (not safe))
                              (_lp156203_ _rest156225_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156226_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156584
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156583
                                           (##structure-ref
                                            _hd156226_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156584 __tmp156583))
                                    '#!void
                                    (begin
                                      (let ((__tmp156582
                                             (##structure-ref
                                              _hd156226_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156203_ __tmp156582))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156226_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156203_ _rest156225_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156226_
                                     'gx#module-import::t))
                                  (let ((__tmp156580
                                         (let ((__tmp156581
                                                (##direct-structure-ref
                                                 _hd156226_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156581 _rest156225_))))
                                    (declare (not safe))
                                    (_lp156203_ __tmp156580))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156226_
                                         'gx#module-export::t))
                                      (let ((__tmp156578
                                             (let ((__tmp156579
                                                    (##direct-structure-ref
                                                     _hd156226_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156579
                                                     _rest156225_))))
                                        (declare (not safe))
                                        (_lp156203_ __tmp156578))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156226_
                                             'gx#import-set::t))
                                          (let ((__tmp156576
                                                 (let ((__tmp156577
                                                        (##direct-structure-ref
                                                         _hd156226_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156577
                                                         _rest156225_))))
                                            (declare (not safe))
                                            (_lp156203_ __tmp156576))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156226_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156206156214_))
                  (let ((_hd156211156236_
                         (let ()
                           (declare (not safe))
                           (##car _rest156206156214_)))
                        (_tl156212156238_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156206156214_))))
                    (let* ((_hd156241_ _hd156211156236_)
                           (_rest156243_ _tl156212156238_))
                      (declare (not safe))
                      (_K156210156233_ _rest156243_ _hd156241_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156179_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156179_
                    'gx#module-context::t))
                 (let ((__tmp156590
                        (##structure-ref
                         _ctx156179_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156590)))
            '#!void
            (let* ((_ht156181_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156183_
                    (##structure-ref
                     _ctx156179_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156185_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156181_ _id156183_))))
              (let ((_$e156188_ _mod156185_))
                (if _$e156188_
                    _$e156188_
                    (let* ((_mod156191_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156179_)))
                           (_val156196_
                            (let ((_$e156193_ _mod156191_))
                              (if _$e156193_ _$e156193_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156181_ _id156183_ _val156196_))
                      _val156196_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156177_)
        (if (##structure-ref _ctx156177_ '1 gx#expander-context::t '#f)
            (let ((__tmp156591
                   (##structure-ref
                    _ctx156177_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156591))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156154_)
        (letrec ((_catch-e156156_
                  (lambda (_exn156175_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156154_))
                          (display-exception _exn156175_))
                        '#!void)
                    '#f))
                 (_import-e156157_
                  (lambda ()
                    (let* ((_str-id156160_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156154_))
                             '".ssxi"))
                           (_artefact-path156168_
                            (let ((_odir156161156163_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156161156163_
                                  (let ((_odir156166_ _odir156161156163_))
                                    (path-expand
                                     (string-append _str-id156160_ '".ss")
                                     _odir156166_))
                                  '#f)))
                           (_library-path156170_
                            (string->symbol
                             (string-append '":" _str-id156160_ '".ss")))
                           (_ssxi-path156172_
                            (if (and _artefact-path156168_
                                     (file-exists? _artefact-path156168_))
                                _artefact-path156168_
                                _library-path156170_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156172_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156172_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156156_ _import-e156157_)))))
    (define gxc#optimize-source
      (lambda (_stx156145_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156145_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156145_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156145_))
        (let* ((_stx156147_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156145_)))
               (_stx156149_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156147_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156149_))
          (let ((_stx156152_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156149_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156152_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156142_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156592 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156142_ __tmp156592))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156142_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156142_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156142_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156142_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156142_ '%#call gxc#generate-ssxi-call%))
           _tbl156142_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156125_ . _args156127_)
        (let ((__tmp156594
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156127_)
                     (gxc#compile-e__0 _stx156125_)
                     (let ((_arg1156132_ (car _args156127_))
                           (_rest156134_ (cdr _args156127_)))
                       (if (null? _rest156134_)
                           (gxc#compile-e__1 _stx156125_ _arg1156132_)
                           (let ((_arg2156137_ (car _rest156134_))
                                 (_rest156139_ (cdr _rest156134_)))
                             (if (null? _rest156139_)
                                 (gxc#compile-e__2
                                  _stx156125_
                                  _arg1156132_
                                  _arg2156137_)
                                 (apply gxc#compile-e
                                        _stx156125_
                                        _arg1156132_
                                        _arg2156137_
                                        _rest156139_))))))))
              (__tmp156593 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156594
           gxc#current-compile-methods
           __tmp156593))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156086_)
        (let* ((_g156088156098_
                (lambda (_g156089156095_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156089156095_))))
               (_g156087156122_
                (lambda (_g156089156101_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156089156101_))
                      (let ((_e156093156103_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156089156101_))))
                        (let ((_hd156092156106_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156093156103_)))
                              (_tl156091156108_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156093156103_))))
                          ((lambda (_L156111_)
                             (let ((__tmp156597
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156086_))))
                                   (__tmp156595
                                    (let ((__tmp156596
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156596 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156597
                                gx#current-expander-phi
                                __tmp156595)))
                           _tl156091156108_)))
                      (let ()
                        (declare (not safe))
                        (_g156088156098_ _g156089156101_))))))
          (declare (not safe))
          (_g156087156122_ _stx156086_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156026_)
        (let* ((_g156028156042_
                (lambda (_g156029156039_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156029156039_))))
               (_g156027156083_
                (lambda (_g156029156045_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156029156045_))
                      (let ((_e156034156047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156029156045_))))
                        (let ((_hd156033156050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156034156047_)))
                              (_tl156032156052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156034156047_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156032156052_))
                              (let ((_e156037156055_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156032156052_))))
                                (let ((_hd156036156058_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156037156055_)))
                                      (_tl156035156060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156037156055_))))
                                  ((lambda (_L156063_ _L156064_)
                                     (let* ((_ctx156077_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156064_)))
                                            (_code156079_
                                             (##structure-ref
                                              _ctx156077_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156598
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156079_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156598
                                          gx#current-expander-context
                                          _ctx156077_))))
                                   _tl156035156060_
                                   _hd156036156058_)))
                              (let ()
                                (declare (not safe))
                                (_g156028156042_ _g156029156045_)))))
                      (let ()
                        (declare (not safe))
                        (_g156028156042_ _g156029156045_))))))
          (declare (not safe))
          (_g156027156083_ _stx156026_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155836_)
        (letrec ((_generate-e155838_
                  (lambda (_id156015_)
                    (let* ((_sym156017_
                            (if (let ((__tmp156599
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156599))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156015_))
                                '#f))
                           (_$e156019_
                            (if _sym156017_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156017_))
                                '#f)))
                      (if _$e156019_
                          ((lambda (_type156022_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156017_))
                             (let* ((_typedecl156024_
                                     (let ((__method156567
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156022_
                                               'typedecl))))
                                       (if __method156567
                                           (__method156567 _type156022_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156022_
                                                    'typedecl)))))
                                    (__tmp156600
                                     (let ((__tmp156601
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156024_ '()))))
                                       (declare (not safe))
                                       (cons _sym156017_ __tmp156601))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156600)))
                           _$e156019_)
                          '(begin))))))
          (let* ((___stx156265156266_ _stx155836_)
                 (_g155841155879_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156265156266_)))))
            (let ((___kont156267156268_
                   (lambda (_L155997_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155838_ _L155997_))))
                  (___kont156269156270_
                   (lambda (_L155932_)
                     (let ((_types155958_
                            (map _generate-e155838_
                                 (let ((__tmp156602
                                        (lambda (_g155950155953_
                                                 _g155951155955_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155950155953_
                                                  _g155951155955_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156602 '() _L155932_)))))
                       (declare (not safe))
                       (cons 'begin _types155958_)))))
              (let ((___match156320156321_
                     (lambda (_e155859155884_
                              _hd155858155887_
                              _tl155857155889_
                              _e155862155892_
                              _hd155861155895_
                              _tl155860155897_
                              ___splice156271156272_
                              _target155863155900_
                              _tl155865155902_)
                       (letrec ((_loop155866155905_
                                 (lambda (_hd155864155908_ _id155870155910_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155864155908_))
                                       (let ((_e155867155913_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155864155908_))))
                                         (let ((_lp-tl155869155918_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155867155913_)))
                                               (_lp-hd155868155916_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155867155913_))))
                                           (let ((__tmp156603
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155868155916_
                                                          _id155870155910_))))
                                             (declare (not safe))
                                             (_loop155866155905_
                                              _lp-tl155869155918_
                                              __tmp156603))))
                                       (let ((_id155871155921_
                                              (reverse _id155870155910_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155860155897_))
                                             (let ((_e155874155924_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155860155897_))))
                                               (let ((_tl155872155929_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155874155924_)))
                                                     (_hd155873155927_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155874155924_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155872155929_))
                                                     (___kont156269156270_
                                                      _id155871155921_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155841155879_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155841155879_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155866155905_ _target155863155900_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156265156266_))
                    (let ((_e155846155965_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156265156266_))))
                      (let ((_tl155844155970_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155846155965_)))
                            (_hd155845155968_
                             (let ()
                               (declare (not safe))
                               (##car _e155846155965_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155844155970_))
                            (let ((_e155849155973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155844155970_))))
                              (let ((_tl155847155978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155849155973_)))
                                    (_hd155848155976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155849155973_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155848155976_))
                                    (let ((_e155852155981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155848155976_))))
                                      (let ((_tl155850155986_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155852155981_)))
                                            (_hd155851155984_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155852155981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155850155986_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155847155978_))
                                                (let ((_e155855155989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155847155978_))))
                                                  (let ((_tl155853155994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155855155989_)))
                                                        (_hd155854155992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155855155989_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155853155994_))
                                                        (___kont156267156268_
                                                         _hd155851155984_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155848155976_))
                                                            (let ((___splice156271156272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155848155976_ '0))))
                      (let ((_tl155865155902_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156271156272_ '1)))
                            (_target155863155900_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156271156272_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155865155902_))
                            (___match156320156321_
                             _e155846155965_
                             _hd155845155968_
                             _tl155844155970_
                             _e155849155973_
                             _hd155848155976_
                             _tl155847155978_
                             ___splice156271156272_
                             _target155863155900_
                             _tl155865155902_)
                            (let () (declare (not safe)) (_g155841155879_)))))
                    (let () (declare (not safe)) (_g155841155879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155848155976_))
                                                    (let ((___splice156271156272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155848155976_
                                                              '0))))
                                                      (let ((_tl155865155902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156271156272_ '1)))
                    (_target155863155900_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156271156272_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155865155902_))
                    (___match156320156321_
                     _e155846155965_
                     _hd155845155968_
                     _tl155844155970_
                     _e155849155973_
                     _hd155848155976_
                     _tl155847155978_
                     ___splice156271156272_
                     _target155863155900_
                     _tl155865155902_)
                    (let () (declare (not safe)) (_g155841155879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155841155879_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155848155976_))
                                                (let ((___splice156271156272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155848155976_
                                                          '0))))
                                                  (let ((_tl155865155902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156271156272_
                                                            '1)))
                                                        (_target155863155900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156271156272_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155865155902_))
                                                        (___match156320156321_
                                                         _e155846155965_
                                                         _hd155845155968_
                                                         _tl155844155970_
                                                         _e155849155973_
                                                         _hd155848155976_
                                                         _tl155847155978_
                                                         ___splice156271156272_
                                                         _target155863155900_
                                                         _tl155865155902_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155841155879_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155841155879_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155848155976_))
                                        (let ((___splice156271156272_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155848155976_
                                                  '0))))
                                          (let ((_tl155865155902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156271156272_
                                                    '1)))
                                                (_target155863155900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156271156272_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155865155902_))
                                                (___match156320156321_
                                                 _e155846155965_
                                                 _hd155845155968_
                                                 _tl155844155970_
                                                 _e155849155973_
                                                 _hd155848155976_
                                                 _tl155847155978_
                                                 ___splice156271156272_
                                                 _target155863155900_
                                                 _tl155865155902_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155841155879_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155841155879_))))))
                            (let () (declare (not safe)) (_g155841155879_)))))
                    (let () (declare (not safe)) (_g155841155879_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155390_)
        (let* ((___stx156323156324_ _stx155390_)
               (_g155394155496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156323156324_)))))
          (let ((___kont156325156326_
                 (lambda (_L155786_ _L155787_ _L155788_ _L155789_ _L155790_)
                   (let ((__tmp156604
                          (let ((__tmp156611
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155789_)))
                                (__tmp156605
                                 (let ((__tmp156610
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155788_)))
                                       (__tmp156606
                                        (let ((__tmp156609
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155787_)))
                                              (__tmp156607
                                               (let ((__tmp156608
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155786_))))
                                                 (declare (not safe))
                                                 (cons __tmp156608 '()))))
                                          (declare (not safe))
                                          (cons __tmp156609 __tmp156607))))
                                   (declare (not safe))
                                   (cons __tmp156610 __tmp156606))))
                            (declare (not safe))
                            (cons __tmp156611 __tmp156605))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156604))))
                (___kont156327156328_
                 (lambda (_L155612_ _L155613_ _L155614_ _L155615_)
                   (let ((__tmp156612
                          (let ((__tmp156618
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155614_)))
                                (__tmp156613
                                 (let ((__tmp156617
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155613_)))
                                       (__tmp156614
                                        (let ((__tmp156616
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155612_)))
                                              (__tmp156615
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156616 __tmp156615))))
                                   (declare (not safe))
                                   (cons __tmp156617 __tmp156614))))
                            (declare (not safe))
                            (cons __tmp156618 __tmp156613))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156612))))
                (___kont156329156330_ (lambda () '(begin))))
            (let ((___match156458156459_
                   (lambda (_e155403155658_
                            _hd155402155661_
                            _tl155401155663_
                            _e155406155666_
                            _hd155405155669_
                            _tl155404155671_
                            _e155409155674_
                            _hd155408155677_
                            _tl155407155679_
                            _e155412155682_
                            _hd155411155685_
                            _tl155410155687_
                            _e155415155690_
                            _hd155414155693_
                            _tl155413155695_
                            _e155418155698_
                            _hd155417155701_
                            _tl155416155703_
                            _e155421155706_
                            _hd155420155709_
                            _tl155419155711_
                            _e155424155714_
                            _hd155423155717_
                            _tl155422155719_
                            _e155427155722_
                            _hd155426155725_
                            _tl155425155727_
                            _e155430155730_
                            _hd155429155733_
                            _tl155428155735_
                            _e155433155738_
                            _hd155432155741_
                            _tl155431155743_
                            _e155436155746_
                            _hd155435155749_
                            _tl155434155751_
                            _e155439155754_
                            _hd155438155757_
                            _tl155437155759_
                            _e155442155762_
                            _hd155441155765_
                            _tl155440155767_
                            _e155445155770_
                            _hd155444155773_
                            _tl155443155775_
                            _e155448155778_
                            _hd155447155781_
                            _tl155446155783_)
                     (let ((_L155786_ _hd155447155781_)
                           (_L155787_ _hd155438155757_)
                           (_L155788_ _hd155429155733_)
                           (_L155789_ _hd155420155709_)
                           (_L155790_ _hd155411155685_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155790_
                              'bind-method!))
                           (___kont156325156326_
                            _L155786_
                            _L155787_
                            _L155788_
                            _L155789_
                            _L155790_)
                           (___kont156329156330_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156323156324_))
                  (let ((_e155403155658_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156323156324_))))
                    (let ((_tl155401155663_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155403155658_)))
                          (_hd155402155661_
                           (let ()
                             (declare (not safe))
                             (##car _e155403155658_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155401155663_))
                          (let ((_e155406155666_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155401155663_))))
                            (let ((_tl155404155671_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155406155666_)))
                                  (_hd155405155669_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155406155666_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155405155669_))
                                  (let ((_e155409155674_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155405155669_))))
                                    (let ((_tl155407155679_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155409155674_)))
                                          (_hd155408155677_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155409155674_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155408155677_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155408155677_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155407155679_))
                                                  (let ((_e155412155682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155407155679_))))
                                                    (let ((_tl155410155687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155412155682_)))
                                                          (_hd155411155685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155412155682_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155410155687_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155404155671_))
                      (let ((_e155415155690_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155404155671_))))
                        (let ((_tl155413155695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155415155690_)))
                              (_hd155414155693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155415155690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155414155693_))
                              (let ((_e155418155698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155414155693_))))
                                (let ((_tl155416155703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155418155698_)))
                                      (_hd155417155701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155418155698_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155417155701_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155417155701_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155416155703_))
                                              (let ((_e155421155706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155416155703_))))
                                                (let ((_tl155419155711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155421155706_)))
                                                      (_hd155420155709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155421155706_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155419155711_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155413155695_))
                                                          (let ((_e155424155714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155413155695_))))
                    (let ((_tl155422155719_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155424155714_)))
                          (_hd155423155717_
                           (let ()
                             (declare (not safe))
                             (##car _e155424155714_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155423155717_))
                          (let ((_e155427155722_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155423155717_))))
                            (let ((_tl155425155727_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155427155722_)))
                                  (_hd155426155725_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155427155722_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155426155725_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155426155725_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155425155727_))
                                          (let ((_e155430155730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155425155727_))))
                                            (let ((_tl155428155735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155430155730_)))
                                                  (_hd155429155733_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155430155730_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155428155735_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155422155719_))
                                                      (let ((_e155433155738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155422155719_))))
                (let ((_tl155431155743_
                       (let () (declare (not safe)) (##cdr _e155433155738_)))
                      (_hd155432155741_
                       (let () (declare (not safe)) (##car _e155433155738_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155432155741_))
                      (let ((_e155436155746_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155432155741_))))
                        (let ((_tl155434155751_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155436155746_)))
                              (_hd155435155749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155436155746_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155435155749_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155435155749_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155434155751_))
                                      (let ((_e155439155754_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155434155751_))))
                                        (let ((_tl155437155759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155439155754_)))
                                              (_hd155438155757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155439155754_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155437155759_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155431155743_))
                                                  (let ((_e155442155762_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155431155743_))))
                                                    (let ((_tl155440155767_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155442155762_)))
                                                          (_hd155441155765_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155442155762_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155441155765_))
                                                          (let ((_e155445155770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155441155765_))))
                    (let ((_tl155443155775_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155445155770_)))
                          (_hd155444155773_
                           (let ()
                             (declare (not safe))
                             (##car _e155445155770_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155444155773_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155444155773_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155443155775_))
                                  (let ((_e155448155778_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155443155775_))))
                                    (let ((_tl155446155783_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155448155778_)))
                                          (_hd155447155781_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155448155778_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155446155783_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155440155767_))
                                              (___match156458156459_
                                               _e155403155658_
                                               _hd155402155661_
                                               _tl155401155663_
                                               _e155406155666_
                                               _hd155405155669_
                                               _tl155404155671_
                                               _e155409155674_
                                               _hd155408155677_
                                               _tl155407155679_
                                               _e155412155682_
                                               _hd155411155685_
                                               _tl155410155687_
                                               _e155415155690_
                                               _hd155414155693_
                                               _tl155413155695_
                                               _e155418155698_
                                               _hd155417155701_
                                               _tl155416155703_
                                               _e155421155706_
                                               _hd155420155709_
                                               _tl155419155711_
                                               _e155424155714_
                                               _hd155423155717_
                                               _tl155422155719_
                                               _e155427155722_
                                               _hd155426155725_
                                               _tl155425155727_
                                               _e155430155730_
                                               _hd155429155733_
                                               _tl155428155735_
                                               _e155433155738_
                                               _hd155432155741_
                                               _tl155431155743_
                                               _e155436155746_
                                               _hd155435155749_
                                               _tl155434155751_
                                               _e155439155754_
                                               _hd155438155757_
                                               _tl155437155759_
                                               _e155442155762_
                                               _hd155441155765_
                                               _tl155440155767_
                                               _e155445155770_
                                               _hd155444155773_
                                               _tl155443155775_
                                               _e155448155778_
                                               _hd155447155781_
                                               _tl155446155783_)
                                              (___kont156329156330_))
                                          (___kont156329156330_))))
                                  (___kont156329156330_))
                              (___kont156329156330_))
                          (___kont156329156330_))))
                  (___kont156329156330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155431155743_))
                                                      (if (let ((__tmp156619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156619 'bind-method!))
                  (let ((_L155612_ _hd155438155757_)
                        (_L155613_ _hd155429155733_)
                        (_L155614_ _hd155420155709_)
                        (_L155615_ _hd155411155685_))
                    (___kont156327156328_
                     _L155612_
                     _L155613_
                     _L155614_
                     _L155615_))
                  (___kont156329156330_))
              (___kont156329156330_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156329156330_))))
                                      (___kont156329156330_))
                                  (___kont156329156330_))
                              (___kont156329156330_))))
                      (___kont156329156330_))))
              (___kont156329156330_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156329156330_))))
                                          (___kont156329156330_))
                                      (___kont156329156330_))
                                  (___kont156329156330_))))
                          (___kont156329156330_))))
                  (___kont156329156330_))
              (___kont156329156330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156329156330_))
                                          (___kont156329156330_))
                                      (___kont156329156330_))))
                              (___kont156329156330_))))
                      (___kont156329156330_))
                  (___kont156329156330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156329156330_))
                                              (___kont156329156330_))
                                          (___kont156329156330_))))
                                  (___kont156329156330_))))
                          (___kont156329156330_))))
                  (___kont156329156330_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155366_)
        (let* ((_self155367155373_ _self155366_)
               (_E155369155377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155367155373_))))
               (_K155370155382_
                (lambda (_alias-id155380_)
                  (let ((__tmp156620
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155380_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156620)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155367155373_ 'gxc#!alias::t))
              (let* ((_e155371155385_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155367155373_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155388_ _e155371155385_))
                (declare (not safe))
                (_K155370155382_ _alias-id155388_))
              (let () (declare (not safe)) (_E155369155377_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155157_)
        (let* ((_self155158155173_ _self155157_)
               (_E155160155177_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155158155173_))))
               (_K155161155191_
                (lambda (_methods155180_
                         _metaclass155181_
                         _final?155182_
                         _struct?155183_
                         _constructor155184_
                         _fields155185_
                         _slots155186_
                         _precendence-list155187_
                         _super155188_
                         _id155189_)
                  (let ((__tmp156621
                         (let ((__tmp156622
                                (let ((__tmp156623
                                       (let ((__tmp156624
                                              (let ((__tmp156625
                                                     (let ((__tmp156626
                                                            (let ((__tmp156627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156628
                                  (let ((__tmp156629
                                         (let ((__tmp156630
                                                (let ((__tmp156631
                                                       (if _methods155180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155180_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156631 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155181_
                                                 __tmp156630))))
                                    (declare (not safe))
                                    (cons _final?155182_ __tmp156629))))
                             (declare (not safe))
                             (cons _struct?155183_ __tmp156628))))
                      (declare (not safe))
                      (cons _constructor155184_ __tmp156627))))
               (declare (not safe))
               (cons _fields155185_ __tmp156626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155186_
                                                      __tmp156625))))
                                         (declare (not safe))
                                         (cons _precendence-list155187_
                                               __tmp156624))))
                                  (declare (not safe))
                                  (cons _super155188_ __tmp156623))))
                           (declare (not safe))
                           (cons _id155189_ __tmp156622))))
                    (declare (not safe))
                    (cons '@class __tmp156621)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155158155173_ 'gxc#!class::t))
              (let* ((_e155162155194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155197_ _e155162155194_)
                     (_e155163155199_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155202_ _e155163155199_)
                     (_e155164155204_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155207_ _e155164155204_)
                     (_e155165155209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155212_ _e155165155209_)
                     (_e155166155214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155217_ _e155166155214_)
                     (_e155167155219_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155222_ _e155167155219_)
                     (_e155168155224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155227_ _e155168155224_)
                     (_e155169155229_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155232_ _e155169155229_)
                     (_e155170155234_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155237_ _e155170155234_)
                     (_e155171155239_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155158155173_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155242_ _e155171155239_))
                (declare (not safe))
                (_K155161155191_
                 _methods155242_
                 _metaclass155237_
                 _final?155232_
                 _struct?155227_
                 _constructor155222_
                 _fields155217_
                 _slots155212_
                 _precendence-list155207_
                 _super155202_
                 _id155197_))
              (let () (declare (not safe)) (_E155160155177_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155011_)
        (let* ((_self155012155018_ _self155011_)
               (_E155014155022_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155012155018_))))
               (_K155015155027_
                (lambda (_klass-id155025_)
                  (let ((__tmp156632
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155025_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156632)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155012155018_
                 'gxc#!predicate::t))
              (let* ((_e155016155030_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155012155018_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155033_ _e155016155030_))
                (declare (not safe))
                (_K155015155027_ _klass-id155033_))
              (let () (declare (not safe)) (_E155014155022_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154865_)
        (let* ((_self154866154872_ _self154865_)
               (_E154868154876_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154866154872_))))
               (_K154869154881_
                (lambda (_klass-id154879_)
                  (let ((__tmp156633
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154879_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156633)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154866154872_
                 'gxc#!constructor::t))
              (let* ((_e154870154884_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154866154872_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154887_ _e154870154884_))
                (declare (not safe))
                (_K154869154881_ _klass-id154887_))
              (let () (declare (not safe)) (_E154868154876_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154705_)
        (let* ((_self154706154714_ _self154705_)
               (_E154708154718_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154706154714_))))
               (_K154709154725_
                (lambda (_checked?154721_ _slot154722_ _klass-id154723_)
                  (let ((__tmp156634
                         (let ((__tmp156635
                                (let ((__tmp156636
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154721_ '()))))
                                  (declare (not safe))
                                  (cons _slot154722_ __tmp156636))))
                           (declare (not safe))
                           (cons _klass-id154723_ __tmp156635))))
                    (declare (not safe))
                    (cons '@accessor __tmp156634)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154706154714_
                 'gxc#!accessor::t))
              (let* ((_e154710154728_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154706154714_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154731_ _e154710154728_)
                     (_e154711154733_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154706154714_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154736_ _e154711154733_)
                     (_e154712154738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154706154714_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154741_ _e154712154738_))
                (declare (not safe))
                (_K154709154725_
                 _checked?154741_
                 _slot154736_
                 _klass-id154731_))
              (let () (declare (not safe)) (_E154708154718_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154545_)
        (let* ((_self154546154554_ _self154545_)
               (_E154548154558_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154546154554_))))
               (_K154549154565_
                (lambda (_checked?154561_ _slot154562_ _klass-id154563_)
                  (let ((__tmp156637
                         (let ((__tmp156638
                                (let ((__tmp156639
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154561_ '()))))
                                  (declare (not safe))
                                  (cons _slot154562_ __tmp156639))))
                           (declare (not safe))
                           (cons _klass-id154563_ __tmp156638))))
                    (declare (not safe))
                    (cons '@mutator __tmp156637)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154546154554_ 'gxc#!mutator::t))
              (let* ((_e154550154568_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154546154554_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154571_ _e154550154568_)
                     (_e154551154573_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154546154554_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154576_ _e154551154573_)
                     (_e154552154578_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154546154554_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154581_ _e154552154578_))
                (declare (not safe))
                (_K154549154565_
                 _checked?154581_
                 _slot154576_
                 _klass-id154571_))
              (let () (declare (not safe)) (_E154548154558_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154371_)
        (let* ((_self154372154382_ _self154371_)
               (_E154374154386_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154372154382_))))
               (_K154375154397_
                (lambda (_typedecl154389_
                         _inline154390_
                         _dispatch154391_
                         _arity154392_)
                  (if _inline154390_
                      (let ((_$e154394_ _typedecl154389_))
                        (if _$e154394_
                            _$e154394_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156640
                             (let ((__tmp156641
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154391_ '()))))
                               (declare (not safe))
                               (cons _arity154392_ __tmp156641))))
                        (declare (not safe))
                        (cons '@lambda __tmp156640))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154372154382_ 'gxc#!lambda::t))
              (let* ((_e154376154400_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154372154382_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154377154403_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154372154382_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154406_ _e154377154403_)
                     (_e154378154408_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154372154382_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154411_ _e154378154408_)
                     (_e154379154413_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154372154382_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154416_ _e154379154413_)
                     (_e154380154418_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154372154382_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154421_ _e154380154418_))
                (declare (not safe))
                (_K154375154397_
                 _typedecl154421_
                 _inline154416_
                 _dispatch154411_
                 _arity154406_))
              (let () (declare (not safe)) (_E154374154386_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154182_)
        (letrec ((_clause-e154184_
                  (lambda (_clause154214_)
                    (let* ((_clause154215154223_ _clause154214_)
                           (_E154217154227_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154215154223_))))
                           (_K154218154233_
                            (lambda (_dispatch154230_ _arity154231_)
                              (let ((__tmp156642
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154230_ '()))))
                                (declare (not safe))
                                (cons _arity154231_ __tmp156642)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154215154223_
                             'gxc#!lambda::t))
                          (let* ((_e154219154236_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154215154223_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154220154239_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154215154223_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154242_ _e154220154239_)
                                 (_e154221154244_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154215154223_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154247_ _e154221154244_))
                            (declare (not safe))
                            (_K154218154233_ _dispatch154247_ _arity154242_))
                          (let () (declare (not safe)) (_E154217154227_)))))))
          (let* ((_self154185154192_ _self154182_)
                 (_E154187154196_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154185154192_))))
                 (_K154188154203_
                  (lambda (_clauses154199_)
                    (let ((_clauses154201_
                           (map _clause-e154184_ _clauses154199_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154201_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154185154192_
                   'gxc#!case-lambda::t))
                (let* ((_e154189154206_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154185154192_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154190154209_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154185154192_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154212_ _e154190154209_))
                  (declare (not safe))
                  (_K154188154203_ _clauses154212_))
                (let () (declare (not safe)) (_E154187154196_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154025_)
        (let* ((_self154026154034_ _self154025_)
               (_E154028154038_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154026154034_))))
               (_K154029154044_
                (lambda (_dispatch154041_ _table154042_)
                  (let ((__tmp156643
                         (let ((__tmp156644
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154041_ '()))))
                           (declare (not safe))
                           (cons _table154042_ __tmp156644))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156643)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154026154034_
                 'gxc#!kw-lambda::t))
              (let* ((_e154030154047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154026154034_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154031154050_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154026154034_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154053_ _e154031154050_)
                     (_e154032154055_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154026154034_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154058_ _e154032154055_))
                (declare (not safe))
                (_K154029154044_ _dispatch154058_ _table154053_))
              (let () (declare (not safe)) (_E154028154038_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153868_)
        (let* ((_self153869153877_ _self153868_)
               (_E153871153881_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153869153877_))))
               (_K153872153887_
                (lambda (_main153884_ _keys153885_)
                  (let ((__tmp156645
                         (let ((__tmp156646
                                (let ()
                                  (declare (not safe))
                                  (cons _main153884_ '()))))
                           (declare (not safe))
                           (cons _keys153885_ __tmp156646))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156645)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153869153877_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153873153890_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153869153877_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153874153893_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153869153877_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153896_ _e153874153893_)
                     (_e153875153898_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153869153877_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153901_ _e153875153898_))
                (declare (not safe))
                (_K153872153887_ _main153901_ _keys153896_))
              (let () (declare (not safe)) (_E153871153881_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
