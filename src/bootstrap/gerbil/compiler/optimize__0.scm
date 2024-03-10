(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710064757)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj153450
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj153450)
               __obj153450)))))
    (define gxc#optimize!
      (lambda (_ctx153143_)
        (let ((__tmp153454
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx153143_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx153143_))
                 (let ((__tmp153456
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp153455
                        (##structure-ref
                         _ctx153143_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp153456 __tmp153455 '#t))
                 (let ((_code153146_
                        (let ((__tmp153457
                               (##structure-ref
                                _ctx153143_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp153457))))
                   (##structure-set!
                    _ctx153143_
                    _code153146_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp153453 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp153452 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp153454
           gxc#current-compile-mutators
           __tmp153453
           gxc#current-compile-local-type
           __tmp153452))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx153132_)
        (letrec ((_load-it!153134_
                  (lambda (_id153141_)
                    (if (let ((__tmp153458
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp153458 _id153141_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id153141_))
                          (let ((__tmp153459
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp153459 _id153141_ '#t)))))))
          (let* ((_modid153136_
                  (##structure-ref _ctx153132_ '1 gx#expander-context::t '#f))
                 (_modid-str153138_ (symbol->string _modid153136_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str153138_))
                (let ()
                  (declare (not safe))
                  (_load-it!153134_ 'gerbil/builtin))
                (for-each
                 _load-it!153134_
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
                   gerbil/builtin)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx153077_)
        (letrec* ((_deps153079_
                   (let* ((_imports153123_
                           (##structure-ref
                            _ctx153077_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e153125_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx153077_))))
                     (if _$e153125_
                         ((lambda (_g153127153129_)
                            (let ()
                              (declare (not safe))
                              (cons _g153127153129_ _imports153123_)))
                          _$e153125_)
                         _imports153123_))))
          (let _lp153081_ ((_rest153083_ _deps153079_))
            (let* ((_rest153084153092_ _rest153083_)
                   (_else153086153100_ (lambda () '#!void))
                   (_K153088153111_
                    (lambda (_rest153103_ _hd153104_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd153104_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp153461
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp153460
                                       (##structure-ref
                                        _hd153104_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp153461 __tmp153460))
                                '#!void
                                (begin
                                  (let ((_$e153106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd153104_))))
                                    (if _$e153106_
                                        ((lambda (_pre153109_)
                                           (let ((__tmp153462
                                                  (let ((__tmp153463
                                                         (##structure-ref
                                                          _hd153104_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre153109_
                                                          __tmp153463))))
                                             (declare (not safe))
                                             (_lp153081_ __tmp153462)))
                                         _$e153106_)
                                        (let ((__tmp153464
                                               (##structure-ref
                                                _hd153104_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp153081_ __tmp153464))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd153104_))))
                            (let ()
                              (declare (not safe))
                              (_lp153081_ _rest153103_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd153104_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp153466
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp153465
                                           (##structure-ref
                                            _hd153104_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp153466 __tmp153465))
                                    '#!void
                                    (begin
                                      (let ((__tmp153467
                                             (##structure-ref
                                              _hd153104_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp153081_ __tmp153467))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd153104_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp153081_ _rest153103_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd153104_
                                     'gx#module-import::t))
                                  (let ((__tmp153468
                                         (let ((__tmp153469
                                                (##direct-structure-ref
                                                 _hd153104_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153469 _rest153103_))))
                                    (declare (not safe))
                                    (_lp153081_ __tmp153468))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd153104_
                                         'gx#module-export::t))
                                      (let ((__tmp153470
                                             (let ((__tmp153471
                                                    (##direct-structure-ref
                                                     _hd153104_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153471
                                                     _rest153103_))))
                                        (declare (not safe))
                                        (_lp153081_ __tmp153470))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd153104_
                                             'gx#import-set::t))
                                          (let ((__tmp153472
                                                 (let ((__tmp153473
                                                        (##direct-structure-ref
                                                         _hd153104_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153473
                                                         _rest153103_))))
                                            (declare (not safe))
                                            (_lp153081_ __tmp153472))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd153104_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest153084153092_))
                  (let ((_hd153089153114_
                         (let ()
                           (declare (not safe))
                           (##car _rest153084153092_)))
                        (_tl153090153116_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153084153092_))))
                    (let* ((_hd153119_ _hd153089153114_)
                           (_rest153121_ _tl153090153116_))
                      (declare (not safe))
                      (_K153088153111_ _rest153121_ _hd153119_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx153057_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx153057_
                    'gx#module-context::t))
                 (let ((__tmp153474
                        (##structure-ref
                         _ctx153057_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp153474)))
            '#!void
            (let* ((_ht153059_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id153061_
                    (##structure-ref
                     _ctx153057_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod153063_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht153059_ _id153061_))))
              (let ((_$e153066_ _mod153063_))
                (if _$e153066_
                    _$e153066_
                    (let* ((_mod153069_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx153057_)))
                           (_val153074_
                            (let ((_$e153071_ _mod153069_))
                              (if _$e153071_ _$e153071_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht153059_ _id153061_ _val153074_))
                      _val153074_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx153055_)
        (if (##structure-ref _ctx153055_ '1 gx#expander-context::t '#f)
            (let ((__tmp153475
                   (##structure-ref
                    _ctx153055_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp153475))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id153032_)
        (letrec ((_catch-e153034_
                  (lambda (_exn153053_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id153032_))
                          (display-exception _exn153053_))
                        '#!void)
                    '#f))
                 (_import-e153035_
                  (lambda ()
                    (let* ((_str-id153038_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id153032_))
                             '".ssxi"))
                           (_artefact-path153046_
                            (let ((_odir153039153041_
                                   (gxc#current-compile-output-dir)))
                              (if _odir153039153041_
                                  (let ((_odir153044_ _odir153039153041_))
                                    (path-expand
                                     (string-append _str-id153038_ '".ss")
                                     _odir153044_))
                                  '#f)))
                           (_library-path153048_
                            (string->symbol
                             (string-append '":" _str-id153038_ '".ss")))
                           (_ssxi-path153050_
                            (if (and _artefact-path153046_
                                     (file-exists? _artefact-path153046_))
                                _artefact-path153046_
                                _library-path153048_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path153050_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path153050_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e153034_ _import-e153035_)))))
    (define gxc#optimize-source
      (lambda (_stx153023_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx153023_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx153023_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx153023_))
        (let* ((_stx153025_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx153023_)))
               (_stx153027_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx153025_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx153027_))
          (let ((_stx153030_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx153027_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx153030_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl153020_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp153476 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl153020_ __tmp153476))
           (let ()
             (declare (not safe))
             (hash-put! _tbl153020_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl153020_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl153020_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl153020_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl153020_ '%#call gxc#generate-ssxi-call%))
           _tbl153020_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx153003_ . _args153005_)
        (let ((__tmp153478
               (lambda ()
                 (declare (not safe))
                 (if (null? _args153005_)
                     (gxc#compile-e__0 _stx153003_)
                     (let ((_arg1153010_ (car _args153005_))
                           (_rest153012_ (cdr _args153005_)))
                       (if (null? _rest153012_)
                           (gxc#compile-e__1 _stx153003_ _arg1153010_)
                           (let ((_arg2153015_ (car _rest153012_))
                                 (_rest153017_ (cdr _rest153012_)))
                             (if (null? _rest153017_)
                                 (gxc#compile-e__2
                                  _stx153003_
                                  _arg1153010_
                                  _arg2153015_)
                                 (apply gxc#compile-e
                                        _stx153003_
                                        _arg1153010_
                                        _arg2153015_
                                        _rest153017_))))))))
              (__tmp153477 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp153478
           gxc#current-compile-methods
           __tmp153477))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx152964_)
        (let* ((_g152966152976_
                (lambda (_g152967152973_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152967152973_))))
               (_g152965153000_
                (lambda (_g152967152979_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152967152979_))
                      (let ((_e152969152981_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152967152979_))))
                        (let ((_hd152970152984_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152969152981_)))
                              (_tl152971152986_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152969152981_))))
                          ((lambda (_L152989_)
                             (let ((__tmp153481
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx152964_))))
                                   (__tmp153479
                                    (let ((__tmp153480
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp153480 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp153481
                                gx#current-expander-phi
                                __tmp153479)))
                           _tl152971152986_)))
                      (let ()
                        (declare (not safe))
                        (_g152966152976_ _g152967152979_))))))
          (declare (not safe))
          (_g152965153000_ _stx152964_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx152904_)
        (let* ((_g152906152920_
                (lambda (_g152907152917_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152907152917_))))
               (_g152905152961_
                (lambda (_g152907152923_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152907152923_))
                      (let ((_e152910152925_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152907152923_))))
                        (let ((_hd152911152928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152910152925_)))
                              (_tl152912152930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152910152925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152912152930_))
                              (let ((_e152913152933_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152912152930_))))
                                (let ((_hd152914152936_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152913152933_)))
                                      (_tl152915152938_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152913152933_))))
                                  ((lambda (_L152941_ _L152942_)
                                     (let* ((_ctx152955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L152942_)))
                                            (_code152957_
                                             (##structure-ref
                                              _ctx152955_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp153482
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code152957_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp153482
                                          gx#current-expander-context
                                          _ctx152955_))))
                                   _tl152915152938_
                                   _hd152914152936_)))
                              (let ()
                                (declare (not safe))
                                (_g152906152920_ _g152907152923_)))))
                      (let ()
                        (declare (not safe))
                        (_g152906152920_ _g152907152923_))))))
          (declare (not safe))
          (_g152905152961_ _stx152904_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx152714_)
        (letrec ((_generate-e152716_
                  (lambda (_id152893_)
                    (let* ((_sym152895_
                            (if (let ((__tmp153483
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp153483))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id152893_))
                                '#f))
                           (_$e152897_
                            (if _sym152895_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym152895_))
                                '#f)))
                      (if _$e152897_
                          ((lambda (_type152900_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym152895_))
                             (let* ((_typedecl152902_
                                     (let ((__method153451
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type152900_
                                               'typedecl))))
                                       (if __method153451
                                           (__method153451 _type152900_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type152900_
                                                    'typedecl)))))
                                    (__tmp153484
                                     (let ((__tmp153485
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl152902_ '()))))
                                       (declare (not safe))
                                       (cons _sym152895_ __tmp153485))))
                               (declare (not safe))
                               (cons 'declare-type __tmp153484)))
                           _$e152897_)
                          '(begin))))))
          (let* ((___stx153149153150_ _stx152714_)
                 (_g152719152757_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153149153150_)))))
            (let ((___kont153151153152_
                   (lambda (_L152875_)
                     (let ()
                       (declare (not safe))
                       (_generate-e152716_ _L152875_))))
                  (___kont153153153154_
                   (lambda (_L152810_)
                     (let ((_types152836_
                            (map _generate-e152716_
                                 (let ((__tmp153486
                                        (lambda (_g152828152831_
                                                 _g152829152833_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g152828152831_
                                                  _g152829152833_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp153486 '() _L152810_)))))
                       (declare (not safe))
                       (cons 'begin _types152836_)))))
              (let ((___match153204153205_
                     (lambda (_e152735152762_
                              _hd152736152765_
                              _tl152737152767_
                              _e152738152770_
                              _hd152739152773_
                              _tl152740152775_
                              ___splice153155153156_
                              _target152741152778_
                              _tl152743152780_)
                       (letrec ((_loop152744152783_
                                 (lambda (_hd152742152786_ _id152748152788_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd152742152786_))
                                       (let ((_e152745152791_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd152742152786_))))
                                         (let ((_lp-tl152747152796_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e152745152791_)))
                                               (_lp-hd152746152794_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e152745152791_))))
                                           (let ((__tmp153487
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd152746152794_
                                                          _id152748152788_))))
                                             (declare (not safe))
                                             (_loop152744152783_
                                              _lp-tl152747152796_
                                              __tmp153487))))
                                       (let ((_id152749152799_
                                              (reverse _id152748152788_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl152740152775_))
                                             (let ((_e152750152802_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl152740152775_))))
                                               (let ((_tl152752152807_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e152750152802_)))
                                                     (_hd152751152805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e152750152802_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl152752152807_))
                                                     (___kont153153153154_
                                                      _id152749152799_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g152719152757_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g152719152757_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop152744152783_ _target152741152778_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153149153150_))
                    (let ((_e152722152843_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153149153150_))))
                      (let ((_tl152724152848_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152722152843_)))
                            (_hd152723152846_
                             (let ()
                               (declare (not safe))
                               (##car _e152722152843_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152724152848_))
                            (let ((_e152725152851_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152724152848_))))
                              (let ((_tl152727152856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152725152851_)))
                                    (_hd152726152854_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152725152851_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd152726152854_))
                                    (let ((_e152728152859_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd152726152854_))))
                                      (let ((_tl152730152864_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152728152859_)))
                                            (_hd152729152862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152728152859_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl152730152864_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152727152856_))
                                                (let ((_e152731152867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152727152856_))))
                                                  (let ((_tl152733152872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152731152867_)))
                                                        (_hd152732152870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152731152867_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152733152872_))
                                                        (___kont153151153152_
                                                         _hd152729152862_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd152726152854_))
                                                            (let ((___splice153155153156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd152726152854_ '0))))
                      (let ((_tl152743152780_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice153155153156_ '1)))
                            (_target152741152778_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice153155153156_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl152743152780_))
                            (___match153204153205_
                             _e152722152843_
                             _hd152723152846_
                             _tl152724152848_
                             _e152725152851_
                             _hd152726152854_
                             _tl152727152856_
                             ___splice153155153156_
                             _target152741152778_
                             _tl152743152780_)
                            (let () (declare (not safe)) (_g152719152757_)))))
                    (let () (declare (not safe)) (_g152719152757_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd152726152854_))
                                                    (let ((___splice153155153156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd152726152854_
                                                              '0))))
                                                      (let ((_tl152743152780_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice153155153156_ '1)))
                    (_target152741152778_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice153155153156_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl152743152780_))
                    (___match153204153205_
                     _e152722152843_
                     _hd152723152846_
                     _tl152724152848_
                     _e152725152851_
                     _hd152726152854_
                     _tl152727152856_
                     ___splice153155153156_
                     _target152741152778_
                     _tl152743152780_)
                    (let () (declare (not safe)) (_g152719152757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g152719152757_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd152726152854_))
                                                (let ((___splice153155153156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd152726152854_
                                                          '0))))
                                                  (let ((_tl152743152780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice153155153156_
                                                            '1)))
                                                        (_target152741152778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice153155153156_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152743152780_))
                                                        (___match153204153205_
                                                         _e152722152843_
                                                         _hd152723152846_
                                                         _tl152724152848_
                                                         _e152725152851_
                                                         _hd152726152854_
                                                         _tl152727152856_
                                                         ___splice153155153156_
                                                         _target152741152778_
                                                         _tl152743152780_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g152719152757_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g152719152757_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd152726152854_))
                                        (let ((___splice153155153156_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd152726152854_
                                                  '0))))
                                          (let ((_tl152743152780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice153155153156_
                                                    '1)))
                                                (_target152741152778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice153155153156_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl152743152780_))
                                                (___match153204153205_
                                                 _e152722152843_
                                                 _hd152723152846_
                                                 _tl152724152848_
                                                 _e152725152851_
                                                 _hd152726152854_
                                                 _tl152727152856_
                                                 ___splice153155153156_
                                                 _target152741152778_
                                                 _tl152743152780_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g152719152757_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152719152757_))))))
                            (let () (declare (not safe)) (_g152719152757_)))))
                    (let () (declare (not safe)) (_g152719152757_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx152268_)
        (let* ((___stx153207153208_ _stx152268_)
               (_g152272152374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153207153208_)))))
          (let ((___kont153209153210_
                 (lambda (_L152664_ _L152665_ _L152666_ _L152667_ _L152668_)
                   (let ((__tmp153488
                          (let ((__tmp153495
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L152667_)))
                                (__tmp153489
                                 (let ((__tmp153494
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L152666_)))
                                       (__tmp153490
                                        (let ((__tmp153493
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L152665_)))
                                              (__tmp153491
                                               (let ((__tmp153492
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152664_))))
                                                 (declare (not safe))
                                                 (cons __tmp153492 '()))))
                                          (declare (not safe))
                                          (cons __tmp153493 __tmp153491))))
                                   (declare (not safe))
                                   (cons __tmp153494 __tmp153490))))
                            (declare (not safe))
                            (cons __tmp153495 __tmp153489))))
                     (declare (not safe))
                     (cons 'declare-method __tmp153488))))
                (___kont153211153212_
                 (lambda (_L152490_ _L152491_ _L152492_ _L152493_)
                   (let ((__tmp153496
                          (let ((__tmp153502
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L152492_)))
                                (__tmp153497
                                 (let ((__tmp153501
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L152491_)))
                                       (__tmp153498
                                        (let ((__tmp153500
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L152490_)))
                                              (__tmp153499
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp153500 __tmp153499))))
                                   (declare (not safe))
                                   (cons __tmp153501 __tmp153498))))
                            (declare (not safe))
                            (cons __tmp153502 __tmp153497))))
                     (declare (not safe))
                     (cons 'declare-method __tmp153496))))
                (___kont153213153214_ (lambda () '(begin))))
            (let ((___match153342153343_
                   (lambda (_e152279152536_
                            _hd152280152539_
                            _tl152281152541_
                            _e152282152544_
                            _hd152283152547_
                            _tl152284152549_
                            _e152285152552_
                            _hd152286152555_
                            _tl152287152557_
                            _e152288152560_
                            _hd152289152563_
                            _tl152290152565_
                            _e152291152568_
                            _hd152292152571_
                            _tl152293152573_
                            _e152294152576_
                            _hd152295152579_
                            _tl152296152581_
                            _e152297152584_
                            _hd152298152587_
                            _tl152299152589_
                            _e152300152592_
                            _hd152301152595_
                            _tl152302152597_
                            _e152303152600_
                            _hd152304152603_
                            _tl152305152605_
                            _e152306152608_
                            _hd152307152611_
                            _tl152308152613_
                            _e152309152616_
                            _hd152310152619_
                            _tl152311152621_
                            _e152312152624_
                            _hd152313152627_
                            _tl152314152629_
                            _e152315152632_
                            _hd152316152635_
                            _tl152317152637_
                            _e152318152640_
                            _hd152319152643_
                            _tl152320152645_
                            _e152321152648_
                            _hd152322152651_
                            _tl152323152653_
                            _e152324152656_
                            _hd152325152659_
                            _tl152326152661_)
                     (let ((_L152664_ _hd152325152659_)
                           (_L152665_ _hd152316152635_)
                           (_L152666_ _hd152307152611_)
                           (_L152667_ _hd152298152587_)
                           (_L152668_ _hd152289152563_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L152668_
                              'bind-method!))
                           (___kont153209153210_
                            _L152664_
                            _L152665_
                            _L152666_
                            _L152667_
                            _L152668_)
                           (___kont153213153214_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx153207153208_))
                  (let ((_e152279152536_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx153207153208_))))
                    (let ((_tl152281152541_
                           (let ()
                             (declare (not safe))
                             (##cdr _e152279152536_)))
                          (_hd152280152539_
                           (let ()
                             (declare (not safe))
                             (##car _e152279152536_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152281152541_))
                          (let ((_e152282152544_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152281152541_))))
                            (let ((_tl152284152549_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152282152544_)))
                                  (_hd152283152547_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152282152544_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd152283152547_))
                                  (let ((_e152285152552_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd152283152547_))))
                                    (let ((_tl152287152557_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152285152552_)))
                                          (_hd152286152555_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152285152552_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd152286152555_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd152286152555_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl152287152557_))
                                                  (let ((_e152288152560_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl152287152557_))))
                                                    (let ((_tl152290152565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e152288152560_)))
                                                          (_hd152289152563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e152288152560_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl152290152565_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl152284152549_))
                      (let ((_e152291152568_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl152284152549_))))
                        (let ((_tl152293152573_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152291152568_)))
                              (_hd152292152571_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152291152568_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd152292152571_))
                              (let ((_e152294152576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd152292152571_))))
                                (let ((_tl152296152581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152294152576_)))
                                      (_hd152295152579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152294152576_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd152295152579_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd152295152579_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl152296152581_))
                                              (let ((_e152297152584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl152296152581_))))
                                                (let ((_tl152299152589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e152297152584_)))
                                                      (_hd152298152587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e152297152584_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl152299152589_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl152293152573_))
                                                          (let ((_e152300152592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl152293152573_))))
                    (let ((_tl152302152597_
                           (let ()
                             (declare (not safe))
                             (##cdr _e152300152592_)))
                          (_hd152301152595_
                           (let ()
                             (declare (not safe))
                             (##car _e152300152592_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd152301152595_))
                          (let ((_e152303152600_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd152301152595_))))
                            (let ((_tl152305152605_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152303152600_)))
                                  (_hd152304152603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152303152600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd152304152603_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd152304152603_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl152305152605_))
                                          (let ((_e152306152608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl152305152605_))))
                                            (let ((_tl152308152613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e152306152608_)))
                                                  (_hd152307152611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e152306152608_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl152308152613_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl152302152597_))
                                                      (let ((_e152309152616_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl152302152597_))))
                (let ((_tl152311152621_
                       (let () (declare (not safe)) (##cdr _e152309152616_)))
                      (_hd152310152619_
                       (let () (declare (not safe)) (##car _e152309152616_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd152310152619_))
                      (let ((_e152312152624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd152310152619_))))
                        (let ((_tl152314152629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152312152624_)))
                              (_hd152313152627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152312152624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd152313152627_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd152313152627_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl152314152629_))
                                      (let ((_e152315152632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl152314152629_))))
                                        (let ((_tl152317152637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e152315152632_)))
                                              (_hd152316152635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e152315152632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl152317152637_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl152311152621_))
                                                  (let ((_e152318152640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl152311152621_))))
                                                    (let ((_tl152320152645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e152318152640_)))
                                                          (_hd152319152643_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e152318152640_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd152319152643_))
                                                          (let ((_e152321152648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd152319152643_))))
                    (let ((_tl152323152653_
                           (let ()
                             (declare (not safe))
                             (##cdr _e152321152648_)))
                          (_hd152322152651_
                           (let ()
                             (declare (not safe))
                             (##car _e152321152648_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd152322152651_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd152322152651_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152323152653_))
                                  (let ((_e152324152656_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152323152653_))))
                                    (let ((_tl152326152661_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152324152656_)))
                                          (_hd152325152659_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152324152656_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152326152661_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl152320152645_))
                                              (___match153342153343_
                                               _e152279152536_
                                               _hd152280152539_
                                               _tl152281152541_
                                               _e152282152544_
                                               _hd152283152547_
                                               _tl152284152549_
                                               _e152285152552_
                                               _hd152286152555_
                                               _tl152287152557_
                                               _e152288152560_
                                               _hd152289152563_
                                               _tl152290152565_
                                               _e152291152568_
                                               _hd152292152571_
                                               _tl152293152573_
                                               _e152294152576_
                                               _hd152295152579_
                                               _tl152296152581_
                                               _e152297152584_
                                               _hd152298152587_
                                               _tl152299152589_
                                               _e152300152592_
                                               _hd152301152595_
                                               _tl152302152597_
                                               _e152303152600_
                                               _hd152304152603_
                                               _tl152305152605_
                                               _e152306152608_
                                               _hd152307152611_
                                               _tl152308152613_
                                               _e152309152616_
                                               _hd152310152619_
                                               _tl152311152621_
                                               _e152312152624_
                                               _hd152313152627_
                                               _tl152314152629_
                                               _e152315152632_
                                               _hd152316152635_
                                               _tl152317152637_
                                               _e152318152640_
                                               _hd152319152643_
                                               _tl152320152645_
                                               _e152321152648_
                                               _hd152322152651_
                                               _tl152323152653_
                                               _e152324152656_
                                               _hd152325152659_
                                               _tl152326152661_)
                                              (___kont153213153214_))
                                          (___kont153213153214_))))
                                  (___kont153213153214_))
                              (___kont153213153214_))
                          (___kont153213153214_))))
                  (___kont153213153214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl152311152621_))
                                                      (if (let ((__tmp153503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp153503 'bind-method!))
                  (let ((_L152490_ _hd152316152635_)
                        (_L152491_ _hd152307152611_)
                        (_L152492_ _hd152298152587_)
                        (_L152493_ _hd152289152563_))
                    (___kont153211153212_
                     _L152490_
                     _L152491_
                     _L152492_
                     _L152493_))
                  (___kont153213153214_))
              (___kont153213153214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont153213153214_))))
                                      (___kont153213153214_))
                                  (___kont153213153214_))
                              (___kont153213153214_))))
                      (___kont153213153214_))))
              (___kont153213153214_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont153213153214_))))
                                          (___kont153213153214_))
                                      (___kont153213153214_))
                                  (___kont153213153214_))))
                          (___kont153213153214_))))
                  (___kont153213153214_))
              (___kont153213153214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont153213153214_))
                                          (___kont153213153214_))
                                      (___kont153213153214_))))
                              (___kont153213153214_))))
                      (___kont153213153214_))
                  (___kont153213153214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont153213153214_))
                                              (___kont153213153214_))
                                          (___kont153213153214_))))
                                  (___kont153213153214_))))
                          (___kont153213153214_))))
                  (___kont153213153214_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self152244_)
        (let* ((_self152245152251_ _self152244_)
               (_E152247152255_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152245152251_))))
               (_K152248152260_
                (lambda (_alias-id152258_)
                  (let ((__tmp153504
                         (let ()
                           (declare (not safe))
                           (cons _alias-id152258_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp153504)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152245152251_ 'gxc#!alias::t))
              (let* ((_e152249152263_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152245152251_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id152266_ _e152249152263_))
                (declare (not safe))
                (_K152248152260_ _alias-id152266_))
              (let () (declare (not safe)) (_E152247152255_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self152035_)
        (let* ((_self152036152051_ _self152035_)
               (_E152038152055_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152036152051_))))
               (_K152039152069_
                (lambda (_methods152058_
                         _metaclass152059_
                         _final?152060_
                         _struct?152061_
                         _constructor152062_
                         _fields152063_
                         _slots152064_
                         _precendence-list152065_
                         _super152066_
                         _id152067_)
                  (let ((__tmp153505
                         (let ((__tmp153506
                                (let ((__tmp153507
                                       (let ((__tmp153508
                                              (let ((__tmp153509
                                                     (let ((__tmp153510
                                                            (let ((__tmp153511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153512
                                  (let ((__tmp153513
                                         (let ((__tmp153514
                                                (let ((__tmp153515
                                                       (if _methods152058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods152058_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153515 '()))))
                                           (declare (not safe))
                                           (cons _metaclass152059_
                                                 __tmp153514))))
                                    (declare (not safe))
                                    (cons _final?152060_ __tmp153513))))
                             (declare (not safe))
                             (cons _struct?152061_ __tmp153512))))
                      (declare (not safe))
                      (cons _constructor152062_ __tmp153511))))
               (declare (not safe))
               (cons _fields152063_ __tmp153510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots152064_
                                                      __tmp153509))))
                                         (declare (not safe))
                                         (cons _precendence-list152065_
                                               __tmp153508))))
                                  (declare (not safe))
                                  (cons _super152066_ __tmp153507))))
                           (declare (not safe))
                           (cons _id152067_ __tmp153506))))
                    (declare (not safe))
                    (cons '@class __tmp153505)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152036152051_ 'gxc#!class::t))
              (let* ((_e152040152072_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id152075_ _e152040152072_)
                     (_e152041152077_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super152080_ _e152041152077_)
                     (_e152042152082_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list152085_ _e152042152082_)
                     (_e152043152087_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots152090_ _e152043152087_)
                     (_e152044152092_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields152095_ _e152044152092_)
                     (_e152045152097_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor152100_ _e152045152097_)
                     (_e152046152102_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?152105_ _e152046152102_)
                     (_e152047152107_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?152110_ _e152047152107_)
                     (_e152048152112_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass152115_ _e152048152112_)
                     (_e152049152117_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152036152051_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods152120_ _e152049152117_))
                (declare (not safe))
                (_K152039152069_
                 _methods152120_
                 _metaclass152115_
                 _final?152110_
                 _struct?152105_
                 _constructor152100_
                 _fields152095_
                 _slots152090_
                 _precendence-list152085_
                 _super152080_
                 _id152075_))
              (let () (declare (not safe)) (_E152038152055_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self151889_)
        (let* ((_self151890151896_ _self151889_)
               (_E151892151900_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151890151896_))))
               (_K151893151905_
                (lambda (_klass-id151903_)
                  (let ((__tmp153516
                         (let ()
                           (declare (not safe))
                           (cons _klass-id151903_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp153516)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151890151896_
                 'gxc#!predicate::t))
              (let* ((_e151894151908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151890151896_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151911_ _e151894151908_))
                (declare (not safe))
                (_K151893151905_ _klass-id151911_))
              (let () (declare (not safe)) (_E151892151900_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self151743_)
        (let* ((_self151744151750_ _self151743_)
               (_E151746151754_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151744151750_))))
               (_K151747151759_
                (lambda (_klass-id151757_)
                  (let ((__tmp153517
                         (let ()
                           (declare (not safe))
                           (cons _klass-id151757_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp153517)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151744151750_
                 'gxc#!constructor::t))
              (let* ((_e151748151762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151744151750_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151765_ _e151748151762_))
                (declare (not safe))
                (_K151747151759_ _klass-id151765_))
              (let () (declare (not safe)) (_E151746151754_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self151583_)
        (let* ((_self151584151592_ _self151583_)
               (_E151586151596_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151584151592_))))
               (_K151587151603_
                (lambda (_checked?151599_ _slot151600_ _klass-id151601_)
                  (let ((__tmp153518
                         (let ((__tmp153519
                                (let ((__tmp153520
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?151599_ '()))))
                                  (declare (not safe))
                                  (cons _slot151600_ __tmp153520))))
                           (declare (not safe))
                           (cons _klass-id151601_ __tmp153519))))
                    (declare (not safe))
                    (cons '@accessor __tmp153518)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151584151592_
                 'gxc#!accessor::t))
              (let* ((_e151588151606_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151584151592_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151609_ _e151588151606_)
                     (_e151589151611_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151584151592_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot151614_ _e151589151611_)
                     (_e151590151616_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151584151592_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?151619_ _e151590151616_))
                (declare (not safe))
                (_K151587151603_
                 _checked?151619_
                 _slot151614_
                 _klass-id151609_))
              (let () (declare (not safe)) (_E151586151596_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self151423_)
        (let* ((_self151424151432_ _self151423_)
               (_E151426151436_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151424151432_))))
               (_K151427151443_
                (lambda (_checked?151439_ _slot151440_ _klass-id151441_)
                  (let ((__tmp153521
                         (let ((__tmp153522
                                (let ((__tmp153523
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?151439_ '()))))
                                  (declare (not safe))
                                  (cons _slot151440_ __tmp153523))))
                           (declare (not safe))
                           (cons _klass-id151441_ __tmp153522))))
                    (declare (not safe))
                    (cons '@mutator __tmp153521)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151424151432_ 'gxc#!mutator::t))
              (let* ((_e151428151446_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151424151432_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151449_ _e151428151446_)
                     (_e151429151451_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151424151432_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot151454_ _e151429151451_)
                     (_e151430151456_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151424151432_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?151459_ _e151430151456_))
                (declare (not safe))
                (_K151427151443_
                 _checked?151459_
                 _slot151454_
                 _klass-id151449_))
              (let () (declare (not safe)) (_E151426151436_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self151249_)
        (let* ((_self151250151260_ _self151249_)
               (_E151252151264_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151250151260_))))
               (_K151253151275_
                (lambda (_typedecl151267_
                         _inline151268_
                         _dispatch151269_
                         _arity151270_)
                  (if _inline151268_
                      (let ((_$e151272_ _typedecl151267_))
                        (if _$e151272_
                            _$e151272_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp153524
                             (let ((__tmp153525
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch151269_ '()))))
                               (declare (not safe))
                               (cons _arity151270_ __tmp153525))))
                        (declare (not safe))
                        (cons '@lambda __tmp153524))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151250151260_ 'gxc#!lambda::t))
              (let* ((_e151254151278_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151250151260_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151255151281_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151250151260_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151284_ _e151255151281_)
                     (_e151256151286_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151250151260_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151289_ _e151256151286_)
                     (_e151257151291_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151250151260_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151294_ _e151257151291_)
                     (_e151258151296_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151250151260_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl151299_ _e151258151296_))
                (declare (not safe))
                (_K151253151275_
                 _typedecl151299_
                 _inline151294_
                 _dispatch151289_
                 _arity151284_))
              (let () (declare (not safe)) (_E151252151264_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self151060_)
        (letrec ((_clause-e151062_
                  (lambda (_clause151092_)
                    (let* ((_clause151093151101_ _clause151092_)
                           (_E151095151105_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause151093151101_))))
                           (_K151096151111_
                            (lambda (_dispatch151108_ _arity151109_)
                              (let ((__tmp153526
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch151108_ '()))))
                                (declare (not safe))
                                (cons _arity151109_ __tmp153526)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause151093151101_
                             'gxc#!lambda::t))
                          (let* ((_e151097151114_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause151093151101_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e151098151117_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause151093151101_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity151120_ _e151098151117_)
                                 (_e151099151122_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause151093151101_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch151125_ _e151099151122_))
                            (declare (not safe))
                            (_K151096151111_ _dispatch151125_ _arity151120_))
                          (let () (declare (not safe)) (_E151095151105_)))))))
          (let* ((_self151063151070_ _self151060_)
                 (_E151065151074_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self151063151070_))))
                 (_K151066151081_
                  (lambda (_clauses151077_)
                    (let ((_clauses151079_
                           (map _clause-e151062_ _clauses151077_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses151079_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self151063151070_
                   'gxc#!case-lambda::t))
                (let* ((_e151067151084_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self151063151070_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e151068151087_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self151063151070_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses151090_ _e151068151087_))
                  (declare (not safe))
                  (_K151066151081_ _clauses151090_))
                (let () (declare (not safe)) (_E151065151074_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self150903_)
        (let* ((_self150904150912_ _self150903_)
               (_E150906150916_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150904150912_))))
               (_K150907150922_
                (lambda (_dispatch150919_ _table150920_)
                  (let ((__tmp153527
                         (let ((__tmp153528
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch150919_ '()))))
                           (declare (not safe))
                           (cons _table150920_ __tmp153528))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp153527)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150904150912_
                 'gxc#!kw-lambda::t))
              (let* ((_e150908150925_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150904150912_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150909150928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150904150912_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150931_ _e150909150928_)
                     (_e150910150933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150904150912_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150936_ _e150910150933_))
                (declare (not safe))
                (_K150907150922_ _dispatch150936_ _table150931_))
              (let () (declare (not safe)) (_E150906150916_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self150746_)
        (let* ((_self150747150755_ _self150746_)
               (_E150749150759_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150747150755_))))
               (_K150750150765_
                (lambda (_main150762_ _keys150763_)
                  (let ((__tmp153529
                         (let ((__tmp153530
                                (let ()
                                  (declare (not safe))
                                  (cons _main150762_ '()))))
                           (declare (not safe))
                           (cons _keys150763_ __tmp153530))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp153529)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150747150755_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e150751150768_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150747150755_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150752150771_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150747150755_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys150774_ _e150752150771_)
                     (_e150753150776_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150747150755_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main150779_ _e150753150776_))
                (declare (not safe))
                (_K150750150765_ _main150779_ _keys150774_))
              (let () (declare (not safe)) (_E150749150759_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
